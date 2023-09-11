Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EC579A9E9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 17:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B8210E326;
	Mon, 11 Sep 2023 15:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF24B10E326
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694447099; x=1725983099;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=0ok/Yx3jgSXeo8g0VdOwlN3xpy/gX+dgrQ0PVvdoaJk=;
 b=BvYHRbofsfMJ7vTMPmr3PtdIdHs+tGRQZ25yJXsl0ZGxPRSmisw9IAwq
 RpRuhG8k46QTygN9IkdZZqCnmsg16y17uo1HxmY2e9K3fgE55DxWiMZhk
 s28xCdBYTf3NUwgK4ulh/MXp4TT9+dJ/UGTu+f+MZXPS11RX8a6UuX2BK
 sw4cirthDw74b9R1kHSCT3woIZ4mspe9MKAxDS5mwCKMFmMbMCzmWpiIY
 733OUEJ7ZC4Ws2D0RBMwZxDgobZVwPvNEHFw6YVWzZFhvj8lCd9IvZqaq
 7icG9Zb+LDk8H9+t/cz2YsCQ7Wm+l7dLt5Qrfe6dPihuW3yJB3d5lNUPN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="381921925"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; 
 d="scan'208,217";a="381921925"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:44:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="808867111"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; 
 d="scan'208,217";a="808867111"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 08:44:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 08:44:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 08:44:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 08:44:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G3zWgs2OB8xLPkPPFP+ZgqFSZXUt0xKGGSafJVHvIkdetIhX/i277WYmQ+mY8NBRFEP80n8a9xS+DsFbr9JC4bG4FMP7SAiKo4vkIeWfT/m0g3TF8Jukv7RSeGsusSsUKjkBKQDJMTA3xw2NJ1/+u8SjkN4CgQl5zXLUhVZ1OyLtj9Gy5+0L0YJoky6QJ5eENHDFo+iSIyBEGkZuynj09xMk1AYUtNPkm/UB/g86tsTwT/+pWWUZ4ULIfumZ3A4iMLszNNONGIkF9eMltRo7nZGl75rtlAzaWWC6HcCkJh9hqECwE6WvmVPiy8iYPxpG/Q8CHlReaG0yE9rsjgqlHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nED/SuzA3ayLqaL+7UFQ65/oehjr86vmVzxicyYMLeI=;
 b=eMvk6GwQbWYGJRlK28qq5uK7T6AfCVLdFNsJXSF5Y0UMmSAjEljOIXt3gRmj5a+f06fcpe4cn82V80Wg9zXZz3dNs4C9SL5zUcfMbbZU/bloBROeyWivMZ64V46zZJTRIHVGs7MzK9ymy2fJChJrOVBiiGRsDxuV/PCx9bRwJ+MEwjKrpuWeDYmE9yhU7GYOALNivXSQ5rnNv/MRHXN4vwOjj/CA7OnwNvdXqGbSMNH9vqRVqqePSqhPwOO2eL9NVYILJnH2ndidYprjBerFgO6+j1uwB0Tc0on2xMUIJN2NNOJf901TJmp2Ht/lzczUxia6+phw5YxCGhagwX6T3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36; Mon, 11 Sep
 2023 15:44:41 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f%4]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 15:44:40 +0000
Content-Type: multipart/alternative;
 boundary="------------PaP8iknC7tlb0SO90CV0dX5H"
Message-ID: <2f606ead-435f-446e-9650-68bb9334396a@intel.com>
Date: Mon, 11 Sep 2023 08:44:39 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <john.c.harrison@intel.com>
References: <20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BY3PR10CA0018.namprd10.prod.outlook.com
 (2603:10b6:a03:255::23) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SN7PR11MB7041:EE_
