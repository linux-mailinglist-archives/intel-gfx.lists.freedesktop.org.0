Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9716A22A94
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 10:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A48010E90D;
	Thu, 30 Jan 2025 09:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F39410E90D;
 Thu, 30 Jan 2025 09:41:23 +0000 (UTC)
Received: from 91-155-255-183.elisa-laajakaista.fi ([91.155.255.183]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tdR32-00000004F7Q-3VNG; Thu, 30 Jan 2025 11:41:21 +0200
Message-ID: <7219ed98d04dcf73c796d53d832750d63dffd0de.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Date: Thu, 30 Jan 2025 11:41:19 +0200
In-Reply-To: <20250124191250.56833-1-gustavo.sousa@intel.com>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2025-01-24 at 16:12 -0300, Gustavo Sousa wrote:
> Enabling and disabling of DMC wakelock is already coupled with enabling
> and disabling of dynamic DC states, which already depend on the DMC
> being properly loaded. As such, we do not need to check if we already
> have a DMC payload parsed in __intel_dmc_wl_supported().
>=20
> Furthermore, the presence of such a check causes inconsistencies in the
> refcount if the following sequence of events happen:
>=20
>   1. A call to one of the register accessors from intel_de.h is done
>      before the DMC payload is parsed. That causes intel_dmc_wl_get() to
>      be called. Suppose the register offset qualifies as needing the
>      wakelock.
>=20
>      In normal circumstances, the refcount would be incremented, but,
>      because __intel_dmc_wl_supported() returns false, the refcount is
>      untouched.
>=20
>   2. In a separate worker thread, the DMC firmware is parsed. Parsing of
>      the DMC payload is finished before the corresponding
>      intel_dmc_wl_put() from (1) is called.
>=20
>   3. When in the context of (1), intel_dmc_wl_put() gets called, now we
>      have __intel_dmc_wl_supported() returning true and we hit the
>      warning, because the code doesn't expect a zero refcount.
>=20
> Let's remove that check, since it is unnecessary and causes the
> inconsistency illustrated above.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
