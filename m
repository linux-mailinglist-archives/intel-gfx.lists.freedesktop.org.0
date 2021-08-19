Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AF43F23AD
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Aug 2021 01:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301546E9E9;
	Thu, 19 Aug 2021 23:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6AF96E9E7;
 Thu, 19 Aug 2021 23:31:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="302263579"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="302263579"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 16:31:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; d="scan'208";a="506264221"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 19 Aug 2021 16:31:32 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 19 Aug 2021 16:31:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 19 Aug 2021 16:31:32 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 19 Aug 2021 16:31:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJ7S4RVBK6h3eNCucdVwm4aKaUUcEYk4ORr+XudVmCt5oUgz+rFTnwlc/0iQ+teh6NctRkUvIpxuOLshO27/R8Bs1Yf+HvenfuImQkMfBTE6fdhvTwNfey4kRP0KXs7+8nVpH+L3s+kLHir9+r9ewlcCVQMvakSd96hqmudcw7D9KHyzWdg9renmTjNgZmz2a+dXxsQsKesslG83I5+ElMlf8cBfVggMoSQHkbqhhkimlchDQpES6Y020ggHu2I5HK8InwD0+IBJ/e9ZrNEAOPIxVeZkvIXdw97yOV9tOSNnAPlxW7Xt6QxnETTyE7Ap2fmzAmeg4sQg6Wr8mfdHLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrhJKHPovhll9rr9tqT2ZxGCqacEF5fMDWZ/SRZJXTM=;
 b=fVQ8+dPFxMqNGuWRenAxhZ+hZji/U2eyL4d+8mjhgYZlyKsztFXPUqMkdEs1vWQE9khG+gWZHVcDUhLvSJYOkm7E35FttkV24vIJjrEHyLT5GQJWZ7LsuG2/LsYoQ+I3uoaGM2wKzDmWJdDbdvzaaZifHqPa+15anJODVzvOP9qNxDECuEZYCkZa/YjmX9INBaaAfLPHHvIa4nAduVu6Jbeyv3awkEn9XGvJ1QIMms9NggyGExUA6R9IHMN+3mMDfZkQ4qxoJBkE68KHcvh78TjrVGv0iwQIgl9fLdwb0E8uGDZqY09LEPg8POm2Nxt+TmpaoT+GsF+ydWnBafrRgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrhJKHPovhll9rr9tqT2ZxGCqacEF5fMDWZ/SRZJXTM=;
 b=jorMa3ULYHSA3T10TPkwlHb92x2/r7kldNW9IQSG/ZUC9WrNixF2peig3d2dh30cd4NnGwMoBpUq9bKEClSHy53ocIq5p+15s3DMcfFwl9VtYB4IA/H0PcF99t10IeOO5Z6sth0htsJdCD5hwKivPrGDPIgQ3rovSp7JiK+IiXk=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5641.namprd11.prod.outlook.com (2603:10b6:510:d6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Thu, 19 Aug
 2021 23:31:15 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::20c6:723b:4f13:3110]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::20c6:723b:4f13:3110%6]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 23:31:15 +0000
To: Matthew Brost <matthew.brost@intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20210727182057.78409-1-matthew.brost@intel.com>
 <20210727182057.78409-2-matthew.brost@intel.com>
 <be3caf10-93d7-bc72-21bc-00d7e4d57630@intel.com>
 <20210730000010.GA58337@DUT151-ICLU.fm.intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <b5cdcc00-122b-d8be-1617-e5f3d676d4a6@intel.com>
