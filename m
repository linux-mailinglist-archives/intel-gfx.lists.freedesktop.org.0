Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A10D02ED0AA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 14:27:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E39E6E45C;
	Thu,  7 Jan 2021 13:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF146E45C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 13:26:59 +0000 (UTC)
IronPort-SDR: CJhWL42y3oe27vH/rCLt7WyaREEqp5imzIb1U195rcNnLgePwlPXIrtwkqOKgIGtJxm7BhJO6O
 H8rTlenL4vTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="174844573"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="174844573"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 05:26:58 -0800
IronPort-SDR: IwSyD28j9Qa5NSMUSFkYW6OTnQrNhRzlg2Hx1Abau9TIw1mYmfQancjVCA4oRxpf2YQt6KRq0j
 ft8L0C+koYXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="387873599"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga007.jf.intel.com with ESMTP; 07 Jan 2021 05:26:57 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 13:26:57 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Thu, 7 Jan 2021 13:26:57 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC][PATCH 3/3] drm/i915: Implement readout for AVI infoframe
 SDP
Thread-Index: AQHW1SgtAOHJqEM/lEClOdXWcJKnq6ocRyWA
Date: Thu, 7 Jan 2021 13:26:57 +0000
Message-ID: <77bae0b975fd26f41aac8a86d0a457cdc34265cf.camel@intel.com>
References: <20201218103337.31068-1-swati2.sharma@intel.com>
 <20201218103337.31068-4-swati2.sharma@intel.com>
In-Reply-To: <20201218103337.31068-4-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <1A02EE72FEF47644BDA78F5660CE148C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC][PATCH 3/3] drm/i915: Implement readout for
 AVI infoframe SDP
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
> In this patch readout for AVI infoframes enclosed in GMP
> DIP is implemented.
> 
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 74
> ++++++++++++++++++++++++-
>  1 file changed, 72 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d96e69dd2197..4821c96991f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5738,6 +5738,44 @@
> intel_dp_hdr_metadata_infoframe_sdp_unpack(struct hdmi_drm_infoframe
> *drm_infofr
>  	return ret;
>  }
>  
> +static int
> +intel_dp_avi_infoframe_sdp_unpack(union hdmi_infoframe *frame,
> +				  const void *buffer, size_t size)
> +{
> +	int ret;
> +
> +	const struct dp_sdp *sdp = buffer;
> +
> +	if (size < sizeof(struct dp_sdp))
> +		return -EINVAL;
> +
> +	if (sdp->sdp_header.HB0 != 0)
> +		return -EINVAL;
> +
> +	if (sdp->sdp_header.HB1 != HDMI_INFOFRAME_TYPE_AVI)
> +		return -EINVAL;
> +
> +	if (sdp->sdp_header.HB2 != 0x1D)
> +		return -EINVAL;
> +
> +	if ((sdp->sdp_header.HB3 & 0x3) != 0)
> +		return -EINVAL;
> +
> +	if (((sdp->sdp_header.HB3 >> 2) & 0x3f) != 0x13)
> +		return -EINVAL;
> +
> +	if (sdp->db[0] != 2)
> +		return -EINVAL;
> +
> +	if (sdp->db[1] != HDMI_AVI_INFOFRAME_SIZE)
> +		return -EINVAL;
> +
> +	ret = hdmi_infoframe_unpack(frame, &sdp->db[2],
> +				    HDMI_DRM_INFOFRAME_SIZE);
> +
> +	return ret;
> +}
> +
>  static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
>  				  struct intel_crtc_state *crtc_state,
>  				  struct drm_dp_vsc_sdp *vsc)
> @@ -5790,10 +5828,37 @@ static void
> intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
>  			    "Failed to unpack DP HDR Metadata Infoframe
> SDP\n");
>  }
>  
> +static void intel_read_dp_avi_infoframe_sdp(struct intel_encoder
> *encoder,
> +					    struct intel_crtc_state
> *crtc_state,
> +					    union hdmi_infoframe
> *frame)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	unsigned int type = HDMI_PACKET_TYPE_GAMUT_METADATA;
> +	struct dp_sdp sdp = {};
> +	int ret;
> +
> +	if ((crtc_state->infoframes.enable &
> +	    intel_hdmi_infoframe_enable(type)) == 0)
> +		return;
> +
> +	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
> +				 sizeof(sdp));
> +
> +	ret = intel_dp_avi_infoframe_sdp_unpack(frame, &sdp,
> +						sizeof(sdp));
> +
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Failed to unpack DP AVI Infoframe SDP\n");
> +}
> +
>  void intel_read_dp_sdp(struct intel_encoder *encoder,
>  		       struct intel_crtc_state *crtc_state,
>  		       unsigned int type)
>  {
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
>  	if (encoder->type != INTEL_OUTPUT_DDI)
>  		return;
>  
> @@ -5803,8 +5868,13 @@ void intel_read_dp_sdp(struct intel_encoder
> *encoder,
>  				      &crtc_state->infoframes.vsc);
>  		break;
>  	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> -		intel_read_dp_hdr_metadata_infoframe_sdp(encoder,
> crtc_state,
> -							 &crtc_state-
> >infoframes.drm.drm);
> +		if (intel_dp_is_hdmi_2_1_sink(intel_dp)) {
> +		    intel_read_dp_avi_infoframe_sdp(encoder,
> crtc_state,
> +						    &crtc_state-
> >infoframes.avi);
> +		} else {
> +		    intel_read_dp_hdr_metadata_infoframe_sdp(encoder,
> crtc_state,
> +							     &crtc_stat
> e->infoframes.drm.drm);
> +		}
I recommend you split the types like this.
case HDMI_PACKET_TYPE_GAMUT_METADATA:
	if (!intel_dp_is_hdmi_2_1_sink(intel_dp))
		intel_read_dp_avi_infoframe_sdp(encoder,
crtc_state,  &crtc_state->infoframes.avi);


case HDMI_INFOFRAME_TYPE_AVI:
	if (intel_dp_is_hdmi_2_1_sink(intel_dp))
		intel_read_dp_avi_infoframe_sdp(encoder, crtc_state,
&crtc_state->infoframes.avi);

Add you should call this function call " intel_read_dp_sdp(encoder,
pipe_config, HDMI_INFOFRAME_TYPE_AVI); "
below this line,
intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC); 
in this function.
[drivers/gpu/drm/i915/display/intel_ddi.c]
void intel_ddi_get_config()

>  		break;
>  	default:
>  		MISSING_CASE(type);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
