Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2284C83AAD3
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 14:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B9210F721;
	Wed, 24 Jan 2024 13:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3886110F74B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 13:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706102460; x=1737638460;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n25WpaUve7gRDpnF82cYBHxabThuddAamf3j7SaS9/A=;
 b=E5K77zXFQDByPu8l0F+wykdCA48z5hEjPRVH8RzjTcbd/ltpRU5HyWaU
 t16wa9nKp4XJyGsA8uACOS1EH9HAkmou6KNh1mfn+b2O/VduhZ1TC0/iY
 N9+VVZvz5jD+vj0FiMlNZ+2hUM6doWAVuqbHsqH2YqErvZBxBLymYx/1j
 yV+6Bhbwl7w9e2nZAg0YZks5nVhOA99VV7yvwiaacEDkVsWb9nulkxjWU
 4aG0eSvDYplB7wfrkaAv3aFLTHN7JFZEegWQRWLP4whfqUDV/ZrnBFJQi
 XkO+2/c8z+zZeK6WVhvv8Iha113sFa580dzrYtRc7G2VbDfVpHlZFo8ZV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="405591667"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="405591667"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 05:20:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="909659864"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="909659864"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 05:20:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 05:20:58 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 05:20:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 05:20:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 05:20:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vt5Wx53M2FGNcAuvkZAdafcHKytUuzEe/f6HDfDKih1NCdDL+yV/a4BOo9ITjH+uA1juXMdf5Y67zRptqup49Vefo3fRP31gCHkveWeKnCq6hpS27kV1eY6tzeeMcK+mAra1wxE31mm7Gi+7DxBBKQKv0sangO0dQixW2YJVt59FH4/3n5n1rxiGL12yGzzrvQAepfXfaBzp/Kq6IRObdFDJ+q3Gmyog2RoOTi4LmpGpq76NNnleWjl+aipx2zGYTUaGgzjv9sCvAIEEqnzIysW+N2oJ6ss5xO2wNfJDQ2z8oByPU3Vc/G8LqS/kBi5G4pzpq2n44t1yNPMqLGJGCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dpv9PqECmy6Gnka/95r/5tBEtbjf+BE2jbFWgJWWv80=;
 b=LgnTjno4gwdxv5y3ZoTPqR7xNphDamIU+0yJIgW1nFmggZCdmIW8RmoHUsH7wfbn8pTtD1dBxQ33cGxDHtMNdXT4PDOlqJK2OFWZjHxj0b5udcHZpJ43K/EDrmIrXp5vTrXb9U78M5cNs/4acUAsq6+2DBvEiRzIyACCXSZ54GjNO/21jw5te9rFdVLJbD1dCwDLL+Pnh1baLXy8L8wuekE86NfrDwoeYDRE0vsKOmPUu0WnFOFFkI7AxgWN9rwkeZjak03zMa2cbVkYXLBpQut3t+dhccR4+Xjoagae75NIlfuO1/7WLz485Sy7gEE6reiu3kefw1TLvAqMCYlLdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB5862.namprd11.prod.outlook.com (2603:10b6:510:134::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 13:20:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7228.023; Wed, 24 Jan 2024
 13:20:53 +0000
Message-ID: <c1f454e1-b461-45de-a388-3751db5eade1@intel.com>
Date: Wed, 24 Jan 2024 18:50:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/i915/hdcp: HDCP Capability for the downstream
 device
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
 <20240112074120.159797-3-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240112074120.159797-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0184.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB5862:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f49cf62-845b-443e-75a0-08dc1cdf4a3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y3BeoAIwVJeGtkCtFndppVR6G9hZjs87lCuJET0MaJOMeVRimiP91kGmyHTujCKAp9G7hSIl3PsglvbBxQIiPv/ehCzLB7sPK9r3C+U/JyvUH7E1issakrCpAwLYv3837g/Ko2r97+dMzhH2hSq+sEDXj58FCVogvhDoUg+8K0jDo5S5LqnqIDZu22r3BWYFYElovy3uOmyJULGcMJBt1i4cAajKBj6xJHAproDCGksrSpblpqzxrGy8OpB3CnekM79H9xDp/JWwCdzeTW8i4mNg+aCtdJADJhwbRQ37+Q+3x7Wh6x3a84rSvAlvadU66rmZXFr+rPkSuK2kXsE3LB5vvMHvlmmqvVF9qPehpdsS2Wfya6CnvwV/GYKHKuxAocIn6v5E5LKS621fggzIzSMsIcvOLGH6Q+n3fm7MeGI748y1YyvhJ3GaNR7eL7qSJGjrPXLWrkdcXEDbGPCLMcKNlSDsmKd0mMutTfHCEtyE+w3vBLJr6Rr4uL68FRFOiRWYyQOD3Ymog/6S7HwaC5BIVHFHmPfz8K9WMjVmE/re2HOx/kaL+tlK0SnLmVsfsz4Bd6k9ndZm8rxEEhZC96DtfzA/q/y6g2NdF5cmvohN64Pl4rjeMCbWSsVxK/CqlFrK+HOublCDLxX+IoWHNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(136003)(346002)(39860400002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(31686004)(53546011)(478600001)(6486002)(36756003)(86362001)(31696002)(2616005)(26005)(82960400001)(83380400001)(107886003)(8676002)(2906002)(316002)(5660300002)(66556008)(6512007)(6666004)(6506007)(4326008)(8936002)(38100700002)(66946007)(41300700001)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzgvQUpSenEzMUxkYWpDaXZTSDF0M3E1Q2FYZWlHdi9Pa2w2Z2NTMHQ5K0ZG?=
 =?utf-8?B?OXFUVXZQMEYyUCtrYzEvcXMxTUpsQ0ZISnZIdGIzRHB2WEtGZkJzT3haeVc0?=
 =?utf-8?B?d3NNQVBhSWNVNUkzZUJtemFZV2JjWk9kM1I3bEh5dm5DcVVtcEFzZjNTenhI?=
 =?utf-8?B?clFxN3B4K0pwMm04VjRmd1I3NDhBVGlVWkUySjFTaEM0L201UW55cG5OeXpz?=
 =?utf-8?B?cVRyZ0pTMEFDRlF4WitSRVJzc3ZyM2tpcmlCS2J6aUs4Q3lWanpKR3AxSWp5?=
 =?utf-8?B?Rk1jdFBxRjJiQUxzUWt3TWJiV09nNGhvN0xqaTI2ZWxRVDN4UDFNOXN2azhH?=
 =?utf-8?B?cGVQYlBUbktkamtrRlpBTjcyNHd0U0FCcGpBSFBBeTRWSitFa0QvMWVCZ3p3?=
 =?utf-8?B?TXVKT1pxdTJjaE15QWttaWtOejhEUk53SU0rblBCN3h0UkRZQkhoRWtWY3dt?=
 =?utf-8?B?VXJlOVV2YUFWNmRUY3ZPSjd2WjkxYjlZOFVSZDBHTmlJZnpDVVAyUFBkQVZr?=
 =?utf-8?B?ZGtRRXNWcTdRNTM2cGpaVzhWYzY0bS9Ea0hSY00xdU1lTUVpSXZFWjRNUU1y?=
 =?utf-8?B?VGZCU3lJN3ZieVZNVXhTa3VHRjdzWWF6Z0szYlBhK0V1UkVDcEZwR2JyOEw1?=
 =?utf-8?B?akhGQ2phZHZNd1M4Rk1LWi9Eb1hvbkFDdXJDRmwrdmRPcW9ucHE1NUFCSmdR?=
 =?utf-8?B?dkIxdCtyRkk5aGtXKzV3dDFobEdNRzlJd2xUcG9CMXNFWlArSlVvRVFPVU43?=
 =?utf-8?B?THNHVXpMaXlQMGVBOER0RmxtdFF5MnJnY3c1cVdRNko4TllQLzl1bXJEUC94?=
 =?utf-8?B?VkVrK29NaEYrS2pxUjNCMTVWTm02YjNhc3FxT1d6Q1BTUUZyQktxbE52bFJh?=
 =?utf-8?B?a0NVQng1YitmVEMrdDVpL3U5Uy8wUzlxb0dTUjJPM01oS2hDaFBoSldGR2RH?=
 =?utf-8?B?SVFjV0Q5ektnSVV4dkQ0UzNmbVl5MGF0aWQ1MnZ6YS9KVE14UEtLV2hrUlM4?=
 =?utf-8?B?VWRJd0wrR0J4TEZIZmdhSU1aT09RMk1ZTitaeld4ZGVWMFo5SStCekxkTDgv?=
 =?utf-8?B?NjMxTUNNK2QxQ2hROHNuUUhsdzFNcyt4Y2pkVjFkckIwVnFySU1qMHRrT0FD?=
 =?utf-8?B?VjV5RzZSU0hyZzYwY2swQTROd0Z1TXYrOW01TFpPY0x5ekFUdUw3M3pKS2F3?=
 =?utf-8?B?L3prc1lkNXUvdlRZTXQzbWwzcGNMMHZ6V3pVcmRZUW54N2dvNWx1cHh2RERs?=
 =?utf-8?B?ZHgzWjBYb1F6SWlxK3VlUzc2Z2E2c2RTdEpSeldaZVBzNnlrbjFnc3hWc3lV?=
 =?utf-8?B?ZnkvMndPemEwYzJpNnVCZWJnN094YllUSEJVQTlpRFA4Sk4rVkVSeGdkZjNy?=
 =?utf-8?B?UUFseFFDRHhIdTJBK2VZL3p2ajArZmd0ZVhKaUN0NUp0c1NSY3ZjS21iRWZL?=
 =?utf-8?B?ZkN2NzlBdFBOMFlJSS9qM3ozaGtSWURRQUgycnZMdDhzMHh4dEp3ZXpWTVY3?=
 =?utf-8?B?MkUyazlGMHJFaytqOUtkdlRlMVdQVkZmK0Jxd3RpRjNQcnRyamNMRlpwaWhl?=
 =?utf-8?B?N1lySlA3MTFEMS9DelU4MFo1V2VXK0Jyd3I4S3Zhc1ZWYjkwVWp5YUE0Umhs?=
 =?utf-8?B?R3lzVHJkTjJjRlNaUTd5RWFpWFV6MnNTZ0FXUnpVRnBEdmlZRDZRZkdrM25t?=
 =?utf-8?B?NS9PbVJ3akVyaER5VmFIQ2s3YVNROXZDYXREUno2RGZXb2s3QmtnNXVSM015?=
 =?utf-8?B?YTJEQUtoQXVibEF4c2ZQQ0FnUTRvTEZjUzFUK1ZTSWRHU1ZIWEZublpEaE5y?=
 =?utf-8?B?TElsY0NCMldUTG9Mc1BuQ1FvYStEclhRMXAveExzMWNYZ2E4OTh3UU93eVg0?=
 =?utf-8?B?aUZIbFZpcU1ldUNrWVIrWFdmaGF6L3o2Y3FwYi84STFEKzNRMi94Q3k5S3R0?=
 =?utf-8?B?QmJNMEdzQ1RoQmpLTGpROWc0Q1dVMWJXVVJOc1RiMTRwN1hOZnBMRUpZM1d6?=
 =?utf-8?B?UjBiUE5MWVdaQll4RDZhdHBhb0tVSncxbzV3VkE1c243K0U5RWRSM2hBYlBv?=
 =?utf-8?B?eVp3akRiamZiVHZvc1pMenhYclowV3JLZlB2VnZTbTNXcG1hZ1k2dkFpUDVG?=
 =?utf-8?B?ckN4NlpXYm93RHVVTVBobFpySkVFUFpWRnFObkFZd0tLZEZQbDgwckJmanUr?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f49cf62-845b-443e-75a0-08dc1cdf4a3b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 13:20:52.9338 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n7jhyM3VOYUeemHSaR25yU+UoTlgKp2o76hXb9CpCaab6hqsGDO1XWTdaL1Oycw1tUlF6TfICFCQUPXRPP+Xjiy9C06TOcCCkc5+d2c6B/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5862
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


On 1/12/2024 1:11 PM, Suraj Kandpal wrote:
> Currently we are only checking capability of remote device and not
> immediate downstream device but during capability check we need are
> concerned with only the HDCP capability of downstream device.
> During i915_display_info reporting we need HDCP Capability for both
> the monitors and downstream branch device if any this patch adds that.


I agree cases where MST hub/docker and sink are of different 
capabilities, this creates a confusion.

with this change, perhaps kms_content_protection IGT can also be changed 
to check for MST hub's capability.

Only thing is that for hdmi the 'remote_req' doesnt make sense.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  | 19 +++++++++++++++----
>   .../drm/i915/display/intel_display_types.h    |  2 +-
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  4 ++--
>   drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
>   drivers/gpu/drm/i915/display/intel_hdcp.h     |  2 +-
>   drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>   6 files changed, 23 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d951edb36687..457f13357fad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -210,7 +210,8 @@ static void intel_panel_info(struct seq_file *m,
>   }
>   
>   static void intel_hdcp_info(struct seq_file *m,
> -			    struct intel_connector *intel_connector)
> +			    struct intel_connector *intel_connector,
> +			    bool remote_req)
>   {
>   	bool hdcp_cap, hdcp2_cap;
>   
> @@ -220,7 +221,7 @@ static void intel_hdcp_info(struct seq_file *m,
>   	}
>   
>   	hdcp_cap = intel_hdcp_capable(intel_connector);
> -	hdcp2_cap = intel_hdcp2_capable(intel_connector);
> +	hdcp2_cap = intel_hdcp2_capable(intel_connector, remote_req);
>   
>   	if (hdcp_cap)
>   		seq_puts(m, "HDCP1.4 ");
> @@ -307,7 +308,12 @@ static void intel_connector_info(struct seq_file *m,
>   	}
>   
>   	seq_puts(m, "\tHDCP version: ");
> -	intel_hdcp_info(m, intel_connector);
> +	intel_hdcp_info(m, intel_connector, true);
> +
> +	if (intel_encoder_is_mst(encoder)) {
> +		seq_puts(m, "\tHDCP Branch Device version: ");
> +		intel_hdcp_info(m, intel_connector, false);
> +	}
>   
>   	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
>   
> @@ -1153,7 +1159,12 @@ static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
>   
>   	seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
>   		   connector->base.base.id);
> -	intel_hdcp_info(m, connector);
> +	intel_hdcp_info(m, connector, true);
> +
> +	if (intel_encoder_is_mst(connector->encoder)) {
> +		seq_puts(m, "\tHDCP Branch Device version: ");


Perhaps MST HUB HDCP version?


> +		intel_hdcp_info(m, connector, false);
> +	}
>   
>   out:
>   	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d69..aa559598f049 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -507,7 +507,7 @@ struct intel_hdcp_shim {
>   
>   	/* Detects whether sink is HDCP2.2 capable */
>   	int (*hdcp_2_2_capable)(struct intel_connector *connector,
> -				bool *capable);
> +				bool *capable, bool remote_req);
>   
>   	/* Write HDCP2.2 messages */
>   	int (*write_2_2_msg)(struct intel_connector *connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index bec49061b2e1..90b027ba3302 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -649,13 +649,13 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
>   
>   static
>   int intel_dp_hdcp2_capable(struct intel_connector *connector,
> -			   bool *capable)
> +			   bool *capable, bool remote_req)
>   {
>   	struct drm_dp_aux *aux;
>   	u8 rx_caps[3];
>   	int ret;
>   
> -	aux = intel_dp_hdcp_get_aux(connector, true);
> +	aux = intel_dp_hdcp_get_aux(connector, remote_req);

Inline with the comments on the previous patch, this would also be 
required to change.

Otherwise the patch looks good to me.


Regards,

Ankit

>   
>   	*capable = false;
>   	ret = drm_dp_dpcd_read(aux,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index c3e692e7f790..b88a4713e6a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -161,7 +161,7 @@ bool intel_hdcp_capable(struct intel_connector *connector)
>   }
>   
>   /* Is HDCP2.2 capable on Platform and Sink */
> -bool intel_hdcp2_capable(struct intel_connector *connector)
> +bool intel_hdcp2_capable(struct intel_connector *connector, bool remote_req)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> @@ -186,7 +186,7 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>   
>   	/* Sink's capability for HDCP2.2 */
> -	hdcp->shim->hdcp_2_2_capable(connector, &capable);
> +	hdcp->shim->hdcp_2_2_capable(connector, &capable, remote_req);
>   
>   	return capable;
>   }
> @@ -2374,7 +2374,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
> -	if (intel_hdcp2_capable(connector)) {
> +	if (intel_hdcp2_capable(connector, false)) {
>   		ret = intel_hdcp_set_streams(dig_port, state);
>   		if (!ret) {
>   			ret = _intel_hdcp2_enable(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index a9c784fd9ba5..72268e593cec 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -39,7 +39,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>   			    const struct drm_connector_state *conn_state);
>   bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
>   bool intel_hdcp_capable(struct intel_connector *connector);
> -bool intel_hdcp2_capable(struct intel_connector *connector);
> +bool intel_hdcp2_capable(struct intel_connector *connector, bool remote_req);
>   void intel_hdcp_component_init(struct drm_i915_private *i915);
>   void intel_hdcp_component_fini(struct drm_i915_private *i915);
>   void intel_hdcp_cleanup(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7020e5806109..d7feef05bc47 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1733,7 +1733,7 @@ int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port,
>   
>   static
>   int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
> -			     bool *capable)
> +			     bool *capable, bool remote_req)


>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	u8 hdcp2_version;
