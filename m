Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 431093ECEF9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 09:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7820889C17;
	Mon, 16 Aug 2021 07:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908ED89C17
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 07:07:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="215536119"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="215536119"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 00:07:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="519453884"
Received: from ifridman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.210.77])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 00:07:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Swati Sharma <swati2.sharma@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
In-Reply-To: <20210813070121.48530-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
 <20210813070121.48530-2-ankit.k.nautiyal@intel.com>
Date: Mon, 16 Aug 2021 10:07:05 +0300
Message-ID: <87sfz9kgva.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: Export
 intel_hdmi_compute_avi_infoframe()
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

On Fri, 13 Aug 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> From: Swati Sharma <swati2.sharma@intel.com>
>
> Instead of re-writing the avi_infoframe_compute func in intel_dp;
> exporting hdmi_compute_avi_infoframe func so that it can be called
> directly while encapsulating AVI infoframes in GMP dip.
>
> This is required when HDMI 2.1 PCON (dp to hdmi) is used and we need
> to send AVI infoframes to PCON in source control mode.
>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_hdmi.h | 3 +++
>  2 files changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index b04685bb6439..0fbcdddb7ad5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -702,10 +702,9 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>  			    frame->any.type, type);
>  }
>  
> -static bool
> -intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
> -				 struct intel_crtc_state *crtc_state,
> -				 struct drm_connector_state *conn_state)
> +bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
> +				      struct intel_crtc_state *crtc_state,
> +				      struct drm_connector_state *conn_state)
>  {
>  	struct hdmi_avi_infoframe *frame = &crtc_state->infoframes.avi.avi;
>  	const struct drm_display_mode *adjusted_mode =
> @@ -758,6 +757,7 @@ intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
>  
>  	return true;
>  }
> +EXPORT_SYMBOL(intel_hdmi_compute_avi_infoframe);

This makes the function visible from other kernel modules; I don't think
you need or want that. Non-static is probably enough.

BR,
Jani.

>  
>  static bool
>  intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index b43a180d007e..2bdfd0838753 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -54,5 +54,8 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
>  				  int src_max_slices, int src_max_slice_width,
>  				  int hdmi_max_slices, int hdmi_throughput);
>  int intel_hdmi_dsc_get_slice_height(int vactive);
> +bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
> +				      struct intel_crtc_state *crtc_state,
> +				      struct drm_connector_state *conn_state);
>  
>  #endif /* __INTEL_HDMI_H__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