X-MS-Office365-Filtering-Correlation-Id: 443f93db-dbae-4165-edcd-08dbb2de030b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: soXCqvTZU5UbxN2x5x4kGWo5rqYSLeoG2cwLpzKHFi/8TvJ6Te7inwsj+th8RDnNNLS9TSTGwP6Q4XoA/qwD6+5uKwtrERZ87mecCF35qS1IDN9UO0R8eW1IxEQq0UgMxrHUuX0WKahDKPtIpIuInL0OGihLUSZAqUZf8ZuF6T7sCPcfxFIRH4EeV+ah8j4u6qprnpo9vc16/i0yVA608z4dvXLzqBdrZfKteNc9mv8Xtk328YKXsLOCELuTct5kMlM0bo4OqwCeJRbb9SO9IHJQJRq2rncyW9ndgLhOQ614uIIBAyZXowRHSJKIaIlu44r3Coeb+4/EP5Y+LNBS19KwouEVbOMYpSQeo8YTONe8BWYVpBlfZ46E1E/WZCY9xzhMFKv9MFO+s78065RDdeMgyncCOeu2J+keVaFtsSnxSfe9PCFSd/lK1iNqavfzXr0LrWf5y2i5sbImWD0Vr0DuRHSJgo/+Zq3s7iYesvA4DtzNT0IHZi635W9eER2zBBrtUyRdNSYe0fJZLUGjHHSHXitpPkVgMQOMVimIXJExGsjVL9GiVC9R4B0OyUWPS8HGkFCVkNm8VGmpI9sEsN2Mj+ErKbNXWNZl4OqeG4aygCBgsJRDmh7Skj2iK8P6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(376002)(396003)(366004)(451199024)(186009)(1800799009)(86362001)(31696002)(5660300002)(2906002)(8936002)(8676002)(36756003)(966005)(82960400001)(38100700002)(31686004)(478600001)(6512007)(26005)(66556008)(166002)(33964004)(6506007)(53546011)(2616005)(316002)(6486002)(66476007)(66946007)(6636002)(83380400001)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vm93QVY2V2NzVEJBeit1SGcrTVNRS29vYVZJNm1VWFl4bjJDZ1YvbzdlOVhv?=
 =?utf-8?B?VEFYWk5MVXVNc0FMSkZabXZLNmlpQWxCVGdMSFIrSExuVFJKRzdrZ0xHOW50?=
 =?utf-8?B?Nm1sbkwrOE8vRndRZ0p6RXVNUWFOc2JCVTFKUDVKanRVcVl6TzRFQ1E5U3FB?=
 =?utf-8?B?WnkyLzJDbExPNStaUG9PZXMrMXBIdDFkcFVuOWoyMXB0UitxcDMvZUYxQzVh?=
 =?utf-8?B?SXV1YUdERlJIUjJ1N2JtUktiaFZ1YTdxaUJDbjNCS3hLVkhjSHh2MWp4cTFy?=
 =?utf-8?B?MUtpNVJ2ZkFZTTBVeTNHQnVpZk9Ed0hwTEhqRkEwUk00dHFwQXpZeXZPUS9M?=
 =?utf-8?B?SGVUVFVRR0gxeEVCN2Q0TVlPR0NYOWNXdld1SGIrdXYwdWErSnFWc2c4RVFZ?=
 =?utf-8?B?U2RhYUJMUVVXRDFmSHJNVG1IY05GclU0VEFJSUtPY1RSTkRjNjdITjR1eDlp?=
 =?utf-8?B?eC9iQk05ckFCN1BMTURRUWkwQk1Hd1ZkRThFV1hBcXcwUXlYQWszL0h4RXJL?=
 =?utf-8?B?MXUyL1JlZXBQcHhuZkVqdlh5aUhRSjcwdjhzN2h0ZExFUDNwYk9FeWxFSzVs?=
 =?utf-8?B?cHlUN2MyM01Ga2lodnhTRmpTbExFL1F6dFJBUU9iRzRkUW9QZGFWSll6c2lx?=
 =?utf-8?B?RG40R2g1aVR1S3htSnZUUHpuV1ZFMVRGMnhmWXZPTDRDVkN1akdWL3BSeGJF?=
 =?utf-8?B?TWd0ZDZjR2FLU0kxcVBnNUVIdjU4b21xUXd2RFA5NnkzOGhDUHU0MFN5aVFE?=
 =?utf-8?B?UTNxUFNTc2lOUDJLZzVYSUNjZ3BTUEQxUm80Zi96bG9CbFhEM2tLMlVnVndp?=
 =?utf-8?B?Z3JUMWNlVmkrUHBvck9EVTdDdHZtRllOYVVkVGMxZDhpM01zMFp5clMzSDVW?=
 =?utf-8?B?WWdhQmh2SUQwb3JLb1pTanRnK1FHc2k3RVh3RHYwcnhFRkh3RjV2VktVVUY5?=
 =?utf-8?B?U2t6b3JEZFdkY0RhaXpHdVdQOWpXVVVlVDVwVGhJMjFCSDBOeVBwSHljQkdQ?=
 =?utf-8?B?TFVqcVVNSmhDMGR0K2Z2NERkbEJBYVF4SFdIVUJhSGgzTnJtc0RmUmJOYmkw?=
 =?utf-8?B?RmZ5by9hblZCbUZNWmxVeGNrcDBCdFpBZUE4YzIvZEg3VmpWTkJ2QloyZEVz?=
 =?utf-8?B?b25aNVpjQm9SRk9FNEYvZzE3cEl1cXZDQk9VNHB6b0ZoUG92ckx6SVg0anE2?=
 =?utf-8?B?a2thTWRkYVN0czRvQk9MU09hb1RJeFFKRWVwRVUyNE1sa0s1NGJUSUFFUUho?=
 =?utf-8?B?YTlGeEtkdENKbklxYkF5R09lYXM3RWxhd2h5NytmcXk1eGtUL3pUTnV5RVBh?=
 =?utf-8?B?SC9KRW9wMklUdkpIMEJFbzJzUVF3WEFLQmZGVzFBWHpSRVFvbUQwOGZqT0Nq?=
 =?utf-8?B?WFFmOVVDTUFnWnB3T3U0eGdrMkpFaHVJU2J1ZXhMeWJvaERuaDlGKy9RS1J5?=
 =?utf-8?B?VUwzTTNSZkZFRStKUld3UmRkdFU5NEFpNC9xODRjT0FNWjZUVDQ0Uk5EM2Iy?=
 =?utf-8?B?QkpKNlQzRm9Xd1huMTVSbGcyNGxWYU5XSHFuY1lWVnVlbnpzZFJzT2JVclA5?=
 =?utf-8?B?QnZWR29rME1JRWdjazNqS2o3M0dsakJscTl2bzBBTGhVN2kvdy9qK29hVFRB?=
 =?utf-8?B?NmNxcGt3a3puR1VyN2FqNEdFM3NaRGRZOXdpNFVqaTVLNHR0d0ZkYm0rRU1J?=
 =?utf-8?B?ck8yUGpyM0VucVZrMnpvS0FFWFFtM21LS3VNd0tqQWMzQWg3WnpOeXIzS25K?=
 =?utf-8?B?aVJBT3l2akgvc0w4UW5lMWt1WFVQYWVkT3BzL0xrU0FOUWtxelNlMmozcU1D?=
 =?utf-8?B?ZU9aNEJxVUVYTFhvdWxBUUNTakw3amJ2R3NFZmo0TGtkMzMvRVpwWm83ZzFo?=
 =?utf-8?B?eUc3cUkrR1l4RlBwVnF6Z2JjL2ZKQSt5ckRaTFpHRXBlNXVRcFROQVNHTHlp?=
 =?utf-8?B?ZUVzLzRRRDlTakUyZVBRaWxoUmtLc3VUL1RrdHZpazhIYnkwUnI3R0QxNm9q?=
 =?utf-8?B?NnBnUG04THZZS21vc3ljYlVxTytTLzZ5d2paQmQyTmcwZy9XcElmTmVnanIr?=
 =?utf-8?B?YzZZUEJxbzNEZjJOTm5NTEZ3L1lweDJTZzNKNjF6cks4VmFWWTFnT2d1NTFt?=
 =?utf-8?B?K2dQam93dENIQkZBb1dpUngyYy83ZHMxc2dETVk2Uitzd2dqWUdOS1FOS2ZZ?=
 =?utf-8?Q?0gYtlPiPMD1Lo4N3F9Lkct8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 443f93db-dbae-4165-edcd-08dbb2de030b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 15:44:40.8036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 71nHS75+/li/Bom9fViG/M+sNyGdVKIurLXP8FmXmzMNSBoUAwaHaikg5vBvKlc1BqAu7diRN+mCYHdCW8og6FzUIH4g870hNetWXAUPpVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7041
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------PaP8iknC7tlb0SO90CV0dX5H
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 9/8/2023 10:16 PM, Umesh Nerlige Ramappa wrote:
> The worker is canceled in the __gt_park path, but we still see it
> running sometimes during suspend. This is likely because some code is
> getting a gt wakeref in the __gt_park path.
This possible root-cause doesn't seem plausible to me, because a gt 
wakeref would cause an unpark, so taking it within the park would 
probably cause a deadlock. Is it not more likely that the worker 
re-queued itself?

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
> Closes:https://gitlab.freedesktop.org/drm/intel/-/issues/7077
This needs a fixes tag. Also, I'm not 100% sure but I believe we prefer 
"Link" to "Closes".