Date: Thu, 19 Aug 2021 16:31:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <20210730000010.GA58337@DUT151-ICLU.fm.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
X-ClientProxiedBy: MW4PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:303:b7::32) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.221] (73.157.192.58) by
 MW4PR03CA0117.namprd03.prod.outlook.com (2603:10b6:303:b7::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 23:31:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0dc4ac69-7350-421e-f91d-08d963697052
X-MS-TrafficTypeDiagnostic: PH0PR11MB5641:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB564107342A0DB153E9CAC3C3BDC09@PH0PR11MB5641.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VYC+/iESGb5eCpDmyY4h2DrFI2RI2nvogHcJw1JYreiqsdpW2hwvzyHs32INbd4rLDoc2CVBuQmd2c5oEdKg+oQdHpnP68iXjLu0A/9xlEcyy+EmUjxAT7puWLYRnIviTxgpy27+Wkmtrtch3PPWy1UEnrxuQDCn7Rfdbl8FnGJ9tfW5lThJens6QFSvL4QwnTdyJlLMKHzVADVlJ49quPoIjIfvSyCzJuNj/Mh/ySU1AcM7kFFXx4i7moS78h8SevwdrTmYZv3vtrK59FJ5RDEh0mzxh72RWby9Y3Q3z1DQIdOlHfhXXjEwYzj4McslBQ6/fvRspdNSxwkTYhdgXVu5kQB9yUfXXU2u4dIL1b0/v0epVwcWfpD0Mj+fLIzXPTixJ4dwLd/1LjyMf0Qht3C4nXrHKv/qNbVGrbBMV8bA53/Hy08MZe/vEJCc9Zbfkp7mhy4YWcsa/jSSRacXJeNg/pOcUFNT/SJ9vio4bxI/2088EoHuoB4kG0ZroDIIY176WANDel0BWXLdzb4n+HAbxnJ4wcCjLslJ0YAU1+B2xibRcpX8LaZLenLwmYwd+k5KD//v/EmXnjo2w2fCHUOKwct2OsVOwktjqd/EeYbYu5P646WEe2+Q3lNuvHSz6bzDnbsLhLsNYRTH/88xcQXnxHA5uxJHXxdkggQeSZIdZrTsphWxSWPm4okkIZkeur7D1gQgVuwj2nTtmjvu752ySH8LoFI35QzgAEZ0NiSVBVk+Q/9+CtIz+QQTn7F8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(53546011)(6486002)(83380400001)(8936002)(26005)(450100002)(31696002)(16576012)(4326008)(36756003)(8676002)(2906002)(6862004)(2616005)(956004)(5660300002)(478600001)(6636002)(31686004)(66556008)(66476007)(186003)(66946007)(38100700002)(86362001)(37006003)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUFNcC9FYVc4TVltUmFnOHBSeEY4dzBEK3lyd3BTU3ZzMVJ3eVMzbmZYRTNV?=
 =?utf-8?B?bVlPbEVvZkxqVTRVWGFaa0N1SDEvenVzcnNmdEtPOTd2RlExOER4bi9DTGpE?=
 =?utf-8?B?M3FkaTB1c1BXdXN2STVzYXF5OE9xSDdNYmVDL0N4Rm85V3BhME1rNjgrS25t?=
 =?utf-8?B?ZnZvaStxZGhwR0JYeG5ydTNlbTFIQk0weHZRZ1A3dzBVSVIxblZPZXZobGVV?=
 =?utf-8?B?dTFXWFNvc3BRWUY4NnAzdE4zQmw0U1YwV2NwTHVwR2RGbDB4M0doNnVWSHhl?=
 =?utf-8?B?dE9GR3ZLUXZ2Q2w3eXp4TzVlWkJRMVhrTTdqYU9oUnNxYVFtMFhIWU1IZ3Zp?=
 =?utf-8?B?U0lGM0VEdWF6MHI5bUdGOFg3Y3k0UFlwbytFcEoxdEJxT1I1QzJRREJpd283?=
 =?utf-8?B?MVlXMUYzZU56bmNjRzNFb2N6V2V3ckI5QXh6RXRFWG1WUWJ2c0xtS05UQlR5?=
 =?utf-8?B?WWZGZW0xU29OU0hrNTNXdUxiUldBVU10RWxUeDNJVGV3VXdPemdRMWFlTFQv?=
 =?utf-8?B?bWlKUkRtaEIzSGZaRFd6bllFNkxCZDdXR3pzaXhhRzkvNm53NS91UVBEZkxn?=
 =?utf-8?B?RkUwNkVtSFRZVE0rQUFsdXlYMFNwR0dydHV3SkZBNklKdEYzY1F2MHJkSGZu?=
 =?utf-8?B?ZHFRdityVS80aGxSYW9OTUNCR0lrT3RvTUZmVUJqTy9DczhOd3AvSFQxdFhR?=
 =?utf-8?B?MWNoUmlYalNNY0Jjd2dDZHFjNVVwWXROTWZyR2E1SGVLWXlqSnk5TUkrTU5S?=
 =?utf-8?B?L2pGdW5RRStlMGNLYnJaZ2xRdWozdXlnMnAyeVpWL0pDWS9OOGdQNElsQllF?=
 =?utf-8?B?Z2w2bmg0bjJLc0g5TUZuUXBVaEM3bVh0ZVF0Y2lLUFlPaFl4QjAzZGZzQWJX?=
 =?utf-8?B?L0xYYXF2T01rNm5QMkt0d2kxLzRqeTA2UU0yVDNmc0w1RXg2ait4YU5QYVhT?=
 =?utf-8?B?MGtrM0dZMkpCbWpuTTBkaVFNOHR2eVVWOXlMSk5TV3cwd3IvdkVNUit1VGly?=
 =?utf-8?B?Tmd5U2hwWVIyZTJrU2s0N1hpaUZGanQ5SzFLTXRzalVISVFiQWZ1Y3hqTlRs?=
 =?utf-8?B?SkZEN0w0MXVCMHRVQlh1dlhuMkZWWGxNdjdMZC92TzE3cDBOY1M1ajgxVzNx?=
 =?utf-8?B?aHB0d1pYbXY2RjgxTlNCOTBhb0lWM1JDcWxiSkQ1Y1NUYmtPVHRzWVNiN25l?=
 =?utf-8?B?SGVNN1VSZXh2aUpaWm1jWExHMi81THh5elh6RkcwbHVyVFpUaHozMmU0eTI0?=
 =?utf-8?B?aXBrT1JmMGxBZHg3dDU4aVFIeXEreDh5R1RQb0NGN25tZEpYNzlCTlNpTFZu?=
 =?utf-8?B?ZWI5ZmE1RWsxZlhMRWdUbXN5TUtnNWFjZVBGL3U4ZDd5QlIyenZMTnZnemhF?=
 =?utf-8?B?Y2VDaDJ3b0xad2UwMkdIc3l3ZlI1NDAwTjZUeUdydjZndTdVTVBwTnhzdkp4?=
 =?utf-8?B?VGhNbDduWk52UjhIWlF1Y2kweDVVVWhPeTFkbUNvMHFMUUdVc0ZaMDdheHR0?=
 =?utf-8?B?NnpJS095N3ppQ0l3eVZGTzlkNStTRXhjQTdQRWFnK0NpS0ljMjY1aHJmSHVn?=
 =?utf-8?B?NUpmSlY2ckEzVDFpam1TcC96Z3kvN0t4eC9oanNBSzUrZ2VpKzJEdXh6T05m?=
 =?utf-8?B?RHZXM280MFBlT1RLM0U4eTd4ZVdHN2ZWc2ozaVFjTnNJVjg4ckw5alFhWHh0?=
 =?utf-8?B?R3FHZWM2NE9qREpsYU9xem81bUJsNWwvSDQ2SXpBM2Q0VGpFME04STZ2MjZY?=
 =?utf-8?Q?uOpMHRxaCiDxCRE68eh5yR9WhrQSALLdumzWzHg?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dc4ac69-7350-421e-f91d-08d963697052
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 23:31:15.8141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aCz24+BiYxtpvfrZNme0GTEt0uqAqu/vCD2tBTfuBU9i2Zz2rthuFpz3GR1zgkDVq02+4i5OR9hSJvB2h/v8Q9oTLyLn3go7P/RgdvWF36o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5641
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/29/2021 17:00, Matthew Brost wrote:
> On Thu, Jul 29, 2021 at 04:54:08PM -0700, John Harrison wrote:
>> On 7/27/2021 11:20, Matthew Brost wrote:
>>> With GuC submission contexts can get reordered (compared to submission
>>> order), if contexts get reordered the sequential nature of the batches
>>> releasing the next batch's semaphore in function timesliceN() get broken
>>> resulting in the test taking much longer than if should. e.g. Every
>>> contexts needs to be timesliced to release the next batch. Corking the
>>> first submission until all the batches have been submitted should ensure
>>> submission order.
>>>
>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>>> ---
>>>    tests/i915/gem_exec_schedule.c | 16 +++++++++++++++-
>>>    1 file changed, 15 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
>>> index f03842478..41f2591a5 100644
>>> --- a/tests/i915/gem_exec_schedule.c
>>> +++ b/tests/i915/gem_exec_schedule.c
>>> @@ -597,12 +597,13 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>>>    	struct drm_i915_gem_execbuffer2 execbuf  = {
>>>    		.buffers_ptr = to_user_pointer(&obj),
>>>    		.buffer_count = 1,
>>> -		.flags = engine | I915_EXEC_FENCE_OUT,
>>> +		.flags = engine | I915_EXEC_FENCE_OUT | I915_EXEC_FENCE_SUBMIT,
>>>    	};
>>>    	uint32_t *result =
>>>    		gem_mmap__device_coherent(i915, obj.handle, 0, sz, PROT_READ);
>>>    	const intel_ctx_t *ctx;
>>>    	int fence[count];
>>> +	IGT_CORK_FENCE(cork);
>>>    	/*
>>>    	 * Create a pair of interlocking batches, that ping pong
>>> @@ -614,6 +615,17 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>>>    	igt_require(gem_scheduler_has_timeslicing(i915));
>>>    	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 8);
>>> +	/*
>>> +	 * With GuC submission contexts can get reordered (compared to
>>> +	 * submission order), if contexts get reordered the sequential
>>> +	 * nature of the batches releasing the next batch's semaphore gets
>>> +	 * broken resulting in the test taking much longer than it should (e.g.
>>> +	 * every context needs to be timesliced to release the next batch).
>>> +	 * Corking the first submission until all batches have been
>>> +	 * submitted should ensure submission order.
>>> +	 */
>>> +	execbuf.rsvd2 = igt_cork_plug(&cork, i915);
>>> +
>>>    	/* No coupling between requests; free to timeslice */
>>>    	for (int i = 0; i < count; i++) {
>>> @@ -624,8 +636,10 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>>>    		intel_ctx_destroy(i915, ctx);
>>>    		fence[i] = execbuf.rsvd2 >> 32;
>>> +		execbuf.rsvd2 >>= 32;
>> This means you are passing fence_out[A] as fenc_in[B]? I.e. this patch is
>> also changing the behaviour to make each batch dependent upon the previous
> This is a submission fence, it just ensures they get submitted in order.
> Corking the first request + the fence, ensures all the requests get
> submitted basically at the same time compared to execbuf IOCTL time
> without it.
The input side is the submit fence, but the output side is the 
completion fence. You are chaining the out fence of the previous request 
as the submit fence of the next request.

Loop 0:
   execbuf.rsvd2 = cork
   submit()
       execbuf.rsvd2 is now the out fence in the upper 32
   fence[0] = execbuf.rsvd2 >> 32;
   execbuf.rsvd2 >>= 32;
       move new out fence to be the next in fence

Loop 1:
   execbuf.rsvd2 == fence[0]
   submit()
   fence[1] = new out fence

Loop 2:
   execbuf.rsvd2 == fence[1]
   ...


You have changed the parallel requests into a sequential line. Request X 
is now waiting for Request Y to *complete* before it can be submitted. 
Only the first request is waiting on the cork.

John.

>> one. That change is not mentioned in the new comment. It is also the exact
> Yea, I could explain this better. Will fix.
>
> Matt
>
>> opposite of the comment immediately above the loop - 'No coupling between
>> requests'.
>>
>> John.
>>
>>
>>>    	}
>>> +	igt_cork_unplug(&cork);
>>>    	gem_sync(i915, obj.handle);
>>>    	gem_close(i915, obj.handle);

