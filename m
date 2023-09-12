Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE7B79BBBF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 02:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD9E10E00C;
	Tue, 12 Sep 2023 00:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8444C10E00C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 00:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694477610; x=1726013610;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5BY/8jUhc/juIPbfN17hUYvKEiq5x9g4PJdOTEhSeVc=;
 b=n7OPK8EyJAwfAwf17GmK8zEdPH3SJCurXEUe1/6UiPubHzhwlf0tGBou
 Ej7kCpY4W6aIe+Zquo4Y+C9PxqCQBiiLvguF27pNmy+g9FzIT5QKQJ5rd
 KEktQwVsIOa7CP2bFY9fFo3SWGfLBUAujImv4sC8pLh+SwCyH3WkXEyy9
 GvCd9T9Jnle1d3QbK3vOy5LsSTXWnliZNvFzr2rN/2B/F5GsYPH0YyluB
 nmx/zzK/lff1qg8iYgbzITEdnJXwLMwu5SE+3aaIZwGFA5H4hNizBA728
 DDGmjMHgXLYPvePzqjKCS6HWaiRhuRp6R2QmxciZzV2PWGBYfhFmzf++t w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378147500"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="378147500"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 17:13:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="867149589"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="867149589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 17:13:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 17:13:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 17:13:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 17:13:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4KIM8aOZP5BbOABMt1OSKJvI8r3B+ZTk/Zt9mLFL/qi7sGiy+FtzmdbpaqHyBxEAuMd+WrH8vSQrHeCJrXFwPQCyrNnM/H3VdcCNRrrTevPq7E195RlSSw9hjqAQ1IsDIIgPb+93q4efF9sJt4l8rBPLwRn/+Sk1ZjxbBL3gsw1VfFUfJLlpciZXX2vh2u8nlCGx6g1GPCwcgsLbgJbuDZf+naI69MGbtT/B+pkygw31IWsC3NQyewrwuRrxfz7V/8XgTIcBLwlHJW4rg00QbMoVe7yLQMbdWwJDUn42vc7bn2NAkbbk0FLDQDQ+Jjj6AsZGeVOR3OzvhgXvzgQuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0tBuVHgeA8prDtUOElJ5bVn0CiqHHcS9YnufAoFRpWI=;
 b=HjsqxBPJO77IGvntN22/R40H5wWrKy5V7Bil94TOdHwFkoQVizvehhk0f5MEWzLsqIvF+LRAv3wUDjK/N7V+CeAPLgPyrPvVv6rfvenZnD58DX3Jp/YvoVxH7903GS9dNhe1D4rQ3Y2+GmYK5CDnjaWRVeckv3c9xKZ5vp3yYSq64gCxP2Zv/pLJvtDTUU+0M8fieBh9se0qQ7QjxMt4ho3J4GHwZmkYc+3Wajd1dSCD6rEEHL4toPfq1A7YTZyddzLt4UzpfeG1yq9CrZ09MYo+xnE3zfXjFKW3kbYxvPNeFLf8tnnCWwArItKz+d4aJHGPec4B+vcZjCIp8hr7Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Tue, 12 Sep
 2023 00:13:25 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 00:13:25 +0000
Date: Mon, 11 Sep 2023 17:13:15 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ZP+tG+U0ISP1jbqG@unerlige-ril>
References: <20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com>
 <2f606ead-435f-446e-9650-68bb9334396a@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <2f606ead-435f-446e-9650-68bb9334396a@intel.com>
X-ClientProxiedBy: MW3PR06CA0025.namprd06.prod.outlook.com
 (2603:10b6:303:2a::30) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH8PR11MB6753:EE_