> Signed-off-by: Umesh Nerlige Ramappa<umesh.nerlige.ramappa@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 27 ++++++++++++++++---
>   1 file changed, 23 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index e250bedf90fb..df31d6047ce9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1457,10 +1457,27 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	struct intel_context *ce;
> -	intel_wakeref_t wakeref;
>   	unsigned long index;
>   	int srcu, ret;
>   
> +	/*
> +	 * The worker is canceled in the __gt_park path, but we still see it
> +	 * running sometimes during suspend. This is likely because some code
> +	 * is getting a gt wakeref in the __gt_park path.

Same comment from before about this explanation. I would just remove 
this part from the comment.

> +	 *
> +	 * Only update stats if gt is awake. If not, intel_guc_busyness_park
> +	 * would have already updated the stats. Note that we do not requeue the
> +	 * worker in this case since intel_guc_busyness_unpark would do that at
> +	 * some point.
> +	 *
> +	 * If the gt was parked longer than time taken for GT timestamp to roll
> +	 * over, we ignore those rollovers since we don't care about tracking
> +	 * the exact GT time. We only care about roll overs when the gt is
> +	 * active and running workloads.
> +	 */
> +	if (!intel_gt_pm_get_if_awake(gt))
> +		return;
> +

Do we need to drop the _sync from the busyness stats worker parking if 
we take the gt_pm wakeref in here, instead of an rpm one? because if the 
gt_pm_put below causes a park and the park waits on this worker to 
complete then we'll deadlock.

