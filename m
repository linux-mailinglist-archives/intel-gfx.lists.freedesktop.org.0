Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AF77C601A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 00:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0AA10E1F3;
	Wed, 11 Oct 2023 22:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B19910E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 22:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697061646; x=1728597646;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EFqGbeMvnLtZBjTbUpjB8wKikjvJvdIwh43mc5wVc/4=;
 b=gyYSl4caARRqoh327m3YU038fnlutWJgzsvM6hXf5BuLX6P07zE9CmrM
 xxwNzkxxyrd2ZhtvJo7aemm8TByUPV2ZD6jvpG65W7/6D4tUTF/p/B8xA
 h1Fc9tSn0EVmS1zzwBWbnuQDhpct6A7X1Eoh8AmnxZQ0rBbKvywwU7kDC
 93u8oxIy7msnCeBvlXhHEXOyYG74IupIpfODKSVYEiDr0ANk8OXyd1LrP
 0EtxxIVZ2EVnNixs+j7KCh7rgiDQ2B3C0K2B58iAmZY6lyY45UwqOlqED
 caVLQpKSRAB0oPxo9uXy1ujKSNPDnox7W5L+v8O+jVuz/i8nlmlIruP2N Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="388639175"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="388639175"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 15:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="730655854"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="730655854"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 15:00:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 15:00:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 15:00:44 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 15:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DHbnsv4rWqJZ5upvSgRzlezuHnkn/dachTPjdYITGGhRus3Y1kO4YFOutHlH1eELhu0ExNK9GYBonCOb4tSme6FDXRVZYOmjHbjyha3J5xp3qYOTye3wm1JU89IcgKIklBAlwaV24RlQNzV1jicgD0YxehW1YJRjZFwc04+7L1aaNDBCHevQw7jC7EPH0tuPGnPuH7ZOAP4ylmo9K+OXQpZG4VHoirINIcnyzKaHN8yMN0msYgkvE/ul5Q3wj+JcUw5y0A8UhMfT2NETYdVociyuIm8L6pL86Y6ufG6W+4AhSSrEQ1SUTi/eo42y6JdBlCYxpQmwlcoQtrDjCmolGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/jt82boyjLZqazXMz/BO9xgiliIgTN8n+kpAOqyDAj8=;
 b=DU2llXO3lzjTAAHE5pMPgsc4R5qPVvvzZbudSiWykiLryVimGgvWsK8LDFS+dHrihLeJ8psYeBuxZLx9IyOIFmPI05bh4FgqGRPUdKdzXpDz3iFuZehg7Y61/hIGLcj/CqCx4HX4qk7ugcFWqghwiccpDqkmUxdXFB8IKLw4Wf7AbfGRusnJNPfRnDflllE1gD+b2Po6DOTUlvZLHi3ZxfRG3b/m8vlyeCKb2NowlDGqQHE4Lf87yx2oVNczhG+K0q6QNmokcYWrv3q3WPJLoyhTTk1mcuIjIIg/ZtIjZlMLpTRDpB9ywG4ldOTupV+I0Fp8wPvJGhqB7PD7AsVQiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DS0PR11MB8115.namprd11.prod.outlook.com (2603:10b6:8:12a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.37; Wed, 11 Oct
 2023 22:00:40 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 22:00:40 +0000
Message-ID: <42004fb9-271c-46f6-ae86-035f0d3230a9@intel.com>
Date: Wed, 11 Oct 2023 15:00:36 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011205259.2295032-1-jonathan.cavitt@intel.com>
 <20231011205259.2295032-4-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231011205259.2295032-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0015.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::20) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DS0PR11MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: 30692a66-93ae-4e3a-d9e0-08dbcaa581d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rPdhrAgY7deXeNxTgF0noFdTKOatkMHIeTsai2WXN/kiBmt41Sx4M4rQfd4eR6iLmRQ+vBMrvGBLt7FDRIyRiCoi+AKTjUVZslZfcI7qf9rLfFVExNsuClcL1K3QU+ljtvFIUYUI2nSDxEypLuTgZKRGyZVO8n97a6NQTH7czgYE83ZNMLplMRcQ/aQEyL8VTUcjOCYJP584oUBk3MYo5Qz3fLm6wGfSxb7jAqtLZTOq5GM1kj6jxIu7HE5F5tizRdy2SM5nHuMr3aAoZJqxqugetFxzA3zzcof3/ckksgzrXgMjkoUVTPsRtStY6eH0MK9Je0h1sEUt9EAy42ulhl3iWKjYCZgt8mJpoHcRxGW/6GaKUfLy+izV+G33gNssvoFhq1UJupz3pPIXLieEZLA5rVox5kDZG46DWng84v/mXcOY5v4x+Ec910Xi+WnVv1gVf6BfEPOOI83q5Zx3bPglUDoSsshKR66LHIQ9ud3wDAB0rNHb+CkOldFgc6w6yXdGldoUIz5trXfbD+HxG3sgBj2n6n3dFodbdswLfhRrvbVGCvvrUGx/H6mKO/GuBqvH3qdM5x0PAWXorZIbvVBRpA5LH8ehW62rvfvS4BRxp6e7seQATXpiLhAgIAugIiS2AtZ9HsqD/nd20fJK4w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(376002)(39860400002)(366004)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(53546011)(31696002)(82960400001)(38100700002)(86362001)(36756003)(31686004)(6512007)(2906002)(30864003)(478600001)(6666004)(6486002)(4326008)(8676002)(8936002)(41300700001)(6506007)(5660300002)(2616005)(83380400001)(66476007)(66946007)(316002)(26005)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0U2NzJJZ1BjMHNla0NHaGZmMmRrejNXT01ZWUk1OFV3Qnl3R0pXazBuY1Ex?=
 =?utf-8?B?ZU5CL2VUbzVMZ0ZPTWJyNXFtamw3elFYS1FBM0FlM2R4WkVQektxWFBlL2Zh?=
 =?utf-8?B?K2lHb0pSalpZVUtvSTlLMWpkREZ2S29vK0xkQktQdy9HSWlsSTlkQ012ZFhY?=
 =?utf-8?B?UmR3RHJSRjU1RnJBNXp3dXg4WHhSTXBEazdtT05tdFZqdXRsYnBEYktrNEM5?=
 =?utf-8?B?MUFjZTRNQmIvKzNLTmtUdkZhVVZrL0Y1TDk0bzRqRVY0Tm9xallBMDkyM0x5?=
 =?utf-8?B?UDdZbzdmYkltYy94SEQ3cEI3SnFmV0ZHckFERFZDVURnbnhmc2wyUjhBWnUr?=
 =?utf-8?B?WlpIdm4yeDdCU0FpakdxMlpBQ2k0REl6Z3VSckRhYkwvZ0tZVDVRdy9KcDQ2?=
 =?utf-8?B?NTMxN0g2NjRTdk0yR3c2SE14WTE2VmZzNEhDWlkrbG5wMnVzMTlrKy9DVG9Y?=
 =?utf-8?B?UGpaZG5BZ3RHdTkxc2VVQmNjaUJ6MUd1QWM5NFZWTFFoZnVvSENuSXBpTjF1?=
 =?utf-8?B?Q280RUdQbGFkTDZJM2toZ0RHSk5pc0djQytkQkp4MXZMNkJDNzg3TFptV3VG?=
 =?utf-8?B?aVNIK1NxN3JadEtObmVraE5jOThQVGwxNERXZlRGa0F6RXVUYTRhbDYzb0xo?=
 =?utf-8?B?M01qOUFwODBGZ0ZTQ3dCNzFud1N6MHNEK1Nxdkh1cmtlbVpSUGVMSDJESmhF?=
 =?utf-8?B?MjloY1RscU11N3FVYy9IWmpnUlpaTy85bVYwbXE4SnY3S1FzVG1SUVVuYm9q?=
 =?utf-8?B?dUYvK0N5aisxU0o3L29pRDNhYnJpUU0rS0wxWm00T1JoWnVJZU5aUFB3aFhR?=
 =?utf-8?B?ekprd2hJTkYyVmdFbExpbnNocFNNdnJmNUI1Sk9jVTZnRk9mT05kSzYybW1Z?=
 =?utf-8?B?bmRaZ2ZHYTczUXJscXVFamsrVjVDTUZjdjFUYlVzZDR2bno1WllyMDRqTFdJ?=
 =?utf-8?B?bXFsQVIrZzdLbktYS0hZc2E4Nnh5ZkdzUGdJbUdIL2ZHL0M1ZlA3NTlSWi9n?=
 =?utf-8?B?S0J4dDgvTXlsYXNpaFZ4WVFhV2dDZUZMT2NZYythS21ubkZwM0dHTmJGYXd2?=
 =?utf-8?B?WVJjSTRMNWhidDVkdDF5SEVKcWJUclZDVkJpMUU0MkVmcWxZRXQxNE9JMUVW?=
 =?utf-8?B?MnlBVGxkRjJmMTd1WWh4dGJ2eFcvdEwxQUZNMmZXcitqVTdvY2d4Q1oxd1lC?=
 =?utf-8?B?QkpKdC9jOG16cmphcUlCeUI2Z0pISlBzUzErcnFrb1Bua28wTHpTbkFvekZz?=
 =?utf-8?B?OVhocnpZQkR2Ni83QXp0N28rMEMxaHlzQm5sSW5EbTdoYUV2WXprM3Q3MEJl?=
 =?utf-8?B?TjQzUFNWS01BWWRkLzJZV3lPS3ZuUEJUZmlBTC94dGN0T08xeEFPekw1ekpa?=
 =?utf-8?B?Wm1RUFRpWGVhZ1BZTWUxTzQvVjNUNytQVUZpSFZNeXI3K2cvV1hFK2FyTDcv?=
 =?utf-8?B?d0d1ZGdMeU5xNG1SU2ttaDI0KzFUKy9Ka1FuSTVEdmYyNjQ2QmZPdXV2UE5y?=
 =?utf-8?B?SUt1ZUhiSDY0ZEhEVTBJS2dIUnpFRmdoWjhzd3N1MFIzdm9lYjBPUkttM29p?=
 =?utf-8?B?Z0tsMUJxajRYY2hRWUJKcEc5NUdVZHI4SlQzb0Z2SWlDejB5N0tHMXM5djhu?=
 =?utf-8?B?bm1wOGdDeDJRcmRBMklhWmVTSUY4ZFhZL0VNeVJZRVRpd2lWek9GNUlodjBS?=
 =?utf-8?B?OUNEVzk5YWZxSzdPeTRPNVFKd0dWMjk5TWpHMFdOWlR3Zks2YUhWZGlFN1FI?=
 =?utf-8?B?LzJPWUxoZ2RCZkxjRWs3OWJISFp1eHowcEtmK2syRWV6L2V4VE5HTFlxZTV2?=
 =?utf-8?B?aDhwLzN4ajBzdmEwNVlmY3ZNUUFGbUlkSFpIelZKRjA0L0dTMWxWQVZac1h2?=
 =?utf-8?B?WDRqcUxZMmR1TmF1S2NPYW9aT29YdE56M3BPQy80UUZGQWF1Nlh6OUZUTVV4?=
 =?utf-8?B?cmtiTzlFcG54Q0tMa1dQcDFqcnE1K09BMS9yL2p3UmR3Ymw1M1hvK2hjWWVs?=
 =?utf-8?B?WlExUUdwcFdnVGRaUUcyNUZoYkhsakt4MWVwVXRmbXlZaGQrb1pPTXhOVTIz?=
 =?utf-8?B?eDdrRzQ0d00zcFhrSkFOZzBMOEFRbmpNQzFUVUM1UTJUQ3FNdTdrUzZaNXZ2?=
 =?utf-8?B?T1hqQUk0VDNjekdud0lPMHRaUFQyajVjK1MweWgwR1lDVktlamQ4Q05LMnor?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30692a66-93ae-4e3a-d9e0-08dbcaa581d9
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 22:00:40.1750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MeOs3Nr4K6u2Gv94/CmajfM1A//DPpBooiQ6oIiDbWycj2XFHcXkmHHfkiQJuo1n3CcdlE5sPR7tQkMNf+bmoJo9kpy9dN0V4VdITagBG5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8115
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v12 3/7] drm/i915: Define and use GuC and
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

