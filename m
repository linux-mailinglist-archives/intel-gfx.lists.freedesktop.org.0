Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A7A3DB00C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 01:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D421A6EE98;
	Thu, 29 Jul 2021 23:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D106EE8F;
 Thu, 29 Jul 2021 23:54:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212987174"
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="212987174"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 16:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="507524949"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jul 2021 16:54:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 16:54:13 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 16:54:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 29 Jul 2021 16:54:12 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 16:54:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bU0RK1J+o18EcJr4WgS7+gOTZsoer3oaNolIUrDeR+ddIE1Pcr1SZYK3MZAkPvmnYVUh/cSfx95aJVIuNBa4Pl/thhtrAeheP+STo993YZ+XM9rLUcKIeY8YGodIozEqmZHoM8+PX0UvVReiT4tDT1ftS/lzsfLXbvzUHCn7+GOxdtKgm0fFxTr9gk5Hjxtv/M0zTU+wzriQKODxsH3dvasgtXcZDd6FKuscHOzvf9chFjfWOT/uHmCEdW+DbbLzdOk4kL6KSNjdjFRIG94EBY8mirDy+dJl54L0jayw2yNCS4kgtT1Xeb652q0y4Tj3on8xSSy1UI+kdDEJ/GRt1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vDKHJgdfn4GtwVXWBPBE6demHAEUTC5J4S06hKbZQaw=;
 b=ki52GqewF7QFBjBZZZCQdfZaEinJF6lgt3iJBScBSQ1At3LzNx8zzeUMf5LPKegDDR7AxFUqrqpBXavRT2YoSs14qDnc01bKJsemgMI7KwU2djVBmZoYa2wGfiRwiZWHN7PcUmznWLRiljU/HyG3uWgB0/N0dkyBylHt9u4+IRH2UM4LEsJCzFxn9bX1npmuQq0FdbGvF3nlknHs6ztQPV1dWTnTDUDFHP24I5tklW89zXyMMVoQSPMGEEVTAqmlNyAIBHaMOBvG4Xo2hEX+bgQxvCx2r5X5PodWLmlIjS4FJOtewCpooirhIROO+wUF/WipLWBpBxQufLK/pns9vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vDKHJgdfn4GtwVXWBPBE6demHAEUTC5J4S06hKbZQaw=;
 b=K4cyO98grcsoWlBAE82fL5YEz25zGQFAS2+kTtL6ecdQkIPCEyrhV4SygKwDNX83uxZb60uTu8MroXbuMzNdnynavk1/+ORME+asxDEM+R2BgXvIL3QtaFAlH7KUlMXP5bP61PU/B9j8LkFC4K1dxT7aYReFrDwH5o0nZvyJlZQ=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5593.namprd11.prod.outlook.com (2603:10b6:510:e0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Thu, 29 Jul
 2021 23:54:11 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::c5a8:5a64:9118:95c4]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::c5a8:5a64:9118:95c4%9]) with mapi id 15.20.4373.021; Thu, 29 Jul 2021
 23:54:11 +0000
To: Matthew Brost <matthew.brost@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20210727182057.78409-1-matthew.brost@intel.com>
 <20210727182057.78409-2-matthew.brost@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <be3caf10-93d7-bc72-21bc-00d7e4d57630@intel.com>