>   	/*
>   	 * Synchronize with gt reset to make sure the worker does not
>   	 * corrupt the engine/guc stats. NB: can't actually block waiting
> @@ -1468,17 +1485,19 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	 * this worker thread if started. So waiting would deadlock.
>   	 */
>   	ret = intel_gt_reset_trylock(gt, &srcu);
> -	if (ret)
> +	if (ret) {
> +		intel_gt_pm_put(gt);
>   		return;
> +	}
>   
> -	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
> -		__update_guc_busyness_stats(guc);
> +	__update_guc_busyness_stats(guc);
>   
>   	/* adjust context stats for overflow */
>   	xa_for_each(&guc->context_lookup, index, ce)
>   		guc_context_update_stats(ce);
>   
>   	intel_gt_reset_unlock(gt, srcu);
> +	intel_gt_pm_put(gt);

I think this needs to go after the queuing, because it could cause a 
park and if it does we don't want to re-queue the worker immediately 
after, while if we queue it before then the park will cancel it.
Non-blocking style comment: with gt_pm_put the last thing in function, 
you can also transform that early return in a "goto put;" and have a 
single place for the gt_put.

Daniele

>   
>   	guc_enable_busyness_worker(guc);
>   }

--------------PaP8iknC7tlb0SO90CV0dX5H
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 9/8/2023 10:16 PM, Umesh Nerlige
      Ramappa wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com">
      <pre class="moz-quote-pre" wrap="">The worker is canceled in the __gt_park path, but we still see it
running sometimes during suspend. This is likely because some code is
getting a gt wakeref in the __gt_park path.</pre>
    </blockquote>
    This possible root-cause doesn't seem plausible to me, because a gt
    wakeref would cause an unpark, so taking it within the park would
    probably cause a deadlock. Is it not more likely that the worker
    re-queued itself?<br>
    <br>
    <span style="white-space: pre-wrap">
</span>
    <blockquote type="cite" cite="mid:20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com">
      <pre class="moz-quote-pre" wrap="">
