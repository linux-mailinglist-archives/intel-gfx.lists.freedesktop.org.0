Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697695F6D95
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 20:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B8710E86F;
	Thu,  6 Oct 2022 18:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B1D10E86F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 18:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665081580; x=1696617580;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5MUn3R2hGudRSB066YSSsb1UUPADT7Z9uIHfzeK63i4=;
 b=TEd5DwBH82j7QS8ug4VKQqeYJkmidH1eZu/xrguJXZaI2q5e2GlT1L0P
 Sp2lEjhQCAAEC2pJvorT05YsbNgfrrSnYvcUizLrZxZcLZ9UyJ0FNXCnw
 Wp7cOom8hfFfhwJmEbBd4QtVm4SP3Ux3APylplfVCeFVrsk0i/sq0IKw7
 4Yt0vJr1V/baCmdoHXJRCa9uNj4zZpvEB3LXA8zTyXiMDgAOS4PeQ8Z8X
 ptZRU8HGovDz8yS1NsRzd2E8/mG1a+oxceJHLZG/mfewSQjDmKh/saWH3
 bbv0Xa7vR5XcP/z7fP/UXURbQx2gENZFFE/M3o1BaAhjuaKKnQPT4hbjd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="283251863"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="283251863"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 11:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="575939577"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="575939577"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 06 Oct 2022 11:39:38 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 11:39:38 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 11:39:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 6 Oct 2022 11:39:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 6 Oct 2022 11:39:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxdfgSQgVcikFvIVxp3oumPUaKMvtZ86ltroNnDi0RF8+B45tZpqdaAMZjQ0EGx4Sryo4T27+tJAM/GQ7t0S/d56D9v/Dk7XWHl+n4BTPlrakZ5U64MNCi/D9ADOJuD7ydroDc0JALAD3Xz9y9MGtpjHGnpR206Au+9ABqouqjort6YbRPq8RrEgt3rt+hh32uehWTp9D/6eXEJ4z4xqs2lJsHIm1QkQJ9C7GclBYxi38wT5XlYqEcwaYyyVKDjlLxUdFjq6NW9gp04JLyBLqebdQRMB9BxcUu5ls/RGuXf+WZSd+EqQ02Gqt60fhZ74zDQwFgIqdwaurFk9QTlnCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ybpOUTUyZd++4VWAbx62X5+n76ABSqgaBl9eridSzmE=;
 b=dtc9KWZ+biAKLPd+ycX+MDIF/gNLvW0ASCVFsLt2kOv34ktDVFuNZA6Ds8URoKbJTzHiV/bIJK4mdoBXGllBQgdJDHpObLgCtLqQJBSu5BoZRky+mxLxQCcCqeXts8cihfux1fLPs5maiAKIWrkfxuhUvklmcwnXAcr62EGYzqf9B+bNI9oDRyLCEny0QGnecBpD2TiykPQcidrfSgVmkcvQhOMl9pIV5RejoQphTFZgXo7J4RmxavLFL4u/jAp8WqQm5vvBE6l8zjeszx3RGniS90A77kEYc3CAEc1a51rid2Vmzy0fWeWxwptBrFj+dkFuD3f3dE4mzRPLuT77Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW3PR11MB4603.namprd11.prod.outlook.com (2603:10b6:303:5e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Thu, 6 Oct
 2022 18:39:36 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.036; Thu, 6 Oct 2022
 18:39:36 +0000
Message-ID: <30eb3786-633a-b4c0-ca9f-6ff875e45067@intel.com>
Date: Thu, 6 Oct 2022 11:39:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221006053129.663793-1-alan.previn.teres.alexis@intel.com>
 <20221006053129.663793-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221006053129.663793-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0023.namprd21.prod.outlook.com
 (2603:10b6:a03:114::33) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MW3PR11MB4603:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d330865-85f7-4cbd-d106-08daa7ca1e5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K2pBSeZeWzEWn46Fn8iWk0qjtvkKdcRPD0BtLnjlWVM1xhUdBlTXxWJbOV91oKSWq/72oG2OewesiKdekV2Ptj+l+B9wPuucWPpK0T0EPemsasmdMSRx/IWy7XKnyGeWPRkpp5XpIN457N3Ps5IJd6Xucr1XtXGkDIslq6aLzDAKqMxh4BVTxZIg5AlfAzQMHeF5q52U8VTCSCHimalIfRKYG5hONp6Jad1S5HTibU+SYW0WWo9k9crQ35zMqNc3ZHV6hEJ0tD5mdJERVajKSXRS7I4gAlDgQ0/QwW3XkVnFN3FojqyMXnRmkQHmzlKtbL3LDHhy6FJd+8jUQkauxZb9kKC7uY3M6Z7Q3sLJlAzJ6HLwfPSfwmfu9HJ55zK8WJSMAVXWdirMheJh2V+DUrc+ytNHH9TDMDtTk5x1vDrqXcqFCO9Z6PDmgG3nRqLe94lBKMuf38So9GETo7EqgSQwn/VkcqXzkaK3NOdPTAaPZyUc1hBs3wgQvXQamEnHSD5mQSKz/chjdoXBzKohwYmbOruu6kQ8dGvYtAZfRslSw8Lf2GVwHhf5dXgN6zt4c1vPrdaTkcAY8EPRH21S/dbQHbLTkBLDMVFkeB9AEEz4bD5+8uZKD0WOVON7qnKnFPd4prs4bKaWCIkfMX1MsRC4NnFbNtfBVsjAsoWJRsPnkB71D4QspKumypdybUBm2f7ctqGKfpggec+miO5H14a2pwFOA+dzgCRrfbB6iPSZU0O4feZTtXce1TlRfH/cQR0jIgNpCAxsZQFgszFfh7QyRP3stQkN1kVcnGRjBzM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(376002)(39860400002)(346002)(451199015)(8676002)(6512007)(26005)(82960400001)(38100700002)(66476007)(66556008)(53546011)(6506007)(66946007)(478600001)(36756003)(86362001)(6486002)(31696002)(2616005)(186003)(316002)(83380400001)(41300700001)(8936002)(2906002)(31686004)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUFwN1NiZ0dMa3U3b1RmQldMMjJ5K1hMbE1sNEV6NFNMcXJwd3hVWnBDYUJV?=
 =?utf-8?B?QzJEaFZLbHg2ZTBvUVFtSzZkamx6MW5JNFhOWjBhMmo5eThzWUdERVMrbGw2?=
 =?utf-8?B?c1ZxWTFKNDVRcXQwL3AwQUsxRUxyZEFpTDRYbDloRWUzTkExTTlrWGYwNVVM?=
 =?utf-8?B?SXQweGgvckljNWlRTlZKTXpiR082bnFUODJ5b3NJbnY0QzkzWnRkUEU5c2Zm?=
 =?utf-8?B?bjNwNlRmMlk4K3dTQ1h4b3ZKYkVYVkFtMDdpZXlla1dOL1JwcHZNMktOSWVv?=
 =?utf-8?B?aHQ3bzZOV3Nxc1kwL3M4K0RzUUsvZk0vMUY5UUo5d2VpRW1aMm5EN3RCVFNY?=
 =?utf-8?B?TjZXM2JrdlkzRFVsTDRwQVlVaFhJRGovL2VvTGVhT3IrZERLQm02L3ZBeXgr?=
 =?utf-8?B?NDZ6MjdZQnd0TVV5QTVZV1lMNmpreXNCcVdEaktKdmdpN1REWWZ3T01rQ1Zx?=
 =?utf-8?B?R1NkUkFvZUtMaG5XMkV1SHNtSUFwdjkzSnR2K0NYdWQwK0pDUXp3NFl2ZU45?=
 =?utf-8?B?czlWTmpzL0djcnduVktJcjRwWWU1WHRaYWdtcWJ3c3lJVCtBYVRub0tnVmQ5?=
 =?utf-8?B?ODNSalR1SVJNaURnQkhoWFRRTWtCRTk5ZEsvUXJuZisxdkRwSW1OZUROZ2JV?=
 =?utf-8?B?eTN6MmpPUHdHNFhsZlU2ZEZoczl6dWJJT2hEOTg5SFovODVEa3JQYWdBQ000?=
 =?utf-8?B?TUVYcUIydzJIWUJXZ3prL3VzNUd2OEJBMjMyZEszYmRtYVFZOU5td1ZPenln?=
 =?utf-8?B?am5kczBrbXRpdWlHYjBwQ1FYUlJlcEoxRWhrZXlIbTRyT0MrQU0wUlhuTDlI?=
 =?utf-8?B?SHhLWlVYcW9Wd0wyTlhkLzhmTFpNRjQzdTQ3TEk0K01xdFFpY0RTQ3pWSlQw?=
 =?utf-8?B?d2JxK25uQVBrVGlEMTU3dXZ5SyswbGtxdEJzeldiQXVVaUhLR0N0S0piYjht?=
 =?utf-8?B?ZVc3WXAxV2Zkbk01VmhjR2I3T1dqVW5hNi9iQWJYQmJKQUFlWG4zM1Eza05E?=
 =?utf-8?B?VmRJc0pGSW1LbTZqY0w3SkxlUmZRbXBSVWdYV01pWjRaN3lLYksydnBWOUFF?=
 =?utf-8?B?YjY5UGgxRjZhOWdEQkVxcjZOUkc2OFJUaG9JUDdHL21iQzhzcS9OaW54RE5a?=
 =?utf-8?B?YXZQSkgrVmxBWUxUZWllK0xWUUlSZGFCbndVUGV2cFpFOWNYYWNySGhSS1Vm?=
 =?utf-8?B?RklLR2htY1pHajZOR2MvQ1lZS2k1T2MwSDNxQzFWQ2hzbklLZStjWllEdkpo?=
 =?utf-8?B?Znl2cDJ0RHdqQ0F6WUtrdkRqNC81WmZOd1pQL3ZYNk5DV0xFWjJCbDNwb051?=
 =?utf-8?B?THhKQ2Z0VkVjbEJWczJrajZIdnlHcEpkOHZ4Ymc0dnY0NVZrejZubng0WTBW?=
 =?utf-8?B?RFlrYXFlbm1jb0ZMQVBSREJVSlpZMGVvdHFtVUlxdVZ1ajRxNzcrWjNxRHhM?=
 =?utf-8?B?bkxTRzJ6Wkwva0twRlNXaGFxc3BHdk5pWTg0Mmdibks5ZTdEL0NHSWFSMGt6?=
 =?utf-8?B?RnJsdXNua3RTc1VlMVRmTkRVK0FDMDB2NFRieTJZaWVRaWs2dDkwdUdsMVpO?=
 =?utf-8?B?QlcvSU0yYk5STWVWZW5EdXp2b3pHUWRHS0d5U0tLaGE2ZGJqQzJGamdQdDFK?=
 =?utf-8?B?dG5RZTE1NlNnU0hyOWhwYlkvbm1sN0svRHNUQXk1M3pkcTNmQWxWZVNoWWpP?=
 =?utf-8?B?VGh3V244NG1IU1UwcFdxSlh5cWsvaThKSTB6UHZYQitXdGJiTUZ3NkN4UDRT?=
 =?utf-8?B?R2hyajBXejRUOFB2YTJpKzVUbm53VG1lUzVtR0JHS3hkZng1NDd0a3RyM2Rv?=
 =?utf-8?B?bHRhaXVrYVBxcjdhT09XanF1clllWEs4NzVZMG1NUnM4ZkdIQkdScTNrb1Rp?=
 =?utf-8?B?dk96MjZXek1nWXgxUVdUWmhuNlBBeFp3MVlIbVYyRlRLcUk1Z2t5eGFkMEFD?=
 =?utf-8?B?V1pzUzlmOGx6ajhKN3FsbTlHaUtMSEgvUWJkenJWeEtyVDdHSGpyVmdBNjhC?=
 =?utf-8?B?dTJ5cnEyQmRmQnBnaTgrdGpUbVhxUHc5SFlOQ01qMmt2dGdRbk1XTnZpYlZ6?=
 =?utf-8?B?SS9Fc1k0SXFXdmR5eWFyRVNncFB3WG9YNVNTZHBLNU9KaHV3bVFIdkUrblZW?=
 =?utf-8?B?S1B6Y0lYakpKSTRrU2xDNHVPYVViTkR0eWJFVGhSbkY1UzVlVk01T3dOd3Jo?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d330865-85f7-4cbd-d106-08daa7ca1e5f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 18:39:36.2424 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +05x3vQ1a6whQteCZIQ1HyEh4ImhfWNa+VvKWuhSkfHeM6szFPxRLvdIHkHYTLfESL2JmGawbPZG/eU+rE3TLthtW11mJ3kzWLxE2B51Vf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4603
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

On 10/5/2022 22:31, Alan Previn wrote:
> During GuC error capture initialization, we estimate the amount of size
> we need for the error-capture-region of the shared GuC-log-buffer.
> This calculation was incorrect so fix that. With the fixed calculation
> we can reduce the allocation of error-capture region from 4MB to 1MB
> (see note2 below for reasoning). Additionally, switch from drm_notice to
> drm_debug for the 3X spare size check since that would be impossible to
> hit without redesigning gpu_coredump framework to hold multiple captures.
>
> NOTE1: Even for 1x the min size estimation case, actually running out
> of space is a corner case because it can only occur if all engine
> instances get reset all at once and i915 isn't able extract the capture
> data fast enough within G2H handler worker.
The 'fast enough handler' issue is about multiple captures not a single 
capture. Whereas min_size is the largest possible single capture size.

>
> NOTE2: With the corrected calculation, a DG2 part required ~77K and a PVC
> required ~115K (1X min-est-size that is calculated as one-shot all-engine-
> reset scenario).
>
> Fixes d7c15d76a5547: drm/i915/guc: Check sizing of guc_capture output
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 29 ++++++++++++-------
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  6 ++--
>   2 files changed, 21 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 8f1165146013..9fa76f384abc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -502,8 +502,9 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
>   	if (!num_regs)
>   		return -ENODATA;
>   
> -	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
> -			   (num_regs * sizeof(struct guc_mmio_reg)));
> +	if (size)
> +		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
> +				   (num_regs * sizeof(struct guc_mmio_reg)));
>   
>   	return 0;
>   }
> @@ -606,7 +607,7 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
> -	int worst_min_size = 0, num_regs = 0;
> +	int worst_min_size = 0;
>   	size_t tmp = 0;
>   
>   	if (!guc->capture)
> @@ -628,20 +629,18 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
>   					 (3 * sizeof(struct guc_state_capture_header_t));
>   
>   		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   
>   		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
>   						   engine->class, &tmp)) {
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   		}
>   		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
>   						   engine->class, &tmp)) {
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   		}
>   	}
>   
> -	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
> -
>   	return worst_min_size;
>   }
>   
> @@ -658,15 +657,23 @@ static void check_guc_capture_size(struct intel_guc *guc)
>   	int spare_size = min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER;
>   	u32 buffer_size = intel_guc_log_section_size_capture(&guc->log);
>   
> +	/*
> +	 * NOTE: min_size is much smaller than the capture region allocation (DG2: <80K vs 1MB)
> +	 * Additionally, its based on space needed to fit all engines getting reset at once
> +	 * within the same G2H handler task slot. This is very unlikely. However, if GuC really
> +	 * does run out of space for whatever reason, we will see an separate warning message
> +	 * when processing the G2H event capture-notification, search for:
> +	 * INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE.
> +	 */
>   	if (min_size < 0)
>   		drm_warn(&i915->drm, "Failed to calculate GuC error state capture buffer minimum size: %d!\n",
>   			 min_size);
>   	else if (min_size > buffer_size)
> -		drm_warn(&i915->drm, "GuC error state capture buffer is too small: %d < %d\n",
> +		drm_warn(&i915->drm, "GuC error state capture buffer maybe small: %d < %d\n",
>   			 buffer_size, min_size);
>   	else if (spare_size > buffer_size)
> -		drm_notice(&i915->drm, "GuC error state capture buffer maybe too small: %d < %d (min = %d)\n",
> -			   buffer_size, spare_size, min_size);
> +		drm_dbg(&i915->drm, "GuC error state capture buffer lacks spare size: %d < %d (min = %d)\n",
> +			buffer_size, spare_size, min_size);
>   }
>   
>   /*
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 55d3ef93e86f..68331c538b0a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -16,15 +16,15 @@
>   #if defined(CONFIG_DRM_I915_DEBUG_GUC)
>   #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_2M
>   #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_16M
> -#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_4M
> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
>   #elif defined(CONFIG_DRM_I915_DEBUG_GEM)
>   #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_1M
>   #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_2M
> -#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_4M
> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
>   #else
>   #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_8K
>   #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_64K
> -#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_2M
> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
>   #endif
I would have pulled these outside the if/else ladder not that they are 
all the same. But doesn't really matter.

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

>   
>   static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);

