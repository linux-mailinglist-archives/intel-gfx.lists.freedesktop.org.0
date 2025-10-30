Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B75C1EE34
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 09:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CCC310E968;
	Thu, 30 Oct 2025 08:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C0C10E94E;
 Thu, 30 Oct 2025 08:00:07 +0000 (UTC)
Received: from mobile-access-b04845-99.dhcp.inet.fi ([176.72.69.99]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vENZl-00000001voK-0Mxs; Thu, 30 Oct 2025 10:00:05 +0200
Message-ID: <ae26093b5ee79d456afaaae0d4040e91d45eb2c2.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 30 Oct 2025 10:00:04 +0200
In-Reply-To: <e022166af7c67f43904e2d0fc87bc5c13e0f1204.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
 <e022166af7c67f43904e2d0fc87bc5c13e0f1204.1761146196.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 4/6] drm/i915/display: add intel_display_vtd_active()
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

On Wed, 2025-10-22 at 18:17 +0300, Jani Nikula wrote:
> Add intel_display_vtd_active() to utils. It's intentional duplication
> with i915_utils.h i915_vtd_active(), but reduces duplication with
> xe. Win some, lose some.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c            |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display.c       |  8 +++-----
>  drivers/gpu/drm/i915/display/intel_display_utils.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display_utils.h |  1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c           |  4 +++-
>  drivers/gpu/drm/xe/display/ext/i915_utils.c        | 10 ----------
>  6 files changed, 23 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 92a060e02cf3..640a40805f18 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -13,6 +13,7 @@
>  #include "intel_display_core.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
>  #include "intel_uncore.h"
> @@ -842,14 +843,13 @@ static unsigned int intel_bw_num_active_planes(stru=
ct intel_display *display,
>  static unsigned int intel_bw_data_rate(struct intel_display *display,
>  				       const struct intel_bw_state *bw_state)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	unsigned int data_rate =3D 0;
>  	enum pipe pipe;
> =20
>  	for_each_pipe(display, pipe)
>  		data_rate +=3D bw_state->data_rate[pipe];
> =20
> -	if (DISPLAY_VER(display) >=3D 13 && i915_vtd_active(i915))
> +	if (DISPLAY_VER(display) >=3D 13 && intel_display_vtd_active(display))
>  		data_rate =3D DIV_ROUND_UP(data_rate * 105, 100);
> =20
>  	return data_rate;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a8b4619de347..33174fb46ecb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -76,6 +76,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> @@ -830,9 +831,8 @@ static void intel_async_flip_vtd_wa(struct intel_disp=
lay *display,
>  static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_=
state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> =20
> -	return crtc_state->uapi.async_flip && i915_vtd_active(i915) &&
> +	return crtc_state->uapi.async_flip && intel_display_vtd_active(display)=
 &&
>  		(DISPLAY_VER(display) =3D=3D 9 || display->platform.broadwell ||
>  		 display->platform.haswell);
>  }
> @@ -8313,7 +8313,5 @@ void i830_disable_pipe(struct intel_display *displa=
y, enum pipe pipe)
> =20
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
> +	return IS_DISPLAY_VER(display, 6, 11) && intel_display_vtd_active(displ=
ay);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/drivers=
/gpu/drm/i915/display/intel_display_utils.c
> index 13d3999dd580..04d010f7c23e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_utils.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
> @@ -1,10 +1,15 @@
>  // SPDX-License-Identifier: MIT
>  /* Copyright =C2=A9 2025 Intel Corporation */
> =20
> +#include <linux/device.h>
> +
> +#include <drm/drm_device.h>
> +
>  #ifdef CONFIG_X86
>  #include <asm/hypervisor.h>
>  #endif
> =20
> +#include "intel_display_core.h"
>  #include "intel_display_utils.h"
> =20
>  bool intel_display_run_as_guest(struct intel_display *display)
> @@ -16,3 +21,12 @@ bool intel_display_run_as_guest(struct intel_display *=
display)
>  	return false;
>  #endif
>  }
> +
> +bool intel_display_vtd_active(struct intel_display *display)
> +{
> +	if (device_iommu_mapped(display->drm->dev))
> +		return true;
> +
> +	/* Running as a guest, we assume the host is enforcing VT'd */
> +	return intel_display_run_as_guest(display);
> +}

This also looks quite much like an "inlineable" function, no?

--
Cheers,
Luca.


> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers=
/gpu/drm/i915/display/intel_display_utils.h
> index e54e69afd959..af1e34bac720 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_utils.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
> @@ -12,5 +12,6 @@ struct intel_display;
>  #define MHz(x) KHz(1000 * (x))
> =20
>  bool intel_display_run_as_guest(struct intel_display *display);
> +bool intel_display_vtd_active(struct intel_display *display);
> =20
>  #endif /* __INTEL_DISPLAY_UTILS__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 10ef3136dadc..6f2cc01ea4a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -59,6 +59,7 @@
>  #include "intel_display_rpm.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_display_wa.h"
>  #include "intel_fbc.h"
>  #include "intel_fbc_regs.h"
> @@ -1472,7 +1473,8 @@ static int intel_fbc_check_plane(struct intel_atomi=
c_state *state,
>  	}
> =20
>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> -	if (i915_vtd_active(i915) && (display->platform.skylake || display->pla=
tform.broxton)) {
> +	if (intel_display_vtd_active(display) &&
> +	    (display->platform.skylake || display->platform.broxton)) {
>  		plane_state->no_fbc_reason =3D "VT-d enabled";
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_utils.c b/drivers/gpu/dr=
m/xe/display/ext/i915_utils.c
> index 1421c2a7b64d..af9ec2abbaa1 100644
> --- a/drivers/gpu/drm/xe/display/ext/i915_utils.c
> +++ b/drivers/gpu/drm/xe/display/ext/i915_utils.c
> @@ -3,18 +3,8 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
> =20
> -#include "i915_drv.h"
>  #include "i915_utils.h"
> =20
> -bool i915_vtd_active(struct drm_i915_private *i915)
> -{
> -	if (device_iommu_mapped(i915->drm.dev))
> -		return true;
> -
> -	/* Running as a guest, we assume the host is enforcing VT'd */
> -	return i915_run_as_guest();
> -}
> -
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
> =20
>  /* i915 specific, just put here for shutting it up */
