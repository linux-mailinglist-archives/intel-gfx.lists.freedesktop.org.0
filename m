Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4D57C7B0F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 03:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C6610E02D;
	Fri, 13 Oct 2023 01:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF8310E02D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 01:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697159441; x=1728695441;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=61zysWiaXRplI3MWDtLtj/oKgFUdnHsnqx03DHl/TFw=;
 b=MLoHNT6+HgITYaL9Qs/JQGg3vBFHVZmGMc8FV7KTVRsO6W6IUsd3mTwR
 QbU5Fkk1KbdKz6+G+Z61cEke1Qz+zrIGBzSe9zlo35Y9tyFsSRtzfrSMx
 QTAnxhAvwx/dxIA0K+DO00KYCr77lLzyGm9urvcFbCYfsd+mg0oUSizfe
 Bs2FGxzUO9gjnpCxbQwv1tdYWrSAljNF6dHmYj0EXU1tWWg3k6aXqPRWM
 BG136uEns/y7hRvH42p92lqZuxcyX6/Fv1eHmX9ct4G6D4bhrSn7sl1EY
 LK6YTjSkD8bIRHcbkbpOXYUK++ScNzsnp+bBFV4KouYqYOBDMVMhhXos8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="387931614"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="387931614"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 18:10:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="783933371"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="783933371"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 18:10:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 18:10:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 18:10:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 18:10:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHw4EhUnpPrwsImtXfYEGgSey3WRREA0i/j3g1PkguBE9ti5PBaQnxPceI7B30QNZ06tzBfzHX/6UhM+ZsMKTu0l+E060fkGp0OEsIpmrxeWQLYNGMmo31wfqODmTffdZhLlauebjWfWpF2pKO7Fqq5gP6N8sCzqDpkdXW0dw+avXpY1UbuTVl8MUf3U2KxpGUK10ZqsF4oKzxCf4EAWgJfz3zLK/aYOcW0sCrgd8zXTM1RRt1yaoiYyWS+hKGTDagQL/41e6tOq7/Z1JIYdKOjs5o9GhosxDacv4bhxOp9sqxwIawBcOQJiJEFNwmc7LmuqQrIRFK8265vwqi0qaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NwRCtJNxuUyGLXCkS11u2a2C7AsBOTyfLH6EcK8/NSQ=;
 b=Ot/Atot+/yrw6wKgpm74cb2urFLjmtLPgTu610vNivXVKtEPmlBYvqWyrtqNMux2xkcCbR/HwZF1KSRdh62VCAJzKnv8bJvRCmgomonwqYOHGbgAmX3ph8GVeyCqVd9C9h5WuPWNjcAM2kMV8rmBVZKrSgct13TEkh8K0GBIGsMl5eLQsQQv31t0zWBE5Gnv1teEFGD6BlszW2vMnacfWL5o+JJTQODXzOLiO60CoY/I6odOGPCB6hEsHUWkqcywcRi1Vti6QXdDMrF61WAbRPEKEO4R+y35h0Mo6mwkEZriiUOkeGp6+GBqZB4f+HRlJpbfTHR1MdeRdDOHkUOJ8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA2PR11MB5065.namprd11.prod.outlook.com (2603:10b6:806:115::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Fri, 13 Oct
 2023 01:10:34 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 01:10:34 +0000
Message-ID: <b40599f6-1808-44e0-88c0-0b7ff30ed74d@intel.com>
Date: Thu, 12 Oct 2023 18:10:31 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-4-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231012223826.2556700-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0308.namprd03.prod.outlook.com
 (2603:10b6:303:dd::13) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA2PR11MB5065:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b295fbe-0655-4b39-4d81-08dbcb89338e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eF24Dk/lGOm3czMwwgO7kihkTlMlpvDzNKOYBnYVWjEAhvKpgwIz8L/9ijmzNUtUEYE8J7G5xP5f6c0qI4R2RasKT5eE2lN+4FfSGCHT1xIVgdmKLvW26zyBskoOarDq6tWm3JRKgcLsODkvtNX54/TON9rfwd6325EQpxcoHaHpxjSClx9Na1LWpC9aUfR59F/Yj71QopJ4gpJmEAsesyyX5k/oyc3nt37Ll5sJeTEqYJ+ozta5JWLGXw8POwwytWyzrbUOx6cNGN2nwwP6k6Ke5Blfy4pgg2dtm4IxfzmqIKRWqTmmWE/IPol6+jCCqiExDhlkjGOK55g6ogidU82ngUx1v+cyRCDu8UKEVMWCCn6hrmObg9FQSekcPqhV6NLqMKnG9OGPMlgboWTPjfsO7E3JKS7fxOBrWkTLJU/MUH3OVl3hQhqtkclVtLPpwYw+BnciPIyzDdos4yAPbYx58IrvlJ2FjL0qx5YrZ0m/09b1Ew7y1fTphYqPIjA2kBzdR076L6nNhZcGvVKhT//V67DGS1oaPhKC7Q3aEUfwk/gDu8bdgEUgz5vUColaMBL4fRFVlwP1NHCqxudDH7qJT+4vGy8xpWY6F8hJYBL8e/HVx4VBHrjhRTNgoZSBHfQWnwDjIGsEOlgGZsQc6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(346002)(376002)(396003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(8936002)(6512007)(478600001)(66946007)(66556008)(2616005)(26005)(83380400001)(66476007)(4326008)(41300700001)(316002)(8676002)(53546011)(30864003)(6486002)(6506007)(2906002)(5660300002)(6666004)(82960400001)(36756003)(38100700002)(86362001)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUZzTzBEeTJMNlpZK1dVNG02T3BOOEEvUHhYUG50YlEwNFBZNTUwSHdBMVU3?=
 =?utf-8?B?ZGFvYVFnU3NZRHcwVzNtd2NvU0JxSzg4dGdRMnQxU3ZPMjNuYzFUNGNzYk5T?=
 =?utf-8?B?NVB1T2ZMYjk0elpkR1I0dzJKTXFkdnJ0UmR0R1NGTmx4UFgyMW1Cd3RWTkNJ?=
 =?utf-8?B?Ylp5Yk5NSUtsdk5sZ2RjaUlFNnlvU2FzUTkzcHZDZFMvdFB0RUppU05uVGFv?=
 =?utf-8?B?dzAwOW5aZ3AvaWN3eTFOL0c3NUhnYkJETVhianZwVmpoNFFhSnpVMXV4V1Qw?=
 =?utf-8?B?eHo3THJvcG56RjdNTi8ydHBOdk4wellPelZvZmwwUFZieEJyUm9WekxRK2Fl?=
 =?utf-8?B?R2p2MkVLOWZSaXBZcWgvUURKZGd4azdEZnU1Vnc1RUVxSXBWWVpmM1pXejhR?=
 =?utf-8?B?Ynp6S21Kd1UvLzFkYWJXcGQ3bUlEMi9iNHg0Lzloc1cvVlJTK25LQ2RKR0h5?=
 =?utf-8?B?RjY2S2pGbWJENnhXQ0hFQW5UZ20zVjRWWmthWVZudll0cDQxSzBUREVSS1cw?=
 =?utf-8?B?VHhEV2NKdXZ3YUxPUXNvZTJKYzJQZlNrVzBWd2cwTWhENmNwc0J2MFJMTy9z?=
 =?utf-8?B?WWZkbDVTZDljRXN5NjErcVdiMFRsTG43WGNPOUJCNlQyNkgrNUd4d3IwblMz?=
 =?utf-8?B?RmxiYWRTZGtaMGRRWFdLQ3djWklWdFlRRzAzNTNINVRlR1Q2N2grMFl2bEQ0?=
 =?utf-8?B?VFRYQTY2S3BIMGt2WEt5YWZ3NFhKbmJRQU8xcW02SzRXWk1TUWtqUFd2eklX?=
 =?utf-8?B?YmdBRnJvQzQ0SHVPeUkwMVp1MkFENElEQVEzc2ttRmg0ZW14Qlpab3BtY1N6?=
 =?utf-8?B?aktTbXorQWZxWDljcmNaQkdVVndyYllGYzVDeTk3RzZXTktBS1Biem1IMEdh?=
 =?utf-8?B?RFN5MUxJZ21XY0FuN29Lc3VXQW9hS0wxTlNGNWcyaWxWYURtR2JaTVlpWll0?=
 =?utf-8?B?ZzRES1g3M3ZkS0dCL3M5Ym9ObUdvYjIxRS83ZVhzK0o0NHIvL3FaOVk5TVBx?=
 =?utf-8?B?b3Q2aHhrN3orbGNOMmtYOU1JV0NJRFYrWmVLdkFzYWQvdkJ4elRIb0FrM1Zt?=
 =?utf-8?B?YUZVNFpWOWliWGVwYlBRc2IzYUdkQkJtdnhnUE9TVVVhbzVRcE1DNDJEWTA4?=
 =?utf-8?B?MjVxSkRLcUpTL3JNemQxdjZtdDROK3Buc2hLVGpLSGQ3ckliK3RWS1V5MzFx?=
 =?utf-8?B?cm5wZjVDbVhkSlNQZFpBT1JTazVTaURGTjlTSWdRSVc3dEEyMEhMdjFIOTVR?=
 =?utf-8?B?WHZVNUJXa2Y1TWJFOU96Rmc0UnRWNmtIOHVBNmFWMnFOVVNDc293Q0pwKzJT?=
 =?utf-8?B?RHVMSVRrZGNJbThWNTY3blhEZVA1YytFSDgwWEcwTmNSVGd1ZTdQU2lBRjJm?=
 =?utf-8?B?OVR4TFR4N1ZVUmVSS1pISE1uVEtsZ3c1YzQ1OXVwam90NW5hTEQ2ZnZ2T29P?=
 =?utf-8?B?TUVaNHEzdnJVdGhMek83UmUyUVhUOW1JZDNMOURFWXVzUHpKM3hOVi9jWUYv?=
 =?utf-8?B?NkIvaVNUbU1URTFZQUxJaHFqVjJjVE91MkltR3Rqb0diOTJ0UFJvUFFiUm90?=
 =?utf-8?B?Nm84UXBWWE9XZklnNVBTVDJoYjdSYjREWUgyS0ViSlFLVnVXMnpYdTNmbjlH?=
 =?utf-8?B?emFkS2FpSHVOYkh2NnEvQUtKcWIxQVc4RnN3YTUwNE9sMjlla2poZU9ROFBG?=
 =?utf-8?B?OFpVdEhyVGloNUtTSjIwMDk0Y3ZiSERvdHh0ZHh3am1oTW51bGt4ekU0RHdu?=
 =?utf-8?B?SkYvSU0vWWlmRy9OdGRHRG5UTmxXVzlJYlV1ekM3cHFqbEY4aGF3K3Qrd2x3?=
 =?utf-8?B?dXZrZW1yQ09EcXk1S2tnNHVyVm1oQlZEUHNoZG14UnFpSkt4bk0yRWQzUWRZ?=
 =?utf-8?B?RlpVbXUzR3FpZWE0cy8rNEJtd2pHSzFud3U0R3F0bkJxS1UyejUzWnltZFht?=
 =?utf-8?B?STdwWlN0WEhlWUkwMDZYTnlOTE9YandsTGhBMjdhRmo3RXlqREI1VUlPZFhV?=
 =?utf-8?B?aTdtMmlma1lVWFdwclR3QTVHT2pzaDZ0THk1UEEwUSs5T2tLQkl0dy95bmVD?=
 =?utf-8?B?MG9YK0FBL1RkTTloYWsxUkYvR2R2NWRwRFByT0w4N1ROd0xLTnkwemV2MUR0?=
 =?utf-8?B?TnRVcE9yS2Y3YmM4MTRNQnczc00yTG5lbGhpMGRxS0NsbEFtaHNqeXBSN0wv?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b295fbe-0655-4b39-4d81-08dbcb89338e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 01:10:34.0485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /f1Z4I1HNxdY6+9+jfxJW/N8IhVoe16dbokXyvFOCS2y7zupGERof0npp2AQ20p1K/dVAx/IlEb4cHeYrlKU55ra9LuPUah2TSiZvr28PRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v13 3/7] drm/i915: Define and use GuC and
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

