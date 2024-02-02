Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03E7846D0F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 10:56:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D650610E768;
	Fri,  2 Feb 2024 09:56:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mcxmmyx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF2B10E768
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 09:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706867780; x=1738403780;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FYdWIzi26/I7rCeSOzN/dBTyr9BPHisSBv2SGrvC0V8=;
 b=Mcxmmyx3bTMaMAuKBuBdCgS0EdxWo7zgvT9CLVygax3I/ZMlc5BLgD+9
 u1HYES6n845X/rdbWrOCFUwRpD0ySXSvJ2ARet/Z+uK0b2C7Rz/sA7uyr
 O2I5ZcrCO21p7wvwsOZrF0qbHSUan1chmiH9/91I23iUA3zx3voKa6PCc
 x4M+a3v7u5lOt6XRjSGNRQMJj8E6ppztY6yl5TyYTJz6dOGT6c1eo/QBa
 5qP/vgmxRINjNC6/8C+XpIrP8Ro/g8mfXiAVY9Q846LjKNYZA00NEiDQ2
 /kQ/lKd3JcQu36DFqe+N4F592umTv5jSCBpE1GakyFELCfrgwak/YYAzZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10734808"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="10734808"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 01:56:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4660965"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 01:56:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 01:56:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 01:56:17 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 01:56:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2zTwjRaVBGlhdJsKzijWRdQdBAxkjoh3K2V3PxQuPi50uh2kCKVml+ZqLI69uiF1nWg9s+pscMfLzk5RGh6AciJ2QEGvz2fiwEyur4bsiHph8mq/7WyA8yVgEH3HUutCgt1yGiPt4g07vn2WuvWc0zM9d8B6fnct5qkdC8FhcujBq6r/LLH0K4tw3scpWSuJihxGvNX0XFs9WaVwU4FO0Zj3qvCdQg89MgCiHRrshZE8wSCIkRkUJbSxRhTkfv3XmaHFOJyly4sN7XDiUWSNpcd2VAOcD/gtsANAxIMNu2e6L+vvDZfPMU6bUJNhe9gTbedv9qVAd+Gk107owWdfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YpFnN4JEkO4mqkXly90eUrA4AddurHrozZ0yBXh4t1w=;
 b=gEODIV6aed6tVwt+W+EXvjY0Lv7OkXJJ4ggIgNsdztO2cUzlbDWCp+i/6r7RBg0TJkAXybpB60JozgpbTjxhlqeZRnn7/jfqyGONlFAs/8MqepgrJ8dXx9W7bcXa3LkahzlMZFHeSA+jnIo9ZWtGImNo//J48gZ5Pdcv5anRNEVdb+XEoOC8cboYPgb2bA5XJd8jaTZlkfUF57B81azvyj7OiD6YH/GmFxU9vjghVmh1WF+RzxpavbBDCPvQCEP1jyXuH/njuYLymPTfIA2p7YP199XbXZC/nppqBkEIP96FKUPGeagB+NmkZBl7u824JsLvsoO89xTr4R8VjzLg9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5387.namprd11.prod.outlook.com (2603:10b6:408:11c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 09:56:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 09:56:15 +0000
Message-ID: <6fc619ad-96dd-4c45-8728-73f726fa555c@intel.com>
Date: Fri, 2 Feb 2024 15:26:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] drm/i915/hdcp: HDCP Capability for the downstream
 device
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240202063852.1076862-1-suraj.kandpal@intel.com>
 <20240202063852.1076862-7-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240202063852.1076862-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5387:EE_
