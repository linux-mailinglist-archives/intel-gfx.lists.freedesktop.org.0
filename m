Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E876765512B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 15:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7C510E659;
	Fri, 23 Dec 2022 14:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E107610E659
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 14:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671804472; x=1703340472;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=taSmQfdTnmq0VdJVn5/ff3mv7lhOUPeiO52q84wl03E=;
 b=U4DbZRsz9tUqDI6lhWvJpkc+J38vvTcqLP4GXQibIWAS4NDF1oqnAwZz
 AQFFXy2/ShORcEDqtVSKgrWt3WcOMfrB729joDzVXGarrPQ4v2p3+i2YE
 hxb251auSYyiN5TfI2i/PSkZ9R3CgN71XmTcolCT91j832HkLqZ56sYd2
 lObJko58ZxST9epmu9SYmwznYZH7g5r+g4WCEPijKyLuPGEp4XUoyxFzg
 KKQig/QIZNibCyGENFZZHmpZE/3X6SgKP3kgxyN+nDVbkdlYBhmBZ4O9r
 zQZoORyKF3RHZIWmGkscIHL25bPfvgT7Bn5dgS/mTQ+wnGIRckohNfMtN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="406575486"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="406575486"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 06:07:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="652129269"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="652129269"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 23 Dec 2022 06:07:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 06:07:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 06:07:51 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 06:07:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jxDFQYEJzaDISRb3w5h0AM4Mvn8dwuRVIrxkBxH0xxYdVdVHJZBYvjMezxzV4B2IAXQHPaMlgskbbzixuHzynjqNt4rPHveDdWetxOylSZ+Zj00LwpMJtuDCpN8r5tPpLDhlSCiH33wVkmUTqTFAHetN8nFjPSwk1GOVKlFijwS5vWstU/HUlkZFkaWSoD1uEe8o+PBqv5cyaQPagc2omFtmnTNIqhPXnap6cNIOancBE/v0jL16U4afHA85A7tKL+HyyYbtJZ2ARkFzfds1EmrbHIU9p+Ml4aPyiCnBkddi2EgoqslaIuBGshcSZXjvSyfU2xu7Q/LTH+wQsHvEzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mYE6D9mqJJg5y6JXl8kPqVk2lyfJ+3r/NUEFspQ0Dyw=;
 b=HYFWDyPB3s0jAfsbcvgoG3amwyGDEOSDfG9SoyA816V2jdQqn7FhtmFCDwk7VpmOEbT3eir65QQ+ToxFptj3UYq1m2N+z2KjBoOGYOZU3sRxcx3+MC8/H5Zxir4IkgxmOXVaEaz0MSWDn/dCd1/8peC6sBRKVcea+b3cmXtZUI333KyWlNNFwf7lB0H/aKpdsjf6E+uy+I5FSZixp174j1SR+zPiIL7zzzYdcApgnp/jwAy4Ol3FwV2/Jb4O2/yiedbVhwmSmI3+7tgbpOUWyqFgCcx2ViER6E/pFGkj+Z9lOD7aZMfrvd9RutFSiE0ZkmVQdX+BzlerJT3kb7mOXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5146.namprd11.prod.outlook.com (2603:10b6:806:116::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.12; Fri, 23 Dec
 2022 14:07:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e%8]) with mapi id 15.20.5944.012; Fri, 23 Dec 2022
 14:07:45 +0000