X-MS-Office365-Filtering-Correlation-Id: 40628856-8d3e-4dd5-c294-08dbb3251568
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ftRW/N8WBfAEbNZQ2gGg1Hwx8S54GHFPclsjeBkTAHUuWTOHsa9P66NPVQUbKI3kHwKla1Y4ZB0PSKmPVn51fRsYCOn/UkpGUmzdVaguZnuMhYX2zTY/yzSwV3rscbT0w2TD7cZbJ8HkFXhkP+XrhfJ8S5Tx3W3eNAbVfxvjQaElOnAwRwpJbApmQRUSwQfqru9nA2N3Zgj1JanOb42pVgm07X5hhT27skR+IeD2YzJGlWS+gTds7LQXrCfOtx93wCdAxAAve3EZJR1Mceh7IoV0HysbMVp41TT2QUzslN+Hmdim5PfXQIZgb0NlHNj1h3V2wwTXaYEbtnC3jdZGN4sYrzhFxhyc6TGBbMtpcfwoo1dLTovSQHjZ6puwQMHlP+7+sNnvyLCwW6xBPkYjaKkwpzgOGB14mi1vaXfUbYq71hwQiwbrzdU+SsFRBMu2YjRMpuEYsEKhTGLVPMVnlO0Uty51cbTkya+NItUcLIE6W3ip3Zc83m2gegHO3HMVR0q9pBuQqrSdXsfbVGp8Xij7G/YIqn/fVlD2Zf9uGqo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(366004)(346002)(136003)(39860400002)(376002)(186009)(451199024)(1800799009)(82960400001)(2906002)(33716001)(38100700002)(86362001)(478600001)(6506007)(9686003)(41300700001)(53546011)(6486002)(66476007)(6636002)(107886003)(83380400001)(8676002)(8936002)(4326008)(6862004)(66556008)(6512007)(6666004)(316002)(5660300002)(966005)(66946007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emlDOGcvTnRlSTh4RUVVaFQ4bzVXMUJJaVFseFp0bllQenphUi8wWmwza3BZ?=
 =?utf-8?B?MjFnNDQ2eng1d3JzYkozZXJDcnNHazZab0NUNjFKU3dRbWpxVkJNYnFRc2lw?=
 =?utf-8?B?cHB2MHoxdUZPalA2a0hsUkVOYmk2OTcvajU0WUJYNWZaK0cweUdFTm84VnIv?=
 =?utf-8?B?aXE1QVoySUh5N09CeEtYY3N6WVlkQUo0YkhaNmswelNVRUtJVVhDWHhFdVJJ?=
 =?utf-8?B?RVZYVXVLWUl4Q0tWT2ZnRStwaXFZNHhRZUNGN0dmU2NKaC91VHJwQ1N5ZHh1?=
 =?utf-8?B?M2g5bUNoZWNZZHpzb0JQdHZiVFJ2c1h3RVpoN2NnLzhZVFo0aXFzVUs3WFg5?=
 =?utf-8?B?d0NWT0RqbGJvRVNGTzhwTnAxcFUwd0kzc0Z1dTRPc2k1VGNKaXk5bTlINW55?=
 =?utf-8?B?VEY2LzVMKzlGTmVhOUZkMTl3M3JySmw2RGpSN054a0xlUVhLdmhDaHU1b0pq?=
 =?utf-8?B?SzVhTWVIQWpvVjBhWUcydUpOaklFVlQxNXlJYmtnQmh1NDZpRXdhQzZPd1dL?=
 =?utf-8?B?Y3FkamZyUkI1blhHSm1vb3ZiQU00dDYzNFJKTTZxMzVrelZYSURQODZidkgy?=
 =?utf-8?B?MGVUTTZsck80eUZ1cEowKytKL3QvVmtOdnRSZklqTTZHUGlDM25JYzVOUS9k?=
 =?utf-8?B?ajhEcy9lczZqd0UvUytMQTNoSVBYZ2x1SGtqcTlxTVRXd2lhcDB5d282VE5v?=
 =?utf-8?B?dllrZjBpZzhFeE1BbEFSRFNub1VOWXVIaUlwMXdkZHh6WWQ4TVczK1Q0ZWEx?=
 =?utf-8?B?VEpjc204dkdzSXNOZlZycU1JN2RzZHZqV1dUUzBrSURxWkU2U1NiYjl0VVJK?=
 =?utf-8?B?U3BFS2hJczB1VlBrbnppUVA5clJGVWV3N2ZEejlYS1RjcitKc2RSZC8xTU9X?=
 =?utf-8?B?YUl4S2FnaTBzb1ZuTVZFS3psS1NxbXhnZXltdUhJTzNEVEhJUzRXLytycEdt?=
 =?utf-8?B?RmFUVFlDOVljaStTdDBTQWxZRU50ZWYrWDF6MUJlYWF5WHFSc3RSZUxiRlNB?=
 =?utf-8?B?VG9GUElYZndMdVR1Q3Z5akxBUG1YdVJVcXh4T0o5azVMWkIrWXZocVRYdE94?=
 =?utf-8?B?M2JJQXo1WElRRlFkWElUUTcyWVVoNnJoTXRMK1RGWThYYVdRZithd2gvcCtV?=
 =?utf-8?B?ZUh5bHVkM0dHVHI3ejcyNXdCUWh2UDRybTRjNGhvQzJLSFdZT1NBRUVmVkJR?=
 =?utf-8?B?bXA0Q2dQU00xRkxJQ0FSVThMbW5PQUtDMWdMRUZtTFJrM0R6Rm13bGFkd2FE?=
 =?utf-8?B?YkNOZVZ4aHBQUkNTbExwMHgvUkNsY0kvdWxpRitlQ1lpd0p1SUJjVTZUTkVE?=
 =?utf-8?B?V0E5dzJKK3U2Skx6QlZ0RFZTRkYxOTBZKzQzbDFVSUROMCsrMTBMYWZmdjdU?=
 =?utf-8?B?eUlEWGo2RktaYW9MdkkyK3pTM2R2T1puOGppNU5DV0VRVUFQbHFibWpjWUp6?=
 =?utf-8?B?L2V2ZXhHZzBpd1NWa2I2WmJCQm1LVWJNZmh0bkhQcXNBSUp3N1lnRHpzMDh1?=
 =?utf-8?B?WHpSMDR0N1czRVVKZ3htREFNMG0zMVVvbDZYZzRSMUJmQUhLdURxbitFeG5l?=
 =?utf-8?B?cmRrQlRMdE8ybVVYaUVSejFiNGEwMnBWYjd0aU1IVlJUWjB3QTJ1YUhBWDBS?=
 =?utf-8?B?V0F3RDVLbVJuV2l3RVRPZkpFc2xmQUFjT1JKVmdxdjAxMjZMMnF2YmdYcXha?=
 =?utf-8?B?elVteUVHNTk2MUd2d1hnWFFDQ21sZUNzamhHeWVZeUVsemdFR0ZjdURrOWhx?=
 =?utf-8?B?a0tZelY5dW16MUhnWkI4MnEySDJ3M0xHbWpjYitlT2pSQkZBTWlLS1pUMUh0?=
 =?utf-8?B?bnlCOTR0cHZEZWRHRFhBRWxCT2VrTE9YQXZxSlZwcE1DQ0hHRkVUZms2bEpp?=
 =?utf-8?B?UExtc3JrbnZBMnNiS3htQzl5RzkzUjI2MCs3TUFFKzVaNE5qRHZPalpBYTZQ?=
 =?utf-8?B?b2xwRXhwdEVHdmtyN05PVXhnNWZPdmFPUHA0L1NoNGxkS2hmdW14eWxtMkdX?=
 =?utf-8?B?M0JBK1hqUDRMZnF4VzBhdXZralFTaVhTYXU1QUlPUVAxVzBxV1hZUDMzN2tF?=
 =?utf-8?B?YjkyNXQyNXprOEJIdENrN0R3R0FXcDErRVdHZW9tdmNJWGJnUm9taVZEOUg5?=
 =?utf-8?B?QVd4MGVFMkRFLzkyVGpvOHZwS2p2WnhISUp4STMrNmd4djdVUjdJOWhZL1h3?=
 =?utf-8?Q?8v+hMfIU/tuzADQI1iPB8w8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40628856-8d3e-4dd5-c294-08dbb3251568
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 00:13:25.8746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wNTY0+U+kwYbL0tuRPeXxltALmgfrAAwOKDp+7yJpOiqTA5ffHMeS86Y5tWIL5nQDJx84w2s+v6U/XDBZYJBsAr+NrENEuXl0HJvBcYdjFA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6753
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/guc: Run busyness worker only if gt is
 awake
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 08:44:39AM -0700, Daniele Ceraolo Spurio wrote:
>   On 9/8/2023 10:16 PM, Umesh Nerlige Ramappa wrote:
>
> The worker is canceled in the __gt_park path, but we still see it
> running sometimes during suspend. This is likely because some code is
> getting a gt wakeref in the __gt_park path.
>
>   This possible root-cause doesn't seem plausible to me, because a gt
>   wakeref would cause an unpark, so taking it within the park would probably
>   cause a deadlock. Is it not more likely that the worker re-queued itself?

Will drop the likely part. The worker running during suspend is the 
issue, so keeping that part.

>
> Only update stats if gt is awake. If not, intel_guc_busyness_park would
> have already updated the stats. Note that we do not requeue the worker
> if gt is not awake since intel_guc_busyness_unpark would do that at some
> point.
>
> If the gt was parked longer than time taken for GT timestamp to roll
> over, we ignore those rollovers since we don't care about tracking the
> exact GT time. We only care about roll overs when the gt is active and
> running workloads.
>
> Closes: [1]https://gitlab.freedesktop.org/drm/intel/-/issues/7077
>
>   This needs a fixes tag. Also, I'm not 100% sure but I believe we prefer
>   "Link" to "Closes".

I thought Link was mostly for the patchworks link. I can change this to 
Link.

Any idea if there is a document/link that explains which tag to use for 
what? I have been confused by this before.

>
> Signed-off-by: Umesh Nerlige Ramappa [2]<umesh.nerlige.ramappa@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 27 ++++++++++++++++---
>  1 file changed, 23 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index e250bedf90fb..df31d6047ce9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1457,10 +1457,27 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>         struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>         struct intel_gt *gt = guc_to_gt(guc);
>         struct intel_context *ce;
> -       intel_wakeref_t wakeref;
>         unsigned long index;
>         int srcu, ret;
>
> +       /*
> +        * The worker is canceled in the __gt_park path, but we still see it
> +        * running sometimes during suspend. This is likely because some code
> +        * is getting a gt wakeref in the __gt_park path.
>
>   Same comment from before about this explanation. I would just remove this
>   part from the comment.
>
> +        *
> +        * Only update stats if gt is awake. If not, intel_guc_busyness_park
> +        * would have already updated the stats. Note that we do not requeue the
> +        * worker in this case since intel_guc_busyness_unpark would do that at
> +        * some point.
> +        *
> +        * If the gt was parked longer than time taken for GT timestamp to roll
> +        * over, we ignore those rollovers since we don't care about tracking
> +        * the exact GT time. We only care about roll overs when the gt is
> +        * active and running workloads.
> +        */
> +       if (!intel_gt_pm_get_if_awake(gt))
> +               return;
> +
>
>   Do we need to drop the _sync from the busyness stats worker parking if we
>   take the gt_pm wakeref in here, instead of an rpm one? because if the
>   gt_pm_put below causes a park and the park waits on this worker to
>   complete then we'll deadlock.

Hmm, My bad, That's not what I intended. It should be 
intel_runtime_pm_get_if_active(). I will change that

>
>         /*
>          * Synchronize with gt reset to make sure the worker does not
>          * corrupt the engine/guc stats. NB: can't actually block waiting
> @@ -1468,17 +1485,19 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>          * this worker thread if started. So waiting would deadlock.
>          */
>         ret = intel_gt_reset_trylock(gt, &srcu);
> -       if (ret)
> +       if (ret) {
> +               intel_gt_pm_put(gt);
>                 return;
> +       }
>
> -       with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
> -               __update_guc_busyness_stats(guc);
> +       __update_guc_busyness_stats(guc);
>
>         /* adjust context stats for overflow */
>         xa_for_each(&guc->context_lookup, index, ce)
>                 guc_context_update_stats(ce);
>
>         intel_gt_reset_unlock(gt, srcu);
> +       intel_gt_pm_put(gt);
>
>   I think this needs to go after the queuing, because it could cause a park
>   and if it does we don't want to re-queue the worker immediately after,
>   while if we queue it before then the park will cancel it.
>   Non-blocking style comment: with gt_pm_put the last thing in function, you
>   can also transform that early return in a "goto put;" and have a single
>   place for the gt_put.

Will change, although I am not sure if the runtime pm put may also cause 
a gt park. Assuming it can, I will make these changes.

Thanks
Umesh

>
>   Daniele
>
>
>         guc_enable_busyness_worker(guc);
>  }
>
>References
>
>   Visible links
>   1. https://gitlab.freedesktop.org/drm/intel/-/issues/7077
>   2. mailto:umesh.nerlige.ramappa@intel.com
