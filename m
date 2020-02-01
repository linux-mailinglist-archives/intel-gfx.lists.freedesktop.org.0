Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C491D14F7CF
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 13:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E4D6EA7A;
	Sat,  1 Feb 2020 12:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98E716EA78;
 Sat,  1 Feb 2020 12:43:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Feb 2020 04:43:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,389,1574150400"; d="scan'208";a="223424880"
Received: from nreina-mobl.ger.corp.intel.com (HELO localhost) ([10.252.52.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Feb 2020 04:43:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200131214701.1085737-9-gwan-gyeong.mun@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200131214701.1085737-1-gwan-gyeong.mun@intel.com>
 <20200131214701.1085737-9-gwan-gyeong.mun@intel.com>
Date: Sat, 01 Feb 2020 14:43:22 +0200
Message-ID: <87wo965vh1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/18] drm/i915/dp: Add logging function for
 DP VSC SDP
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 31 Jan 2020, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> wrote:
> When receiving video it is very useful to be able to log DP VSC SDP.
> This greatly simplifies debugging.

Seems like a lot of the functions should really be in drm core.

BR,
Jani.

>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 173 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h |   4 +
>  2 files changed, 177 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6756030692c8..e33488222ac5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5090,6 +5090,179 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>  	}
>  }
>  
> +static const char *dp_colorspace_get_name(enum dp_colorspace colorspace)
> +{
> +	if (colorspace < 0 || colorspace > DP_COLORSPACE_RESERVED)
> +		return "Invalid";
> +
> +	switch (colorspace) {
> +	case DP_COLORSPACE_RGB:
> +		return "RGB";
> +	case DP_COLORSPACE_YUV444:
> +		return "YUV444";
> +	case DP_COLORSPACE_YUV422:
> +		return "YUV422";
> +	case DP_COLORSPACE_YUV420:
> +		return "YUV420";
> +	case DP_COLORSPACE_Y_ONLY:
> +		return "Y_ONLY";
> +	case DP_COLORSPACE_RAW:
> +		return "RAW";
> +	default:
> +		return "Reserved";
> +	}
> +}
> +
> +static const char *dp_colorimetry_get_name(enum dp_colorspace colorspace,
> +					   enum dp_colorimetry colorimetry)
> +{
> +	if (colorspace < 0 || colorspace > DP_COLORSPACE_RESERVED)
> +		return "Invalid";
> +
> +	switch (colorimetry) {
> +	case DP_COLORIMETRY_DEFAULT:
> +		switch (colorspace) {
> +		case DP_COLORSPACE_RGB:
> +			return "sRGB";
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "BT.601";
> +		case DP_COLORSPACE_Y_ONLY:
> +			return "DICOM PS3.14";
> +		case DP_COLORSPACE_RAW:
> +			return "Custom Color Profile";
> +		default:
> +			return "Reserved";
> +		}
> +	case DP_COLORIMETRY_RGB_WIDE_FIXED: /* and DP_COLORIMETRY_BT709_YCC */
> +		switch (colorspace) {
> +		case DP_COLORSPACE_RGB:
> +			return "Wide Fixed";
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "BT.709";
> +		default:
> +			return "Reserved";
> +		}
> +	case DP_COLORIMETRY_RGB_WIDE_FLOAT: /* and DP_COLORIMETRY_XVYCC_601 */
> +		switch (colorspace) {
> +		case DP_COLORSPACE_RGB:
> +			return "Wide Float";
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "xvYCC 601";
> +		default:
> +			return "Reserved";
> +		}
> +	case DP_COLORIMETRY_OPRGB: /* and DP_COLORIMETRY_XVYCC_709 */
> +		switch (colorspace) {
> +		case DP_COLORSPACE_RGB:
> +			return "OpRGB";
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "xvYCC 709";
> +		default:
> +			return "Reserved";
> +		}
> +	case DP_COLORIMETRY_DCI_P3_RGB: /* and DP_COLORIMETRY_SYCC_601 */
> +		switch (colorspace) {
> +		case DP_COLORSPACE_RGB:
> +			return "DCI-P3";
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "sYCC 601";
> +		default:
> +			return "Reserved";
> +		}
> +	case DP_COLORIMETRY_RGB_CUSTOM: /* and DP_COLORIMETRY_OPYCC_601 */
> +		switch (colorspace) {
> +		case DP_COLORSPACE_RGB:
> +			return "Custom Profile";
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "OpYCC 601";
> +		default:
> +			return "Reserved";
> +		}
> +	case DP_COLORIMETRY_BT2020_RGB: /* and DP_COLORIMETRY_BT2020_CYCC */
> +		switch (colorspace) {
> +		case DP_COLORSPACE_RGB:
> +			return "BT.2020 RGB";
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "BT.2020 CYCC";
> +		default:
> +			return "Reserved";
> +		}
> +	case DP_COLORIMETRY_BT2020_YCC:
> +		switch (colorspace) {
> +		case DP_COLORSPACE_YUV444:
> +		case DP_COLORSPACE_YUV422:
> +		case DP_COLORSPACE_YUV420:
> +			return "BT.2020 YCC";
> +		default:
> +			return "Reserved";
> +		}
> +	default:
> +		return "Invalid";
> +	}
> +}
> +
> +static const char *dp_dynamic_range_get_name(enum dp_dynamic_range dynamic_range)
> +{
> +	switch (dynamic_range) {
> +	case DP_DYNAMIC_RANGE_VESA:
> +		return "VESA range";
> +	case DP_DYNAMIC_RANGE_CTA:
> +		return "CTA range";
> +	default:
> +		return "Invalid";
> +	}
> +}
> +
> +static const char *dp_content_type_get_name(enum dp_content_type content_type)
> +{
> +	switch (content_type) {
> +	case DP_CONTENT_TYPE_NOT_DEFINED:
> +		return "Not defined";
> +	case DP_CONTENT_TYPE_GRAPHICS:
> +		return "Graphics";
> +	case DP_CONTENT_TYPE_PHOTO:
> +		return "Photo";
> +	case DP_CONTENT_TYPE_VIDEO:
> +		return "Video";
> +	case DP_CONTENT_TYPE_GAME:
> +		return "Game";
> +	default:
> +		return "Reserved";
> +	}
> +}
> +
> +#define dp_sdp_log(fmt, ...) dev_printk(level, dev, fmt, ##__VA_ARGS__)
> +void intel_dp_vsc_sdp_log(const char *level, struct device *dev,
> +			  const struct intel_dp_vsc_sdp *vsc)
> +{
> +	dp_sdp_log("DP SDP: %s, revision %u, length %u\n", "VSC",
> +		   vsc->revision, vsc->length);
> +	dp_sdp_log("    colorspace: %s\n",
> +			dp_colorspace_get_name(vsc->colorspace));
> +	dp_sdp_log("    colorimetry: %s\n",
> +			dp_colorimetry_get_name(vsc->colorspace, vsc->colorimetry));
> +	dp_sdp_log("    bpc: %u\n",vsc->bpc);
> +	dp_sdp_log("    dynamic range: %s\n",
> +			dp_dynamic_range_get_name(vsc->dynamic_range));
> +	dp_sdp_log("    content type: %s\n",
> +			dp_content_type_get_name(vsc->content_type));
> +}
> +#undef dp_sdp_log
> +
>  static void
>  intel_dp_setup_vsc_sdp(struct intel_dp *intel_dp,
>  		       const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index e8f9ba962d09..03b300b58fd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -7,6 +7,7 @@
>  #define __INTEL_DP_H__
>  
>  #include <linux/types.h>
> +#include <linux/device.h>
>  
>  #include <drm/i915_drm.h>
>  
> @@ -23,6 +24,7 @@ struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_dp;
>  struct intel_encoder;
> +struct intel_dp_vsc_sdp;
>  
>  struct link_config_limits {
>  	int min_clock, max_clock;
> @@ -122,6 +124,8 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
>  void intel_read_dp_sdp(struct intel_encoder *encoder,
>  		       struct intel_crtc_state *crtc_state,
>  		       unsigned int type);
> +void intel_dp_vsc_sdp_log(const char *level, struct device *dev,
> +			  const struct intel_dp_vsc_sdp *vsc);
>  bool intel_digital_port_connected(struct intel_encoder *encoder);
>  
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