Only update stats if gt is awake. If not, intel_guc_busyness_park would
have already updated the stats. Note that we do not requeue the worker
if gt is not awake since intel_guc_busyness_unpark would do that at some
point.

If the gt was parked longer than time taken for GT timestamp to roll
over, we ignore those rollovers since we don't care about tracking the
exact GT time. We only care about roll overs when the gt is active and
running workloads.

Closes: <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/7077">https://gitlab.freedesktop.org/drm/intel/-/issues/7077</a></pre>
    </blockquote>
    This needs a fixes tag. Also, I'm not 100% sure but I believe we
    prefer &quot;Link&quot; to &quot;Closes&quot;.<br>
    <br>
    <span style="white-space: pre-wrap">
</span>
    <blockquote type="cite" cite="mid:20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Umesh Nerlige Ramappa <a class="moz-txt-link-rfc2396E" href="mailto:umesh.nerlige.ramappa@intel.com">&lt;umesh.nerlige.ramappa@intel.com&gt;</a>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 27 ++++++++++++++++---
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e250bedf90fb..df31d6047ce9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1457,10 +1457,27 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_context *ce;
-	intel_wakeref_t wakeref;
 	unsigned long index;
 	int srcu, ret;
 
+	/*
+	 * The worker is canceled in the __gt_park path, but we still see it
+	 * running sometimes during suspend. This is likely because some code
+	 * is getting a gt wakeref in the __gt_park path.</pre>
    </blockquote>
    <br>
    Same comment from before about this explanation. I would just remove
    this part from the comment.<br>
    <br>
    <blockquote type="cite" cite="mid:20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com">
      <pre class="moz-quote-pre" wrap="">
+	 *
+	 * Only update stats if gt is awake. If not, intel_guc_busyness_park
+	 * would have already updated the stats. Note that we do not requeue the
+	 * worker in this case since intel_guc_busyness_unpark would do that at
+	 * some point.
+	 *
+	 * If the gt was parked longer than time taken for GT timestamp to roll
+	 * over, we ignore those rollovers since we don't care about tracking
+	 * the exact GT time. We only care about roll overs when the gt is
+	 * active and running workloads.
+	 */
+	if (!intel_gt_pm_get_if_awake(gt))
+		return;
+</pre>
    </blockquote>
    <br>
    Do we need to drop the _sync from the busyness stats worker parking
    if we take the gt_pm wakeref in here, instead of an rpm one? because
    if the gt_pm_put below causes a park and the park waits on this
    worker to complete then we'll deadlock.<br>
    <br>
    <blockquote type="cite" cite="mid:20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com">
      <pre class="moz-quote-pre" wrap="">
 	/*
 	 * Synchronize with gt reset to make sure the worker does not
 	 * corrupt the engine/guc stats. NB: can't actually block waiting
@@ -1468,17 +1485,19 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	 * this worker thread if started. So waiting would deadlock.
 	 */
 	ret = intel_gt_reset_trylock(gt, &amp;srcu);
-	if (ret)
+	if (ret) {
+		intel_gt_pm_put(gt);
 		return;
+	}
 
-	with_intel_runtime_pm(&amp;gt-&gt;i915-&gt;runtime_pm, wakeref)
-		__update_guc_busyness_stats(guc);
+	__update_guc_busyness_stats(guc);
 
 	/* adjust context stats for overflow */
 	xa_for_each(&amp;guc-&gt;context_lookup, index, ce)
 		guc_context_update_stats(ce);
 
 	intel_gt_reset_unlock(gt, srcu);
+	intel_gt_pm_put(gt);</pre>
    </blockquote>
    <br>
    I think this needs to go after the queuing, because it could cause a
    park and if it does we don't want to re-queue the worker immediately
    after, while if we queue it before then the park will cancel it.<br>
    Non-blocking style comment: with gt_pm_put the last thing in
    function, you can also transform that early return in a &quot;goto put;&quot;
    and have a single place for the gt_put.<br>
    <br>
    Daniele<br>
    <br>
    <blockquote type="cite" cite="mid:20230909051645.1653965-1-umesh.nerlige.ramappa@intel.com">
      <pre class="moz-quote-pre" wrap="">
 
 	guc_enable_busyness_worker(guc);
 }
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------PaP8iknC7tlb0SO90CV0dX5H--
