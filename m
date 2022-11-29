Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F8D63C747
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 19:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F6410E1D0;
	Tue, 29 Nov 2022 18:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD4010E1B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 18:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669747273; x=1701283273;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OdHd5JMOTlVrkhZNuD3gSK2bq4gypK/Ds1IM7XVB6VA=;
 b=HcHU3hBUFmocHqcRPyrdbYxgEvu/rm9+lFY79E1f6cdqZ7ZG/mml2cbn
 8lge65ObGYXsgKxvZJNsXzqkgv2b7+Z0EnWTFCv8slwnEL4GUpAK6XgKL
 XHMKqHyL+NZRQYARuSwcQyBl98PCaxthOiTTNJiqFWu+wAvz8LsVw6Z7F
 LOQ3ukFBnC5X4PaBri5yS5klSmmHJ9gtLqHFjzgbqeDE3rXwHaIkCjlkB
 mGPtsmI3749Il8nVbQz1HRJxinj6JUdZeptvXqMR2dgtoMwGl8GKR6Phe
 bu+C5urE8Z562SmAlpKPzEuzAnjmsktyMGUd3x7ZdWtChESyGG6p/WNUx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="312821051"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="312821051"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 10:40:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="676532550"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="676532550"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 29 Nov 2022 10:40:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 10:40:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 10:40:49 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 10:40:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BaxRmWzndTxR0oVeOFgd+L1b18YSpVMX5fL9YxhmYgcIxSFPP594rBt2IigVE0UvtIocR9V1408FYfpcN3kqzWm2mZ8B5CZNMXTWT5VI9xR0h2uH6QRqmOwh+GkqzcGaXrkk9KGgbRxXbycoAhNCoiTkL0RUEaKzF+3a0s0Dj4GO6u1A2sW97aN6SuN7h1kjxwIF/Cbdw7gzoA3/7wot9uRV7Aoip73ensB+rJRrroJxUyP5U35bNFZzB+3EAQ3aNL6NN3Wq8q3QhMk9hS6KgbXmx9l1OoedeOsl4KqqYWxGc4OZ9YoWndSKwk9Ll+Co4IgO8g9I/vzs2Vj7hOY8cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fv5NQ19l1ScfkdlrumAJOEeQZ652AuKSbQMyRGKZJvY=;
 b=KlSJCWeAyxLGeghPhrdE+C8HQoZ+yXk6bUuF0Gi+R7ko+HC8vGd44oVYmJT+HcAtLHs+yaFf3D+BEf2+VBKOh40QENZHTfEY4XJwnKB45pbvN0UgH1U3GKbmTnTbiDYwLlgCSlLZfYU1PMFnmlXiyVHRu6+rMI/ehdRsSxNpW4E9VrreKygoamKAHEXo23qs1jUyjx6F8LK05Vq4ImHfqEcC/nGwId/8shrg/JOFp9FvbVxwaxaeb65Yi6sHOoKEIAzCqJLLtgQO7Gb+Phh002KtQon4jq7euNP/8KfQxNeU3x0K3rgCioq26ZqvI+TmS62jbYp3eMYGkQvlXtOQXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ2PR11MB7426.namprd11.prod.outlook.com (2603:10b6:a03:4c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Tue, 29 Nov 2022 18:40:16 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 18:40:16 +0000
Date: Tue, 29 Nov 2022 10:40:14 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Y4ZSDk/Xn6apT0Aj@unerlige-ril>
References: <20221129012146.995006-1-umesh.nerlige.ramappa@intel.com>
 <20221129071552.fwy4tuk7cyd7neve@ldmartin-desk2.lan>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221129071552.fwy4tuk7cyd7neve@ldmartin-desk2.lan>
X-ClientProxiedBy: SJ0PR03CA0253.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::18) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ2PR11MB7426:EE_
X-MS-Office365-Filtering-Correlation-Id: 8053b5d0-b3eb-43fe-5c01-08dad2392881
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z/fIT1QmMnCfQJ26Ojh/06Goa3aEKyK/3NkQyPVyTkMDvz+D6xQSDuWRWYX6q/Z9DC2N9Ny1ZWcEBfAtTQZrA28flBfF+DydXKD6cqZMdOHv55HFgyrpFd2D6FJSSv9zQZ/GvaURAOzQVeBa0XUu+wGWy4bQb1ZWG2EbrxAGfiH74L8mPTLqpt3hIHr6pTI8a91P3cefIVw8elpk9myqdlXQolDZbmZBy2ArVMee7Bf15W2AQqVUuK6eZ9F/WuVPKNnLbzYUJ16D5VJ38yVeVnGavu66dSjF/fBus3pe8ZVOXk5FnqFrdcZEEhj34ev/+Cdw6JGoVZUOU/flXkGeqGYDyE5L5ZkpY01zL6FgSo4LykOlNgIGGvKj/b7wrv1i7JMSjldnXIAKVp7NHzGPtZYd4WyNIqeiz4WCJHOVSJQexraJLN09r8bnHYihUS9XAON9YDy4FNgxB5nak7KtcML20WqGkAW/5TUFv4oM+bOjWFLJURXp7jQLeJrMsJ7U7ablcaRefi26uYxHVx9EedYb9R5FctbAVcsVcW9NVpMnSmddg/uUcjwpT8q2VPENnJdxA16XqyD/OuMI6sZMnfJcVHny1rO8DQ++d0P0vk+RNDNQp0tnFqRaNogpqBDcS4xNDUconyUg8+rJUxhrhw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(346002)(376002)(366004)(396003)(136003)(451199015)(38100700002)(83380400001)(6512007)(6506007)(9686003)(6486002)(86362001)(82960400001)(26005)(33716001)(186003)(8676002)(8936002)(6636002)(478600001)(66946007)(6862004)(41300700001)(66556008)(316002)(66476007)(4326008)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE1senVFa0NRa01nd2VsUzhlRkdaMjVxZWZJT1FTNkRuSXFzREF0QUNjN1Nr?=
 =?utf-8?B?dTFvN2VZNHoyZUVrYnduZkpmZERJSEllUVZ5TElwMHdyaEtiRGdmRGUvMVNo?=
 =?utf-8?B?RnU5aFdlM3RXTDVQdEc1RGpGdE1jd0JNTGZKZ2ZtQndwVk9Walc0bDhVdm1Q?=
 =?utf-8?B?alU4Ni9TaEs3dExwRDJZdm1rdGh2QmUxN0FPbDZlTGg3dW9vTS9Jd0lydENk?=
 =?utf-8?B?VDRLUEFRRjlGTXlaazBrUHhoUTVuUjZJZTR2VTRQQnU5YTA5US9Gd2FlTWFV?=
 =?utf-8?B?TE1lREdmNEpkVkdKQWdOakVDaTNnREgzK1hXTmpyV3gxMmZIazMySUlscW10?=
 =?utf-8?B?aDJnZGhDeUxjUjlOZFdjTng3VURqSkNtSUljMjBLS0doVnBzU085bmdaQUxj?=
 =?utf-8?B?eWdsUUhuV3MwNzVUeUhTdGV2dDFXUjRKUEoxN1k4TDBMaXVwb0NpRElSQ2t1?=
 =?utf-8?B?bWJocUF4Z0xpUFM4OUxKSnN1c1FKTUNWMERDcjlPZU1FMEdjVExGWjF1R3Yv?=
 =?utf-8?B?TjJpRXhFem42TEVhem1aQTA5MUFQTFd4VDc1dm16RlRUdGNQSTBtR3hjTDJp?=
 =?utf-8?B?cFVIMXlxRUZhSEJOZUVjOHRocU1MNHlIVldhcGQrbTZqa1RZUlp3QnhJZjVV?=
 =?utf-8?B?dEZheCtaTUNsd0F2VGVPeGdYOGNDLzd6a21hT3VDQzNiQlVSRGVBRDlPWDZl?=
 =?utf-8?B?eGJxVUIxbG5kcGZFVUJvZDV2NGd6Y0hFUlZETDF3YXF5UW10T0tRNGNPRXMw?=
 =?utf-8?B?VllIOHRwaGFqTUgwMUN5UmpESFJYZlRCTC9kVHkrVFlsQmdkc1MwWEJ6OG15?=
 =?utf-8?B?QkpmcG91MlVSTzVhUzVySTFLM1ZTeWs0TVBFTGdNa1RNUWpEaC95QjBCc3JJ?=
 =?utf-8?B?RFY2QThpQWFiTW04a1Q4bzhMSDR2Rm5WMktFc0VicjB6RDFCS1FndWFhWm9i?=
 =?utf-8?B?Q2Q4cU8yUHRoSTBMZjJWaUZlNUtSSmxlcklFMGl0LzVRQWROb29OcForTjZo?=
 =?utf-8?B?UVlZa2ZFZnliZHMybS9uU20vblBHOXQvM2tCc21DVDRXUUk5V3U2SWtkdjJG?=
 =?utf-8?B?N2RreFZmNHd6QzRnYnJmR0dzbXlONGR2TG95MjdXTVVhaVVFaWoxUXlXbTB1?=
 =?utf-8?B?UWpLbG1zblhPSVAydzUzYVpqRi9GWWw3Wjd0MVBLSE9vanhYdUNSSXRwankw?=
 =?utf-8?B?K0dHMGhaOTBmYkcwUVhocnlzYkZQMS9NdjV0T1M3UFJhZzhpRG1LY0xCNktQ?=
 =?utf-8?B?eDN1dWRtVUJXWUhLbGQ5NmVyYWVLREZ5TFFxdithZEVyWVk1V3M4cGJUR2Ev?=
 =?utf-8?B?aHk1UHpVSDRWK1VveFQxMDRDaDJPVkpqbFk0aXNDZUY2eU5XK3FXVUFleUhz?=
 =?utf-8?B?am5qcERybEpHbWFUTXpRK2ZoTlg2ZWdOMXdDck1DRStneWR2MUZJTHIwMGR6?=
 =?utf-8?B?NWI5RlJoQWVwMlFvYVlOR01yclppRk9uUUZQaGdMM2M1b2RWUTV6SENPM1Er?=
 =?utf-8?B?bUhXNVJGM3JsdmtiU25qZGx1MUlEMFFkRklwdm1XN296bFQ2UnR4R2doS2VM?=
 =?utf-8?B?RjlvWnZmRTcvbU9MckhDS0VZdlErWG52NHRqS3ZBTXQrM0xvZ3QrVE1UMFJT?=
 =?utf-8?B?Witmai9JSE0rSUY4eUdCdFpkQzZCTmROT1ExK3FRTjM0OGVQK3FWbFRobHFl?=
 =?utf-8?B?VllnOHNmaHgwOUF1Y1dxcm5LYVlyRkRZcEhOUHMvSnA3b2xLb3ZzbDNURFIz?=
 =?utf-8?B?YzVLRndhU3pSUmlDc25VUUVJMG4wRHA0ams0NWhHR3dLV3pWbjlqZFMreUNz?=
 =?utf-8?B?ejc2T2wvdVpROFRRckM5MTlaa3cyNXpmeE02MXlxTXdRWVRCK2wrV2JXT1ND?=
 =?utf-8?B?UENRcUtYQzZiNWNtWEhDWXRwU1hGNUZ6L2dPVnBPWlRFM1c3YXQ5OTg5bm1n?=
 =?utf-8?B?UjFhbzRTZzluRXltWHdDb1JlN1A2QlIxMnI2a1YyUFFaRjkvNHVvaExidGxJ?=
 =?utf-8?B?alUzNGorRlpmUGZMZjMxbUN6REc3a0t5a3Y2WWVEWmRmbnVUSmlyR0VmUDJI?=
 =?utf-8?B?L0VMeTd2Qkczd1lYQlYwYUFqc25GV3czQ09DK0RPNlFtSFgrMDgwandsWjcz?=
 =?utf-8?B?Y3hqNVZIMm8xNmFSdTNQQW90VWhBOThZQXA5WkFiMEdyNzR1VnVJUURkbEhu?=
 =?utf-8?Q?PCC/Yw2dgI2yl2qD4ZMs8Dk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8053b5d0-b3eb-43fe-5c01-08dad2392881
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 18:40:16.2600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YLeTSI3hjx4LGJY8EsssQET7K1TTGA+LmeyexFXzrcQf2GbhJrZNsI+Ry1nS7Usj/IPEiQ1ml6xkYa5IZ67TXC0rwRLR2Zwn6tIud98VUrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for 32 bit OAG
 formats in MTL
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