Date: Thu, 29 Jul 2021 16:54:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210727182057.78409-2-matthew.brost@intel.com>
Content-Language: en-GB
X-ClientProxiedBy: MW4P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::25) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.221] (73.157.192.58) by
 MW4P223CA0020.NAMP223.PROD.OUTLOOK.COM (2603:10b6:303:80::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.18 via Frontend Transport; Thu, 29 Jul 2021 23:54:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cc6c5394-be3c-486e-e014-08d952ec294e
X-MS-TrafficTypeDiagnostic: PH0PR11MB5593:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB55932B5E35057376D252C6EFBDEB9@PH0PR11MB5593.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vcyCi0o1V9h8WwDP62kKxxCSc6/pe+d1toFRCJofGp11Ng0hrTDdrppHj1X0nAbrmmooffSIgPHiRPu1Zdw7VTyUBwjNaBm7yRDaUMifUftEJQiP846J9P+E/HjUCysSxMe4Rm06pG14pDB/JWWB1o+vvvyg8GlQ/rt2ROC+L96hLmDsLqT3zHoMGJxXpI2zJfP4NsWgBLGmfkKaJbRZJ7fKYuz5wf9IgRY0vT+CL+1uMUA3e5d3U7QI0bkmnPTT8MG5GfbSfC1ImfnNsOczC9G//3sR/YKTcoZ9CSQ7OkAu9UVKQcVpdkp9NonqeVASZ/SGMjFublcvSnqVFoRl9v1V1xrv1agLsw5zipvHPqjUXRUn6CmyI1w6UHySz7dvXi7ngRWl+O2Yyo5t1Vl2ieqL7K88+RcSLkXs5HCumEsNvFX3DxaMiDyfMRHUIOVBAzOHH9cBUIZmn4zmzISjmMdFUaCvzrs521rzgofiOa9L5eOKcsSr1A8NcwzW1QIfSckJeKuMUOEx95Rv10EG+ncxV0VscLg6KGnkhCy45fqTnHEXA/ZPwSdi6vQWxDnf0gF5ieh4NWFC+FsWRcuN+hLkKkHO5N21Mwrin5cREOE0h64GPWWlVfydcqEFJM5svNk9eJPi6bGDZT/vK8a9T2ZAO15uwqvB6HCRT9bHEs6y00hOPYSD3kaIOfCcby+cr/qjDqI6h0EP5Owb5zmEZ2smjjA7QKlUJ3muNKFe+A0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(136003)(376002)(396003)(39860400002)(186003)(8676002)(53546011)(66556008)(5660300002)(66476007)(4326008)(31686004)(26005)(450100002)(38100700002)(8936002)(86362001)(66946007)(16576012)(478600001)(6486002)(31696002)(83380400001)(2616005)(2906002)(956004)(36756003)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGN0VUZkNTBPQ21obFV4UUV5TjJXbjk0Nk1LNjNoNDRzZnJIZEVhb1d2ODBH?=
 =?utf-8?B?Zy9zSVptRXFScHJCZHFkYWpGL1BHSDBqSzJvdEo2ZkxhaEtSUkM2SlVMcWtj?=
 =?utf-8?B?MzF3Rzh3WmtBcjNzL09vWCtXMjc2MzhnU0lOekJydGNRMjcwSHl6c1M4ZlZX?=
 =?utf-8?B?SUxIblFLTnZzZ3JvdllJUUhCZEpwUE91bWFhRFkrWTAzTzZ0K1MwK2l2ays3?=
 =?utf-8?B?Q0hXbWwvVUl5RDBySlQ0Zll2bzcreGIvcDl1c0NwSytWdlNEbkpiNE9GN2Zv?=
 =?utf-8?B?L0FnalFtUFg3eHFYNjZUOEdlc0dES3FxZkFpeHZTbjNtZ3A1QXFHbzhDZ2NS?=
 =?utf-8?B?bTJ0YTRHVjJzYUVGNExTNGVZb281NjBuaEpLWWZIUS9zRGp4NEg4R1ZIQkw5?=
 =?utf-8?B?d1g0SHNzU2taT0o0MjFYcGMxTzVCWHo1Y001WWJKU2hPdUc4N1dKS2JtMmQx?=
 =?utf-8?B?MHRrNGQ5Y1c0bzY5ZGc0czVIZUFSeVF4Q0NLUGdzU3NQR0FtRjZCaXVxOTJ0?=
 =?utf-8?B?SXlzbVpUMThBV24yTEJvK1cyZDE4Ynp0RktOeG1BOEEvaFBBY0ZydnNPaEh1?=
 =?utf-8?B?RW9icjJsc2JhTnh6aTBRTXRYRWpJQ3ZUMkJUc0p3VjQ3Z00veFV2cEVyQ09Z?=
 =?utf-8?B?TllYeEsrUGFBSURSR1A4dG5lMmx4U1dwOEpaNGxhcERGeFhrOVVEc2luNzlw?=
 =?utf-8?B?SXZHcmVsbkNKekJyNzRzU0JhRHo1UnNEMDZuUkcrMnRYZitXVnhtelFaS3lj?=
 =?utf-8?B?Nk03eVhXWWtKTjBwdXBJUDFzSHpUbnFPY0xXNUpjSnUrOGI4MmRNcGpJTnU1?=
 =?utf-8?B?VGZrNjRhZ3ltZ1VleFNSWUFsZkJaRHBLRjM1aDdaTnRkc3dOSkQ0UkNlWC85?=
 =?utf-8?B?M2xxZ3JvNDNPakJ1dEdackNKREw4VDF6MEZkY1lkWVBpenk2T3ZhTUlQQ2Uy?=
 =?utf-8?B?RFlDWEl3cVRFNnRhcERuVitHSUluRmJzTytIK0NpM1B2ZTBvOTdsRm1sVVB2?=
 =?utf-8?B?UEpwalgwVVFmcVNiTmhyaVFQNlhRWmJLMjEvczNXVUkxa2U0MGRUbXU2UTJB?=
 =?utf-8?B?SFlMN3NxSFhSdVFnNGd6cDJQeTNjZEx2OHBqeFgwckwzVEZROU4rL0g5R2FX?=
 =?utf-8?B?Y1M1R3dPa1JrbXdxUnErZGJIRWw2anVRWi9FTXg5RElRcFhzOElrRTVUN25N?=
 =?utf-8?B?RDEra3hkdzJxREhaK1ZGMkdya2pqeWsxMzhIeWtwaGduN1NQMyt4QldBQlJn?=
 =?utf-8?B?dmViVVh3eEI5YkV0Mnk3K1lRVnNlcWEwdEZMelg2OFlxN05zVnVGNUlZRWc0?=
 =?utf-8?B?cGkrK1JEYUIzbDJQekhBUnJkdlpTK3dJTE9haEhyR3ZkTHRqMkNPYzA0bXRP?=
 =?utf-8?B?QnZpWWt6OUFqN2c0b20vSzJLRXVpcEdQejFjOEEvWVl3elZXdk9rK2JqUVBw?=
 =?utf-8?B?TkNPbDJIdnhNMVlhWlpQVlF6emZVNmdUVDVIM2QwR25xRnBnYUtWejBXTVlW?=
 =?utf-8?B?VHNITXRiRmcxWGlJU2tSVzNzelZ4ZWprbGdsQkpIS0wxZEJaZkNhQXpRM1B1?=
 =?utf-8?B?SGtuRmY5clRIa1VWMnFSdmJiSlpHbWN4L0FzRCtRaHJPanJDdjN0SlNrMWMw?=
 =?utf-8?B?MjUvQ3JXQy83L2FzbmRPZ1RmMDBXVlUxSlM5eGdyMmluRHFiOGZORGFEUlZY?=
 =?utf-8?B?OXUrOTZlT2kzT0NOcjdxeXRHeTZ3aFhCclYvL2pnLzR6dmg5aDU1RUM3TWRL?=
 =?utf-8?Q?qe6baXGDnCbsCJ14YhZkJvY5th4vcsK6DMZBDSj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc6c5394-be3c-486e-e014-08d952ec294e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 23:54:11.0282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xxt0O/WzPgOns+6LakAAaC+B7SDaIFTrn4FzyHU5PD6KdfL6fBafQnh0woZfIuq5F+mAff6pLzaZ/LtW4kFDGMjh2eb585Td4cLYakvvPdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5593
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/1] i915/gem_scheduler:
 Ensure submission order in manycontexts
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/27/2021 11:20, Matthew Brost wrote:
> With GuC submission contexts can get reordered (compared to submission
> order), if contexts get reordered the sequential nature of the batches
> releasing the next batch's semaphore in function timesliceN() get broken
> resulting in the test taking much longer than if should. e.g. Every
> contexts needs to be timesliced to release the next batch. Corking the
> first submission until all the batches have been submitted should ensure
> submission order.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   tests/i915/gem_exec_schedule.c | 16 +++++++++++++++-
>   1 file changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
> index f03842478..41f2591a5 100644
> --- a/tests/i915/gem_exec_schedule.c
> +++ b/tests/i915/gem_exec_schedule.c
> @@ -597,12 +597,13 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>   	struct drm_i915_gem_execbuffer2 execbuf  = {
>   		.buffers_ptr = to_user_pointer(&obj),
>   		.buffer_count = 1,
> -		.flags = engine | I915_EXEC_FENCE_OUT,
> +		.flags = engine | I915_EXEC_FENCE_OUT | I915_EXEC_FENCE_SUBMIT,
>   	};
>   	uint32_t *result =
>   		gem_mmap__device_coherent(i915, obj.handle, 0, sz, PROT_READ);
>   	const intel_ctx_t *ctx;
>   	int fence[count];
> +	IGT_CORK_FENCE(cork);
>   
>   	/*
>   	 * Create a pair of interlocking batches, that ping pong
> @@ -614,6 +615,17 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>   	igt_require(gem_scheduler_has_timeslicing(i915));
>   	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 8);
>   
> +	/*
> +	 * With GuC submission contexts can get reordered (compared to
> +	 * submission order), if contexts get reordered the sequential
> +	 * nature of the batches releasing the next batch's semaphore gets
> +	 * broken resulting in the test taking much longer than it should (e.g.
> +	 * every context needs to be timesliced to release the next batch).
> +	 * Corking the first submission until all batches have been
> +	 * submitted should ensure submission order.
> +	 */
> +	execbuf.rsvd2 = igt_cork_plug(&cork, i915);
> +
>   	/* No coupling between requests; free to timeslice */
>   
>   	for (int i = 0; i < count; i++) {
> @@ -624,8 +636,10 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>   		intel_ctx_destroy(i915, ctx);
>   
>   		fence[i] = execbuf.rsvd2 >> 32;
> +		execbuf.rsvd2 >>= 32;
This means you are passing fence_out[A] as fenc_in[B]? I.e. this patch 
is also changing the behaviour to make each batch dependent upon the 
previous one. That change is not mentioned in the new comment. It is 
also the exact opposite of the comment immediately above the loop - 'No 
coupling between requests'.

John.


>   	}
>   
> +	igt_cork_unplug(&cork);
>   	gem_sync(i915, obj.handle);
>   	gem_close(i915, obj.handle);
>   

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