Message-ID: <7252418d-6631-b609-c67a-5ca65c460acb@intel.com>
Date: Fri, 23 Dec 2022 19:37:35 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
 <20221223130509.43245-3-luciano.coelho@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221223130509.43245-3-luciano.coelho@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR06CA0212.apcprd06.prod.outlook.com
 (2603:1096:4:68::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5146:EE_
X-MS-Office365-Filtering-Correlation-Id: bb8ce199-ba8a-4450-e6be-08dae4ef104a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5NPTll13vYVd/ZmLNMQWHzCWUSFTMdH1FU1fcw1wkg7ZkMBS/86Z36HOMO8MX5QuJvG9F2cHRx5K0zCyVS9s8RxasqGf20m5MOBAL7JiK/bMr9/zeJdzbxTAcJ7bLr8Y9okhngD1t7jCplbd0/F6FXpPFKOf82pmO60/nYWEh2Sa5vS07JsZ1lICrkEwOJSoBSdCk7Zjjj5grJOZ7QK7AblK3Z3Oy446rHiNzlBqBEp7e66a8HyKTx2GxiaTpf2NlMzDUneOYmFWQu3zw6KapKTcN3Lxxv33TwLBEXNjGByfxaYBiFBvYFza6DgnuwExvMWnz+tFBlJB4gfMDfgjClUrA+tBgJzT/PpMVGEOsxr5HqbZaf1blzaMNKDD0k7Pj9soFyP2haDE7+u9Kl0lmnwW+SRFUczwbZGD3N0TO2Y7/coQgzsel/7O6ib1WAGfzYL7Jpds7acVImMrRdggMZtWi9icS/Md9sTXP7pB51ipq5r1/9cOUyxCnAflRZRx4B2HvXmKft7E11XDI0eYgRyv7vWJjhm1vj2MElNjXsuXU8SIIuriFVfTJldyF44eypfasQJstrhUHUSzWyapEH/XvWgmdxoigPObVc18M/q+9z+JGrbRoOY8MRUYgqcDOoRNkIDYJbiwZre1VybK+ZmhYnI9/v0acc/TZcFtUul66kQdcVoMut6k/mcEz4zMpqLy14KE+TwgdJlolW2lVqwKpZFQKIHe7wOv/qnaTJ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199015)(36756003)(8676002)(66476007)(66556008)(66946007)(41300700001)(316002)(8936002)(83380400001)(82960400001)(38100700002)(6666004)(6486002)(478600001)(31696002)(2616005)(53546011)(55236004)(26005)(186003)(6506007)(6512007)(86362001)(15650500001)(2906002)(31686004)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T01Va3U1T2hFZlY5RERBRHEvR2MwU3phQTNZSzZQSWtvOWdDaUdTQjRuTko1?=
 =?utf-8?B?SDBZVnZSUS9EbnM3UGxqY2tZTWQzaEE1dXMreldUWjJtMVFWZFBxbW5FWWlE?=
 =?utf-8?B?RTJLdjZ2RVFBRW5qajZTYnd3a3hVY3cxdFVNbEdRVnRYMlNaN0RvV1VoZ3JP?=
 =?utf-8?B?cTRtbW9DU20vekp3dXZ4MnJBbWR6c1hGZ0FCWjFuMVA0dWdYRWdPWTJ6Y0p3?=
 =?utf-8?B?cCtJenhXZmNGeWZxN2RoT3pEK2RoeVJHQmN0cmY0dXg0UkV1SllUeEFFeVBi?=
 =?utf-8?B?RWlIVFdQV24zbDg3MDlYY1hMbzAzSHZCdzhiN0JwTnoyVFR0a3RRUjlmSk5o?=
 =?utf-8?B?VnE2SDV6cXVtYWhmSnFSUmhNL1IzaGJhVS91RXd1eUxqMWJKSDBFQkp3Vm9L?=
 =?utf-8?B?MldxM2hIaDdSZklvelJpa0lGdDhYNHpUQXNrV2wvLzl2b0wyNGpOTjZpLzNY?=
 =?utf-8?B?ZE81Qmh2bUxXdENPcy9udlNSeUQ4ZVk2Q1lleWx3cW1kYUFzNEp1UmI3Ynlp?=
 =?utf-8?B?Vlcvblk4NlgrV2g3a3BhZ0E5RXhqVlZNdDZzWDJXTHJZbURoZkpQamxwaTVz?=
 =?utf-8?B?cTdMT3Z3RkRPalE1dm9ZMW9ReGtOek5LbzIwZ3ZaZDNMalVlWEkvQXp5UmNn?=
 =?utf-8?B?OFhKQ2xxUFpOVzdoYUZMeG5wZExkZVpjdGVBVnVsSDQzMUxSamZFODVZbWEx?=
 =?utf-8?B?UHY0VlFBaFE3NzkzRnk3SlFvamgxanNNbzEvZ2hUMFhpd1czM2RVVFAySmIr?=
 =?utf-8?B?TElzRnNKc25BaThuV0ZXYS8yaVlKLytvN2p4YWZZRTNidk44Wlg5djk4bVJF?=
 =?utf-8?B?Nlg2b1crNnFvVHU3VUx2ZFRDaEFxWDNyNUVlVG94ZUdycWg2Sm1HMUp6cFdE?=
 =?utf-8?B?cXlXeTM2cUY1SE9aQ3kxQ21VMitxdENnRUdodUZRSmhFMU41aTlHYTdsSVpK?=
 =?utf-8?B?bEtNSUxsczkzSUpOSGlNWlRFRXArcGZySUYrbjk2RFVkVHQwa00wOGxZV0VT?=
 =?utf-8?B?MkkzMmI2RVFaT1V5RzVBMHVCNmVLTnFDYlcvL1V4WHd5Z0d3N040anNJaHh0?=
 =?utf-8?B?TWxOZXdlVzVLaEFIcHl5c3E3eU1CbmtwMy9MeUhlbkJEdWRyei9LQ0loL1Rh?=
 =?utf-8?B?MklaOW1kZ0Voak5OQmFQc3ZVeWxkSU9VTkluQnBBQVRXLzA3VHRHNjh6T1FU?=
 =?utf-8?B?RmZmN3BqUHJxekVoaUdwT2FOY2NKTFd0ZmZwTStDLzExVk5KWXUyWUtQOGxY?=
 =?utf-8?B?T3NxT0JFNTZQMmNPTk53T3RqSCtxK2ZINGNWY2JHWVZlektDNEVTS0hLMkFs?=
 =?utf-8?B?a2U3UHJoUnNpNXFmbUdWaVdqSFF6aUcyNGoyZk83b2RGWTkvYXpzSE9TUjZv?=
 =?utf-8?B?aERnc3gwOFV5RGZzQTFRNmVYdDFsZW1LSWFlTnpnenZaeXNXbC9vU0UvN0lx?=
 =?utf-8?B?UzFYSWdEM2kzcVR0RVVSMHJxOUJyVFZCMjBMcW52TGFjd09qSFdHWEJMZ3cw?=
 =?utf-8?B?WjdBc1RjOHFTSlNPcnFQTGtpUzkvQzdnVEovdlR5c2VuSDhITmt4Nkk2SGsz?=
 =?utf-8?B?Ui9abnpDN1RhSW90SW94YVRsdWJiVlJHWlo1MDFOK0FEN05qRVdwWWNZcGpq?=
 =?utf-8?B?aG40ZDBrem1QQWx2OE5DNDA1MHVuYlBLN3NMTG9EM1VnKytSNVc2Yk1ibndB?=
 =?utf-8?B?VzZxd2phQVkxVC9RYXAzYWVJRXczZHM1My9ZSFJrTkNXSTBzWEl3NTkvZTZq?=
 =?utf-8?B?VjlVRUJVZTUxZGtZa1hVZW55UE5ZRGNxcGRGMm5nLytyUkJvTGdNVmg4QVFn?=
 =?utf-8?B?N0QzbmlEWjAwWG5Rb0dSeTNESVFMUmVSa1VMTXpZTjBTczFnZGJ4Q1NSVnMw?=
 =?utf-8?B?dFI3R05kRlRrdjhicTNGVFJKVVNWaG8yYVFsRkhXcm9rRE1GQkd5WVMwTzVF?=
 =?utf-8?B?NnBiS290UTZhOWhvZWJJaXdSb2hTSEdzNzlkdGNIVG5OMmFOU2VIMHRleE0r?=
 =?utf-8?B?RnJJcnVmNGZIRWgvT0ZBYzcvVkt0MDM0anpXSlhNeXlxb2p0RHMrNFJXejQr?=
 =?utf-8?B?NGJCa2NxVndndjNqbmNuZENucjRoSjdYelFrKzg0WnZYb2ZYaVNoemM4ZWI3?=
 =?utf-8?B?Z2tYSWZleGtVOStqVUk2Q28zTnRhTU5VT3llcWNkQk5xVVVWVmUvRVlRdlR2?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8ce199-ba8a-4450-e6be-08dae4ef104a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2022 14:07:44.9257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3jy+rx+gc+EJ1GiDfJB2J3quyT0lNz0m5JC2S9/hnL9s+7S8TcF1QMzX7mDeeQ23khv+vkRVEdn3VrSqIjWXIaKq/4hvyk+5VUn/fNfvMK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5146
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler source
 and destination limits for MTL
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


