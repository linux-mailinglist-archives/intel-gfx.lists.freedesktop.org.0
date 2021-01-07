Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C622ED0A4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 14:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E5F6E461;
	Thu,  7 Jan 2021 13:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D526E461
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 13:23:47 +0000 (UTC)
IronPort-SDR: 42+zFQl1BqDePPYGhDhTNznoihg3Wo8g4thqRm99qlSYuf+B8+FPSeTO4/keWd/QHdQrEcyRB+
 lQvJhgBlgVvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="165116845"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="165116845"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 05:23:47 -0800
IronPort-SDR: zl/vh5aCK0judZJm99acnigv36QLj54PQi7Hx0WVop9WJgYA5g5T8lKzKn7lAih3TcMtgOUe9D
 DjxVoh1LsLSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="463037763"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jan 2021 05:23:46 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 13:23:45 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Thu, 7 Jan 2021 13:23:45 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC][PATCH 2/3] drm/i915: Sending AVI infoframe through GMP DIP
Thread-Index: AQHW1Sgq4G83vIildk+SXvWEVIk68aocRkCA
Date: Thu, 7 Jan 2021 13:23:45 +0000
Message-ID: <e0a83aed1cda332db316935a61d1c045ea60c9f0.camel@intel.com>
References: <20201218103337.31068-1-swati2.sharma@intel.com>
 <20201218103337.31068-3-swati2.sharma@intel.com>
