Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF72920A0
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 01:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB446E47A;
	Sun, 18 Oct 2020 23:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11EF66E150;
 Sun, 18 Oct 2020 23:34:09 +0000 (UTC)
IronPort-SDR: H2XT9PfcsqMPW9CpuYCdIJeRDsUaHhFcI1Gr63iekr6nwrCK2zVJn2TBis4pjLZHT6wJoevA1U
 ldATaJbGtFFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="164323168"
X-IronPort-AV: E=Sophos;i="5.77,392,1596524400"; d="scan'208";a="164323168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2020 16:34:09 -0700
IronPort-SDR: xkAZhdrNCn9lhtSHOI/VXQO/maoOiPFF1aPumYHpfU3u9lZyp2EGjAC6MErye/2zOspgfh104w
 vS8Xm5IZ84vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,392,1596524400"; d="scan'208";a="532423134"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 18 Oct 2020 16:34:09 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 18 Oct 2020 16:34:08 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 05:04:05 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 19 Oct 2020 05:04:05 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 11/13] drm/i915: Read DSC capabilities of the HDMI2.1 PCON
 encoder
Thread-Index: AQHWouJj5hmzPLpmMEWwA/OH+63OaqmeBdvQgAACh8A=
Date: Sun, 18 Oct 2020 23:34:05 +0000
Message-ID: <dbd7b77cd2fa4ed189b9c2c623fbae2b@intel.com>
References: <20201015105259.27934-1-ankit.k.nautiyal@intel.com>
 <20201015105259.27934-12-ankit.k.nautiyal@intel.com>
 <e4d5cbbd77b94e878c18e7d7f936c215@intel.com>
In-Reply-To: <e4d5cbbd77b94e878c18e7d7f936c215@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 11/13] drm/i915: Read DSC capabilities of the
 HDMI2.1 PCON encoder
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
> From: Shankar, Uma
> Sent: Monday, October 19, 2020 5:02 AM
> To: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; ville.syrjala@linux.intel.com; Sharma, Swati2
> <swati2.sharma@intel.com>
> Subject: RE: [RFC 11/13] drm/i915: Read DSC capabilities of the HDMI2.1 PCON
> encoder

Also it would be good to move to DRM Core.

