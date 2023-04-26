Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD666EF4D3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 14:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE6910E0B0;
	Wed, 26 Apr 2023 12:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA9B10E0B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 12:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682513992; x=1714049992;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SLH22M+lU8L0s/MAMbu8bipK7xHTd1qdsC7WTPlRUhM=;
 b=Xi+XWbYEET9QubcQPVIn1Cd7yxlYkwo/Ui4A8j4S4WCUDNgDPV1rVNeF
 z4zsRJhV7+X4zavf3gQqeylE70eAAE6WPWEnz7S1BFq6ouBq6lMjJQdKM
 5SdllNOV2oNRSNG8KIoTwQ/orGkIBct94kM50GWLdLrRvTCRxoGV7N2vM
 rY25qth+Go3ctn/FzxbWQk3QuJ3IsQJZ4SZJKbVL5NwuxK1dGk/5gFcL7
 zKQzF4ywZZ0DQQOOo8kmBGRj53sV1HkTA2VFzLB0uvoSfpCsn0BcF/0df
 Os9OTHLlnVXkE+p2c9uV+YAlWfqmn8oxn0pudanP0bakG8zsSwwyM7wZ3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="347120274"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="347120274"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 05:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805492228"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805492228"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2023 05:59:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 05:59:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 05:59:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 05:59:51 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 05:59:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HFIxbXTxXIV1vO/Y8vNo3+n7/YTPXsraAxqkiGLe+R8sgXy7aodACRqEKnWb9Ip6k9rF5U+ocxuCpJuPtBFlWaGFZppDrnrYbrhT/o+oFUjrYW4Qriagsgb470OVeGLOUmpL6Wq88KaCkImsQmoSpIJSWXAK75aliw4EIfWRZzJeuX2yaaimh/xBwgDEVooyTBHKHRlTCZ3zEUAbi29G6V8zdFFsnWSf49qj7UPjsXhhGa3NhVUldFnCY3x5stOxpxysZPphUIuc/JRJ30y0AALftGxdWZZNJRObq5rWp1Sgx8ZcLpSiB6kxLwWdgOSh1rjEv1V7QdDaelUl79KSYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LRCzOiKWwNRdr0OLm4dyr1qcp32Xj5Dci1PL3d4smr8=;
 b=hMg3WcTUGvOvGEbMmot9rjDQn+Gnax2E4m3vfZV8WG2nUYuP/snki1aBn5aROY4+wEZua5BsbwOc6sKeCNb8piJvqUcFUmZEnmMtOfPyfFVU9FfxDP/uDZ21/BVbQnYv63zvJA7EJrTBiFauBgV72bYmEtgVKW+EHQtteFkWDRm3hanUM1/mLxWIur1zST12ABfXqJ6yOaRcIMCuRdkbgKkTwpZ6Kg/973jDtsNA0/0ypMaJw0V8WMGhBX2KddDT+JN7dim53yE9/F/hh59k2NMNcKyYQKi9OkG2ANiA9l1KQT+FD8B6cvtI9iu+hp4LyfPZUWf4AXaOzXAs7AehJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 DM4PR11MB5486.namprd11.prod.outlook.com (2603:10b6:5:39e::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Wed, 26 Apr 2023 12:59:43 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 12:59:43 +0000
Message-ID: <b0cabdd7-7581-2a2a-3ad2-3ce6f920daec@intel.com>
Date: Wed, 26 Apr 2023 18:29:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
 <20230420221248.2511314-2-radhakrishna.sripada@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230420221248.2511314-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::12) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|DM4PR11MB5486:EE_
