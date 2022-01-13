Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F39048DF20
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E5510E48F;
	Thu, 13 Jan 2022 20:42:57 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F54B10E48F;
 Thu, 13 Jan 2022 20:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642106576; x=1673642576;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RF2wMf7MWi+KJf3Ma6mEwOl847WX4lyPn3aH7pirs7Y=;
 b=N20w8QrwT9H4ZyHJYAHO+KuvAVBYgbEvC2qSf0pCDKsfp7lKBakZq7Vn
 dJlAar7daEcpfeP+lCIyCi9gA8p4epQrn12Uvv8tT7bFl6mwz38CYJLhO
 w/PQqkGK+Xi39SD4WFnhHePN34C/d4nCp5OlXgjRMGEP8H9olXIqhErrg
 iwEUtPeqcFqO7eKyluchaakmE+j7Iou3jl0vRMsqd/R8ys5mKn+nDQoc0
 lPs0HspucFMXjo+ZDRxPN75jm58b2kJrWDJJCSDHYlbVpOgdulB37Z8oF
 LOqe78/qbcWYPGwECwm6jY67GPp9bIrpiKLYyQCaw4zsKmtE/ewg/mVVp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="231456797"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="231456797"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:42:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529827372"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 13 Jan 2022 12:42:34 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 12:42:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 12:42:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 12:42:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6xmGy/uS/9pX/WTHrlR1AGHCafdbijcViXi8ltXAr5H+40zPPD/h2yBHj3p3fbUtm3PTSCux8pJsFcZrbD2m/OYoiSl6t2owAUvy3HlC1SnVCqPObkyHBvZFqY5ol5rVk1z/VnZk/z0KnP6EWGgB1kyZm86/5Nps5qx3Vqzcb20LhgKfPWlNZC5emmYfPwd/dTQUJ2efBuW2RmAy19NDM7jiP9QD30/06NN4P+neI8+8xTxsrN8rf4TnjU8aAYOo7tA+xt1aU0i0ACVITa1XSWJJ3kuFoEaVqxD3wZx+nbFfuXxSqxAHWtlJ2tFUDhoCpfk3WfRmnCReENVlDR7Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jwDNV4k3V1iqL2rLU6nnNKIxkCksLJwMcyTwVR/pbQo=;
 b=aiyNYn1sDlXw/VmW6hKarvpAydRlaXmU/K4LljQYZiI8J0BBN3iZrDlaFVqGTylupzYkeIs0raV1UMM1/7zlNvJsriSubGAPyO36f3DI6dAA3iPawOrRPNqZpiOcY4ylIADtH030hd4fCF+U9CQVH+9wkBGuzZOlc7JGGGb1pwZV+apH4gw4J+5KFJVPr8NezQzo0JhGW+0nbGUF8MR1c2hh52//2UB8+FxiFiYKhGodbuMsVSdHmmjPWW2OyEXe5C7w4pfh0s+F+uwxMm1ofo0FoKTToJIpl4zSAibt9beyJFSOtJrx+HKK2/7cBHdA9CJPJiy7U+RJ4Ti6aQzOag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB2887.namprd11.prod.outlook.com (2603:10b6:a03:89::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Thu, 13 Jan
 2022 20:42:30 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 20:42:30 +0000
Message-ID: <2c9aca34-34ff-9bbc-f205-42850eef0256@intel.com>
Date: Thu, 13 Jan 2022 12:42:28 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.1
Content-Language: en-GB
To: Matthew Brost <matthew.brost@intel.com>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-10-John.C.Harrison@Intel.com>
 <20220113203032.GA13249@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220113203032.GA13249@jons-linux-dev-box>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MWHPR14CA0006.namprd14.prod.outlook.com
 (2603:10b6:300:ae::16) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0a4921dd-53e9-4e9c-6cf7-08d9d6d537af