On 12/23/2022 6:35 PM, Luca Coelho wrote:
> From: Animesh Manna <animesh.manna@intel.com>
>
> The max source and destination limits for scalers in MTL have changed.
> Use the new values accordingly.
>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>
> In v2:
>     * No changes;
>
> In v3:
>     * Removed stray reviewed-by tag;
>     * Added my s-o-b.
>
> In v4:
>     * No changes.
>
> In v5:
>     * Just resent with a cover letter.
>
> In v6:
>     * Now the correct version again (same as v4).
>
> In v7:
>     * Update to new MTL limits according to the bspec.
>
>
>   drivers/gpu/drm/i915/display/skl_scaler.c | 40 ++++++++++++++++++-----
>   1 file changed, 32 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index d7390067b7d4..01e881293612 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -87,6 +87,10 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
>   #define ICL_MAX_SRC_H 4096
>   #define ICL_MAX_DST_W 5120
>   #define ICL_MAX_DST_H 4096
> +#define MTL_MAX_SRC_W 4096
> +#define MTL_MAX_SRC_H 8192
> +#define MTL_MAX_DST_W 8192
> +#define MTL_MAX_DST_H 8192
>   #define SKL_MIN_YUV_420_SRC_W 16
>   #define SKL_MIN_YUV_420_SRC_H 16
>   
> @@ -103,6 +107,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
> +	int min_src_w, min_src_h, min_dst_w, min_dst_h;
> +	int max_src_w, max_src_h, max_dst_w, max_dst_h;
>   
>   	/*
>   	 * Src coordinates are already rotated by 270 degrees for
> @@ -157,15 +163,33 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   		return -EINVAL;
>   	}
>   
> +	min_src_w = SKL_MIN_SRC_W;
> +	min_src_h = SKL_MIN_SRC_H;
> +	min_dst_w = SKL_MIN_DST_W;
> +	min_dst_h = SKL_MIN_DST_H;
> +
> +	if (DISPLAY_VER(dev_priv) < 11) {
> +		max_src_w = SKL_MAX_SRC_W;
> +		max_src_h = SKL_MAX_SRC_H;
> +		max_dst_w = SKL_MAX_DST_W;
> +		max_dst_h = SKL_MAX_DST_H;
> +	} else if (DISPLAY_VER(dev_priv) < 14) {
> +		max_src_w = ICL_MAX_SRC_W;
> +		max_src_h = ICL_MAX_SRC_H;
> +		max_dst_w = ICL_MAX_DST_W;
> +		max_dst_h = ICL_MAX_DST_H;

Hi Luca,

Recently there is a change in Bspec:50441 and now for Gen 12 scalers, 
the MAX_SRC_W is 5120 pixels and MAX_SRC_H is 8192.

MAX_DST_W, and MAX_DST_H are 8192.

As we are refactoring this part, can we include a separate patch for Gen 
12 in this series?

Thanks & Regards,

Ankit


> +	} else {
> +		max_src_w = MTL_MAX_SRC_W;
> +		max_src_h = MTL_MAX_SRC_H;
> +		max_dst_w = MTL_MAX_DST_W;
> +		max_dst_h = MTL_MAX_DST_H;
> +	}
> +
>   	/* range checks */
> -	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
> -	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
> -	    (DISPLAY_VER(dev_priv) >= 11 &&
> -	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
> -	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
> -	    (DISPLAY_VER(dev_priv) < 11 &&
> -	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
> -	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
> +	if (src_w < min_src_w || src_h < min_src_h ||
> +	    dst_w < min_dst_w || dst_h < min_dst_h ||
> +	    src_w > max_src_w || src_h > max_src_h ||
> +	    dst_w > max_dst_w || dst_h > max_dst_h) {
>   		drm_dbg_kms(&dev_priv->drm,
>   			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
>   			    "size is out of scaler range\n",