X-MS-Office365-Filtering-Correlation-Id: 978fc908-8e97-4483-0184-08dc23d531ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RBJvdBFRRpRoo87yqWZGFY/GcPaU558hNETUXg2F8TyPYdo/u09CNrXfc3CCrDtwS/3sPzwSLcIX5MtMAowgOUasOFF88NIctsts4JEGGvM0r2VdDXuZ0C/Lmsdjd8OKj5tyM8BY69ppiaw+d0jhGjGGmj/WYWUvk0ZvtL8+/e6seeiwwGdS1LcQsqupjKo2p3QcA22lmNSu6hCfEdwV+Am5+JODKkm3sZpVz1oIKEsw4p1FzDjvXdVPvgycb54ser9e7f0YphrHKfqHR6HX+yxiBf1qzSjjvd99NPtWS7yhHy9ulAyXDe8D4xorZEybxYQ/tr8OcQvJZdGbrLIefHLhhVlGBHr/FEht/lOinyWV4Ln0x1QaER5BwD/27kvicutB0OszH+8xyPSnMaiXWEU9fgYrIUbxEedDvhwIeIo6dw2PxV2GLA3eRZlaJ8By8ujxUlGTkZyLlxdGqbNweEGsKXWKKKiF7iOiRg5gcICHEmGTX9cb52VE88oLFoaRWVZB9WErsHQMiCAwM+6ku/SADaGaxoO1esw4OHc1S0K39IJxc+gLxTaUUnPUl5J547IngM6GjHR17/snhg7s/dZn3Mw4XUF3/LsBz/5n44xakdZFbcCNO4BP5/nD3e4hC3HZlEgujIUO3KBiFB9qvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(39860400002)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(8936002)(8676002)(4326008)(31696002)(5660300002)(2906002)(478600001)(6512007)(86362001)(36756003)(316002)(66946007)(66476007)(66556008)(82960400001)(31686004)(83380400001)(38100700002)(26005)(107886003)(2616005)(6486002)(6666004)(41300700001)(53546011)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am9SQ3Z4WFlBdEkrcmNtV0J6N21LUjdIbENrMVhldE9PK1cycW9XMVRTWUdm?=
 =?utf-8?B?OHJIWlN3OEcraHBwVk5UMy9GcjlzSnpsazBUbkY4VHBtTXlvcjBRTDNXaEFu?=
 =?utf-8?B?Tnl4aXRmL2NJenVOL1N2TE1BUmhSYXcrTzhMMkxYaFpnekk5N2owaWZhTkVw?=
 =?utf-8?B?cUJldWxhRzg4aGFiSEdWV3FMK0VySDNpb1B0Z1g2YXphT1YvUlV0TTVsTk41?=
 =?utf-8?B?ZXNsS2ZRNFhka2lDQTR5cHdNR1MrdHlXNWFPSVBHU21BWlpWNXUxM1M5a1lz?=
 =?utf-8?B?RkVwSDJleFI4WFhYSVpLSTNDQ3dSK2pZQW5VT0dLekg0OFlZQ3J3RG5Ra0M3?=
 =?utf-8?B?ME4rbEp5cC9VWTIvbzNxdzhyeGdFYkMrNmZPY0pKZVUyVjF4bTJwem93OVhv?=
 =?utf-8?B?cTZqaHJvQURiVGFiQWZvZDg2cDhweithdUZLOW1FWjMxSEFnWW96Wm9kTFFq?=
 =?utf-8?B?eHVXYnowRndGcTBvaWpBVWdMVHo1eEE0NnNOakpWcFg5YXlhcFRtdjd1azJj?=
 =?utf-8?B?cWREM1Y3N1FpTVhyaGoyYkJZOUNlM0ZjYnQzZEtsUWhDdkVaUkpXSXJ3Y0dl?=
 =?utf-8?B?a0thZFl6V08wdDR0cEo0bm9rT0hnYnB0VncybWo0M2c0L2lqVUJ5N2VIN3Nn?=
 =?utf-8?B?bHlwSGlyZzJtUEtkZlZHL0R5Q3Jra0N0R0VjeE9jZDBkNDJUMkxuRlpranNw?=
 =?utf-8?B?SGM1dnZELzlqSk5vRmVsWThxUStCUWVtZG1oTjdYeHUvZ1NKaXptd0xRME9r?=
 =?utf-8?B?cXh4OG5YWjhwMGlaZEErWnBNZWdPcHV2aSt1emRHOVZoYU1NUzFnODNDUTQx?=
 =?utf-8?B?RFQydks3S3VGNC9NZkF5eHVQSFp3eUprVVVZNUE0VkRxSFFhdzBrRUJsNEw0?=
 =?utf-8?B?RkV2Zmw3OFdYckhQdWszVFhiWjNMSTl1YUt0TFArL2JVdzVmS2c3Q2Q2eXQx?=
 =?utf-8?B?dmJyelFKK1gwTmtNUG1XWGw2Z25GOXVhazBzK01wcjFOMnZUTytXNDdwdGY2?=
 =?utf-8?B?Tmkrc1lla3UxSTFZZmJXK20xY09UWWYzUHVzZERoc0h1UHgrZnRGaTNiNDls?=
 =?utf-8?B?djFaUVZWc29XUFpRdnoxU3JFUGlGTWllblpkMHF4dnFnb1o3T0hQMnZ5SGo0?=
 =?utf-8?B?SXhSVVRLZDZuVGwrV1ViOXNabEhiWnRCeEVNQlZIZkgxMXh0QlNhQjVWTDFT?=
 =?utf-8?B?WS82bUowZkJqYUdRYW0way9Gcm1zVGtmR2p5TzJWNEs5aUFxZ3ZuMkY2R0l3?=
 =?utf-8?B?Ty9BU3U3NVFIempGNWd4TlR6cm5LWldDSFFVc25vK3RUcXBhTktUbkFPMk5G?=
 =?utf-8?B?WDNIRE1UU21wTUcvRDBLSTQyd0plT21DUlNyRGtUNlFIZ2JVQWFqR21HT0FM?=
 =?utf-8?B?VGFKRVRpaE90dEN4SlBLU2tiVEV0MmFvUTJIaWpCRFVsL3RUSVJORHhtMm53?=
 =?utf-8?B?b09IVFhpampYcVVQbDFHNGFFVUY2NU5NVDczOEtpTzhXVm04YXRyckI4aVlB?=
 =?utf-8?B?QkFvVnNOdlYxMC9vcmViSWJCdmVYejEvN0VCanJ5eWdNdWhLTURxUlUzamRT?=
 =?utf-8?B?U3llQWFKbjZPSGJWczAxWTNPbkdibnRkL2VrUENRNEFJZk9kaHhhSnFkYVdJ?=
 =?utf-8?B?MDhmUncxSnpudWg5MEdPVGFsT28vc3Z5V2lBRm1WNWYvLy9LRDZaLzlJVFdR?=
 =?utf-8?B?QkU0c0xVTjZJTTdETzZyRW9sN3FTUllDcWtKdnJpZ21iYjgreXdUT2hsUVFT?=
 =?utf-8?B?S2c5cTBQZEVBVURjeHdzSjdKSjR1L2kzbWFHSXVKSGR3VFFxV3NoTzk0a2h6?=
 =?utf-8?B?UGtXaVNHQkl4N0JlaWErNUg3VlRLbGsrdWh4RVNQdTU4V1UvdUtRNTZhRFZw?=
 =?utf-8?B?MWYxZ3ZmOXVRd1R3MmRRSUxwL0lCcGJ1UjA1VFUwcms2RWYwRHlaRUpwUFc3?=
 =?utf-8?B?UEJNbXdyNnF1Z0hKazFxTEtNZGpVc1IyNGJhMlduUXJMK1Z5alBGZ3lQYUVU?=
 =?utf-8?B?c0tVUm9FV0ZrY3VxM09PeC9oeWIzZHRyK25jUlZQczE1cE1qOCticTVuSkJp?=
 =?utf-8?B?OHJOdkxsVThFZDg0aUs2dGZyTXhBUnBEWndabVFnbUg4alRVOE92WGhuKzBI?=
 =?utf-8?B?RTd4VHVndDlXMVNJV0t3YmtRbmxtTFFHaGx0WXU4N2VxQ1lTSkxrT3U2UHNB?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 978fc908-8e97-4483-0184-08dc23d531ed
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 09:56:15.5896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OSMfn4xPvSh8+dQ00rnBx4y6lY+Ko23VXPoSg1vLwFtmpm7sZKfKCaUHMkSELj+AzOLc9BvGk9qi8yg/CPbXQ28s4N4MaqvptZR36nQQOxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5387
X-OriginatorOrg: intel.com
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


