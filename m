Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AB67C8E19
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 22:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE77410E034;
	Fri, 13 Oct 2023 20:04:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ACDF10E034
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 20:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697227442; x=1728763442;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UK9iJa/a84UDTLzg+sZhVR6OGzk58bOmYIgycw+o2Qg=;
 b=AIiAG/UQR227IUdAosNh5iiWZWmhHM2ox0osIwSsxtXpiBVotEYa5t7w
 Jax4/OVUvJZb4gepErpsPY+Wl0SzOGBjm10wHBq4+WxCkGVdIgvBktnuT
 xh8hXOYWE9QpoIUPFSk3D2GnSHnEO8LUIP4X10o6LHNUsIHkxmh2oQkAg
 T2iGPmtAj+Pv7pz9/VBBCKO7lgWNjUvbR95RruXxF+JQJaerjurjNUP1M
 08TP9Dih4IR9pNqT1MapacQwvGmaWehANx6whrnXMHzsNHcQVbOqCUKL6
 s6YHMQuJlP1FuYIHRW8/1vDRjJhh/1zpkwOXj0HGj1cbbzhBjqf1QVssq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388106280"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="388106280"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 13:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="731481241"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="731481241"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 13:04:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 13:04:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 13:04:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 13:04:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hauqzXEP9lWLPr+asRFpnOXiNvNmahRaL0WN/5sMpr/K7YdpvTK5Vut/LvFTpbfOoXlJ5rolt9EysRxPSHrmiGfjGdlsFuSyHYXeR2xcOmD8onW93mBke6hBLgCqssmeF/mYuAwfuOHtkLIz9//L1IlO2oM0UElIh4V0cdUkpOv/ysoW/GRB1PVXRJcVD+8f3P2AAyAaTWo1S9j1xIJ7xp8LuaKufy595ZFT3iPC+9CpPqeIXYnuj7ex7Q0xBYanZ2VsVjDBgZN16Rq7On6FELSQ1CRzeyT4q/Gd2rgazi9XZviUFu/UzO159NNDRdvyG/CNR5KTTxh0m6L5+64c7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0mY/hP653rG0cEw/s3ctID+NPpliU5dY6vjym+4EgNg=;
 b=S7JiAesdQENeziKLhp4YnCeiAXuC0e5D92KQ2dbR8XE5vE5Z3mwquG/9C74i3mFjYVAW0BCCLjwzbLDrFek2CJh7AMWjpIxiZoCc6MPyBSuvYVxshKJx3lXTO47fNJe4754cLCwFbEuad0z4bsj6gl8m08yuo3CZuApLkY70O6w9NKW788qWNkchBWrshe5pXnI7ARyJO/x86Gav6DyMJcmP2C194f6LWVO+kl4gylky3tpET4CsFI2RQWjuhVUU2MMOafc4pVkRSk+dbC/Sw/TDUt5d4OujW0ZoItewWv9muVwAEOiWl0cpaFDkPS6MVmos1lYq9aNHAIu7OJdJ2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CY8PR11MB7106.namprd11.prod.outlook.com (2603:10b6:930:52::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.37; Fri, 13 Oct
 2023 20:03:57 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 20:03:57 +0000
Message-ID: <863aa53f-a4a9-452b-87d5-df3abdee1f8c@intel.com>
Date: Fri, 13 Oct 2023 13:03:53 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
 <20231013175218.2664309-4-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231013175218.2664309-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:303:b7::6) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CY8PR11MB7106:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f8dad21-b839-4b11-c3e1-08dbcc2788e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wnq9S97+irWjqu88QFDApcpE/xw2wS/vM9mFJH1dgLkWlPnBX/4ksAgZBsejzIsYlVnbgjrGG+weURyR9SMIhWtZ/6h99O3JeotLDEfzrZxUaHz0l64xxbvSuW0Ltl2Gh/DIB28iaeMaVL/63iGlOgdGUU4WE58jVStwf+uGjaY6yg7LJCyOE5uP2pv6rCeRcUpPB+tRMNRN0JUbR0b/CUGeqxprGUbF9/knCFiRoMvqL/1z4DQJB2dsl3RvcCJPuTnWnNdkrRyS9hk4cdHXiAYgIiPwvImG341wkA1TJ7kzKW/A4lYrc6HeDAxu8BcDwnAA8KnmtRkeHTzdRu+uD1Ks5iVrLnEQe6HJmDaOFYvJLk+iM7YFXZXbLhHt2yGH7/v7Ivi7XuELwpjBtkWWmFLy5vHjl4ye4fEGSSf1eQ1njCkS01g87px3Fz5cejgZYu+8MxQxL2fiEpHki7ZH4XxLte3hsAnL9IcKDtmb5BwAFM9/Otr9OcJavfBNfVAD1PBz1YXXGusp4nyJPTvMsRXJtodxp16fL37H7KhvpdB3pCzSFFm70/DrBbk0GNcQ975TmsLrWd04CGvXiZMx0V/fSpWyVtvBHvp8QNWzybSL9zvSWn5dy2nmFC55DtKnfvZaXWFGi22ci1nuINSrYpNZUBe11pgk8uY2+tHrWys=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(6512007)(53546011)(2616005)(6506007)(41300700001)(316002)(30864003)(478600001)(2906002)(8676002)(66556008)(6486002)(26005)(66946007)(83380400001)(5660300002)(4326008)(8936002)(31696002)(82960400001)(36756003)(66476007)(38100700002)(86362001)(6666004)(31686004)(43740500002)(45980500001)(473944003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzZxRExxblhEZzV1bEpLemN4QWRkTm4rZ3lYTjZzOGFqOFM0d3dMNkV0bEFU?=
 =?utf-8?B?Z0NPV3QvTjBqS2J0anhqZTNlb1lWeUtDQURVQWgxbTlPUm5yWDZtdjBtaU9m?=
 =?utf-8?B?a3VkS0ZGRUxMWlJiMGtVV3JpRjE0ZzErSnJIcHgrQUlIM1FzQzVEbVFqWFlX?=
 =?utf-8?B?MHR0ekU1R2FLanFZVElSTVhzbkRUZHFrd2hyc05VVTBRUjJrUi9yRi9DQm1o?=
 =?utf-8?B?S05tZ3ZCR1BXQnpIV3N6OG1Hb29Fd2dsNFZ6QmVWcUJyTklBemJWV1FBMjkx?=
 =?utf-8?B?ZmxUWHU4L1RxQTNWWXpsSElHa0s1eXZVdEVUcWVUWGM5NENTdGZhQ3A5Z1dW?=
 =?utf-8?B?aUVCVjlSZ2ViYjNrSS9vQklmTVlNZDBCM3VGaWFIVStpMzlIZkp0ckdnTk1J?=
 =?utf-8?B?bTJDWENCU0RPWVV2MVpSVDV1TTc5bzQ0VzNLUkVsV0Y3ZUEzQnJWOUhEWFlD?=
 =?utf-8?B?OUlkM1EyZ2ZoanRZeHpIemY0aERoQXVhSlZmbGVyM3RaRzBBZjlYVnZUVm83?=
 =?utf-8?B?RnZ2eVNUM0t5eE52UitnckZDaWFqMmlFR1JIWnJZOG5VekpOV1A0T2kwb2dX?=
 =?utf-8?B?dGI1VU1zYzNXOGFqdmRpVUR3YzQwTE9ndUYyZGxEbkRqdHpDY0J1RFNaWlQw?=
 =?utf-8?B?MXpDck5CQktHdmgrV3NVL2E2ZUdaaExIRFB3a2M0TmFtK2NlZjVSNG95OVpS?=
 =?utf-8?B?UTI2bjViUXpjMTRUVmhFekRtbGxJb3h2a1h3QUNVUGIybDY1R01qVUNQV3Ja?=
 =?utf-8?B?MGw4eU11NkpFTlBZcTJNaWszb2NTbWhnYld3N1FCY2FkWGtKeGVlTks1OHg2?=
 =?utf-8?B?ejZIQUdiUHg1M25FbjVvNmlLclgwa1pzNS94QXA2VDFVTC9ZbUFIempjSndS?=
 =?utf-8?B?bHFLUVBBaEpxSlE3cWJxR3F2UE9scDN5ZmFOMzN0OGNLMG16dk1FVUU0MkNm?=
 =?utf-8?B?OThqaGVJNUZtWmY1ZzJPaVRLdHJjamRXM083TFBMU2VQRFQ5MThJMWJaUDhx?=
 =?utf-8?B?MW02OEtlMGNIc0VlMlRwOUdXNXFBK09aZjlHWk9uSlN2eTh3S1FGMEF0NFN4?=
 =?utf-8?B?cUxsVExkUm1POVpCdHJlSUd1VUNaZ01rVlgvcE8zOER3cm9idzlnTCtua3Uw?=
 =?utf-8?B?bmVmdTN6bHFMTjBHeFJaWDJxcmpqSFpoM200M3Z2UmY0TmtuOTlscS80RXBu?=
 =?utf-8?B?VmhnRlVpSzZvSEloZUw0QnozRmZOVCsyeHh1TCt5YkxEWnQvdHdjUnNsZ2hQ?=
 =?utf-8?B?bG8vZmQ3eUJWaGI1dklscVRab2lqa1pHdmpVWG8wZGhsVnQ3QlA5dEhUUytv?=
 =?utf-8?B?Qlk5MGpUWGUwVGE1cjZCMzRZNTBtSWFxMEVPYVh4VEpuL1FaVXBMSFZqT0Jy?=
 =?utf-8?B?TGNVeDZDQU9kaW8zcEVzRElUb1pPZWVQOUc1SUFjdlVKaFN4RE9hOGFSK29s?=
 =?utf-8?B?VWtIQ2Y3MFhDbE5jQ3UyVFcwcGR2YStJeXNrSHgwMzJYNSt2eDVRR01ZaXp3?=
 =?utf-8?B?UmdMU0hRUXhvUVlYZGlRVkJJeEVIeEpnQ3c2b00vWDZ1Q2pET0JsWXpCV0ZI?=
 =?utf-8?B?UFpVV3pDNFJYOG4zWGo5YmNoRXJlcG9xVGhoM0w0Q3RtTDdXTDBKNG5sdXFS?=
 =?utf-8?B?emIxVzJIbTdmNWNia1dhU2ZhK2MrSm1SVmdBZmtGZmJlalJxUXBZMFMrZmVP?=
 =?utf-8?B?ZE1aRHBzVVJJRmlrek1xOUFybEI3Q01DU3F6eXBHOWorQlBXOVR0OE11U2dw?=
 =?utf-8?B?Y0tYN1R2SVZLQllRbGdtN09LYWVPNVp6NTVGd3lHK0NXeFZZdlRPK2h4OUkr?=
 =?utf-8?B?VklHczJDTjhpZkYvMDZZUjNMV01kK2diODJIdGp4blR2WWZrSWxHcy9EZ0xv?=
 =?utf-8?B?dWZGdXVXR0x5bmdyRkVQRmFHbFJDR0hmRlhwck9uYUt4czFHNUpES0pyV3Ex?=
 =?utf-8?B?cElrUjdwYys0bjJsR0FCYzdhWWVPSWxYQmRGVW5MZ1h3WjlTdnZENWQ2SjA0?=
 =?utf-8?B?THl3WmNJdjh4K2NWTzB6Uk1JbGthVnBsR0Z1WjY4NjNyaXpmSVY2ZStGaE1G?=
 =?utf-8?B?QUx2NHAvTkZyL3pvU3U4MWNQU2lwSjAzQjlTekdZUVliWE05MHhOOFNCOTls?=
 =?utf-8?B?R1hlT1c2Y2VPcklSb0xiWUI1ZThrbDE0dWd4RkJTdk9qNDdxOE5LbUMrYmE3?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f8dad21-b839-4b11-c3e1-08dbcc2788e1
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 20:03:57.7146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: im2i2dvGBeHbPdNT9Kx4WJZTNDf2fuhOr+yLQ7syK3+STjiQW/dpFIUtP9GP54/JM0SQSjNGTsaNvBHjVMtiDR+L5UxQdv94qwpRvNgsgf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7106
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v14 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/13/2023 10:52, Jonathan Cavitt wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>
> The GuC firmware had defined the interface for Translation Look-Aside
> Buffer (TLB) invalidation.  We should use this interface when
> invalidating the engine and GuC TLBs.
> Add additional functionality to intel_gt_invalidate_tlb, invalidating
> the GuC TLBs and falling back to GT invalidation when the GuC is
> disabled.
> The invalidation is done by sending a request directly to the GuC
> tlb_lookup that invalidates the table.  The invalidation is submitted as
> a wait request and is performed in the CT event handler.  This means we
> cannot perform this TLB invalidation path if the CT is not enabled.
> If the request isn't fulfilled in two seconds, this would constitute
> an error in the invalidation as that would constitute either a lost
> request or a severe GuC overload.
>
> With this new invalidation routine, we can perform GuC-based GGTT
> invalidations.  GuC-based GGTT invalidation is incompatible with
> MMIO invalidation so we should not perform MMIO invalidation when
> GuC-based GGTT invalidation is expected.
>
> The additional complexity incurred in this patch will be necessary for
> range-based tlb invalidations, which will be platformed in the future.
>
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  30 ++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 ++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  11 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 183 +++++++++++++++++-
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  13 ++
>   8 files changed, 298 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 4d7d88b92632b..1c93e84278a03 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,36 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>   	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
>   }
>   
> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
> +{
> +	struct intel_uncore *uncore = gt->uncore;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +}
> +
>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>   {
>   	struct drm_i915_private *i915 = ggtt->vm.i915;
> +	struct intel_gt *gt;
>   
>   	gen8_ggtt_invalidate(ggtt);
>   
> -	if (GRAPHICS_VER(i915) >= 12) {
> -		struct intel_gt *gt;
> -
> -		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> +		if (intel_guc_tlb_invalidation_is_available(&gt->uc.guc)) {
> +			guc_ggtt_ct_invalidate(gt);
> +		} else if (GRAPHICS_VER(i915) >= 12) {
>   			intel_uncore_write_fw(gt->uncore,
>   					      GEN12_GUC_TLB_INV_CR,
>   					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> -	} else {
> -		intel_uncore_write_fw(ggtt->vm.gt->uncore,
> -				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		} else {
> +			intel_uncore_write_fw(gt->uncore,
> +					      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		}
>   	}
>   }
>   
> @@ -1243,7 +1257,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>   		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>   	}
>   
> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>   		ggtt->invalidate = guc_ggtt_invalidate;
>   	else
>   		ggtt->invalidate = gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index 139608c30d978..4bb13d1890e37 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -12,6 +12,7 @@
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
>   #include "intel_tlb.h"
> +#include "uc/intel_guc.h"
>   
>   /*
>    * HW architecture suggest typical invalidation time at 40us,
> @@ -131,11 +132,24 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
>   		return;
>   
>   	with_intel_gt_pm_if_awake(gt, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
>   		mutex_lock(&gt->tlb.invalidate_lock);
>   		if (tlb_seqno_passed(gt, seqno))
>   			goto unlock;
>   
> -		mmio_invalidate_full(gt);
> +		if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +			/*
> +			 * Only perform GuC TLB invalidation if GuC is ready.
> +			 * The only time GuC could not be ready is on GT reset,
> +			 * which would clobber all the TLBs anyways, making
> +			 * any TLB invalidation path here unnecessary.
> +			 */
> +			if (intel_guc_is_ready(guc))
> +				intel_guc_invalidate_tlb_engines(guc);
> +		} else {
> +			mmio_invalidate_full(gt);
> +		}
>   
>   		write_seqcount_invalidate(&gt->tlb.seqno);
>   unlock:
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b..33f253410d0c8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,8 @@ enum intel_guc_action {
>   	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>   	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>   	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>   	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>   	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>   	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>   
>   #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
>   
> +#define INTEL_GUC_TLB_INVAL_TYPE_MASK	REG_GENMASK(7, 0)
> +#define INTEL_GUC_TLB_INVAL_MODE_MASK	REG_GENMASK(11, 8)
> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
> +
> +enum intel_guc_tlb_invalidation_type {
> +	INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
> +	INTEL_GUC_TLB_INVAL_GUC = 0x3,
> +};
> +
> +/*
> + * 0: Heavy mode of Invalidation:
> + * The pipeline of the engine(s) for which the invalidation is targeted to is
> + * blocked, and all the in-flight transactions are guaranteed to be Globally
> + * Observed before completing the TLB invalidation
> + * 1: Lite mode of Invalidation:
> + * TLBs of the targeted engine(s) are immediately invalidated.
> + * In-flight transactions are NOT guaranteed to be Globally Observed before
> + * completing TLB invalidation.
> + * Light Invalidation Mode is to be used only when
> + * it can be guaranteed (by SW) that the address translations remain invariant
> + * for the in-flight transactions across the TLB invalidation. In other words,
> + * this mode can be used when the TLB invalidation is intended to clear out the
> + * stale cached translations that are no longer in use. Light Invalidation Mode
> + * is much faster than the Heavy Invalidation Mode, as it does not wait for the
> + * in-flight transactions to be GOd.
> + */
> +enum intel_guc_tlb_inval_mode {
> +	INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
> +	INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
> +};
> +
>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 818c8c146fd47..0949628d69f8b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -79,6 +79,18 @@ struct intel_guc {
>   	 */
>   	atomic_t outstanding_submission_g2h;
>   
> +	/** @tlb_lookup: xarray to store all pending TLB invalidation requests */
> +	struct xarray tlb_lookup;
> +
> +	/**
> +	 * @serial_slot: id to the initial waiter created in tlb_lookup,
> +	 * which is used only when failed to allocate new waiter.
> +	 */
> +	u32 serial_slot;
> +
> +	/** @next_seqno: the next id (sequence number) to allocate. */
> +	u32 next_seqno;
> +
>   	/** @interrupts: pointers to GuC interrupt-managing functions. */
>   	struct {
>   		bool enabled;
> @@ -288,6 +300,11 @@ struct intel_guc {
>   #endif
>   };
>   
> +struct intel_guc_tlb_wait {
> +	struct wait_queue_head wq;
> +	bool busy;
> +};
> +
>   /*
>    * GuC version number components are only 8-bit, so converting to a 32bit 8.8.8
>    * integer works.
> @@ -515,4 +532,9 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
>   
> +bool intel_guc_tlb_invalidation_is_available(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 03b616ba4ebb7..89e314b3756bb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1142,6 +1142,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>   		ret = intel_guc_crash_process_msg(guc, action);
>   		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret = intel_guc_tlb_invalidation_done(guc, payload, len);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> @@ -1213,9 +1216,17 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
>   	switch (action) {
>   	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>   	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>   		g2h_release_space(ct, request->size);
>   	}
>   
> +	/*
> +	 * TLB invalidation responses must be handled immediately as processing
> +	 * of other G2H notifications may be blocked by an invalidation request.
> +	 */
> +	if (action == INTEL_GUC_ACTION_TLB_INVALIDATION_DONE)
> +		return ct_process_request(ct, request);
> +
>   	spin_lock_irqsave(&ct->requests.lock, flags);
>   	list_add_tail(&request->link, &ct->requests.incoming);
>   	spin_unlock_irqrestore(&ct->requests.lock, flags);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 123ad75d2eb28..8ae1846431da7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -22,6 +22,7 @@
>   /* Payload length only i.e. don't include G2H header length */
>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
>   #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
> +#define G2H_LEN_DW_INVALIDATE_TLB		1
>   
>   #define GUC_CONTEXT_DISABLE		0
>   #define GUC_CONTEXT_ENABLE		1
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2cce5ec1ff00d..8a304b4c85462 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1948,6 +1948,54 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>   static void destroyed_worker_func(struct work_struct *w);
>   static void reset_fail_worker_func(struct work_struct *w);
>   
> +bool intel_guc_tlb_invalidation_is_available(struct intel_guc *guc)
> +{
> +	return HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915) &&
> +		intel_guc_is_ready(guc);
> +}
> +
> +static int init_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	int err;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return 0;
> +
> +	xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
> +
> +	wait = kzalloc(sizeof(*wait), GFP_KERNEL);
> +	if (!wait)
> +		return -ENOMEM;
> +
> +	init_waitqueue_head(&wait->wq);
> +
> +	/* Preallocate a shared id for use under memory pressure. */
> +	err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> +	if (err < 0) {
> +		kfree(wait);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void fini_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +	if (wait && wait->busy)
> +		guc_err(guc, "Unexpected busy item in tlb_lookup on fini\n");
> +	kfree(wait);
> +
> +	xa_destroy(&guc->tlb_lookup);
> +}
> +
>   /*
>    * Set up the memory resources to be shared with the GuC (via the GGTT)
>    * at firmware loading time.
> @@ -1966,11 +2014,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   			return ret;
>   	}
>   
> +	ret = init_tlb_lookup(guc);
> +	if (ret)
> +		goto destroy_pool;
> +
>   	guc->submission_state.guc_ids_bitmap =
>   		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>   	if (!guc->submission_state.guc_ids_bitmap) {
>   		ret = -ENOMEM;
> -		goto destroy_pool;
> +		goto destroy_tlb;
>   	}
>   
>   	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
> @@ -1979,9 +2031,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   
>   	return 0;
>   
> +destroy_tlb:
> +	fini_tlb_lookup(guc);
>   destroy_pool:
>   	guc_lrc_desc_pool_destroy_v69(guc);
> -
>   	return ret;
>   }
>   
> @@ -1994,6 +2047,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4678,131 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
>   	return ce;
>   }
>   
> +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 seqno)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	unsigned long flags;
> +
> +	xa_lock_irqsave(&guc->tlb_lookup, flags);
> +	wait = xa_load(&guc->tlb_lookup, seqno);
> +
> +	if (wait)
> +		wake_up(&wait->wq);
> +	else
> +		guc_dbg(guc,
> +			"Stale TLB invalidation response with seqno %d\n", seqno);
> +
> +	xa_unlock_irqrestore(&guc->tlb_lookup, flags);
> +}
> +
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
> +				    const u32 *payload, u32 len)
> +{
> +	if (len < 1)
> +		return -EPROTO;
> +
> +	wait_wake_outstanding_tlb_g2h(guc, payload[0]);
> +	return 0;
> +}
> +
> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
> +{
> +	/*
> +	 * This is equivalent to wait_woken() with the exception that
> +	 * we do not wake up early if the kthread task has been completed.
> +	 * As we are called from page reclaim in any task context,
> +	 * we may be invoked from stopped kthreads, but we *must*
> +	 * complete the wait from the HW.
> +	 */
> +	do {
> +		set_current_state(TASK_UNINTERRUPTIBLE);
> +		if (wq_entry->flags & WQ_FLAG_WOKEN)
> +			break;
> +
> +		timeout = schedule_timeout(timeout);
> +	} while (timeout);
> +
> +	/* See wait_woken() and woken_wake_function() */
> +	__set_current_state(TASK_RUNNING);
> +	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
> +
> +	return timeout;
> +}
> +
> +static int guc_send_invalidate_tlb(struct intel_guc *guc,
> +				   enum intel_guc_tlb_invalidation_type type)
> +{
> +	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
> +	int err;
> +	u32 seqno;
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_TLB_INVALIDATION,
> +		0,
> +		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
> +			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
> +				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
> +			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
> +	};
> +	u32 size = ARRAY_SIZE(action);
> +
> +	init_waitqueue_head(&_wq.wq);
> +
> +	if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
> +				xa_limit_32b, &guc->next_seqno,
> +				GFP_ATOMIC | __GFP_NOWARN) < 0) {
> +		/* Under severe memory pressure? Serialise TLB allocations */
> +		xa_lock_irq(&guc->tlb_lookup);
> +		wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +		wait_event_lock_irq(wq->wq,
> +				    !READ_ONCE(wq->busy),
> +				    guc->tlb_lookup.xa_lock);
> +		/*
> +		 * Update wq->busy under lock to ensure only one waiter can
> +		 * issue the TLB invalidation command using the serial slot at a
> +		 * time. The condition is set to true before releasing the lock
> +		 * so that other caller continue to wait until woken up again.
> +		 */
> +		wq->busy = true;
> +		xa_unlock_irq(&guc->tlb_lookup);
> +
> +		seqno = guc->serial_slot;
> +	}
> +
> +	action[1] = seqno;
> +
> +	add_wait_queue(&wq->wq, &wait);
> +
> +	/* This is a critical reclaim path and thus we must loop here. */
> +	err = intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDATE_TLB, true);
> +	if (err)
> +		goto out;
> +
> +	if (!must_wait_woken(&wait, intel_guc_ct_max_queue_time_jiffies())) {
> +		guc_err(guc,
> +			"TLB invalidation response timed out for seqno %u\n", seqno);
> +		err = -ETIME;
> +	}
> +out:
> +	remove_wait_queue(&wq->wq, &wait);
> +	if (seqno != guc->serial_slot)
> +		xa_erase_irq(&guc->tlb_lookup, seqno);
> +
> +	return err;
> +}
> +
> +/* Send a H2G command to invalidate the TLBs at engine level and beyond. */
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
> +}
> +
> +/* Send a H2G command to invalidate the GuC's internal TLB. */
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
> +}
> +
>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>   					  const u32 *msg,
>   					  u32 len)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 98b103375b7ab..83ffdf19fd3fc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -464,6 +464,8 @@ static int __uc_init_hw(struct intel_uc *uc)
>   	struct drm_i915_private *i915 = gt->i915;
>   	struct intel_guc *guc = &uc->guc;
>   	struct intel_huc *huc = &uc->huc;
> +	struct intel_guc_tlb_wait *wait;
> +	long unsigned int i;
>   	int ret, attempts;
>   	bool pl1en = false;
>   
> @@ -560,6 +562,17 @@ static int __uc_init_hw(struct intel_uc *uc)
>   	guc_info(guc, "submission %s\n", str_enabled_disabled(intel_uc_uses_guc_submission(uc)));
>   	guc_info(guc, "SLPC %s\n", str_enabled_disabled(intel_uc_uses_guc_slpc(uc)));
>   
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 */
> +	if (intel_guc_tlb_invalidation_is_available(guc)) {
> +		xa_lock_irq(&guc->tlb_lookup);
> +		xa_for_each(&guc->tlb_lookup, i, wait)
> +			wake_up(&wait->wq);
> +		xa_unlock_irq(&guc->tlb_lookup);
> +	}
> +
This is not the right place for this. This is an init function but this 
comment is talking about resets and is doing things that assume the 
system has been running for some time.

Yes, hw init might happen as part of a reset but this is reset only 
processing and it should be in a reset specific code path.

What was wrong with the previous version that had the code in 
intel_guc_submission_reset?

John.


>   	return 0;
>   
>   	/*

