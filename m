Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B39B1746B99
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 10:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C2C10E2AF;
	Tue,  4 Jul 2023 08:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 162B110E2AF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688458326; x=1719994326;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NNWi/h6rlSMZw9sUC0e4Bh8mt8igNSv7cQdtm8x08to=;
 b=fEoTQ4Ms/HlfPmxZosTCjRAarfJ+r1qSglciw5gP8lso5hBU2uBGiwEr
 cro+gL1jhAKfjtq64ob0GgnCfsdpR+NyBl16DQhQ7h3rh3QQlayrRxrIj
 Pflvqkh2STXNqc4+N2ATMkBIhR0k7RS432GhFIb0/Tqwkon0Lnubunehb
 lcNPVHOWzKkJp63g1aV30+gx5Wfh72QXhqdmfEGGcybyyHpzqKw28gwGm
 lUzki/fYTnCHZ62/aXe1AF0l5clIVSat0vejJW6KcHwAei4T0/QCHjhhR
 HCnGGJ72qp+7n1tn8gch9/9P/X0rkVedUNP1JycUMdnV9G1GIkJcRgnvz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="449437430"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="449437430"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 01:12:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="832089951"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="832089951"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2023 01:12:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 01:12:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 01:12:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 01:12:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 01:12:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCEj18YYWo/YwMiwVeW6ugwMCnWzctK0VuTPWsbAVUtBtz3vGCNnkiFVZIHoBMVOjdCcGrSGXxNYxpD+MwUlHhMErFTn/zlpBIlKmtifaKEJyYwVtX/lh9zWANCSmQZT6syB92jfLqLi3ijxQDI2hIKc6fF6O3TE3WWVFSAz0GDTXR0sQUmwGGH9/kQUQofjSCbk04aQdtsXTYP/jXYWJElA1z3zlVFKoin6iAgtJ3e7Aqe6s0uU7t0KLqfvMBXoxlsJLJBaKievNGp4vb0Rm1erHBH18FI+1haRnUjo+DUazY7pMAWtIHcMK8CPYihvU4bcEmat6aP7j9J6H3Yi3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzJM+ozFfVwLfxi6BEDdC5XN8JPWkif03s9xnAY9ymQ=;
 b=Ho7a524StUkRoSzmuXOmy8DiLemvp3G5ICgHLWjogCl+oLWtaF9TIYDhusfr1uBTl5sRvVVk2qLnHatkUAHlvjXrwJw34MJlQRAsH8YC4g5XNjbwpdF7NNLgNzOTX7/EHHgEnQju7vI2VtGMEl5rdaFzLVt+6yhm8u+Ex5V+Vt7dDM0uadAvvpr6f7kqTIrr2BqOlMfK112LlKW8q6GcbjSeSmIfMj3RL1Tn8EuN6ldeHwVKj8QqIArP7RdfOvQkAQg3tjs+h9w6AMcMvin2RQa+OpI7lf3/xhtJlncFT7gdJOzFqgCw4ZNO19VGoCqhnX02IWC/rycdB4jYy/KsjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 08:11:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2%7]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 08:11:58 +0000
Message-ID: <c5a5400a-d74f-d3b6-a695-50ed2637cd66@intel.com>
Date: Tue, 4 Jul 2023 13:41:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230703101244.2489790-1-suraj.kandpal@intel.com>
 <20230703101244.2489790-3-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230703101244.2489790-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0099.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB5796:EE_
