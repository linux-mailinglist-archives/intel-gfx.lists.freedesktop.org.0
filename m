Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C5F2FB4F4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 10:35:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1396E061;
	Tue, 19 Jan 2021 09:35:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096E96E061
 for <Intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 09:35:29 +0000 (UTC)
IronPort-SDR: aznQglm0/LKRs866uFHDAL+yCDkX64BcT0Jq/zRIDPJq8xZ7IOa1+qBXiKZ9iwkfd7WhJzeFu9
 MntQNnygKF9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="179051434"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="179051434"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 01:35:25 -0800
IronPort-SDR: g1/p9dRB1WznpvHS0PLQaxIMCla3IXXDDsPXKdyKtElkwam8uBOpcsFvl2RmEcAoVJ64RfjQQD
 0Z1LfEjI5b2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="402309082"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2021 01:35:23 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Jan 2021 09:35:21 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 19 Jan 2021 15:05:19 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
Thread-Index: AQHW7jbFjlIdZlP7iEqfz6ipHUqztKoupKqg
Date: Tue, 19 Jan 2021 09:35:18 +0000
Message-ID: <9babc226536544f7aa7ec98e80de4b21@intel.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <20210119074320.28768-14-sean.z.huang@intel.com>
In-Reply-To: <20210119074320.28768-14-sean.z.huang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC-v23 13/13] drm/i915/pxp: Add plane decryption
 support
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>, "Gaurav,
 Kumar" <kumar.gaurav@intel.com>, "Bommu,
 Krishnaiah" <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Jani/Ville
I had received an offline comment form Gaurav on this patch,
See below,
> -----Original Message-----
> From: Huang, Sean Z <sean.z.huang@intel.com>
> Sent: Tuesday, January 19, 2021 1:13 PM
> To: Intel-gfx@lists.freedesktop.org
> Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Bommu, Krishnaiah
> <krishnaiah.bommu@intel.com>; Huang, Sean Z <sean.z.huang@intel.com>
> Subject: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
> 
> From: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> Add support to enable/disable PLANE_SURF Decryption Request bit.
> It requires only to enable plane decryption support when following
> condition met.
> 1. PXP session is enabled.
> 2. Buffer object is protected.
> 
> v2:
> - Rebased to libva_cp-drm-tip_tgl_cp tree.
> - Used gen fb obj user_flags instead gem_object_metadata. [Krishna]
> 
> v3:
> - intel_pxp_gem_object_status() API changes.
> 
> Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 21 ++++++++++++++++++---
>  drivers/gpu/drm/i915/i915_reg.h             |  1 +
>  2 files changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> b/drivers/gpu/drm/i915/display/intel_sprite.c
> index cf3589fd0ddb..39f8c922ce66 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -39,6 +39,8 @@
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_rect.h>
> 
> +#include "pxp/intel_pxp.h"
> +
>  #include "i915_drv.h"
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> @@ -768,6 +770,11 @@ icl_program_input_csc(struct intel_plane *plane,
>  			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2),
> 0x0);  }
> 
> +static bool intel_fb_obj_protected(const struct drm_i915_gem_object
> +*obj) {
> +	return obj->user_flags & I915_BO_PROTECTED ? true : false; }
> +
>  static void
>  skl_plane_async_flip(struct intel_plane *plane,
>  		     const struct intel_crtc_state *crtc_state, @@ -804,6
> +811,7 @@ skl_program_plane(struct intel_plane *plane,
>  	u32 surf_addr = plane_state->color_plane[color_plane].offset;
>  	u32 stride = skl_plane_stride(plane_state, color_plane);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> +	const struct drm_i915_gem_object *obj = intel_fb_obj(fb);
>  	int aux_plane = intel_main_to_aux_plane(fb, color_plane);
>  	int crtc_x = plane_state->uapi.dst.x1;
>  	int crtc_y = plane_state->uapi.dst.y1; @@ -814,7 +822,7 @@
> skl_program_plane(struct intel_plane *plane,
>  	u8 alpha = plane_state->hw.alpha >> 8;
>  	u32 plane_color_ctl = 0, aux_dist = 0;
>  	unsigned long irqflags;
> -	u32 keymsk, keymax;
> +	u32 keymsk, keymax, plane_surf;
>  	u32 plane_ctl = plane_state->ctl;
> 
>  	plane_ctl |= skl_plane_ctl_crtc(crtc_state); @@ -890,8 +898,15
> @@ skl_program_plane(struct intel_plane *plane,
>  	 * the control register just before the surface register.
>  	 */
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> +	plane_surf = intel_plane_ggtt_offset(plane_state) + surf_addr;
> +
> +	if (intel_pxp_gem_object_status(dev_priv) &&
> +	    intel_fb_obj_protected(obj))
> +		plane_surf |= PLANE_SURF_DECRYPTION_ENABLED;
Here in case of if fb obj is protected but pxp session is not enabled i.e intel_pxp_gem_object_status() returns false, request to show the black frame buffer on display instead of corrupted data.
                            plane_surf = 0xXXX; //Pointer to black framebuffer
But above approach would be a hack. 
@Jani and @Ville could you please guide with the general way of handling this as pxp session keys can be invalidated at any time.

Thanks,
Anshuman Gupta.
> +	else
> +		plane_surf &= ~PLANE_SURF_DECRYPTION_ENABLED;
> +
> +	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> plane_surf);
> 
>  	if (plane_state->scaler_id >= 0)
>  		skl_program_scaler(plane, crtc_state, plane_state); diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 97bcecada87f..7a4817054bc8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7208,6 +7208,7 @@ enum {
>  #define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A,
> _PLANE_SURF_3_B)
>  #define PLANE_SURF(pipe, plane)	\
>  	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe),
> _PLANE_SURF_2(pipe))
> +#define   PLANE_SURF_DECRYPTION_ENABLED		REG_BIT(2)
> 
>  #define _PLANE_OFFSET_1_B			0x711a4
>  #define _PLANE_OFFSET_2_B			0x712a4
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