X-MS-TrafficTypeDiagnostic: BYAPR11MB2887:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB2887277A939B92F169FC6C3CBD539@BYAPR11MB2887.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IzNW1EeDuLD8gIyLxAb3nBOHFLyw06Jas+aI4mfD9rUT+2PqMvO/OjUDoswwqHYcw470jRPc+OKFb52O4aLI1nPthNtxcLfof4WRbV3DTBBgGg/3jQXWCBpW6FVwKvV57Ntp92jqboAJULxDqTPxx9+9hndF2xtKWTX8Pa0viSNXIZeAjqUqxFTFxGaVv8RM+FZDAl9jf3SAgnDt76z2Mcs9JKLbsBQj6aRxpbOUYL8AI7QFxMX+YUrT0yl5NpW0ikmEMLMtYyQIuKuqkhy0hGJElEtSwyAyKBk+V+4QR97li1RowbCUOnarkLVOeWkz23o8LI6BLu+XfYOmfPu1TqD4k1pTiyMA88iLxb92a0rbaI3yM7w2PykDh2q+xVwMYfXr7OyAKqRSdx2C1nBvNXE7ZTslB7j0xRQbTdMl/ncIZu6MTTX5DShvArFnwFOkeJXTCoQbvGr9ZRquzttGbEiYykIkpy+ZCJQD4ZyJ5cYcusNk/iKaaneHSI5YolzELVsPNpnXl9QnKJ+GEtJK8iawS15uK0iUv1rHF/OJZJFQC+VbejUlyhMaoyz3p+qpjHK0TYC5ud9zc0/ALLFvnXOj7SnEv77b2cqxDdwDahzT66vf1qbKbSQDQLpjfNRi5t2ShzeEqSdiyGKwk+/dsIXTtHVh3BQndJqV0kc4oKd7fMzdF0+97TVE9xqE0Dn/dG+T34LHRRDHY6Sm46Qf6DEOD3uOrsHjN9GBNra2xjc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(82960400001)(316002)(8936002)(37006003)(8676002)(83380400001)(38100700002)(6636002)(6486002)(66946007)(36756003)(6512007)(31696002)(2906002)(508600001)(31686004)(5660300002)(26005)(86362001)(4326008)(53546011)(66556008)(6506007)(6862004)(2616005)(450100002)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nk9OS250ZnRJU3piTEx0bWdMTitLN1FrSW8yNUVMMDlLNHJPOE82ZmhsMlBk?=
 =?utf-8?B?NmNqVGIvZWR1enNMYmg5amdMTklhR2JVeGxub2Q2a1pDMVdaU3BLaVh0MGdL?=
 =?utf-8?B?bGh4MGZEQURUMkZhZW9od1Q5Yld5QlQzL2hJcjRWVzAyVU1Md1pXUjN0eGZF?=
 =?utf-8?B?ekxDTi9xVlFhZkhRbkZlenZ1Z1k4L1I5SWN0SWxxbzRESlZPU3FGSnNZS1Bt?=
 =?utf-8?B?QmtMeGZuWDlkbWVSVUdnNEh3dnNZdGxiS1BBN2xoaTc2bHlqa25JVXN5eFhK?=
 =?utf-8?B?TUFRTGJvN0J6aGQvc2l6QkVqVUppUE5pS2doaHZ4TjlwcTQxOHd4RUQwdi9Z?=
 =?utf-8?B?R1JhSHlBQWRlR3l4RUEza0s5enlhNWRIaWtMQ1VVbG1QbjY1Mjdidzl2Q3pH?=
 =?utf-8?B?OWFhcHVGZ2RoaHIrREgxdDVmTHRoU3NMNjhLOFZjcDFlZktsVkVNamNsb3dY?=
 =?utf-8?B?TDVqOU9leXhGeXJIOWVLL0ZLQ01TQWhLUVlpQnRidEk4eHhNODRCekpITmxy?=
 =?utf-8?B?SjhhUEN4Y3RQTndKclo3ZlhpcElQdm96bWJkTWVnUkEvN1lQSTFEQkVxNmRY?=
 =?utf-8?B?ODVIam1hYVB2aGxRcVBDY094Qjl5UE03MGZtTFVCL3o4QmdJNkNUL1lTZ3pF?=
 =?utf-8?B?eWxxZEJRU1BaMnJsUUczMlAyL1lrRnVUUEQzYXJ3UnB1TjhZQ2M1NlRTQ2FD?=
 =?utf-8?B?NmVPNjllUk50L01QdmN0dURxaFhQd0t6TE9Nc3cxZEhFblhGWWk0NDIrNW5q?=
 =?utf-8?B?V0JUU3ZxaHFPaStnakJpS2hUVnFXN3RSWXplU1duYmRET2FlY3dURVhmTVpH?=
 =?utf-8?B?cG1xRVBRaFhIbU41aSs2TkNwWmYvNFdlbkM5ODQyZnYxRGtjeEo2RnRuNU5H?=
 =?utf-8?B?RkIxSVZkTWJJM1FlUUtjZnBYOS8xblo0NURXY2s3bjR0T254K0Rzank0SWhn?=
 =?utf-8?B?dDZrZHBZMFVheVFiRnpCQUNNY2xjYkpadG1SUnc3N29nT3ZFd0I5ZHpYRUpC?=
 =?utf-8?B?YitZbXpJandWRXFRTmR4T3FRdTZjandlZjVicG5mcjdGbzJXOVNhbkU4NzMx?=
 =?utf-8?B?VkFWRFUrM2dpMHVFSkFIbGEwb1BwWlBkYm1Sd1Z0TGVta0o2dUs2UlFVMFgv?=
 =?utf-8?B?NFE1RSsxL21QYlZlVVJ0dHh3ajhYRUJla05BaS9IR0d1S0txOWVMeFZ6WThW?=
 =?utf-8?B?Vy9hejYxS3RxRDBqeWdXR0EzL3QrQytrMjM3S0pSVTVKVGQzVEF0SXpFYzJw?=
 =?utf-8?B?NFJFMEFZWk9Ea2lRT0ZBRDFGejFvMTVhUnRtODlndVYwby9OQkwvRXp0YkFl?=
 =?utf-8?B?bmptMTQ0NHhkdVVpd01YZk9OVjhac1JJMUhYbUxYSERYTVcvc1F1VElwU1FL?=
 =?utf-8?B?N0hVNDZjU3UvKy9ZRGFQRWpRRUozbVJVN0YyaHE5NDZlaWREOVpkazllT2Nl?=
 =?utf-8?B?cmlYNE45QWpHNW94L09OZGhVbjlxVjNvaDBpNnFuUWlrVkVCUHVNK1lnL0hv?=
 =?utf-8?B?MXdPVnZ0emMyajNqMk1DL1VKejFXSFRQL3hEbjBaVzZQRXBSWGFCVWVsVHFY?=
 =?utf-8?B?MDhHT2dHWGJBMHJadTVnUzEvc2EzR0dxYzhOVnhWaTN0NmdQUzJzS01hRVUz?=
 =?utf-8?B?QnZRNVRjR1ZvYkVjV0Z6bjBYT25nUzFDMUd1OTFwRGdEckZUYUtsd053S09H?=
 =?utf-8?B?R3hqemZkbDgrMnFxeE9DV2IxTzVXdTh1R2dpK1l0VzVCQTlCNVQyWmQzUlNN?=
 =?utf-8?B?TUNncjNOVmF1R3cvVnQ1Vk16WXI5RCt4b2d4WGZuRW5nM3oyd1FDS0FXY2Nv?=
 =?utf-8?B?dlkvTHM2dEM1ZGg0cG5BNjl3WDBNMTFvUTBUS1lYelpNOHpTMDlzT2JlcE1r?=
 =?utf-8?B?ZFNaUUFFajRldkNBWmJUTFYrRE1WRDBIOUJONlR2enNjeGpHd20zQUdWMzZU?=
 =?utf-8?B?NmVHdkMzMEFVbitaN0t1bFRlUWtNZGRtK0o3RTdSem4wT1o1em9aWTN2RFRo?=
 =?utf-8?B?L2lPOGFzRjVsRVlyQ3E2YkVwYzFTQ3FaSElhdEJrQUE1dlh1U2NqSnZkYzFM?=
 =?utf-8?B?WmF2REQ2cENJeGk1OEJ3c1NNSi81NnJUNk1xZXg0SVJ1cGtPWVRxbzlTeFcy?=
 =?utf-8?B?SjVieWN1MUpKUDE5aVBoV3R1YXN0THpHTTVaWGhHcktIRGFwcjlYaGtkRDVH?=
 =?utf-8?B?bVpDZWhCVzlsY0ZVMTd2S1k5UmhiSXNwNWtaUHA5VmRRa3BrbnZ0bWoxZmFW?=
 =?utf-8?Q?DrK+rS8CvQ6YUkZ6pwy4oaizqBVsKIMM5zctc+7tOw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a4921dd-53e9-4e9c-6cf7-08d9d6d537af
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 20:42:30.1819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d4T+OV/1sLEeR5ByDEzK3KYkoU1NPfuIf7LVQhdqbIgy846DBX2JrmvkbP6VjOnz3Tf6Z4U9pryxoqtzv0ctnW7hjIExk+luJOP3QOcDhH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2887
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 09/15]
 tests/i915/i915_hangman: Remove reliance on context persistance
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/13/2022 12:30, Matthew Brost wrote:
> On Thu, Jan 13, 2022 at 11:59:41AM -0800, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> The hang test was relying on context persitence for no particular
>> reason. That is, it would set a bunch of background spinners running
>> then immediately destroy the active contexts but expect the spinners
>> to keep spinning. With the current implementation of context
>> persistence in i915, that means that super high priority pings are
>> sent to each engine at the start of the test. Depending upon the
>> timing and platform, one of those unexpected pings could cause test
>> failures.
>>
>> There is no need to require context persitence in this test. So change
>> to managing the contexts cleanly and only destroying them when they
>> are no longer in use.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/i915_hangman.c | 15 ++++++++++-----
>>   1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>> index 918418760..6601db5f6 100644
>> --- a/tests/i915/i915_hangman.c
>> +++ b/tests/i915/i915_hangman.c
>> @@ -289,27 +289,29 @@ test_engine_hang(const intel_ctx_t *ctx,
>>   		 const struct intel_execution_engine2 *e, unsigned int flags)
>>   {
>>   	const struct intel_execution_engine2 *other;
>> -	const intel_ctx_t *tmp_ctx;
>> +	const intel_ctx_t *local_ctx[GEM_MAX_ENGINES];
> This is fine for now as GEM_MAX_ENGINES is relatively small but what if
> we change this to large value, let's say 4k? I think the stack could
> overflow then. Maybe not a concern, maybe it is? I'll leave this up to
> if this should be kmalloc'd or not in the next rev.
Seems unlikely we are going that big any time soon. And such stack 
reduction can always be done as part of any huge engine count update. 
Although, this is userland not kernel - you can slap gigabytes on the 
stack and it won't blow up ;).

John.

> Everything else looks good.
>
> With that:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
>
>>   	igt_spin_t *spin, *next;
>>   	IGT_LIST_HEAD(list);
>>   	uint64_t ahnd = get_reloc_ahnd(device, ctx->id), ahndN;
>> +	int num_ctx;
>>   
>>   	igt_skip_on(flags & IGT_SPIN_INVALID_CS &&
>>   		    gem_engine_has_cmdparser(device, &ctx->cfg, e->flags));
>>   
>>   	/* Fill all the other engines with background load */
>> +	num_ctx = 0;
>>   	for_each_ctx_engine(device, ctx, other) {
>>   		if (other->flags == e->flags)
>>   			continue;
>>   
>> -		tmp_ctx = intel_ctx_create(device, &ctx->cfg);
>> -		ahndN = get_reloc_ahnd(device, tmp_ctx->id);
>> +		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
>> +		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
>>   		spin = __igt_spin_new(device,
>>   				      .ahnd = ahndN,
>> -				      .ctx = tmp_ctx,
>> +				      .ctx = local_ctx[num_ctx],
>>   				      .engine = other->flags,
>>   				      .flags = IGT_SPIN_FENCE_OUT);
>> -		intel_ctx_destroy(device, tmp_ctx);
>> +		num_ctx++;
>>   
>>   		igt_list_move(&spin->link, &list);
>>   	}
>> @@ -339,7 +341,10 @@ test_engine_hang(const intel_ctx_t *ctx,
>>   		igt_spin_free(device, spin);
>>   		put_ahnd(ahndN);
>>   	}
>> +
>>   	put_ahnd(ahnd);
>> +	while (num_ctx)
>> +		intel_ctx_destroy(device, local_ctx[--num_ctx]);
>>   
>>   	check_alive();
>>   }
>> -- 
>> 2.25.1
>>