X-MS-Office365-Filtering-Correlation-Id: 717cad2e-5e65-441b-f36d-08db7c665696
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q+IAU9uoEJqWexwIC/Emb40k5gAXFuUPYU3ktKktvJqKG/JHZRQnz/7vo409n6jg+NgmeRwgpCXB3n30E/rAsINXvVlwyiBBvVaO6C6A46ELoQ4fTspUAMjFxQqNXCYkkNuxzzEKj1EqOaPSQGn2YCm18A8iFQb/kAiNafXvYCdGbn9IXD6TmeAB9fSTF2JV4lJQpMbiaOuZM6podDZMAh5RZBx7QEIZ8zhHzdzbuZj0nR0WlkUgEvArpstNflN0nDLm8LpznsPT6RqkZ0xcmF47o+zQxZqwg9YWlDYnFHaIBUob67w8HqPPOj44iGlJReIqGiL/RTcveVrdqkC+qU3r1t0X5UEdb+Ic0zcrtnBjddAixtRFsj7EWtWXz9kqGJiNkV2/gvrYa8Z83gxvgTT6EGGYmj8f5VnC0qWX/+flhmJUEWl5qdeAGlj37ih45zRK5VTca4IxWPzAU58C4mm0HWjawS0hiSQ8dRJpBNMBrINoI1v/UvUJ1Na9UPieh2kYJMCOWcAoXyN4Rae46OF7JQdGxcs1w/Af0gDcI4K8GJ+6M24EZB8sjTvLUHURVBOkPTsVBOD+30o0BZC8r7YM/dny2ZfRRNSQgZHA5dJHpbABb+LBU12CxhV1qBl640gW/EbOUM1Msr6+bdxqOA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(346002)(366004)(136003)(451199021)(6666004)(38100700002)(2906002)(6486002)(8936002)(8676002)(36756003)(41300700001)(5660300002)(478600001)(66946007)(66556008)(186003)(86362001)(53546011)(6506007)(66476007)(26005)(6512007)(31686004)(316002)(31696002)(2616005)(83380400001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGFEUnI5bURkZ0ZsSTA4SlZhOGhFbEY0OTFMc2dMcFBsV2tPZ3Uzb2loOHAz?=
 =?utf-8?B?UXF3WGRpVHhKSXhUemhacHJGMjNiTTdLVFlXbjNsR1RjaEpOT0I4QVlOT3NP?=
 =?utf-8?B?REltL29CcmlTdmR3ekpQT1B3NFJ3N0FqLzVDWlNhc0dTc1F4d2F6dE5XWGE1?=
 =?utf-8?B?dlkvYlEwMUdwS2ZBR0NMTG5CZEVpNTVzcGNPU0RKVG5tcGpNR29TNmV5UFNB?=
 =?utf-8?B?NFhtcTNlWnB2cWlBVU1KT2x5aVJpVmEyRWJ4MElhaEhjdlAwaWdMeDcwMXpF?=
 =?utf-8?B?VmdQUlhZN3hmclBsQjVyQTNKUThVTUd6M1AyeEJCaG5lcmZBNTJBVWpKbjV0?=
 =?utf-8?B?T1lackJwMnNZcFc5bG00aGVtQTVsKzlJY2dDVklVMEJtVnBjT09JS3JEZTdv?=
 =?utf-8?B?TmsxOWtrQWNhZmtUZjRGNmtNZlRJRTdxLzZWd3N3TTJWRGlHKzRDNU9DTFlp?=
 =?utf-8?B?OCtsdEpLUkRORGlhTFVleGVieXBTL3JjZVRFamhFY2d1VDVaclcrQWNXQ0FS?=
 =?utf-8?B?RFcrL1VnSEdvQzM5dHpYbHpNd3E3c3VjdmRZRi9meTFWSHUvbStKTFpTSHYv?=
 =?utf-8?B?bkpmcTBOdjhrUDNvRzFobVE3NGpadkJoRlFpV2RMY2tSNjJacWZ2U0JGaGhm?=
 =?utf-8?B?TEJOaUdITGZCQkJTcDV1R1NLNTJpUnora1B6cy9jUkhCbG9MSUNzZzl1elRP?=
 =?utf-8?B?bHJWenlLZTdVT2s1Tkl6bFRJQndlOWhrdWhwdm1JTFgxWFd5aE42N0E1aVc5?=
 =?utf-8?B?YWx1S2ZYYmFtWmpwMFZDK0QrKzFWR01hV2phR0NwV0xmSEZXSG5ZbVdtRUs4?=
 =?utf-8?B?VlBOejVkUlo3VE1YeXJrU0dSaUVEeTFlMVhQd1BjM01xNUpUclFpUDgyRXh3?=
 =?utf-8?B?TEx6RlZOeitEaituM3RoYW1YVG5RdUxORjN4MFJMMmowZXVKUHkxc2szK2pI?=
 =?utf-8?B?TlMrbldySHVyNGxHRW1ydjg3elNaYWFkbXRQYm9IamFDNjJJWFZEVFNRTkxl?=
 =?utf-8?B?OFFCN2JhdFhhNVRaSXE0clllMkhSdU9NRVdyaUxLdUk3TW91NmF5S2NFSUov?=
 =?utf-8?B?OG1ubFU1UTdvOXorQlNTejFTTG54WW9RQmtmT1J0eGgyRVBIQTRlSkdUQ05a?=
 =?utf-8?B?SjZGcitYYWN0d3NpSzJjLzNUTUdZNGNCQytrWEhDMmJvTnlFK0I1anlRMmt0?=
 =?utf-8?B?VTRMcWhNU3lDUm9zdHhTY1pEK1ZGNzlrZG41aTZSdENyaUxzbTlydXU4MTVV?=
 =?utf-8?B?NEgvWk45djBtL2IybHhkbG1neGpJN2hWVjdkZGVtYjhkZzc1TEVJV3BhSmYw?=
 =?utf-8?B?TndSYXdWeUVscVpESzdURVNQajd5Rng4TDFkNDNSSUJFcCtUZDJZeWUxdmph?=
 =?utf-8?B?T2VJTVJNMWtOTnQ1anl0N3ZpVnJVS1dVcVNPbzMrNDhicDRPOWtMUUdIOXRx?=
 =?utf-8?B?S0JYbk5EZmc0ZHo0MStVOWZneXdrdFdGeFhPNGgzWmtXQXJRcW9FdElSRm4r?=
 =?utf-8?B?RU5ON2NMc2tzWlJGRkphZkZnUExyeHQrM01WMFBjOUpGci9IY0VuU2poZlFz?=
 =?utf-8?B?NUJrSE9iKy9TamZtb2EzdjBBMGJVK25OMHFiYWdoZGVDZGVwMVJ3aEtpenZo?=
 =?utf-8?B?Uzl4T3Ira1k4djY1MUJLTkF3WE9IYThMdGNFUG41TDJTMHpjeDMwTUVjeko2?=
 =?utf-8?B?aW9XK1BHOWpWMkNEWGhuMzZkdE4vTmFJc09IZ0JTWWxPcFhJcU93RkdLTEZz?=
 =?utf-8?B?ZHdqMys5TzB0TFZ0bTJRODZkRVBzSE01TFZadEZ6Z2NqVjJFTHJaSnFvc2dU?=
 =?utf-8?B?MzBNcUV2SVo5TGZiejVjVWx3T09tU3FWN1J4WTJ6SXdCb0Ewang3V1M1Sjlu?=
 =?utf-8?B?MmlNMFhNTVdNT1RMaEN2c2w5NmpobXovYktjaFBIZkZNVVVlTjNyVFcwWWVI?=
 =?utf-8?B?d3NjdnZzZHg5S2VSTkxoejdvU2trUEpUTXY1RnBwYnczaXd6aWJIbGZRbnRw?=
 =?utf-8?B?R1RnV01KbzZMUndPRDdqR1hRSEQ0Sk0zcENJbmY3WXVWMThkNHJGbjBubkxh?=
 =?utf-8?B?WlhteWp3Q2M4eFVTNWZMZWVuaGN5QTMrK2NMSEg2eUdwM2RheHB5RzJjM3lu?=
 =?utf-8?B?YzlNR2xXU1ZGWXI3eFFUZm9wRGtmVkVOVE1HOUZ3ajZWMG5nQm5NQkt6amtL?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 717cad2e-5e65-441b-f36d-08db7c665696
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 08:11:58.8228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UTQGWElsMIsUfGYDLNisAW9W4dEymNiZloS6m7GAT8vh2hzBOtC4PTfKw7uRm3ekHi89G3jI/fgjYdjtwdHv/R7bap7hjspzDeiNkMfX51M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/drm: Fix comment for YUV420
 qp table declaration
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


On 7/3/2023 3:42 PM, Suraj Kandpal wrote:
> Fix comment for YUV420 qp table declaration of max value

YCbCr420 instead of YUV420, as used  in other patches.

> where the min value is 4 and the max value is 12/15/18
> depending on bpc.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_qp_tables.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> index 6e86c0971d24..7997d673def7 100644
> --- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
> +++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
> @@ -17,13 +17,17 @@
>   /* from BPP 6 to 36 in steps of 0.5 */
>   #define RC_RANGE_QP444_12BPC_MAX_NUM_BPP	61
>   
> -/* from BPP 6 to 24 in steps of 0.5 */
> +/* For YUV420 the bits_per_pixel sent in PPS params

Same as above.

With this fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> + * is double the target bpp. The below values represent
> + * the target bpp.
> + */
> +/* from BPP 4 to 12 in steps of 0.5 */
>   #define RC_RANGE_QP420_8BPC_MAX_NUM_BPP		17
>   
> -/* from BPP 6 to 30 in steps of 0.5 */
> +/* from BPP 4 to 15 in steps of 0.5 */
>   #define RC_RANGE_QP420_10BPC_MAX_NUM_BPP	23
>   
> -/* from BPP 6 to 36 in steps of 0.5 */
> +/* from BPP 4 to 18 in steps of 0.5 */
>   #define RC_RANGE_QP420_12BPC_MAX_NUM_BPP	29
>   
>   /*