On 2/2/2024 12:08 PM, Suraj Kandpal wrote:
> Currently we are only checking capability of remote device and not
> immediate downstream device but during capability check we need are
> concerned with only the HDCP capability of downstream device.
> During i915_display_info reporting we need HDCP Capability for both
> the monitors and downstream branch device if any this patch adds that.
>
> --v2
> -Use MST Hub HDCP version [Ankit]
>
> --v3
> -Redefined how we seprate remote and direct read to make sure HDMI
> shim functions are not touched [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  | 26 +++++++++++++++----
>   1 file changed, 21 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 6f2d13c8ccf7..41458f1cae38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -188,7 +188,8 @@ static void intel_panel_info(struct seq_file *m,
>   }
>   
>   static void intel_hdcp_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> +			    struct intel_connector *intel_connector,
> +			    bool remote_req)
>   {
>   	bool hdcp_cap, hdcp2_cap;
>   
> @@ -197,8 +198,13 @@ static void intel_hdcp_info(struct seq_file *m,
>   		goto out;
>   	}
>   
> -	hdcp_cap = intel_hdcp_capable(intel_connector);
> -	hdcp2_cap = intel_hdcp2_capable(intel_connector);
> +	if (remote_req) {
> +		intel_hdcp_remote_cap(intel_connector, &hdcp_cap,
> +				      &hdcp2_cap);
> +	} else {
> +		hdcp_cap = intel_hdcp_capable(intel_connector);
> +		hdcp2_cap = intel_hdcp2_capable(intel_connector);
> +	}
>   
>   	if (hdcp_cap)
>   		seq_puts(m, "HDCP1.4 ");
> @@ -285,7 +291,12 @@ static void intel_connector_info(struct seq_file *m,
>   	}
>   
>   	seq_puts(m, "\tHDCP version: ");
> -	intel_hdcp_info(m, intel_connector);
> +	intel_hdcp_info(m, intel_connector, true);

This seems to be wrong, If its not an MST then we dont want to read remote.

this should be something like:

seq_puts(m, "\tHDCP version: ");
         if (intel_encoder_is_mst(encoder)) {

         intel_hdcp_info(m, intel_connector, true);
                 seq_puts(m, "\tMST Hub HDCP version: ");
                 intel_hdcp_info(m, intel_connector, false);
         }

else {
intel_hdcp_info(m, intel_connector, false);

}

Regards,

Ankit


> +
> +	if (intel_encoder_is_mst(encoder)) {
> +		seq_puts(m, "\tMST Hub HDCP version: ");
> +		intel_hdcp_info(m, intel_connector, false);
> +	}
>   
>   	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
>   
> @@ -1131,7 +1142,12 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
>   
>   	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
>   		   connector->base.base.id);
> -	intel_hdcp_info(m, connector);
> +	intel_hdcp_info(m, connector, true);
> +
> +	if (intel_encoder_is_mst(connector->encoder)) {
> +		seq_puts(m, "\tMST Hub HDCP version: ");
> +		intel_hdcp_info(m, connector, false);
> +	}
>   
>   out:
>   	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
