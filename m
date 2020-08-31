Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4712574E0
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 09:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075D389C63;
	Mon, 31 Aug 2020 07:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65E5389C63
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 07:59:30 +0000 (UTC)
IronPort-SDR: geLO3DoV0SL0uixiCp5grMbuU/A5H0vbcRTFqgoB4jLnAXCSBzNU6e/1hfCUcf4hCD35eKvfpy
 bcqyB1wJc9kg==
X-IronPort-AV: E=McAfee;i="6000,8403,9729"; a="154456093"
X-IronPort-AV: E=Sophos;i="5.76,374,1592895600"; d="scan'208";a="154456093"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 00:59:29 -0700
IronPort-SDR: w8IbFzUC5f+UZPNjConQ4Dmp4WAm3bX1VVWV4qsGF2cOpi1Wvq0+Feky2DSKbceai5LyRsklL4
 SY7yxXIBLMCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,374,1592895600"; d="scan'208";a="296847276"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga003.jf.intel.com with ESMTP; 31 Aug 2020 00:59:27 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 31 Aug 2020 08:59:26 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 31 Aug 2020 13:29:25 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/dp: use opregion mailbox #5 EDID for eDP,
 if available
Thread-Index: AQHWfQNAjibh8wpqN0OUps/ptSw6AalR3w2g
Date: Mon, 31 Aug 2020 07:59:25 +0000
Message-ID: <c045a8a3fd024fad94fd41631c34e953@intel.com>
References: <20200828061941.17051-1-jani.nikula@intel.com>
 <20200828061941.17051-2-jani.nikula@intel.com>
In-Reply-To: <20200828061941.17051-2-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
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



> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Friday, August 28, 2020 11:50 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH 2/2] drm/i915/dp: use opregion mailbox #5 EDID for eDP, if
> available
> 
> If a panel's EDID is broken, there may be an override EDID set in the ACPI
> OpRegion mailbox #5. Use it if available.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index c57ac83bf563..d1307be196a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -8114,6 +8114,9 @@ static bool intel_edp_init_connector(struct intel_dp
> *intel_dp,
>  		goto out_vdd_off;
>  	}
> 
> +	/* Set up override EDID, if any, from ACPI OpRegion */
> +	intel_opregion_edid_override(intel_connector);
> +
>  	mutex_lock(&dev->mode_config.mutex);
>  	edid = drm_get_edid(connector, &intel_dp->aux.ddc);
>  	if (edid) {
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
