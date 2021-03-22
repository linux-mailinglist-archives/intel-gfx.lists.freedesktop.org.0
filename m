Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 127CD34394A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21E16E0CC;
	Mon, 22 Mar 2021 06:15:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BD76E0B7;
 Mon, 22 Mar 2021 06:15:21 +0000 (UTC)
IronPort-SDR: yO8QSuvJOWOfUlOXqWTeosIFUUYazPE4/NFY34uCY1Hzd5ZYrfZ/SXMcI+LKGkZF1MDyUmNxsg
 4iozwjuxbeRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="170169580"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="170169580"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:15:21 -0700
IronPort-SDR: 1CvBvXDB4VyDS30hkPiGvnNeDJWo0f4i52znLnLSeNH3PDYcc9yQcjRsUDhp5/OyO3tPkbfVmp
 EvC7uiS4ylBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451621154"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 21 Mar 2021 23:15:20 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sun, 21 Mar 2021 23:15:19 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 11:45:17 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Mon, 22 Mar 2021 11:45:17 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 3/3] drm/i915/display: Configure HDMI2.1 Pcon for FRL
 only if Src-Ctl mode is available
Thread-Index: AQHXFJ9+uLFtTEwsjUSNs6NxwTSKSqqPmwwQ
Date: Mon, 22 Mar 2021 06:15:17 +0000
Message-ID: <53662c38c348402b83ebde0e753fd5b2@intel.com>
References: <20210309043915.1921-1-ankit.k.nautiyal@intel.com>
 <20210309043915.1921-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20210309043915.1921-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display: Configure HDMI2.1
 Pcon for FRL only if Src-Ctl mode is available
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
Cc: "airlied@linux.ie" <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, March 9, 2021 10:09 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org; ville.syrjala@linux.intel.com; Shankar, Uma
> <uma.shankar@intel.com>; airlied@linux.ie; jani.nikula@linux.intel.com
> Subject: [PATCH v3 3/3] drm/i915/display: Configure HDMI2.1 Pcon for FRL only if
> Src-Ctl mode is available
> 
> Currently we see only the MAX FRL BW from PCON before going for FRL.
> Also add the check if source control mode is supported by the PCON, before starting
> configuring PCON for FRL training.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2e90359ce21f..8e401d3fd29d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2638,7 +2638,8 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> 
>  	/* Always go for FRL training if supported */
> -	if (!intel_dp_is_hdmi_2_1_sink(intel_dp) ||
> +	if (!(intel_dp->dpcd[2] & DP_PCON_SOURCE_CTL_MODE) ||

Would be good to add spec reference as well here.

With that added, this is
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> +	    !intel_dp_is_hdmi_2_1_sink(intel_dp) ||
>  	    intel_dp->frl.is_trained)
>  		return;
> 
> --
> 2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
