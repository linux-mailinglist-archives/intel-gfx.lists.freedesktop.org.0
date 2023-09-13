Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B1779DDDE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 03:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3274A10E147;
	Wed, 13 Sep 2023 01:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D35C10E147
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 01:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694569580; x=1726105580;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LQIkRgd0CPaMsRhSPiguogIVmoMuRCNHEJtJgnijb9U=;
 b=BALDnOaHXg2R/CR0VpPOMxpVUyBOTbctbVlJ2/towRwN+rLuyySiRYS2
 5VfGmZrVJoCBWMn0u6l5T7FUHbpslWVtKLec6hLojsMewo8Upm48B5/PE
 un/sAaDo1XSLq2ivnelZq6VAVnHUrHQGO47LITvwyXCXyBHioXFqaHuYM
 Z+fF8XAKgd9K+lHQMnrhUMImnFWk05MtUXrNmObrraO+SojQCQ3yyokuW
 FjV9d5Eey3h1k0A2T3qQGZmtTKOXyJjGj3MgZv+WyUtzmkpg9PFI+twK6
 2Amq/0Op1gD1T/88jk/LOPWTZCPfsvGbfN0fs2TBwQyoiY38cBRylync/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368807737"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="368807737"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 18:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="990717243"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="990717243"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 18:46:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 18:46:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 18:46:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 18:46:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X0lgobepAS1RiPJmRN+vhEql6SPCdRZRHnmbj0XwaKQju3pzfoTIUAmbrumuA5peKqXPbTQt3d7jfZvDjctewrptzrpLjvF7wuTHle0Wr3p+VVDMlolk1Rfzh5VC/yhyTP5WJKkW1HHUtcXcyWyLwqG4iMoNvH/mALinsG5/PiRigyKdlOsiLMlhyAp1IHRRq4QS3cRzpxFS9TYVv5eMe2A8T1uxr7qnZg4W8hjXTAGwviJP5MpZFuzNZ+amh3zYrR39GX8XBDaF941fQzdEuIhQcbqS7F2z1YT2x5B94+fIVMytI0LJoJ3tCFxvyin7PQUZyUWBQnkZ7pzZGxnC1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XwHovVHikVr1m8fben/4rNNi6y3MVqylvZljI/rjPP4=;
 b=dczpqadj29mEAZcz76msSeAxncvvmXbKfa4OzeTBqbaxB81vDyMQEgf0PNiAaNHnJZKBGGwcLmvAv3u2DRnblAAEIi19TPHtiWQBNLqH9uYPfzuhf+TxQH/W0XROpqsiowIMtqLfLUFWtfIJLlwxzlnL+qnBLLh7gFbb8JSUNrD0f/7ns+m7ueGMekQ/0CXpGa3nR+UgOkEZb9zpwHl4eCQhFsv6t1Wj0vvoq8XZYuEhbZwy3QePa/3nl9kR/CDyafB7Y1iBwzjRGtXfK+aVKcCovbXhWCSAz6tiPkFh06Zfw11QhxwlSjtOJiAorqWFLvTVWwisahjEmFf9qtF7Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 IA0PR11MB7911.namprd11.prod.outlook.com (2603:10b6:208:40e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Wed, 13 Sep
 2023 01:46:16 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 01:46:15 +0000
Date: Tue, 12 Sep 2023 18:46:12 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZQEUZPAWX1On+YFw@unerlige-ril>
References: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
 <20230909011626.1643734-4-ashutosh.dixit@intel.com>
 <87r0n8qgu7.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87r0n8qgu7.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW4PR04CA0147.namprd04.prod.outlook.com
 (2603:10b6:303:84::32) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|IA0PR11MB7911:EE_
X-MS-Office365-Filtering-Correlation-Id: d26923b9-7cc9-4a7d-616d-08dbb3fb3776
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +XuGCdZTZB2BBxG2/RnzWJsT2LKyZTYWhBE/9bOfrqkqi+RieRRmjrYnvNvQAOVgI27776bZwQRtRpxuRjlay+/CvsCggchRdOeC5ynUKRaH3e/TvVjLDJT+cUg1unZ1/GalyqXKLJgqcIVcahswV7HvlHqNwfLu4B52s2ey/qd4/nvjTqtPdtGj6II5K5qkAPTl+15dLUMS8k4zyN5GKt6pgqTjNxaq0KGPc4zZH0g5nGS0xdJfBBPpIYZJgqW2Vf/vGlBoXkcv2r6ApVj/1akp7bkbqxfu0tKsCXXheV3VekgGo7Vvq+c08kKx57c8Qt/Z5xN0G5uIJjZogIRLjpuypGxDR9a4mgUkHK2OFT8NufaWpzl3D47wAmXvOMpIq/sVmT3amxGNDNgQ9gL5haqfIhhtshyuXcCCHDyW7vqAikdYJul957I7GvrZpd2SIL8O2iX/ZVbHbVMh/sr17tnz75HXQh99ariBHCDgiYBPJze1qumPwpJFzw6jshpTTrMWoe/KKAj0rsRgWH9yJiwoReTGhVEVWepU4D/qUwfVApCA7czvAkOEN7tgB5FqiIMf/abzM4tIFu/SD6nrpoWO2Qd4UeDNaKAeH7HMRus=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(346002)(39860400002)(366004)(376002)(136003)(1800799009)(186009)(451199024)(33716001)(83380400001)(66899024)(9686003)(82960400001)(6512007)(8676002)(2906002)(6862004)(66476007)(8936002)(6636002)(66556008)(5660300002)(66946007)(4326008)(41300700001)(316002)(478600001)(6666004)(6506007)(38100700002)(6486002)(86362001)(26005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWp2VFdtck1MWW5yNGlDa0Vya2Q0c3Z1YUhOVjlxMmFvZkZ6ZFNwV3VmVHB5?=
 =?utf-8?B?dU9qcWRNYnNlNytjMlM0azFoT0tzcmJvV2hhaWtqUDFVczlRTGt4RUI5dHY4?=
 =?utf-8?B?MUMxbTVNcUwrbXBGckhwbklOYnExY21seHlhRThYM25lS1RTU0JzV3NaTmxt?=
 =?utf-8?B?MUVaOHhqYkRGZC9xK0xHRFdFMjk1WER2SlMrR2xEZitsU2FWcnF0NmFyaGRv?=
 =?utf-8?B?MzBwRFJyYU1aeFVSMGdYUFRzLzNCSDV1OGNmdmYxb3pldDl1RHRlNVU2NTQ3?=
 =?utf-8?B?SEFmTHdIempPbXkvczJCK2dNVkREZldibVc4VUZLYkkraklHbVcxMzBkSnZw?=
 =?utf-8?B?NFJvREVTTXVnOGtHRmh0OXJCcEdhZTZRTUgvOU83YjdDZ2lEZDZyK0ZSRldv?=
 =?utf-8?B?QkFmSmNNdGFhK0lpc01yUXNwWEMra3pYMlNWY1hOeEJSUVZ4d0xKSDdqQi8w?=
 =?utf-8?B?aWoydEdRcm9kR2wwekk5RkxUQkpYLzdSdFJYYlRIWnVhV1NmOS8xVFo2Rmxt?=
 =?utf-8?B?MGYxd3Y3MFNMOFFHRE04UTZGTUJrWDQxV0FreksxMmxJMEsyZ0tVWjdQQVJ4?=
 =?utf-8?B?RTFTYTd2VTZ1NW5WYnF4MzVKY3pQVXlnR1ZkaWN0OVBVM3lMUnNiYXMwMXM3?=
 =?utf-8?B?bFZDbit1RkduTHJaUWZYWjZ2Slp6T2l4NVJLcVRMRm16ajdPMGhpM1RHbkxo?=
 =?utf-8?B?bjgrbVBySjFaMEUrMDEyeS93MFFOL1l5MHlVTFZZWkhWeVBCVlRDUVR5M0d6?=
 =?utf-8?B?SXkyckhWZTZqN0g0TU1WdXhDQU9iV1c2SmtlNHhQZnlhejJ2M05IdVZKV3RJ?=
 =?utf-8?B?Z05HVG4wejNKZG9CVDUvdHZSMlNVRTJCeVdNeHdVTkVrV1dXU05nUVdHNWhW?=
 =?utf-8?B?VEtzUnRzTUVGb3ZlOEdjNk9jbVZBdFQ0aGFTR3dwRisvQ1d5VzFTTTNMeWRn?=
 =?utf-8?B?VHJzNHY0RTBuak13cHozdzNpL01pbDEvWnJHUlRiNXY0R1RJajJia25NcTlE?=
 =?utf-8?B?QmxOUFY5a3ZNYUo3UE03Vzk1RmZhbitYbzhiV0JQem8xYkFkUHJKSjkwNWF1?=
 =?utf-8?B?cDM4WXJzN2pnOHM1RnpBdG9LcjJIVFpmeWhGY2pLZWZwZjlReEpLTmlkVVNm?=
 =?utf-8?B?UlRQdVRCdmUvNkorRDlkZ0xGTVBDdlpwYzBiMC9mVFlHM0tORUtPZnhvckE1?=
 =?utf-8?B?QnozbjFUMVhEVDg0S3BFdlRSeHFVNXlyWlUzQ2swblNtbFBadWlUYjAyUzE5?=
 =?utf-8?B?VkdLemhCS3FVTXF4KzNwY1BkZUdxb05iWmRnVGE4Q0RqWDJwYnJtdnkxUW5B?=
 =?utf-8?B?c2N5RFJ3eWl2T2p5NGtnMzF3NVBlYXFwd0VmY1hTNklkRTl0ZkFISmkzbnVq?=
 =?utf-8?B?YjlBZFNZVll3Q2VNZzRQQ1BOS2U0RUM3ak9COWJxZnh1TzRKa2xiL0xJd014?=
 =?utf-8?B?NVZQNHhyeVB1d1ZZZExtR3VUV3l0OVBCSitNLzN5ZkR0NXlPcVZ6dkJ2ditW?=
 =?utf-8?B?TGhrZkorZStiQStnWG5xUVZPd3VNTGlLTVN5eW8xNlJiMXJibHJ5M29Pbmtp?=
 =?utf-8?B?QXFicWpBenN3YlY5bWx5S096UlZ2VlZPMVE2TGxpdVZBUVY3b2VreGVqQmNP?=
 =?utf-8?B?dys3ZmtzcW9XejNpV3hodWZyUi9HWVgwbzIyeXhQb2VwTlM5bWwraG9uOVhD?=
 =?utf-8?B?czZXZlpQQVhwTmdPbERlaXh1M2VKTUxpNWRBZlFueEs0RFRjTzFqWXRPUUww?=
 =?utf-8?B?WHlnWDdVbzNWWTh6aXNMc01HRldBMzI1WjhmQlNTWGFRdXpUL25uNkpDQlFM?=
 =?utf-8?B?bUdKMEpHbVArTXRTeTZlL1RRRTU2SnBYSWNLZDE0dlArZXFyb1ZLVW1sZnps?=
 =?utf-8?B?N1RKejV6aUxvL3owK05BRVFtR2M5K3N3UlZDVUcvZ0hsUVBmWllxdGMzUnlM?=
 =?utf-8?B?ZWx2T3ZoeFdlc1Y0cFZ5bnFubFpJY05aOWJORUtLTTNRb1Z0M1E2SkwxdjM1?=
 =?utf-8?B?SEhDK1JZeWpQTXZ5MjU1aUFYSTc2dmNSYjI4NDAwN2Z6K2ZySUlydnpaU1dC?=
 =?utf-8?B?Y1F5RGxaM2ZnRklTSFhpeVZTQm9XcmxJWUUxTzY5OFBXYmc3eitwTUYyNVE2?=
 =?utf-8?B?elA5UExkc2ZxQzh1TzAyWlN0RTVEejRscThQZjJPWDQ1NlFHQmY3Mk4wM3VB?=
 =?utf-8?Q?YWYMZkn3BEJ1iWcJBij7oX8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d26923b9-7cc9-4a7d-616d-08dbb3fb3776
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2023 01:46:15.3050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RbL2hLNluRZECVGEOwSTlq9B1gjyK45+kEzw0JF56B8PvFcjp3FjDLRnCTZmWLVbBey2Y9/baO3kSAYjZITFdysaOr6NRZ91J+FS0KP06S4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7911
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/perf: Initialize gen12 OA
 buffer unconditionally
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

On Fri, Sep 08, 2023 at 06:24:16PM -0700, Dixit, Ashutosh wrote:
>On Fri, 08 Sep 2023 18:16:26 -0700, Ashutosh Dixit wrote:
>>
>
>Hi Umesh,
>
>> From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>> Correct values for OAR counters are still dependent on enabling the
>> GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE in OAG_OACONTROL. Enabling this
>> bit means OAG unit will write reports to the OAG buffer, so
>> initialize the OAG buffer unconditionally for all use cases.
>>
>> BSpec: 46822
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 1347e4ec9dd5a..30cf37d6e79be 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -3032,12 +3032,12 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
>>	u32 val;
>>
>>	/*
>> -	 * If we don't want OA reports from the OA buffer, then we don't even
>> -	 * need to program the OAG unit.
>> +	 * BSpec: 46822
>> +	 * Correct values for OAR counters are still dependent on enabling the
>> +	 * GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE in OAG_OACONTROL. Enabling this
>> +	 * bit means OAG unit will write reports to the OAG buffer, so
>> +	 * initialize the OAG buffer correctly.
>>	 */
>> -	if (!(stream->sample_flags & SAMPLE_OA_REPORT))
>> -		return;
>> -
>>	gen12_init_oa_buffer(stream);
>>
>>	regs = __oa_regs(stream);
>
>Looks like this should be needed, I can R-b it.
>
>However, gen12_test_mi_rpc IGT says:
>
>	/* OA unit configuration:
>	 * DRM_I915_PERF_PROP_SAMPLE_OA is no longer required for Gen12
>	 * because the OAR unit increments counters only for the
>	 * relevant context. No other parameters are needed since we do
>	 * not rely on the OA buffer anymore to normalize the counter
>	 * values.
>	 */

That's wrong. When TGL support was added, this was misunderstood and I 
removed the OAR-OAG dependency. Ideally we should enforce user to pass 
SAMPLE_OA always, but now that will break uabi.

For for the OAR case, let's just enable OAG unconditionally so that the 
OAR counters tick correctly. While we do that, we should disable all 
events that trigger a report into the OA buffer. In addition, I would 
also allocate the smallest OA buffer size for this case, so that memory 
impact is low.

Needs a Fixes tag with the commit that enabled OA for TGL.

Regards,
Umesh

>
>So gen12_test_mi_rpc doesn't set DRM_I915_PERF_PROP_SAMPLE_OA and also
>seems to be passing in CI (don't see it but there seem to be no open
>bugs). Thoughts?
>
>Thanks.
>--
>Ashutosh
