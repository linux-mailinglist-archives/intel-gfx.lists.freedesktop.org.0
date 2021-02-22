Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7D8321092
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 06:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BB789DE1;
	Mon, 22 Feb 2021 05:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B1F89DE1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 05:57:07 +0000 (UTC)
IronPort-SDR: VdKMx6IQ/d1kl/h9cbaMsLR62dZHb0C/bxl72sCS2QD/IlhZ2B373KnhMKximKWfA9YBMjNdIl
 ZaqHJPTL4F0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="164178302"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="164178302"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 21:57:07 -0800
IronPort-SDR: 3Ycpc0WXYN3KZTrbLOGxQnNTKW+AcTMWaCly8by0KHY1I+8iKxBU4LFb3X4q8kCXs0PzgaomAh
 VLJvIPaAyc1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="441273193"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga001.jf.intel.com with ESMTP; 21 Feb 2021 21:57:05 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 05:57:03 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 11:27:00 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 4/9] drm/i915/edp: read sink MSO
 configuration for eDP 1.4+
Thread-Index: AQHXAIW0Is+QbKfVf0ym/a0VoLnJ/6pjvL6Q
Date: Mon, 22 Feb 2021 05:57:00 +0000
Message-ID: <fbce25a5e730455d9e5b82197620f72f@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <24ef61574e5af12cd86d5b85afbfbd4ac2f9de25.1613054234.git.jani.nikula@intel.com>
In-Reply-To: <24ef61574e5af12cd86d5b85afbfbd4ac2f9de25.1613054234.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 4/9] drm/i915/edp: read sink MSO
 configuration for eDP 1.4+
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Varide,
 Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
> Sent: Thursday, February 11, 2021 8:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Varide, Nischal <nischal.varide@intel.com>
> Subject: [Intel-gfx] [PATCH v3 4/9] drm/i915/edp: read sink MSO configuration for
> eDP 1.4+
> 
> Read and debug log the eDP sink MSO configuration. Do not actually do anything
> with the information yet besides logging.
> 
> FIXME: The pixel overlap is present in DisplayID 2.0, but we don't have parsing for
> that. Assume zero for now. We could also add quirks for non-zero pixel overlap
> before DisplayID 2.0 parsing.
> 
> v3: Add placeholder for pixel overlap.
> 
> v2: Rename intel_dp_mso_init -> intel_edp_mso_init

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++++++++
>  2 files changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ebaa9d0ed376..71611b596c88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1487,6 +1487,8 @@ struct intel_dp {
>  	int max_link_lane_count;
>  	/* Max rate for the current link */
>  	int max_link_rate;
> +	int mso_link_count;
> +	int mso_pixel_overlap;
>  	/* sink or branch descriptor */
>  	struct drm_dp_desc desc;
>  	struct drm_dp_aux aux;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8d7ca03453e5..48e65b9a967a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3516,6 +3516,37 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp
> *intel_dp)
>  	}
>  }
> 
> +static void intel_edp_mso_init(struct intel_dp *intel_dp) {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	u8 mso;
> +
> +	if (intel_dp->edp_dpcd[0] < DP_EDP_14)
> +		return;
> +
> +	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_MSO_LINK_CAPABILITIES,
> &mso) != 1) {
> +		drm_err(&i915->drm, "Failed to read MSO cap\n");
> +		return;
> +	}
> +
> +	/* Valid configurations are SST or MSO 2x1, 2x2, 4x1 */
> +	mso &= DP_EDP_MSO_NUMBER_OF_LINKS_MASK;
> +	if (mso % 2 || mso > drm_dp_max_lane_count(intel_dp->dpcd)) {
> +		drm_err(&i915->drm, "Invalid MSO link count cap %u\n", mso);
> +		mso = 0;
> +	}
> +
> +	if (mso) {
> +		drm_dbg_kms(&i915->drm, "Sink MSO %ux%u configuration\n",
> +			    mso, drm_dp_max_lane_count(intel_dp->dpcd) / mso);
> +		drm_err(&i915->drm, "No source MSO support, disabling\n");
> +		mso = 0;
> +	}
> +
> +	intel_dp->mso_link_count = mso;
> +	intel_dp->mso_pixel_overlap = 0; /* FIXME: read from DisplayID v2.0 */
> +}
> +
>  static bool
>  intel_edp_init_dpcd(struct intel_dp *intel_dp)  { @@ -3599,6 +3630,8 @@
> intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  	 */
>  	intel_edp_init_source_oui(intel_dp, true);
> 
> +	intel_edp_mso_init(intel_dp);
> +
>  	return true;
>  }
> 
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
