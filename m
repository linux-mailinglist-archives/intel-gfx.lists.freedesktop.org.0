Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8449EE3DB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 11:13:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAF6D10ED3A;
	Thu, 12 Dec 2024 10:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAC910ED3A;
 Thu, 12 Dec 2024 10:13:49 +0000 (UTC)
Received: from 91-155-254-135.elisa-laajakaista.fi ([91.155.254.135]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tLgCY-00000002rYN-0yRX; Thu, 12 Dec 2024 12:13:46 +0200
Message-ID: <b7fd8305c0fc331a6f9bcf488f79cc17b8e5e3f9.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 12 Dec 2024 12:13:44 +0200
In-Reply-To: <2cda5bb8816d90150724955d3f09a4b1c2634e2d.1733827537.git.jani.nikula@intel.com>
References: <cover.1733827537.git.jani.nikula@intel.com>
 <2cda5bb8816d90150724955d3f09a4b1c2634e2d.1733827537.git.jani.nikula@intel.com>
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
Subject: Re: [PATCH v2 2/5] drm/i915/dp: s/intel_connector/connector/
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

On Tue, 2024-12-10 at 12:46 +0200, Jani Nikula wrote:
> Use the contemporary naming convention of struct intel_connector
> *connector. Avoid struct drm_connector use altogether. In a few cases
> add local struct drm_display_info and struct intel_display pointers to
> help move away from struct drm_connector usage.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Nice cleanups.  I assume you double-checked that no other occurrences
were missing after these changes?

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