X-MS-Office365-Filtering-Correlation-Id: e03863c4-09df-48c3-5f2c-08db46561ab4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YfO7uAckCKs6MIzzWIeydFkBEmH2zQce/6/RCBfkt9+e5V8GYJGo09wCfGGhFwUqtjy/j+xOuqF/kFVDi4jH+8nYIbm+KQjnQ78tAH34HxDVx+ldXbqensoOGEPfAm9dek5h5w+hGaRaOoVRMNB/Dwm+VUhzlk4PtmuR6/p1OSnCM38BdIubS22awpIqMLmYXahSkvksSLK7gIybjLUQTff74+DCm1oQlr6oLV2HeAOrHIMC1Hy0/GP/O7xLFu7JijhR1pnQvmWuNGdj9CAcsxJ8yqlqSV8mVElEYvqTHICQFROJaPpziQ2TSDuDOJLN1+E48fbX3iSLgMu7Zr6Y3uABww4KQwTzqEx/IG9uWzr9yhWeCv3dt6VptITO7HlH3t8rusxedk098U5OZqtYYoX1IJrFix+TmRVZnLBTxpYE3HglIHnSxp7hj7OaHzf8aS+L/EiTGzJ0FG1CJoR+MUl4N+BmEt89apjq3jehk/3LRgbswZKguoria25YWgpTDlKUt57Jm2bRwq2+oX77pBbmnuQ0vuS4TlEjD1StUPCApSFZoQNXnohR9+F1EYtXy4nmvi6u/7Cmmy3h9r49MpQLOYQMpcyWsANblj3fdEArzJjgqANAApmx9iyHTaxicNvHjZAHn1eTpjCjXKclaw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199021)(66556008)(66476007)(66946007)(31686004)(316002)(36756003)(6486002)(478600001)(6666004)(8676002)(8936002)(186003)(5660300002)(41300700001)(53546011)(86362001)(6506007)(31696002)(6512007)(26005)(2616005)(38100700002)(83380400001)(82960400001)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGRPZXo0RUxKWllCZ3JDeGc2RUlKc2VjcU9JTjkvYzRDVEVCNndBajBLcVZq?=
 =?utf-8?B?ZW5Fa1kxZ2RLZmxpeEtRLzJxL1Y1dyszUTl1QTA3enMxR1EwejdGaEtvTlNG?=
 =?utf-8?B?V3c3bFZnVTVzMUtoMDg1UlNnaDdsNjZIMmxkbEQ3R05JbmRCR2U1NFptRm5P?=
 =?utf-8?B?SDFzNG54UGx6QVpBdEtIT09WRGpVUEFDMHl3K0pZcmlzdk9ncWhHSWNid3Iv?=
 =?utf-8?B?UStHQ3VkaHdscHBBMTRCR0U0S2s4YUYxQWFjT24yRlR3NEJqd28zMVNsaVBP?=
 =?utf-8?B?RmM4L3ZLZkh1ekJhd2VlMTcwaldub2k5MzNiNVI5ZFVQVWJoeDZySWxwM2E2?=
 =?utf-8?B?blRWN0JKMlh2YjNqK0k0d0RaQ0JCM09OMkpwVTZqOFRPYStjN2d5cWdiNTd2?=
 =?utf-8?B?QXZ1bk1uM21mVUVUWFZ5ZHZtbDBnUGlyV3g1TkRuQUZ5Z0h4MmRKQlhIQ01C?=
 =?utf-8?B?YjM2VHZ2TDQ1UU1pMzVCWDY1Z25PTmNOZkp1eHBTYWxRS21rMHZka1JIWXYv?=
 =?utf-8?B?S1BlYVlPQXIvalN6cGtJU3ZsdFhvTkNPa0FDQ2o5TnB4bmhwbWFnRy8raTRz?=
 =?utf-8?B?TXVoUEhzSFhOb2JraXYySnNhbXljNmsyc05KRmg2ZWwrQzBRTG1yTU00SWF5?=
 =?utf-8?B?bWJtM0lRRzB2N2Uva0JRRVVndzFkbTdVSDNZcVRMMXZ6VE5La2F6a3ViUmc4?=
 =?utf-8?B?NUtuUUp2eVZ3WXVjMFZUM09wYmxVV1IyN09uUTJaVVRyTjVTTFpmb0x2Rzhk?=
 =?utf-8?B?OVBrMCtaMklER0NaNllyckhYWm5iWE9YNDBDcVZFbEJKeXhXaEt6cldub1pJ?=
 =?utf-8?B?Vnp5NWIxYmlYUExrTjJhY3JheFhMa0hQRXJwaFhpVHhXT3IxRDdXTlZnc2dh?=
 =?utf-8?B?aEpCYVJwQzkxQkZRWVJETlVVWlFWdGQvUzE0ZC91UUFoTSt5TUdPNzJrSkRy?=
 =?utf-8?B?ZktEeFUzVGZZOW11ajh2bUJrZ2tramUrRG44ZGNsWW1PQWY3SEMzdnZOLysz?=
 =?utf-8?B?U1dJdmJiQnR2QVl0K2xZMENYREUycTk0dnZwS1dRT0hSeTl4aVVzZlJBUjU1?=
 =?utf-8?B?VW5JM0dPZHhzeUVlZ0h0VFQwS2IwdHNwYXdneUM1eHZraks0UUhHQWZxUUdF?=
 =?utf-8?B?ZVh0TjhaWmhycGhIQ0ZZQmpSS25HaXZoMmxJZVVxM1p3clplc3liYXdXdnh2?=
 =?utf-8?B?K212K2JjbnVrcy80MnFLSWZMUDNVYWl0dGc5bXJMdDNkSUd2MTljRGJVU2hY?=
 =?utf-8?B?bytjd3hmeE9lY2lLWGFTclhxWFU0M3UxTFVrVitaQWxOUjlkZ3dDdEhxZGtr?=
 =?utf-8?B?c3VhS3VLQ3JPeUFwVEdPSkN1cUd6SkVHd3UxeG1IYjZuS3JFSjhHa1RFT01s?=
 =?utf-8?B?bHAxWk45WkpSRi9UbTJ6NjlUUUZON2NjRHNybnZJQXhMOG1idUMyWDVmU3kr?=
 =?utf-8?B?a3U1cWRQeERGSnBTRjBTaG9FMUFTTTRwVi9XWklKUnBXZEJzc2dweStmTkpa?=
 =?utf-8?B?N1RyRUVsWlFaTUhqdDZ2dVI1RlJ6ZThnQXNRQlFJajRYSTBUK3dNTVpwck0v?=
 =?utf-8?B?VGFiRlJnc3gvUVo1MTF1Ny94d1BVVDRKUUFGSzErcW9vWGRGMGg2bWV2RTJG?=
 =?utf-8?B?ZlVyVzhnQ2ZDc3F3TCtUekRObi9kWFVmTFBNZmtWdXRlU0pQR3pIdjdqN29m?=
 =?utf-8?B?QjlreDNPNS9tN2lwTnA1RkRWWndQQlRWZHovRGVWazIxWTdpb3dpZDk0QXly?=
 =?utf-8?B?cEtzQlpXMjdkN25hcXJKWGlNWDZKYWU1b0grdVhMQmFVWnJHQUNaMVR3OWUz?=
 =?utf-8?B?d3IwSm02dlhVcnV3c3NyNC9xSEZIYW13RTYrMUFwTnNJaTFlRkhGYU5yTllL?=
 =?utf-8?B?aElkdUVTV0xNOVl3Q3E4SGdNV2xSTE9NU2dvRCt5cDJTdVl6VGZWajFFaXJj?=
 =?utf-8?B?RVdIUU1CQ0FDaGlBUmVnZzQ1RlhEQnI4ZTNoc2llaGRJZk13eG1CeVUyUzZM?=
 =?utf-8?B?aWxiR0JxNWhXdW5qSUlxbTQ5L3h3VHlXODJwNG5WWnBJVzVkMGx2Q1dLNDBO?=
 =?utf-8?B?YUc5TjVpVG1LSEhwNGZ1RHB6OUtkN3I0MDVSdVoyMHlqdTJxT1lNcFdoSWEv?=
 =?utf-8?B?aWRWc0pzRHl6R1Rna3pvaEhTZVBWR3RBV3MzQVAwbjV4VlpLS3FSd1ZLa3V5?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e03863c4-09df-48c3-5f2c-08db46561ab4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 12:59:43.6572 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y/8wtsDLvEqlOIFbGq46bWwNa1NcibyZnMaWX1xLi3KU9xl/I2ysDkPGzMjXiaLU2nJRyG7AEjk8XgnACRfHWClL9wfLbAb/2vei6Mbr+tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5486
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Copy c10 phy pll sw state
 from master to slave for bigjoiner
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


On 4/21/2023 3:42 AM, Radhakrishna Sripada wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
> We try to verify pll registers in sw state for slave crtc with the hw state.
> However in case of bigjoiner we don't calculate those at all, so this verification
> will then always fail.
> So we should either skip the verification for Bigjoiner slave crtc or copy sw state
> from master crtc.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Acked-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index bf391a6cd8d6..83c98791fea3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4556,6 +4556,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>   	drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
>   		      &master_crtc_state->hw.adjusted_mode);
>   	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
> +	slave_crtc_state->cx0pll_state = master_crtc_state->cx0pll_state;
>   
>   	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
>   

-- 
Regards,
Haridhar Kalvala

