Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F1A2B8C84
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 08:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43BCF89DE3;
	Thu, 19 Nov 2020 07:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E047589DE3;
 Thu, 19 Nov 2020 07:48:00 +0000 (UTC)
IronPort-SDR: HZDlrJEsjZVD1mrqNFxFQbFRDY+KHd/fkl2xtZeeSEllAfT6zf3wg/VIWqiDOFITEf1pPaU6eh
 XaHvhw37DtwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="151096425"
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; d="scan'208";a="151096425"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 23:48:00 -0800
IronPort-SDR: jMuwD6fblq0Vj6xvd7TcWHJeK6ZlZi3gRv0lP8+Y6uE0HtQsFkCL4DjxDxYiymWfdWcIDbJOSS
 jbptnYwNODCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; d="scan'208";a="368670350"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Nov 2020 23:48:00 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Nov 2020 23:47:58 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 13:17:56 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 19 Nov 2020 13:17:56 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 04/13] drm/dp_helper: Add Helpers for FRL Link
 Training support for DP-HDMI2.1 PCON
Thread-Index: AQHWsDe0c0JNIRjFUEeIMkrE94kmWanPLtQQ
Date: Thu, 19 Nov 2020 07:47:56 +0000
Message-ID: <cddd647a647a459fa06afdf0271314a4@intel.com>
References: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
 <20201101100657.12087-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201101100657.12087-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 04/13] drm/dp_helper: Add Helpers for FRL
 Link Training support for DP-HDMI2.1 PCON
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Sunday, November 1, 2020 3:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; ville.syrjala@linux.intel.com;
> Sharma, Swati2 <swati2.sharma@intel.com>
> Subject: [PATCH v2 04/13] drm/dp_helper: Add Helpers for FRL Link Training
> support for DP-HDMI2.1 PCON
> 
> This patch adds support for configuring a PCON device, connected as a DP
> branched device to enable FRL Link training with a HDMI2.1 + sink.
> 
> v2: Fixed typos and addressed other review comments from Uma Shankar.
> -changed the commit message for better clarity (Uma Shankar) -removed
> unnecessary argument supplied to a drm helper function.
> -fixed return value for max frl read from pcon.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/drm_dp_helper.c | 302 ++++++++++++++++++++++++++++++++
>  include/drm/drm_dp_helper.h     |  81 +++++++++
>  2 files changed, 383 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_dp_helper.c
> b/drivers/gpu/drm/drm_dp_helper.c index 14ddf28ecac0..b67580294c4e 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -2591,3 +2591,305 @@ void drm_dp_vsc_sdp_log(const char *level, struct
> device *dev,  #undef DP_SDP_LOG  }  EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
> +
> +/**
> + * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
> + * @dpcd: DisplayPort configuration data
> + * @port_cap: port capabilities
> + *
> + * Returns maximum frl bandwidth supported by PCON in GBPS,
> + * returns 0 if not supported.
> + **/
> +int drm_dp_get_pcon_max_frl_bw(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +			       const u8 port_cap[4])
> +{
> +	int bw;
> +	u8 buf;
> +
> +	buf = port_cap[2];
> +	bw = buf & DP_PCON_MAX_FRL_BW;
> +
> +	switch (bw) {
> +	case DP_PCON_MAX_9GBPS:
> +		return 9;
> +	case DP_PCON_MAX_18GBPS:
> +		return 18;
> +	case DP_PCON_MAX_24GBPS:
> +		return 24;
> +	case DP_PCON_MAX_32GBPS:
> +		return 32;
> +	case DP_PCON_MAX_40GBPS:
> +		return 40;
> +	case DP_PCON_MAX_48GBPS:
> +		return 48;
> +	case DP_PCON_MAX_0GBPS:
> +	default:
> +		return 0;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_get_pcon_max_frl_bw);
> +
> +/**
> + * drm_dp_get_hdmi_sink_max_frl_bw() - maximum frl supported by HDMI
> +Sink
> + * @aux: DisplayPort AUX channel
> + *
> + * Returns maximum frl bandwidth supported by HDMI in Gbps on success,
> + * returns 0, if not supported.
> + **/
> +int drm_dp_get_hdmi_sink_max_frl_bw(struct drm_dp_aux *aux) {
> +	u8 buf;
> +	int bw, ret;
> +
> +	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_SINK, &buf);
> +	if (ret < 0)
> +		return 0;
> +	bw = buf & DP_HDMI_SINK_LINK_BW;
> +
> +	switch (bw) {
> +	case DP_HDMI_SINK_BW_9GBPS:
> +		return 9;
> +	case DP_HDMI_SINK_BW_18GBPS:
> +		return 18;
> +	case DP_HDMI_SINK_BW_24GBPS:
> +		return 24;
> +	case DP_HDMI_SINK_BW_32GBPS:
> +		return 32;
> +	case DP_HDMI_SINK_BW_40GBPS:
> +		return 40;
> +	case DP_HDMI_SINK_BW_48GBPS:
> +		return 48;
> +	case DP_HDMI_SINK_BW_0GBPS:
> +	default:
> +		return 0;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_get_hdmi_sink_max_frl_bw);
> +
> +/**
> + * drm_dp_pcon_frl_prepare() - Prepare PCON for FRL.
> + * @aux: DisplayPort AUX channel
> + *
> + * Returns 0 if success, else returns negative error code.
> + **/
> +int drm_dp_pcon_frl_prepare(struct drm_dp_aux *aux, bool
> +enable_frl_ready_hpd) {
> +	int ret;
> +	u8 buf = DP_PCON_ENABLE_SOURCE_CTL_MODE |
> +		 DP_PCON_ENABLE_LINK_FRL_MODE;
> +
> +	if (enable_frl_ready_hpd)
> +		buf |= DP_PCON_ENABLE_HPD_READY;
> +
> +	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_dp_pcon_frl_prepare);
> +
> +/**
> + * drm_dp_pcon_is_frl_ready() - Is PCON ready for FRL
> + * @aux: DisplayPort AUX channel
> + *
> + * Returns true if success, else returns false.
> + **/
> +bool drm_dp_pcon_is_frl_ready(struct drm_dp_aux *aux) {
> +	int ret;
> +	u8 buf;
> +
> +	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_TX_LINK_STATUS, &buf);
> +	if (ret < 0)
> +		return false;
> +
> +	if (buf & DP_PCON_FRL_READY)
> +		return true;
> +
> +	return false;
> +}
> +EXPORT_SYMBOL(drm_dp_pcon_is_frl_ready);
> +
> +/**
> + * drm_dp_pcon_frl_configure_1() - Set HDMI LINK Configuration-Step1
> + * @aux: DisplayPort AUX channel
> + * @max_frl_gbps: maximum frl bw to be configured between PCON and HDMI
> +sink
> + * @concurrent_mode: true if concurrent mode or operation is required,
> + * false otherwise.
> + *
> + * Returns 0 if success, else returns negative error code.
> + **/
> +
> +int drm_dp_pcon_frl_configure_1(struct drm_dp_aux *aux, int max_frl_gbps,
> +				bool concurrent_mode)
> +{
> +	int ret;
> +	u8 buf;
> +
> +	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_LINK_CONFIG_1, &buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (concurrent_mode)
> +		buf |= DP_PCON_ENABLE_CONCURRENT_LINK;
> +	else
> +		buf &= ~DP_PCON_ENABLE_CONCURRENT_LINK;
> +
> +	switch (max_frl_gbps) {
> +	case 9:
> +		buf |=  DP_PCON_ENABLE_MAX_BW_9GBPS;
> +		break;
> +	case 18:
> +		buf |=  DP_PCON_ENABLE_MAX_BW_18GBPS;
> +		break;
> +	case 24:
> +		buf |=  DP_PCON_ENABLE_MAX_BW_24GBPS;
> +		break;
> +	case 32:
> +		buf |=  DP_PCON_ENABLE_MAX_BW_32GBPS;
> +		break;
> +	case 40:
> +		buf |=  DP_PCON_ENABLE_MAX_BW_40GBPS;
> +		break;
> +	case 48:
> +		buf |=  DP_PCON_ENABLE_MAX_BW_48GBPS;
> +		break;
> +	case 0:
> +		buf |=  DP_PCON_ENABLE_MAX_BW_0GBPS;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_pcon_frl_configure_1);
> +
> +/**
> + * drm_dp_pcon_frl_configure_2() - Set HDMI Link configuration Step-2
> + * @aux: DisplayPort AUX channel
> + * @max_frl_mask : Max FRL BW to be tried by the PCON with HDMI Sink
> + * @extended_train_mode : true for Extended Mode, false for Normal Mode.
> + * In Normal mode, the PCON tries each frl bw from the max_frl_mask
> +starting
> + * from min, and stops when link training is successful. In Extended
> +mode, all
> + * frl bw selected in the mask are trained by the PCON.
> + *
> + * Returns 0 if success, else returns negative error code.
> + **/
> +int drm_dp_pcon_frl_configure_2(struct drm_dp_aux *aux, int max_frl_mask,
> +				bool extended_train_mode)
> +{
> +	int ret;
> +	u8 buf = max_frl_mask;
> +
> +	if (extended_train_mode)
> +		buf |= DP_PCON_FRL_LINK_TRAIN_EXTENDED;
> +
> +	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_2, buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_pcon_frl_configure_2);
> +
> +/**
> + * drm_dp_pcon_reset_frl_config() - Re-Set HDMI Link configuration.
> + * @aux: DisplayPort AUX channel
> + *
> + * Returns 0 if success, else returns negative error code.
> + **/
> +int drm_dp_pcon_reset_frl_config(struct drm_dp_aux *aux) {
> +	int ret;
> +
> +	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, 0x0);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_pcon_reset_frl_config);
> +
> +/**
> + * drm_dp_pcon_frl_enable() - Enable HDMI link through FRL
> + * @aux: DisplayPort AUX channel
> + *
> + * Returns 0 if success, else returns negative error code.
> + **/
> +int drm_dp_pcon_frl_enable(struct drm_dp_aux *aux) {
> +	int ret;
> +	u8 buf = 0;
> +
> +	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_LINK_CONFIG_1, &buf);
> +	if (ret < 0)
> +		return ret;
> +	if (!(buf & DP_PCON_ENABLE_SOURCE_CTL_MODE)) {
> +		DRM_DEBUG_KMS("PCON in Autonomous mode, can't enable
> FRL\n");
> +		return -EINVAL;
> +	}
> +	buf |= DP_PCON_ENABLE_HDMI_LINK;
> +	ret = drm_dp_dpcd_writeb(aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_pcon_frl_enable);
> +
> +/**
> + * drm_dp_pcon_hdmi_link_active() - check if the PCON HDMI LINK status is
> active.
> + * @aux: DisplayPort AUX channel
> + *
> + * Returns true if link is active else returns false.
> + **/
> +bool drm_dp_pcon_hdmi_link_active(struct drm_dp_aux *aux) {
> +	u8 buf;
> +	int ret;
> +
> +	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_TX_LINK_STATUS, &buf);
> +	if (ret < 0)
> +		return false;
> +
> +	return buf & DP_PCON_HDMI_TX_LINK_ACTIVE; }
> +EXPORT_SYMBOL(drm_dp_pcon_hdmi_link_active);
> +
> +/**
> + * drm_dp_pcon_hdmi_link_mode() - get the PCON HDMI LINK MODE
> + * @aux: DisplayPort AUX channel
> + * @frl_trained_mask: pointer to store bitmask of the trained bw configuration.
> + * Valid only if the MODE returned is FRL. For Normal Link training
> +mode
> + * only 1 of the bits will be set, but in case of Extended mode, more
> +than
> + * one bits can be set.
> + *
> + * Returns the link mode : TMDS or FRL on success, else returns
> +negative error
> + * code.
> + **/
> +int drm_dp_pcon_hdmi_link_mode(struct drm_dp_aux *aux, u8
> +*frl_trained_mask) {
> +	u8 buf;
> +	int mode;
> +	int ret;
> +
> +	ret = drm_dp_dpcd_readb(aux, DP_PCON_HDMI_POST_FRL_STATUS,
> &buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	mode = buf & DP_PCON_HDMI_LINK_MODE;
> +
> +	if (frl_trained_mask && DP_PCON_HDMI_MODE_FRL == mode)
> +		*frl_trained_mask = (buf & DP_PCON_HDMI_FRL_TRAINED_BW)
> >> 1;
> +
> +	return mode;
> +}
> +EXPORT_SYMBOL(drm_dp_pcon_hdmi_link_mode);
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h index
> f55a9d1320ca..e2ed6bfaae89 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -411,6 +411,17 @@ struct drm_device;
>  # define DP_DS_10BPC		            1
>  # define DP_DS_12BPC		            2
>  # define DP_DS_16BPC		            3
> +/* HDMI2.1 PCON FRL CONFIGURATION */
> +# define DP_PCON_MAX_FRL_BW                 (7 << 2)
> +# define DP_PCON_MAX_0GBPS                  (0 << 2)
> +# define DP_PCON_MAX_9GBPS                  (1 << 2)
> +# define DP_PCON_MAX_18GBPS                 (2 << 2)
> +# define DP_PCON_MAX_24GBPS                 (3 << 2)
> +# define DP_PCON_MAX_32GBPS                 (4 << 2)
> +# define DP_PCON_MAX_40GBPS                 (5 << 2)
> +# define DP_PCON_MAX_48GBPS                 (6 << 2)
> +# define DP_PCON_SOURCE_CTL_MODE            (1 << 5)
> +
>  /* offset 3 for DVI */
>  # define DP_DS_DVI_DUAL_LINK		    (1 << 1)
>  # define DP_DS_DVI_HIGH_COLOR_DEPTH	    (1 << 2)
> @@ -1053,6 +1064,61 @@ struct drm_device;
>  #define DP_CEC_RX_MESSAGE_BUFFER               0x3010
>  #define DP_CEC_TX_MESSAGE_BUFFER               0x3020
>  #define DP_CEC_MESSAGE_BUFFER_LENGTH             0x10
> +/* PROTOCOL CONVERSION HDMI SINK */
> +#define DP_PCON_HDMI_SINK                      0x3035
> +# define DP_HDMI_SINK_LINK_BW                  (7 << 0)
> +# define DP_HDMI_SINK_BW_0GBPS		       0
> +# define DP_HDMI_SINK_BW_9GBPS		       1
> +# define DP_HDMI_SINK_BW_18GBPS		       2
> +# define DP_HDMI_SINK_BW_24GBPS		       3
> +# define DP_HDMI_SINK_BW_32GBPS		       4
> +# define DP_HDMI_SINK_BW_40GBPS		       5
> +# define DP_HDMI_SINK_BW_48GBPS		       6
> +
> +/* PCON CONFIGURE-1 FRL FOR HDMI SINK */
> +#define DP_PCON_HDMI_LINK_CONFIG_1             0x305A
> +# define DP_PCON_ENABLE_MAX_FRL_BW             (7 << 0)
> +# define DP_PCON_ENABLE_MAX_BW_0GBPS	       0
> +# define DP_PCON_ENABLE_MAX_BW_9GBPS	       1
> +# define DP_PCON_ENABLE_MAX_BW_18GBPS	       2
> +# define DP_PCON_ENABLE_MAX_BW_24GBPS	       3
> +# define DP_PCON_ENABLE_MAX_BW_32GBPS	       4
> +# define DP_PCON_ENABLE_MAX_BW_40GBPS	       5
> +# define DP_PCON_ENABLE_MAX_BW_48GBPS	       6
> +# define DP_PCON_ENABLE_SOURCE_CTL_MODE       (1 << 3)
> +# define DP_PCON_ENABLE_CONCURRENT_LINK       (1 << 4)
> +# define DP_PCON_ENABLE_LINK_FRL_MODE         (1 << 5)
> +# define DP_PCON_ENABLE_HPD_READY	      (1 << 6)
> +# define DP_PCON_ENABLE_HDMI_LINK             (1 << 7)
> +
> +/* PCON CONFIGURE-2 FRL FOR HDMI SINK */
> +#define DP_PCON_HDMI_LINK_CONFIG_2            0x305B
> +# define DP_PCON_MAX_LINK_BW_MASK             (0x3F << 0)
> +# define DP_PCON_FRL_BW_MASK_9GBPS            (1 << 0)
> +# define DP_PCON_FRL_BW_MASK_18GBPS           (1 << 1)
> +# define DP_PCON_FRL_BW_MASK_24GBPS           (1 << 2)
> +# define DP_PCON_FRL_BW_MASK_32GBPS           (1 << 3)
> +# define DP_PCON_FRL_BW_MASK_40GBPS           (1 << 4)
> +# define DP_PCON_FRL_BW_MASK_48GBPS           (1 << 5)
> +# define DP_PCON_FRL_LINK_TRAIN_EXTENDED      (1 << 6)
> +
> +/* PCON HDMI LINK STATUS */
> +#define DP_PCON_HDMI_TX_LINK_STATUS           0x303B
> +# define DP_PCON_HDMI_TX_LINK_ACTIVE          (1 << 0)
> +# define DP_PCON_FRL_READY		      (1 << 1)
> +
> +/* PCON HDMI POST FRL STATUS */
> +#define DP_PCON_HDMI_POST_FRL_STATUS          0x3036
> +# define DP_PCON_HDMI_LINK_MODE               (1 << 0)
> +# define DP_PCON_HDMI_MODE_TMDS               0
> +# define DP_PCON_HDMI_MODE_FRL                1
> +# define DP_PCON_HDMI_FRL_TRAINED_BW          (0x3F << 1)

Seems you have missed the comment here. Bit 4:7 are reserved, so adjust this accordingly.
With this fixed:
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> +# define DP_PCON_FRL_TRAINED_BW_9GBPS	      (1 << 1)
> +# define DP_PCON_FRL_TRAINED_BW_18GBPS	      (1 << 2)
> +# define DP_PCON_FRL_TRAINED_BW_24GBPS	      (1 << 3)
> +# define DP_PCON_FRL_TRAINED_BW_32GBPS	      (1 << 4)
> +# define DP_PCON_FRL_TRAINED_BW_40GBPS	      (1 << 5)
> +# define DP_PCON_FRL_TRAINED_BW_48GBPS	      (1 << 6)
> 
>  #define DP_PROTOCOL_CONVERTER_CONTROL_0		0x3050 /* DP 1.3
> */
>  # define DP_HDMI_DVI_OUTPUT_CONFIG		(1 << 0) /* DP 1.3 */
> @@ -1967,4 +2033,19 @@ int drm_dp_get_phy_test_pattern(struct drm_dp_aux
> *aux,
>  				struct drm_dp_phy_test_params *data);  int
> drm_dp_set_phy_test_pattern(struct drm_dp_aux *aux,
>  				struct drm_dp_phy_test_params *data, u8
> dp_rev);
> +int drm_dp_get_pcon_max_frl_bw(const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +			       const u8 port_cap[4]);
> +int drm_dp_get_hdmi_sink_max_frl_bw(struct drm_dp_aux *aux); int
> +drm_dp_pcon_frl_prepare(struct drm_dp_aux *aux, bool
> +enable_frl_ready_hpd); bool drm_dp_pcon_is_frl_ready(struct drm_dp_aux
> +*aux); int drm_dp_pcon_frl_configure_1(struct drm_dp_aux *aux, int
> max_frl_gbps,
> +				bool concurrent_mode);
> +int drm_dp_pcon_frl_configure_2(struct drm_dp_aux *aux, int max_frl_mask,
> +				bool extended_train_mode);
> +int drm_dp_pcon_reset_frl_config(struct drm_dp_aux *aux); int
> +drm_dp_pcon_frl_enable(struct drm_dp_aux *aux);
> +
> +bool drm_dp_pcon_hdmi_link_active(struct drm_dp_aux *aux); int
> +drm_dp_pcon_hdmi_link_mode(struct drm_dp_aux *aux, u8
> +*frl_trained_mask);
> +
>  #endif /* _DRM_DP_HELPER_H_ */
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
