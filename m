Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84EC7BB03A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 04:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F40710E4B2;
	Fri,  6 Oct 2023 02:19:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FBB110E4B1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 02:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696558764; x=1728094764;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=97NNIG47DD+cW6baAqMox+RExFdurqkrol5fdDYblSs=;
 b=Q9ydTUPIKrp+0CDtzZC7sNyXI8uwDnkffJpIiDK+hcechjS0W6iLbncB
 +TG9HwXfLoOiD4IFJmFuhSSNFcZ7ubvkQEqpUD+lX91xNmrJyYWVbHYB0
 cqWIQX4UJ2QJvm5qnnLIgmPmC+BWovip8jRhxwC/n3pw+0288DS2sUf60
 XAmI3s46j7BbHTsCiXKWKrABuQhVkO7m4DJciHmR+kdYCGqtJ7KZtiG88
 E/As0sy/r8++SIrYNFWPeE5wNeHfZQn1EcfNwIhlK/yqiEmZf+MnQZ5Tg
 v11APL3ZUBe602LWj/jhA7L6c8ZHqRxvbxStLqyIQ1Z2m1B/M0SB4JGF/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="368743173"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="368743173"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 19:19:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="728676656"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="728676656"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 19:19:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 19:19:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 19:19:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 19:19:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 19:19:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LroVDsMWfmXUbFGV9FAVcZYRUcvE6Zo4ZfOFYgzt8jtX5MZezQf2ZV/9vx1LPA+o/YWMmguyBIkr9MkkrMcLPkda9ncm9t9GkCsJgv/v2TORpy/AexLQAxEHoVM3QUrdggwOGZhJ17RL68X9joQx6q2+cS1khBQA1ziJGxavyMHQZvhDEon8zDmeQeMIMrFAGwsyvWVRRzMwCg32kzpXcdOIFMNWN6BGJrZWfgmIfLB090USm+sFOq2JEcDfeq9IEl/JL6zGDlkasbFcWln+919Y9L99ev5DniJFyJe/rYAZ39mp4UK+yiORzdxxFrcwe3y9npnDgVRbqYZcqy4izQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1sgck/UAOvLjO/TOVptXpYR6fqXwWICE7lUl4YjR/nU=;
 b=A+e27NVa3upEwPrLsj85RmEermsazf0gamOwnb8WCG/Aiypa+e6gqIWe8rnqiiMSUeH5cYzR/ul+hFkHl6Pb1HBw1sZ2qdp/L72OGMGR68PTPpDzHltZhbt/gWSQ2qqWSDBzQ+drJ11oN9AObPwvYI7FxF7ffZwC1LEoBF6aOZArDo68LFVInf98cEIcjXc4QUmM9Bm7Ph5EK2yN2RLhEqJFLYzAmrVhURfBmClRjqqC4HPH/geNpnP6Pb0nfNUnlqiJi773FhabbeYj3760f2XJzqdueqx6S7IgVK8BPNaXucwg/FFlU9jh7n3dGIRv1gA1Rx/F/P4wMDeelxO2nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ0PR11MB7153.namprd11.prod.outlook.com (2603:10b6:a03:48d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Fri, 6 Oct
 2023 02:19:20 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 02:19:20 +0000
Message-ID: <46b4e64d-db0c-9d96-7cd6-11c930a8c84f@intel.com>
Date: Thu, 5 Oct 2023 19:19:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-4-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231005193536.1463159-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0047.namprd04.prod.outlook.com
 (2603:10b6:303:6a::22) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SJ0PR11MB7153:EE_
X-MS-Office365-Filtering-Correlation-Id: 43067601-e030-43ff-4318-08dbc612a623
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GN1tsOJZ+3sLN3MLwA6mcIqgebxrFMi0XFkF/2o3WcBFPyUDJoGMCfBAP7h4yDEfmWgCbg6tkDiSC5N2aY21NFfXDJjeK/t6RHUwYdfuAa7iqZjkz47Ihq6Hc0HlopYMn6JfalGFk4e2pU5iS4lsaGaxgzfmfcIXfal4xpLr+8c5xX5Xk/bNPXRSShfUlbp+3pcJHx97KbVsEbet05FJKQSVpR+3RT05S6Qm9J932sH7MraiNySx7kxBhxFRA1aQ/F7yByP3e8lHM6BjWIITDDi1a4eV13vKTYNus9XWJPhK0d/Vj4NxJHhAN7f/JJORwKthHOSV/61puTP7Tu5tAIsbWwdYIwaxTxOjozgE1AkCSrGEhPW+mhKo1o+tqCwg/Gl70h4x3QJwFcIMUgJMU1UEcBcqd5l6vD1MTt8COukCnA1tJkWwPQxh2xmzEWjEcinzX43bBW9/1cqcmohuWsaLjM5sI07hhjkDR4md20a6NlDJIetGI1reaSFBF4qgdyWD6CkoqtWu+vie3hZYRQfR8T1Df4B5r4s7FzHp7ZIO17qStHbzM8mllyKUQKRjEkspny7Uq8l0m7n9QL1JwlqT23k3LJQ+Jw2mwxpIoEeaZeV0IwAZIOe5XHheUAw/YCyF6+9qRDAIR1E/y0kiQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(346002)(366004)(136003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(30864003)(31686004)(2906002)(8936002)(8676002)(5660300002)(4326008)(66946007)(41300700001)(316002)(2616005)(66556008)(66476007)(36756003)(6666004)(6506007)(6512007)(26005)(53546011)(82960400001)(83380400001)(31696002)(86362001)(38100700002)(6486002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjVZYkZtTWNPQkFCWjdsWThWUG1NUzdkRE1ZQ2xNL0ZiRFdualJMZVR5VEhK?=
 =?utf-8?B?aGp1VE1KRjR4Y2xmSDBQYy9xaktYYmY1cXFUdE9tcmFHekJQZlNpdFc3eFpl?=
 =?utf-8?B?RURCRmFSMGgxOXUwZ3V1ZGJ1YldFNHBkVjZrUVc3cmx2YzdhMktWTFpLWjBz?=
 =?utf-8?B?S3JnUlZZeGtWd1QrSVBFdU9PY3E0c05jSWxXYnl1d0NpSFQ4Q2tkZldjeW5C?=
 =?utf-8?B?UkwrdzBXdHJiTUdTMi9sdDY1V1BtZlhvWVdHM2QzYU55WjNocWVwY0xyOWk3?=
 =?utf-8?B?Wm04azJuQjNUOHJYbnNJbDRZZjgvbnFNKy9Mamtkb3dtZEFlc3dTMW1ubWxk?=
 =?utf-8?B?VDMxdVY4cnF6Zi9tZFdFOEt0bFlDWmRDZ0RPdTFKczJQd0pUV3EzNWE2RDls?=
 =?utf-8?B?OTVCQkljS0hoL0s0RllYZTlWck1hK3FLcWJYNTlpZUU0MnFCOVJueE9xSENG?=
 =?utf-8?B?dW5ZUHMxNGZZSXBXVElhclZEQlphMThrWTZhQUlBUHZGcXZYSXM0T3NtVStr?=
 =?utf-8?B?OXNXK2t3OUNzQ2xmWXJwNWd1L0IzVTlXU2lodDM2Q1dVeXVqOHRUZDR5cTVj?=
 =?utf-8?B?MEN4UWFKYzQ2bUN6anVFVWVzOUd2UHBFUlVIcWw0RWpDeVNtd2xzVTAxR0Ux?=
 =?utf-8?B?NkJvTHlrN2dCSDh1empSWWpleVR4bFdYWDhpRWUvd0JMZE5rSXgvVXkwbm14?=
 =?utf-8?B?R3dObk5JbElINmFKdkpGWnNKcllucVY2ekt3cXdlNTl3ekJaMjNCSHZYTllV?=
 =?utf-8?B?R09TTmYzVUUreC9HaUhkcDlOck5yTVppdFpHdW94YmV5bkEzcmR4WEF3OGpJ?=
 =?utf-8?B?VTVFbHhrMmpHRlFlMWc4Z0IzVUpWRWxiRFlUYkhrSURwUHV2N3VscEdmODYw?=
 =?utf-8?B?UlB4aytlT25tc3lldEl1U0Vpb1ljQmRzYmFUYVBlMVFzZXRpRnQxeHB0bGYx?=
 =?utf-8?B?Q2IwQVpxbWdTVm5LZ3ZGeCtsZlJidTNRKzVyL2Y5T3RxaVlzN0JCN1hLc05U?=
 =?utf-8?B?cEI0UEZPckRqd01CYW5PYWVqMVpLYVZ2NzhtTitxN3JGa08xa090ZzNpcWVj?=
 =?utf-8?B?NVpMZjVhV0QrTVY5cm0rR1BmZ0hva2tRby8vKy9scnNyYUo2SlUveHNQejY4?=
 =?utf-8?B?RTEwZmFDcHNEbDBhZWxJK1kvYjRuWW1QWi9Bd3Jpc0E4WHF0R01SUFpRYkh2?=
 =?utf-8?B?S3hrY2tWU2EvalJRaXQxZUV6L3kyTlYwVUpERXBHZFZNZzZYWjBDWjlLTlpU?=
 =?utf-8?B?cXlvWU92UDN6RWVNdlpEbllONXl4dnRITkVTTnNWQkZmbFZQcUEySzkvVStZ?=
 =?utf-8?B?MW1nRkc1emF6VmxwMjhST21xaVNkbjcxT0llTEF6SUE2UlV2K0xxUHUremZk?=
 =?utf-8?B?dkJIVDBJUEZVUjhYdGwrOHRQdlRrYVhmTkczdS85MFdtaS9vaGIxRmFNTGEw?=
 =?utf-8?B?ZHFhRlhtV2NBVkZtNVJ1c1hGam9lc0ViZE50bllHb00wWXVpLzlMN1VGTTJG?=
 =?utf-8?B?NDgyMU05aHdSRkE4bVdQVGM3Tkx6a1VOWFdGaHpTS3JNYnBVUFp0Y0tDcHZo?=
 =?utf-8?B?TUkzOHRjN2UveEx6MFBXUklmamQyYXRxWHZqeXN2aVdpY3BQUVZqTVNyR0wv?=
 =?utf-8?B?REV4QnZzWW5NS05ZWEZWcEJFc1lONEdzUnRVTXl6bDA5UFVpQnVFNUlQYVJU?=
 =?utf-8?B?WWlzUnhxeGtuT0hNb3ZEU0Ewa1hobHRiZjkyKzkyOTYzUEd1VTdvaWJzWnNQ?=
 =?utf-8?B?bm5LNzdVZzNoTVRnbEJBaFp2YkRyVTdZcVlSd29jaVh0TC9oYjQyckd3dkVM?=
 =?utf-8?B?bHllZUlIQzRNVG9reGgySU90VVlLT3JSR2xWV0tlMHRLaHFUMk9pR2d4VHJo?=
 =?utf-8?B?YXBPV3VRRGRUMnlXTnVwVFBIczRRVkMzbVVQTVk3TkQrams1RVIrNEcvREpi?=
 =?utf-8?B?eWtsOCs5dzI3Q0Ztcy9IQnhGRFZOT2FMZDNPMGRpNEU3cXBFNEpwcVFGeDBi?=
 =?utf-8?B?dDdsTmwrYmcycHhaaCsxdWh0anJYWWt2bGlvTm9KTnllTzNwbTZZbzM4bkJ1?=
 =?utf-8?B?aWNmK2N4S0d6QWpvaTlxZCtLcjN4MERZWlYzdjgzSVE4VHdYSElHaVQxR3FR?=
 =?utf-8?B?SXVCY0NvOWdCV2tzeXNUd0xaR1VwOWQrV2lmYlhZUjVkY3NaN3o3RHB6MVdu?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43067601-e030-43ff-4318-08dbc612a623
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 02:19:20.4163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++Aai0gLSZMqkHUY70T0QNrcseg0/9NMCpoM33Vq1R8W+zJ7JwI7MOWR4fZ1xm+9rXPsvWnwXc1SJ5l5cVed0MnL1U/Evb7aPhyQGPgXOrA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7153
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/5] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/5/2023 12:35, Jonathan Cavitt wrote:
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
> The tlb_lookup table is allocated as an xarray because the set of
> pending TLB invalidations may have no upper bound.  The consequence of
> this is that all actions interfacing with this table need to use the
> xarray functions, such as xa_alloc_cyclic_irq for array insertion.
>
> With this new invalidation routine, we can perform GuC-based GGTT
> invalidations.  GuC-based GGTT invalidation is incompatible with
> MMIO invalidation so we should not perform MMIO invalidation when
> GuC-based GGTT invalidation is expected.
>
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  14 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 211 +++++++++++++++++-
>   7 files changed, 307 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 4d7d88b92632b..18f23f27f1572 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
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
> +		intel_guc_invalidate_tlb(guc);
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
> +		if (HAS_GUC_TLB_INVALIDATION(i915) &&
> +		    intel_guc_is_ready(&gt->uc.guc)) {
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
> @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>   		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>   	}
>   
> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>   		ggtt->invalidate = guc_ggtt_invalidate;
>   	else
>   		ggtt->invalidate = gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index 139608c30d978..a84563c178bc6 100644
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
> @@ -131,11 +132,22 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
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
> +			 * Otherwise, skip invalidation altogeter.
Typo.

But is skipping the correct option? Not doing a necessary invalidation 
sounds like a bad idea.

> +			 */
> +			if (intel_guc_is_ready(guc))
> +				intel_guc_invalidate_tlb_full(guc);
> +		} else {
> +			mmio_invalidate_full(gt);
> +		}
>   
>   		write_seqcount_invalidate(&gt->tlb.seqno);
>   unlock:
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b..9dff8012d5e76 100644
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
> +	INTEL_GUC_TLB_INVAL_FULL = 0x0,
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
> index 6c392bad29c19..d7203ba88b0c0 100644
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
> +	/** @next_seqno: the next id (sequence no.) to allocate. */
> +	u32 next_seqno;
> +
>   	/** @interrupts: pointers to GuC interrupt-managing functions. */
>   	struct {
>   		bool enabled;
> @@ -296,6 +308,11 @@ struct intel_guc {
>   #define MAKE_GUC_VER_STRUCT(ver)	MAKE_GUC_VER((ver).major, (ver).minor, (ver).patch)
>   #define GUC_SUBMIT_VER(guc)		MAKE_GUC_VER_STRUCT((guc)->submission_version)
>   
> +struct intel_guc_tlb_wait {
> +	struct wait_queue_head wq;
> +	bool busy;
> +};
> +
>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>   {
>   	return container_of(log, struct intel_guc, log);
> @@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct intel_guc *guc)
>   	return intel_uc_fw_is_supported(&guc->fw);
>   }
>   
> +int intel_guc_invalidate_tlb_full(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb(struct intel_guc *guc);
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 *hxg,
> +				    u32 size);
> +
>   static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>   {
>   	return intel_uc_fw_is_enabled(&guc->fw);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 6e22af31513a5..37b76f9650d04 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1115,6 +1115,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>   		ret = intel_guc_crash_process_msg(guc, action);
>   		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret = intel_guc_tlb_invalidation_done(ct_to_guc(ct), hxg, request->size);
'guc' is already locally cached, no need to re-evaluate it.

Also, convention for all the notification calls in this function is to 
only pass the payload rather than the raw H2G buffer.

> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> @@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
>   	switch (action) {
>   	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>   	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>   		g2h_release_space(ct, request->size);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index b4d56eccfb1f0..a7c9874e122a3 100644
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
> index 2cce5ec1ff00d..7b484d1573f16 100644
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
> @@ -1826,6 +1828,14 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 */
> +	xa_for_each(&guc->tlb_lookup, i, wait) {
> +		wake_up(&wait->wq);
> +	}
I'm surprised checkpatch didn't complain about unnecessary braces here.

>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1958,49 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>   static void destroyed_worker_func(struct work_struct *w);
>   static void reset_fail_worker_func(struct work_struct *w);
>   
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
> +	if (err == -ENOMEM) {
> +		kfree(wait);
> +		return err;
> +	}
What about any other error? Even if xa_alloc... is currently defined as 
not returning anything other than zero or ENOMEM, it is bad practice to 
assume that it can never produce any other error.

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
> +	if (wait) {
> +		GEM_BUG_ON(wait->busy);
Why a BUG_ON? Why does the kernel need to explode if a wait was 
outstanding? Why not just print an error message?

> +		kfree(wait);
> +	}
> +
> +	xa_destroy(&guc->tlb_lookup);
> +}
> +
>   /*
>    * Set up the memory resources to be shared with the GuC (via the GGTT)
>    * at firmware loading time.
> @@ -1966,11 +2019,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
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
> @@ -1979,9 +2036,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
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
> @@ -1994,6 +2052,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4683,154 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
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
> +	/* We received a response after the waiting task did exit with a timeout */
This statement only refers to the else clause with already says the same 
thing in a debug print.

> +	if (wait)
> +		wake_up(&wait->wq);
> +	else
> +		drm_dbg(&guc_to_gt(guc)->i915->drm,
> +			"Stale TLB invalidation response with seqno %d\n", seqno);
This should be a guc_dbg().

> +
> +	xa_unlock_irqrestore(&guc->tlb_lookup, flags);
> +}
> +
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, const u32 *hxg, u32 size)
> +{
> +	u32 seqno, hxg_len, len;
> +
> +	hxg_len = size - GUC_CTB_MSG_MIN_LEN;
> +	len = hxg_len - GUC_HXG_MSG_MIN_LEN;
These calulations are already done for you in ct_process_request(). You 
just need to pass in the correct variables as commented above.

> +
> +	/* Check for underflow */
> +	if (unlikely(len < 1 || len > size))
> +		return -EPROTO;
> +
> +	seqno = hxg[GUC_HXG_MSG_MIN_LEN];
And this would simply be "seqno = payload[0]";

> +	wait_wake_outstanding_tlb_g2h(guc, seqno);
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
> +	 * complete the wait from the HW .
> +	 *
> +	 * A second problem is that since we are called under reclaim
> +	 * and wait_woken() inspected the thread state, it makes an invalid
> +	 * assumption that all PF_KTHREAD tasks have set_kthread_struct()
> +	 * called upon them, and will trigger a GPF in is_kthread_should_stop().
> +	 */
> +	do {
> +		set_current_state(TASK_UNINTERRUPTIBLE);
> +		if (wq_entry->flags & WQ_FLAG_WOKEN)
> +			break;
> +
> +		timeout = schedule_timeout(timeout);
> +	} while (timeout);
> +	__set_current_state(TASK_RUNNING);
> +
> +	/* See wait_woken() and woken_wake_function() */
> +	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
> +
> +	return timeout;
> +}
> +
> +static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 type)
> +{
> +	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
> +	struct intel_gt *gt = guc_to_gt(guc);
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
> +	if (!intel_guc_ct_enabled(&guc->ct))
> +		return -EINVAL;
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
> +	err = intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDATE_TLB, true);
> +	if (err)
> +		goto out;
> +
> +	/*
> +	 * GuC has a timeout of 1ms for a TLB invalidation response from GAM.  On a
> +	 * timeout GuC drops the request and has no mechanism to notify the host about
> +	 * the timeout.  There is also no mechanism for determining the number of
> +	 * outstanding requests in the CT buffer.  Ergo, keep a larger timeout that accounts
> +	 * for this individual timeout and the max number of outstanding requests that
> +	 * can be queued in CT buffer.
> +	 */
> +#define OUTSTANDING_GUC_TIMEOUT_PERIOD  (HZ * 2)
As per earlier review comments, it would be better to have a helper 
function in intel_guc_ct.h that returns the timeout. It could initially 
just be a hard coded number with a plan to improve later by making it 
dependent upon the CT buffer size. At the very least, the define should 
be in the CT header. It is not in any way related to the TLB 
invalidation process. Unless you want to do something like "min(1ms, 
guc_max_h2G_latency())".


> +	if (!must_wait_woken(&wait, OUTSTANDING_GUC_TIMEOUT_PERIOD)) {
> +		gt_err(gt,
> +		       "TLB invalidation response timed out for seqno %u\n", seqno);
This should also be a guc_err() rather than gt_err().

John.

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
> +/* Full TLB invalidation */
> +int intel_guc_invalidate_tlb_full(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_FULL);
> +}
> +
> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
> +int intel_guc_invalidate_tlb(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
> +}
> +
>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>   					  const u32 *msg,
>   					  u32 len)