On 10/11/2023 13:52, Jonathan Cavitt wrote:
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
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  33 ++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  16 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  11 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 191 +++++++++++++++++-
>   7 files changed, 295 insertions(+), 12 deletions(-)
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
Is the logic here correct for the case of a MTL prior to GuC start / 
during reset?

Specifically, on a device where HAS_ is not set (i.e. not MTL) then all 
TLB invals will call gen8_ggtt_invalidate() followed by a direct poke of 
either GEN8_GTCR or GEN12_GUC_TLB_INV_CR as appropriate. But on MTL 
during GuC downtime, only the register poke happens. The call to 
gen8_ggtt_invalidate() is skipped. Is that correct? Or am I just 
mis-reading the diffs?


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
> index 2cce5ec1ff00d..cf145e5c4e632 100644
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
> @@ -1826,6 +1828,15 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 */
> +	xa_lock_irq(&guc->tlb_lookup);
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);
> +	xa_unlock_irq(&guc->tlb_lookup);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1959,54 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
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
> @@ -1966,11 +2025,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
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
> @@ -1979,9 +2042,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
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
> @@ -1994,6 +2058,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4689,128 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
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
> +	wait_wake_outstanding_tlb_g2h(guc, payload[0]);
Just noticed that this is missing the 'if (len < 1) return -EPROTO;' 
check. It still needs that. The upper level makes sure the pre-amble is 
correct and provides direct access to the payload but it makes no 
guarantees about the payload itself. That is down to the individual 
message handler to know how big their minimum data size is.

Apologies for not spotting that on the previous version.

John.


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