In-Reply-To: <20201218103337.31068-3-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <FD75B4439E2C8A4C8F0AE44C4305A43E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC][PATCH 2/3] drm/i915: Sending AVI infoframe
 through GMP DIP
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-12-18 at 16:03 +0530, Swati Sharma wrote:
> DP does not support sending AVI info frame to panel. So we need to
> send AVI info frame to HDMI through some other DIP.
> 
> When DP-to-HDMI protocol converter is present GMP DIP will be used
> to send AVI infoframe instead of static HDR infoframes.
> 
> While VESA spec indicates support within PCON to built AVI IF, it
> gives better control with source sending the infoframe by itself as
> per HDMI/CTA spec. Minimum of version 3 need to be used for VIC >=
> 128
> (i.e. for 8k mode as an example).
> 
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 135 ++++++++++++++++++--
> ----
>  1 file changed, 100 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index a776e7f809b4..d96e69dd2197 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2779,6 +2779,22 @@
> intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp
> *intel_dp,
>  		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_META
> DATA);
>  }
>  
> +static void
> +intel_dp_compute_avi_infoframe_sdp(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state
> *conn_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +
> +	if (!intel_hdmi_compute_avi_infoframe(encoder, crtc_state,
> conn_state)) {
> +		drm_dbg_kms(&dev_priv->drm, "bad AVI infoframe\n");
> +		return;
> +	}
> +
Because intel_hdmi_compute_avi_infoframe() enables
HDMI_INFOFRAME_TYPE_AVI,
we should not call
intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA) here.
> +	crtc_state->infoframes.enable |=
> +		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_META
> DATA);
> +}
> +
>  static void
>  intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
>  			     struct intel_crtc_state *pipe_config,
> @@ -2807,6 +2823,38 @@ intel_dp_drrs_compute_config(struct intel_dp
> *intel_dp,
>  			       constant_n, pipe_config->fec_enable);
>  }
>  
> +static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
> +{
> +	struct intel_connector *intel_connector = intel_dp-
> >attached_connector;
> +	struct drm_connector *connector = &intel_connector->base;
> +	int max_frl_rate;
> +	int max_lanes, rate_per_lane;
> +	int max_dsc_lanes, dsc_rate_per_lane;
> +
> +	max_lanes = connector->display_info.hdmi.max_lanes;
> +	rate_per_lane = connector-
> >display_info.hdmi.max_frl_rate_per_lane;
> +	max_frl_rate = max_lanes * rate_per_lane;
> +
> +	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
> +		max_dsc_lanes = connector-
> >display_info.hdmi.dsc_cap.max_lanes;
> +		dsc_rate_per_lane = connector-
> >display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
> +		if (max_dsc_lanes && dsc_rate_per_lane)
> +			max_frl_rate = min(max_frl_rate, max_dsc_lanes
> * dsc_rate_per_lane);
> +	}
> +
> +	return max_frl_rate;
> +}
> +
> +static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
> +{
> +	if (drm_dp_is_branch(intel_dp->dpcd) &&
> +	    intel_dp->has_hdmi_sink &&
> +	    intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
> +		return true;
> +
> +	return false;
> +}
> +
>  int
>  intel_dp_compute_config(struct intel_encoder *encoder,
>  			struct intel_crtc_state *pipe_config,
> @@ -2894,7 +2942,13 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  	intel_dp_drrs_compute_config(intel_dp, pipe_config, output_bpp,
>  				     constant_n);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> -	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config, conn_state);
> +
> +	if (intel_dp_is_hdmi_2_1_sink(intel_dp)) {
> +		pipe_config->has_infoframe = true;
> +		intel_dp_compute_avi_infoframe_sdp(encoder,
> pipe_config, conn_state);
> +	} else {
> +		intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config, conn_state);
> +	}
>  
>  	return 0;
>  }
> @@ -4043,28 +4097,6 @@ static int intel_dp_pcon_set_frl_mask(int
> max_frl)
>  	return 0;
>  }
>  
> -static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
> -{
> -	struct intel_connector *intel_connector = intel_dp-
> >attached_connector;
> -	struct drm_connector *connector = &intel_connector->base;
> -	int max_frl_rate;
> -	int max_lanes, rate_per_lane;
> -	int max_dsc_lanes, dsc_rate_per_lane;
> -
> -	max_lanes = connector->display_info.hdmi.max_lanes;
> -	rate_per_lane = connector-
> >display_info.hdmi.max_frl_rate_per_lane;
> -	max_frl_rate = max_lanes * rate_per_lane;
> -
> -	if (connector->display_info.hdmi.dsc_cap.v_1p2) {
> -		max_dsc_lanes = connector-
> >display_info.hdmi.dsc_cap.max_lanes;
> -		dsc_rate_per_lane = connector-
> >display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
> -		if (max_dsc_lanes && dsc_rate_per_lane)
> -			max_frl_rate = min(max_frl_rate, max_dsc_lanes
> * dsc_rate_per_lane);
> -	}
> -
> -	return max_frl_rate;
> -}
> -
>  static int intel_dp_pcon_start_frl_training(struct intel_dp
> *intel_dp)
>  {
>  #define PCON_EXTENDED_TRAIN_MODE (1 > 0)
> @@ -4136,16 +4168,6 @@ static int
> intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
>  	return 0;
>  }
>  
> -static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
> -{
> -	if (drm_dp_is_branch(intel_dp->dpcd) &&
> -	    intel_dp->has_hdmi_sink &&
> -	    intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
> -		return true;
> -
> -	return false;
> -}
> -
>  void intel_dp_check_frl_training(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -5470,12 +5492,51 @@
> intel_dp_hdr_metadata_infoframe_sdp_pack(const struct
> hdmi_drm_infoframe *drm_in
>  	return sizeof(struct dp_sdp_header) + 2 +
> HDMI_DRM_INFOFRAME_SIZE;
>  }
>  
> +static ssize_t
> +intel_dp_avi_infoframe_sdp_pack(const union hdmi_infoframe *frame,
> +				struct dp_sdp *sdp, size_t size)
> +{
> +	size_t length = sizeof(struct dp_sdp);
> +	const int infoframe_size = HDMI_INFOFRAME_HEADER_SIZE +
> HDMI_AVI_INFOFRAME_SIZE;
> +	unsigned char buf[HDMI_INFOFRAME_HEADER_SIZE +
> HDMI_DRM_INFOFRAME_SIZE];
> +	ssize_t len;
> +
> +	if (size < length)
> +		return -ENOSPC;
> +
> +	memset(sdp, 0, size);
> +
> +	len = hdmi_infoframe_pack_only(frame, buf, sizeof(buf));
> +	if (len < 0) {
> +		DRM_DEBUG_KMS("buffer size is smaller than avi
> infoframe\n");
> +		return -ENOSPC;
> +	}
> +
> +	if (len != infoframe_size) {
> +		DRM_DEBUG_KMS("wrong avi infoframe size\n");
> +		return -ENOSPC;
> +	}
> +
> +	sdp->sdp_header.HB0 = 0;
> +	sdp->sdp_header.HB1 = frame->avi.type;
> +	sdp->sdp_header.HB2 = 0x1D;
> +	sdp->sdp_header.HB3 = (0x13 << 2);
> +	sdp->db[0] = frame->avi.version;
> +	sdp->db[1] = frame->avi.length;
> +
> +	BUILD_BUG_ON(sizeof(sdp->db) < HDMI_DRM_INFOFRAME_SIZE + 2);
> +	memcpy(&sdp->db[2], &buf, HDMI_DRM_INFOFRAME_SIZE);
> +
> +	return sizeof(struct dp_sdp_header) + 2 +
> HDMI_DRM_INFOFRAME_SIZE;
> +}
> +
>  static void intel_write_dp_sdp(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state
> *crtc_state,
>  			       unsigned int type)
>  {
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct dp_sdp sdp = {};
>  	ssize_t len;
>  
> @@ -5489,8 +5550,12 @@ static void intel_write_dp_sdp(struct
> intel_encoder *encoder,
>  					    sizeof(sdp));
>  		break;
>  	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> -		len =
> intel_dp_hdr_metadata_infoframe_sdp_pack(&crtc_state-
> >infoframes.drm.drm,
> -							       &sdp,
> sizeof(sdp));
> +		if (intel_dp_is_hdmi_2_1_sink(intel_dp))
> +			len =
> intel_dp_avi_infoframe_sdp_pack(&crtc_state->infoframes.avi, &sdp,
> +							      sizeof(sd
> p));
> +		else
> +			len =
> intel_dp_hdr_metadata_infoframe_sdp_pack(&crtc_state-
> >infoframes.drm.drm,
> +								       
> &sdp, sizeof(sdp));
I recommend you use cases like this
case HDMI_PACKET_TYPE_GAMUT_METADATA:
	if (!intel_dp_is_hdmi_2_1_sink(intel_dp))
		len =
intel_dp_hdr_metadata_infoframe_sdp_pack(&crtc_state-
>infoframes.drm.drm, &sdp, sizeof(sdp));


case HDMI_INFOFRAME_TYPE_AVI:
	if (intel_dp_is_hdmi_2_1_sink(intel_dp)) {
		len = intel_dp_avi_infoframe_sdp_pack(&crtc_state-
>infoframes.avi, &sdp, sizeof(sdp));
		type = HDMI_PACKET_TYPE_GAMUT_METADATA;
	}


And you also have to call intel_write_dp_sdp(encoder, crtc_state,
HDMI_INFOFRAME_TYPE_AVI); in intel_dp_set_infoframes().
And if you assume to use lspcon for this case, you have to modify
intel_enable_ddi_dp() too.
 
 		break;
>  	default:
>  		MISSING_CASE(type);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
