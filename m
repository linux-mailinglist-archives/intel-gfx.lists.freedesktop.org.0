Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C56BC9C02CE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 11:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1D710E7FA;
	Thu,  7 Nov 2024 10:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131CB10E7FA;
 Thu,  7 Nov 2024 10:47:04 +0000 (UTC)
Received: from 91-155-254-188.elisa-laajakaista.fi ([91.155.254.188]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t902Y-00000001WMj-0ZVn; Thu, 07 Nov 2024 12:47:02 +0200
Message-ID: <c700c7b47701110eb36dd38c6f97874b07806a43.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Thu, 07 Nov 2024 12:47:00 +0200
In-Reply-To: <20241106215231.103474-10-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
 <20241106215231.103474-10-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v2 09/17] drm/i915/dmc_wl: Track registers touched by
 the DMC
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

On Wed, 2024-11-06 at 18:50 -0300, Gustavo Sousa wrote:
> There are extra registers that require the DMC wakelock when specific
> dynamic DC states are in place. Those are registers that are touched by
> the DMC and require DC exit for proper access. Add the range tables for
> them and use the correct one depending on the enabled DC state.
>=20
> v2:
>   - Do not look into power domains guts (i.e.
>     display->power.domains.dc_state). (Jani)
>   - Come up with better names for variables containing register ranges.
>     (Luca)
>   - Keep a copy of dc_state in struct intel_dmc_wl.
>   - Update commit message for a clearer explanation for the need of
>     these new tables.
>=20
> Bspec: 71583
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>=20

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