On Mon, Nov 28, 2022 at 11:15:52PM -0800, Lucas De Marchi wrote:
>On Mon, Nov 28, 2022 at 05:21:46PM -0800, Umesh Nerlige Ramappa wrote:
>>As part of OA support for MTL,
>>
>>- Enable 32 bit OAG formats for MTL.
>>- 0x200c is repurposed on MTL. Use a separate mux table to verify oa
>> configs passed by user.
>>- Similar to ACM, OA/CS timestamp is mismatched on MTL. Add MTL to the
>> WA.
>>- On MTL, gt->scratch was using stolen lmem. An MI_SRM to stolen lmem is
>> hanging. Add a page in noa_wait BO to save/restore GPR registers for
>> the noa_wait logic.
>
>why are all these changes squashed in a single patch?

I don't have a good reason other than we had it this way to enable OA 
for MTL. I can break them into separate patches in the next revision.

>
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
>>drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
>>2 files changed, 38 insertions(+), 17 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>index c1d9cd255e06..13dffe0a3d20 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>@@ -296,12 +296,6 @@ enum intel_gt_scratch_field {
>>
>>	/* 8 bytes */
>>	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
>>-
>>-	/* 6 * 8 bytes */
>>-	INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR = 2048,
>>-
>>-	/* 4 bytes */
>>-	INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1 = 2096,
>>};
>>
>>#endif /* __INTEL_GT_TYPES_H__ */
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>index 00e09bb18b13..a735b9540113 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -1842,8 +1842,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
>>	for (d = 0; d < dword_count; d++) {
>>		*cs++ = cmd;
>>		*cs++ = i915_mmio_reg_offset(reg) + 4 * d;
>>-		*cs++ = intel_gt_scratch_offset(stream->engine->gt,
>>-						offset) + 4 * d;
>>+		*cs++ = i915_ggtt_offset(stream->noa_wait) + offset + 4 * d;
>>		*cs++ = 0;
>>	}
>>
>>@@ -1876,7 +1875,13 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>>					  MI_PREDICATE_RESULT_2_ENGINE(base) :
>>					  MI_PREDICATE_RESULT_1(RENDER_RING_BASE);
>>
>>-	bo = i915_gem_object_create_internal(i915, 4096);
>>+	/*
>>+	 * gt->scratch was being used to save/restore the GPR registers, but on
>>+	 * MTL the scratch uses stolen lmem. An MI_SRM to this memory region
>>+	 * causes an engine hang. Instead allocate an additional page here to
>
>humn.. is it because of the pte being wrong?"stolen lmem" in mtl is
>still system memory... do we know why we'd need this change?

This memory is accessed by the CS to save/restore some registers and 
that was causing a hang, so I guess mapping this memory to ggtt did not 
work at the time. I am not sure if this was fixed later, but using a 
memory that's owned by OA seems to work fine.

Thanks,
Umesh
>
>Lucas De Marchi
>
>
>>+	 * save/restore GPR registers
>>+	 */
>>+	bo = i915_gem_object_create_internal(i915, 8192);
>>	if (IS_ERR(bo)) {
>>		drm_err(&i915->drm,
>>			"Failed to allocate NOA wait batchbuffer\n");
>>@@ -1910,14 +1915,19 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>>		goto err_unpin;
>>	}
>>
>>+	stream->noa_wait = vma;
>>+
>>+#define GPR_SAVE_OFFSET 4096
>>+#define PREDICATE_SAVE_OFFSET 4160
>>+
>>	/* Save registers. */
>>	for (i = 0; i < N_CS_GPR; i++)
>>		cs = save_restore_register(
>>			stream, cs, true /* save */, CS_GPR(i),
>>-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
>>+			GPR_SAVE_OFFSET + 8 * i, 2);
>>	cs = save_restore_register(
>>		stream, cs, true /* save */, mi_predicate_result,
>>-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
>>+		PREDICATE_SAVE_OFFSET, 1);
>>
>>	/* First timestamp snapshot location. */
>>	ts0 = cs;
>>@@ -2033,10 +2043,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>>	for (i = 0; i < N_CS_GPR; i++)
>>		cs = save_restore_register(
>>			stream, cs, false /* restore */, CS_GPR(i),
>>-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
>>+			GPR_SAVE_OFFSET + 8 * i, 2);
>>	cs = save_restore_register(
>>		stream, cs, false /* restore */, mi_predicate_result,
>>-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
>>+		PREDICATE_SAVE_OFFSET, 1);
>>
>>	/* And return to the ring. */
>>	*cs++ = MI_BATCH_BUFFER_END;
>>@@ -2046,7 +2056,6 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>>	i915_gem_object_flush_map(bo);
>>	__i915_gem_object_release_map(bo);
>>
>>-	stream->noa_wait = vma;
>>	goto out_ww;
>>
>>err_unpin:
>>@@ -3127,8 +3136,11 @@ get_sseu_config(struct intel_sseu *out_sseu,
>> */
>>u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
>>{
>>-	/* Wa_18013179988:dg2 */
>>-	if (IS_DG2(i915)) {
>>+	/*
>>+	 * Wa_18013179988:dg2
>>+	 * Wa_14015846243:mtl
>>+	 */
>>+	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
>>		intel_wakeref_t wakeref;
>>		u32 reg, shift;
>>
>>@@ -4306,6 +4318,17 @@ static const struct i915_range gen12_oa_mux_regs[] = {
>>	{}
>>};
>>
>>+/*
>>+ * Ref: 14010536224:
>>+ * 0x20cc is repurposed on MTL, so use a separate array for MTL.
>>+ */
>>+static const struct i915_range mtl_oa_mux_regs[] = {
>>+	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
>>+	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
>>+	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
>>+	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
>>+};
>>+
>>static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>>{
>>	return reg_in_range_table(addr, gen7_oa_b_counters);
>>@@ -4349,7 +4372,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>>
>>static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>>{
>>-	return reg_in_range_table(addr, gen12_oa_mux_regs);
>>+	if (IS_METEORLAKE(perf->i915))
>>+		return reg_in_range_table(addr, mtl_oa_mux_regs);
>>+	else
>>+		return reg_in_range_table(addr, gen12_oa_mux_regs);
>>}
>>
>>static u32 mask_reg_value(u32 reg, u32 val)
>>@@ -4746,6 +4772,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>>		break;
>>
>>	case INTEL_DG2:
>>+	case INTEL_METEORLAKE:
>>		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
>>		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
>>		break;
>>-- 
>>2.36.1
>>
