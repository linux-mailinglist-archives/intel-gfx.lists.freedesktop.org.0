Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AE39B9115
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 13:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638DE10E1F0;
	Fri,  1 Nov 2024 12:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426C810E1F0;
 Fri,  1 Nov 2024 12:24:14 +0000 (UTC)
Received: from 91-155-254-188.elisa-laajakaista.fi ([91.155.254.188]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6qhH-00000001FRZ-06Od; Fri, 01 Nov 2024 14:24:12 +0200
Message-ID: <ac29b67d7e6db0f2900edf0e0cd40b1c5befb895.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Fri, 01 Nov 2024 14:24:08 +0200
In-Reply-To: <20241021222744.294371-5-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-5-gustavo.sousa@intel.com>
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
Subject: Re: [PATCH 04/13] drm/i915/dmc_wl: Get wakelock when disabling
 dynamic DC states
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

On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
> Bspec says that disabling dynamic DC states require taking the DMC
> wakelock to cause an DC exit before writing to DC_STATE_EN. Implement
> that.
>=20
> In fact, testing on PTL revealed we end up failing to exit DC5/6 without
> this step.
>=20
> Bspec: 71583
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c    | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c        | 14 ++++++++++++--
>  drivers/gpu/drm/i915/display/intel_dmc_wl.h        |  2 ++
>  3 files changed, 21 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index adaf7cf3a33b..e8946ce86aaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -987,10 +987,14 @@ void gen9_disable_dc_states(struct intel_display *d=
isplay)
>  		return;
>  	}
> =20
> -	gen9_set_dc_state(display, DC_STATE_DISABLE);
> -
> -	if (!HAS_DISPLAY(display))
> +	if (HAS_DISPLAY(display)) {
> +		intel_dmc_wl_get_noreg(display);
> +		gen9_set_dc_state(display, DC_STATE_DISABLE);
> +		intel_dmc_wl_put_noreg(display);
> +	} else {
> +		gen9_set_dc_state(display, DC_STATE_DISABLE);
>  		return;
> +	}

I think intel_dmc_get/put() already protect indirectly on
HAS_DISPLAY(), doesn't it? If that's the case, then the if here is
unnecessary.

--
Cheers,
Luca.