On 10/12/2023 15:38, Jonathan Cavitt wrote:
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
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  33 ++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  11 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 195 +++++++++++++++++-
>   7 files changed, 299 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 4d7d88b92632b..7d145b2d3cb17 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,37 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
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
> -	gen8_ggtt_invalidate(ggtt);
> -
> -	if (GRAPHICS_VER(i915) >= 12) {
> -		struct intel_gt *gt;
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		gen8_ggtt_invalidate(ggtt);
This has not changed? As per comments from Matthew Roper and Nirmoy Das, 
there needs to be a fixup patch first to stop gen8_ggtt_invalidate() 
from being called on invalid platforms.

>   
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
> @@ -1243,7 +1258,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
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
> index 2cce5ec1ff00d..1377398afcdfa 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   
>   void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>   {
> +	struct intel_guc_tlb_wait *wait;
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> +	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1826,6 +1828,17 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 */
> +	if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915)) {
> +		xa_lock_irq(&guc->tlb_lookup);
> +		xa_for_each(&guc->tlb_lookup, i, wait)
> +			wake_up(&wait->wq);
> +		xa_unlock_irq(&guc->tlb_lookup);
> +	}
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1961,54 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
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
> @@ -1966,11 +2027,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
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
> @@ -1979,9 +2044,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
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
> @@ -1994,6 +2060,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4691,130 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
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
Missing blank line.

John.

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