> 
> 
> > -----Original Message-----
> > From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> > Sent: Thursday, October 15, 2020 4:23 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: dri-devel@lists.freedesktop.org; Shankar, Uma
> > <uma.shankar@intel.com>; Kulkarni, Vandita
> > <vandita.kulkarni@intel.com>; ville.syrjala@linux.intel.com; Sharma,
> > Swati2 <swati2.sharma@intel.com>
> > Subject: [RFC 11/13] drm/i915: Read DSC capabilities of the HDMI2.1
> > PCON encoder
> >
> > This patch adds a helper function to read the DSC capabilities of the
> > HDMI2.1 PCon encoder. It also adds a new structure to store these
> > caps, which can then be used to get the PPS parameters for
> > PCON-HDMI2.1 sink pair. Which inturn will be used to take a call to
> > override the existing PPS-metadata, by either writing the entire new
> > PPS metadata, or by writing only the PPS override parameters.
> >
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  16 ++
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 178 ++++++++++++++++++
> >  2 files changed, 194 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 6c69922313d6..23282695a47f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1292,6 +1292,21 @@ struct intel_dp_pcon_frl {
> >  	int trained_rate_gbps;
> >  };
> >
> > +struct intel_dp_pcon_dsc {
> > +	bool enc_support;
> > +	bool pps_override_support;
> > +	bool blk_prediction_support;
> > +	u8 version_major;
> > +	u8 version_minor;
> > +	u8 color_fmt_mask;
> > +	u8 color_depth_mask;
> > +	u8 max_slices;;
> > +	u8 max_slice_width;
> > +	u8 line_buf_bit_depth;
> > +	u8 bpp_precision_incr;
> > +	int rc_buf_size;
> > +};
> > +
> >  struct intel_dp {
> >  	i915_reg_t output_reg;
> >  	u32 DP;
> > @@ -1415,6 +1430,7 @@ struct intel_dp {
> >  	bool hobl_active;
> >
> >  	struct intel_dp_pcon_frl frl;
> > +	struct intel_dp_pcon_dsc pcon_dsc;
> >  };
> >
> >  enum lspcon_vendor {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index e6c4cb844e37..b4f8abaea607 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3882,6 +3882,182 @@ cpt_set_link_train(struct intel_dp *intel_dp,
> >  	intel_de_posting_read(dev_priv, intel_dp->output_reg);  }
> >
> > +void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp) {
> > +	u8 buf;
> > +	u8 rc_buf_blk_size;
> > +	u8 max_slices = 0;
> > +
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	struct intel_dp_pcon_dsc *pcon_dsc = &intel_dp->pcon_dsc;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_ENCODER, &buf)
> > < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_ENCODER\n");
> > +		return;
> > +	}
> > +	pcon_dsc->enc_support = buf & DP_PCON_DSC_ENCODER_SUPPORTED;
> > +	pcon_dsc->pps_override_support = buf &
> > DP_PCON_DSC_PPS_ENC_OVERRIDE;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_VERSION, &buf)
> > < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_VERSION\n");
> > +		return;
> 
> If we fail here or in any of the subsequent calls below shouldn't we reset the dsc
> params saying DSC not supported. Else we may return with ex.
> pcon_dsc->enc_support = buf & DP_PCON_DSC_ENCODER_SUPPORTED which
> would ideally not be right.
> 
> > +	}
> > +	pcon_dsc->version_major = (buf & DP_PCON_DSC_MAJOR_MASK) >>
> > +				  DP_PCON_DSC_MAJOR_SHIFT;
> > +	pcon_dsc->version_minor = (buf & DP_PCON_DSC_MINOR_MASK) >>
> > +				  DP_PCON_DSC_MINOR_SHIFT;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > DP_PCON_DSC_RC_BUF_BLK_INFO, &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_RC_BUF_BLK_INFO\n");
> > +		return;
> > +	}
> > +
> > +	switch (buf & DP_PCON_DSC_RC_BUF_BLK_SIZE) {
> > +	case DP_PCON_DSC_RC_BUF_BLK_1KB :
> > +		rc_buf_blk_size = 1;
> > +		break;
> > +	case DP_PCON_DSC_RC_BUF_BLK_4KB :
> > +		rc_buf_blk_size = 4;
> > +		break;
> > +	case DP_PCON_DSC_RC_BUF_BLK_16KB :
> > +		rc_buf_blk_size = 16;
> > +		break;
> > +	case DP_PCON_DSC_RC_BUF_BLK_64KB :
> > +		rc_buf_blk_size = 64;
> > +		break;
> > +	default :
> > +		rc_buf_blk_size = 0;
> > +	}
> 
> It would be good if you create sub-functions for each of these aspects to make it
> more readable.
> 
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_RC_BUF_SIZE,
> > &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_RC_BUF_SIZE\n");
> > +		return;
> > +	}
> > +	/* storing rc_buf_size in bytes */
> > +	pcon_dsc->rc_buf_size = (buf + 1) * rc_buf_blk_size * 1024;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_SLICE_CAP_2,
> > &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_SLICE_CAP_2\n");
> > +		return;
> > +	}
> > +	if (buf & DP_PCON_DSC_24_PER_DSC_ENC)
> > +	       max_slices = 24;
> > +	else if (buf & DP_PCON_DSC_20_PER_DSC_ENC)
> > +		max_slices = 20;
> > +	else if (buf & DP_PCON_DSC_16_PER_DSC_ENC)
> > +		max_slices = 16;
> > +
> > +	if (max_slices == 0) {
> > +		if (drm_dp_dpcd_readb(&intel_dp->aux,
> > DP_PCON_DSC_SLICE_CAP_1,
> > +				      &buf) < 0) {
> > +			drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_SLICE_CAP_2\n");
> 
> Its SLICE_CAP_1.
> 
> > +			return;
> > +		}
> > +
> > +		if (buf & DP_PCON_DSC_12_PER_DSC_ENC)
> > +			max_slices = 12;
> > +		else if (buf & DP_PCON_DSC_10_PER_DSC_ENC)
> > +			max_slices = 10;
> > +		else if (buf & DP_PCON_DSC_8_PER_DSC_ENC)
> > +			max_slices = 8;
> > +		else if (buf & DP_PCON_DSC_6_PER_DSC_ENC)
> > +			max_slices = 6;
> > +		else if (buf & DP_PCON_DSC_4_PER_DSC_ENC)
> > +			max_slices = 4;
> > +		else if (buf & DP_PCON_DSC_2_PER_DSC_ENC)
> > +			max_slices = 2;
> > +		else if (buf & DP_PCON_DSC_1_PER_DSC_ENC)
> > +			max_slices = 1;
> 
> Use switch here as well.
> 
> > +	}
> > +
> > +	pcon_dsc->max_slices = max_slices;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_BUF_BIT_DEPTH,
> > &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_BUF_BIT_DEPTH\n");
> > +		return;
> > +	}
> > +	switch (buf & DP_PCON_DSC_BIT_DEPTH_MASK) {
> > +	case DP_PCON_DSC_DEPTH_8_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 8;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_9_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 9;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_10_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 10;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_11_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 11;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_12_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 12;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_13_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 13;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_14_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 14;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_15_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 15;
> > +		break;
> > +	case DP_PCON_DSC_DEPTH_16_BITS :
> > +		pcon_dsc->line_buf_bit_depth = 16;
> > +		break;
> > +	default :
> > +		pcon_dsc->line_buf_bit_depth = 0;
> > +	}
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > DP_PCON_DSC_BLOCK_PREDICTION, &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_BLOCK_PREDICTION\n");
> > +		return;
> > +	}
> > +	if (buf && DP_PCON_DSC_BLOCK_PRED_SUPPORT)
> > +		pcon_dsc->blk_prediction_support = true;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > DP_PCON_DSC_ENC_COLOR_FMT_CAP, &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_ENC_COLOR_FMT_CAP\n");
> > +		return;
> > +	}
> > +	pcon_dsc->color_fmt_mask = buf;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > DP_PCON_DSC_ENC_COLOR_DEPTH_CAP, &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_ENC_COLOR_DEPTH_CAP\n");
> > +		return;
> > +	}
> > +	pcon_dsc->color_depth_mask = buf;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > DP_PCON_DSC_MAX_SLICE_WIDTH, &buf) < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_MAX_SLICE_WIDTH\n");
> > +		return;
> > +	}
> > +	pcon_dsc->max_slice_width = buf;;
> > +
> > +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_BPP_INCR, &buf)
> > < 0) {
> > +		drm_err(&i915->drm, "Failed to read
> > DP_PCON_DSC_BPP_INCR\n");
> > +		return;
> > +	}
> > +	switch(buf & DP_PCON_DSC_BPP_INCR_MASK) {
> > +	case DP_PCON_DSC_ONE_16TH_BPP:
> > +		pcon_dsc->bpp_precision_incr = 16;
> > +		break;
> > +	case DP_PCON_DSC_ONE_8TH_BPP:
> > +		pcon_dsc->bpp_precision_incr = 8;
> > +		break;
> > +	case DP_PCON_DSC_ONE_4TH_BPP:
> > +		pcon_dsc->bpp_precision_incr = 4;
> > +		break;
> > +	case DP_PCON_DSC_ONE_HALF_BPP:
> > +		pcon_dsc->bpp_precision_incr = 2;
> > +		break;
> > +	case DP_PCON_DSC_ONE_BPP:
> > +		pcon_dsc->bpp_precision_incr = 1;
> > +		break;
> > +	default :
> > +		pcon_dsc->bpp_precision_incr = 0;
> > +	}
> > +}
> > +
> >  static int intel_dp_get_max_rate_gbps(struct intel_dp *intel_dp)  {
> >  	int max_link_clock, max_lanes, max_rate_khz, max_rate_gbps; @@ -
> > 6659,6 +6835,8 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
> >  		    intel_dp->dfp.max_tmds_clock,
> >  		    intel_dp->dfp.pcon_max_frl,
> >  		    intel_dp->dfp.sink_max_frl);
> > +
> > +	intel_dp_get_pcon_dsc_cap(intel_dp);
> >  }
> >
> >  static void
> > --
> > 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
