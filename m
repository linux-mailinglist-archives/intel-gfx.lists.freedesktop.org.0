Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E9642CFCA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 03:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4816E11E;
	Thu, 14 Oct 2021 01:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B7A46E11A;
 Thu, 14 Oct 2021 01:02:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="208372687"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="208372687"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 18:02:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="592391572"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 13 Oct 2021 18:02:48 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 18:02:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 18:02:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 13 Oct 2021 18:02:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 13 Oct 2021 18:02:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UwhAo5Jv1Xxsizi3JEYcJldhSPzpdQLONaQibN8APRqboW5FXIB3wcreortAKe9tCSrWeKWdGdXmiKKgQf0QN0HHIEFq/RajMaAtK5rJlAvCtMfuQ5W3WFvhcLn88sYgTVc08Rme0lidySVXCZ6bG2GeqWThkTSNIU4ZVFM+PuGQvyk2Vpzt0sAQJJXQJN4/k7A74qNz0P2G1XJyR5WCBzTbu83PEwwuY+kFuI8sVOA9aRlefpb4psN9brysGyFvIzUxXu4HrJJh1qyZTsLVzBRmfdONerrt4M5etq/m0hhI1mTt94dEuIv3zEkDHjf3hF66iJN3/Y6zcjcA0qoZVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hRKRdkPRqJNvGFmDedgta4hegeakYFPyIW0HOQ6QEnw=;
 b=h3euukKpvi+1dMGwzYNvMww7ArS9At/X/9iB8eUQ8dcWKkhkPx+wn24JqAb3jWZdznaggPgSgR3R/p2zewzAZ1N+XN3wKUe+cLvb2lr6C0vhno/gg8SPwuQEhC+uU75cW8IiuNaQahxI2hiknnV51Ybg5vtWPuWtwuuiPUOOgK5UVnL19zetfsIru7MjiHgEs8LZZTLMZUTJXGlvX+tleL7Fa0+Vo2TSt07EGzHVqdM5fC3on2vToKmOl1bUMdutOAHZVIOjnG6hX3dX/S1Co/jsaDEPDC0MjRY3mwV03yKGNWlNFRn23C0zR68oey9qBAMEDvwEKsRcNf0gDcsjSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hRKRdkPRqJNvGFmDedgta4hegeakYFPyIW0HOQ6QEnw=;
 b=vfdtS0/KE0tBH1xag4k+BCJxKIo+QZEI1HfCQCwaSmyOJSsj4URvcJAilN5F4ktpK7IS4uLmofyXgIdDSt73y3cG54GrfjqnwtcU13TCYIrRZ9djykBMuKXRR/MOP6giHRK0qWFf66CjFlJq5+zMUb7hK5PTzZ4T1il8PzbBMSA=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5595.namprd11.prod.outlook.com (2603:10b6:510:e5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Thu, 14 Oct
 2021 01:02:45 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a%8]) with mapi id 15.20.4587.026; Thu, 14 Oct 2021
 01:02:45 +0000
To: Matthew Brost <matthew.brost@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20211013204231.19287-1-matthew.brost@intel.com>
 <20211013204231.19287-17-matthew.brost@intel.com>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <83bd3cc3-e1c9-3d6b-f089-38edecf05ca8@intel.com>
Date: Wed, 13 Oct 2021 18:02:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <20211013204231.19287-17-matthew.brost@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: MW2PR2101CA0003.namprd21.prod.outlook.com
 (2603:10b6:302:1::16) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MW2PR2101CA0003.namprd21.prod.outlook.com (2603:10b6:302:1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.3 via Frontend
 Transport; Thu, 14 Oct 2021 01:02:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 49a96fdb-e6d6-4fa7-7209-08d98eae551c
X-MS-TrafficTypeDiagnostic: PH0PR11MB5595:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB5595485E5B5BEDE1C1356C8CBDB89@PH0PR11MB5595.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mOfZrl3QOVgR9a26Ro0nRzKPOUWkHsPSJ3Ty7DWKw/NNtJTlzVKiOUQijPuKXORmkOWsn3uhtcdNgPbpSr2W3hYE8y1A5ZzyaCjAoCy5bShVM35XFB31s2ViCkBQ3CtHImPmrOgaM9n/cRoxLJo3BbQ0PGVktLgnjVk8k+z6jfgmhJ6bR7B+kLc701VLQ8dgQgnBIfd2Ysn/TH3J4W+ppkbU7pqUoG2hm49ajoKOSToOYkkP/aax9bm77Cf95uRL9+XWsW4ur/7Lf3oe9iitGRFYw43oZYIlFRaCOj7h+LjjPBOYjvHbywPizWUkJya2l3lfq2YPKSyoJSqATjupf/p8XDOB9JcwIZPUSW8eNeJ/wuIxEsjhGDzKabQjRHp96rjUtCey+V98bLUZEr/x+ykuRxJPrN8VTWN7exjYy/HTqagjT9tesMb+ne/e6VkPqTdJ8O1qtKnh0BQt9hg0F2uxEapEBFS++4Ak3vgeykFcql9mUDJnkZRSHuhF32JJ7d8VqhpwdHYJKrxYGT6JfKve/OfTgCWLFoqahbMPSPT86esN04K2J9Rti+5zTZ1spnwKu7GfV387my8Hfg0VCRDgEMR6K9a8MQkkWE673uBatM4qNcg8KPfov7r83jrQilk15rIMF0L5PTv/lkD6Qi1gGQjfzfFALvv5ITQ/7vVyPySXUVGbTY1RpUOERAVZINNkBcIvXrPrRV9/RtUCuEl5S6pMweVVHFhY6p6IXq1U4b/CYsvORWjeRLKTipKLQhJHPiA9pVgnlMWA1uS9Ghuctqyso5OGcgol2siIiqh0mX0RR8JDVetBSmJ2bVehHbTVuZMptoJKtf7ICnUVCohxa4lvLOqlHh0aNqJNbMg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(36756003)(66556008)(66476007)(66946007)(966005)(450100002)(6486002)(31686004)(26005)(186003)(82960400001)(53546011)(508600001)(2906002)(956004)(5660300002)(31696002)(8676002)(83380400001)(2616005)(30864003)(8936002)(86362001)(316002)(6666004)(16576012)(21314003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3pxUGl0ZDB0Y0Y3QUZxV3NWekxtMlJPZUs3WEJNOU1uc3pKeGg3UC9yK3Yy?=
 =?utf-8?B?OVh5aWpYd1hGUVJGUnlydzRZNitGYWN6cEFqQk5Xb2QzS1VnMUhOWWUveGFq?=
 =?utf-8?B?RWNKUTJHWS9VclVueDBmb2hEOGJJKzlBS1ZyL2t3R0JidDRCQ1pFZGFiOE9D?=
 =?utf-8?B?MDN0WEhzb2Nra0gzNFh2dFpPQm4zc3d5ZDdCTlAwRkxONHV1S3QvVTVEdm80?=
 =?utf-8?B?OG5LRUZqSklUUk5NeGxMdk5sTXQ4WVVnQTBjWUZibmpsQ05VbXNnWlF4aTJt?=
 =?utf-8?B?MHVYbmJmUFFKTm8wZC9wdjZjMjhLT2Z3RE1TREdYNld6OFpLL1A4T0Vjb28z?=
 =?utf-8?B?NkRJQ2lMdEd3WUo1Vzg0RWNZVmdSRWVudjlUOEVoZzNobzYrVHpaeDltUHFx?=
 =?utf-8?B?RXl2MGlrc1oyNThWZm96YXB2SThNM1NYa3lVTzhINDBYYU11M1paVi9QbUh1?=
 =?utf-8?B?bkVFNWVmZVd1QXJOOEtiVDZJM082K0t5SHNBTHFUM2xhc244ZzVrNEFLWW5T?=
 =?utf-8?B?T1FYWnE4RHhjWkpmeWlrcGh5TUZLQW5LZUprSk9Pc2EzZFFSeWV5eFlCeFFS?=
 =?utf-8?B?S2d5c3B6dURLN0lCeFJyRDFWeGJUNk1nRVV0RjkvYmFrWVdHd1phN0VzWVZw?=
 =?utf-8?B?NTlQSHRBdExsK0FVbTFiUXg0eTJ3M1ViTVBreWNNcDBTTExYRGJLTHZHQXV3?=
 =?utf-8?B?SzNBRi9UR1ZOUGY1VG9GS2U4UVB0U0VhZHFaMFcxTlAxSE93MGFwY3p4bnVD?=
 =?utf-8?B?c0VaMVlicllzai90eFd1WENNamwrb1FZdEVwaU1nUnRXamF5ekxJVHRwOVpO?=
 =?utf-8?B?VDZGQ0d0V25SNDlzNkdmaW5DUDN4WWJ2MnFyMGYvV1NrSUVUcnFmYUgyeUEz?=
 =?utf-8?B?SjBEUWZab3dRYXVaQnlFemNYbG4wcUZBWENYK0Vad1RONjJQTlhyM1VDdWJq?=
 =?utf-8?B?OFdNUHMxZUtBRFhNUFhuTDZJNjdLWFo1bTFybUdMNlVlOXJSMGhYaVBNQXlY?=
 =?utf-8?B?UVdxdkNYalFDRVo5emV0RFd3SUZMMlVJYURuTXd3Vk5ISXhZMU9pTzZSRWQ3?=
 =?utf-8?B?aFAvWnlqQkJOZXlNR0NIOG4vTm12SndGOWtuRUFLNUxNbWMzYXBwbHI1enhG?=
 =?utf-8?B?YU9qU1FYMDNRZVA2UlEwalJPMzBOS1U3c2paZ2d2N2g4aDFUNGQ2bGs2ZjRk?=
 =?utf-8?B?VlVqaHR2c1NJaU9wbHMwM01jVW8zMVZyV0UzUVNTbHFFMlpEanFLRElENjEv?=
 =?utf-8?B?US8vNFhuY2dqcjdpSWljQzkzVHZTZmNwZTdSUUx2aEhkSzZaQzBic2xseFVJ?=
 =?utf-8?B?QW9USTNWY0g5UW4zTUY3ejhydkdSWko1K256WTNBNVR5QmFKL1Q0bXFjL1lY?=
 =?utf-8?B?aWtMUVB4MnA5QVFEenZWbWh2YmhOMER5S1k0a2ZBR1RSYlNmU3hMUjluNTFC?=
 =?utf-8?B?KzdWMlZ1ckw1TytaMnFoU3VKRE9yVTNtb0kzRkRvMjFaSzYxdm4xdWhJQ3ZC?=
 =?utf-8?B?aStreG12MnZ6Wm9pclNCOVh2eHhNTVJwdFlDZGhCWjZNRElHTlUzZ1MzaUZn?=
 =?utf-8?B?RzFDeDB4OFFFR1U1c1dPUlE5ZTlsd1llQk0xMEgyUmg1dk42cUpxVVJwRWhi?=
 =?utf-8?B?WktoSDJKZVM1VmN1MGo0aE9UTEQxZC8xU0h1dnpqY1JLL0lNSFd3L2FFWkIx?=
 =?utf-8?B?ZmplMGtVbGJOamxWZlZxY2toQ1E5eWZmeUxmVFdSZ3ZVdlJkOXdpRGQrWU15?=
 =?utf-8?Q?wgtTrSWtVBpXs3ylqB2sm2OfG1BuGyyuCGjchW6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49a96fdb-e6d6-4fa7-7209-08d98eae551c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 01:02:45.4500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zttKmaPdpeDFwWi5XJY4ggAt3KEqBnHIqQat6ODsTkvGyZMxVBMcPrQA4yl6a7uYNSRNN22yypQk4Leb1q+eigEbbms6V8W2veMGfipeYzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5595
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 16/25] drm/i915/guc: Connect UAPI to GuC
 multi-lrc interface
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

On 10/13/2021 13:42, Matthew Brost wrote:
> Introduce 'set parallel submit' extension to connect UAPI to GuC
> multi-lrc interface. Kernel doc in new uAPI should explain it all.
>
> IGT: https://patchwork.freedesktop.org/patch/447008/?series=93071&rev=1
> media UMD: https://github.com/intel/media-driver/pull/1252
>
> v2:
>   (Daniel Vetter)
>    - Add IGT link and placeholder for media UMD link
> v3:
>   (Kernel test robot)
>    - Fix warning in unpin engines call
>   (John Harrison)
>    - Reword a bunch of the kernel doc
> v4:
>   (John Harrison)
>    - Add comment why perma-pin is done after setting gem context
>    - Update some comments / docs for proto contexts
>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 228 +++++++++++++++++-
>   .../gpu/drm/i915/gem/i915_gem_context_types.h |  16 +-
>   drivers/gpu/drm/i915/gt/intel_context_types.h |   9 +-
>   drivers/gpu/drm/i915/gt/intel_engine.h        |  12 +-
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   6 +-
>   .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
>   drivers/gpu/drm/i915/gt/selftest_execlists.c  |  12 +-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 114 ++++++++-
>   include/uapi/drm/i915_drm.h                   | 131 ++++++++++
>   9 files changed, 503 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index d225d3dd0b40..6f23aff6e642 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -556,9 +556,150 @@ set_proto_ctx_engines_bond(struct i915_user_extension __user *base, void *data)
>   	return 0;
>   }
>   
> +static int
> +set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
> +				      void *data)
> +{
> +	struct i915_context_engines_parallel_submit __user *ext =
> +		container_of_user(base, typeof(*ext), base);
> +	const struct set_proto_ctx_engines *set = data;
> +	struct drm_i915_private *i915 = set->i915;
> +	u64 flags;
> +	int err = 0, n, i, j;
> +	u16 slot, width, num_siblings;
> +	struct intel_engine_cs **siblings = NULL;
> +	intel_engine_mask_t prev_mask;
> +
> +	/* Disabling for now */
> +	return -ENODEV;
> +
> +	/* FIXME: This is NIY for execlists */
> +	if (!(intel_uc_uses_guc_submission(&i915->gt.uc)))
> +		return -ENODEV;
> +
> +	if (get_user(slot, &ext->engine_index))
> +		return -EFAULT;
> +
> +	if (get_user(width, &ext->width))
> +		return -EFAULT;
> +
> +	if (get_user(num_siblings, &ext->num_siblings))
> +		return -EFAULT;
> +
> +	if (slot >= set->num_engines) {
> +		drm_dbg(&i915->drm, "Invalid placement value, %d >= %d\n",
> +			slot, set->num_engines);
> +		return -EINVAL;
> +	}
> +
> +	if (set->engines[slot].type != I915_GEM_ENGINE_TYPE_INVALID) {
> +		drm_dbg(&i915->drm,
> +			"Invalid placement[%d], already occupied\n", slot);
> +		return -EINVAL;
> +	}
> +
> +	if (get_user(flags, &ext->flags))
> +		return -EFAULT;
> +
> +	if (flags) {
> +		drm_dbg(&i915->drm, "Unknown flags 0x%02llx", flags);
> +		return -EINVAL;
> +	}
> +
> +	for (n = 0; n < ARRAY_SIZE(ext->mbz64); n++) {
> +		err = check_user_mbz(&ext->mbz64[n]);
> +		if (err)
> +			return err;
> +	}
> +
> +	if (width < 2) {
> +		drm_dbg(&i915->drm, "Width (%d) < 2\n", width);
> +		return -EINVAL;
> +	}
> +
> +	if (num_siblings < 1) {
> +		drm_dbg(&i915->drm, "Number siblings (%d) < 1\n",
> +			num_siblings);
> +		return -EINVAL;
> +	}
> +
> +	siblings = kmalloc_array(num_siblings * width,
> +				 sizeof(*siblings),
> +				 GFP_KERNEL);
> +	if (!siblings)
> +		return -ENOMEM;
> +
> +	/* Create contexts / engines */
> +	for (i = 0; i < width; ++i) {
> +		intel_engine_mask_t current_mask = 0;
> +		struct i915_engine_class_instance prev_engine;
> +
> +		for (j = 0; j < num_siblings; ++j) {
> +			struct i915_engine_class_instance ci;
> +
> +			n = i * num_siblings + j;
> +			if (copy_from_user(&ci, &ext->engines[n], sizeof(ci))) {
> +				err = -EFAULT;
> +				goto out_err;
> +			}
> +
> +			siblings[n] =
> +				intel_engine_lookup_user(i915, ci.engine_class,
> +							 ci.engine_instance);
> +			if (!siblings[n]) {
> +				drm_dbg(&i915->drm,
> +					"Invalid sibling[%d]: { class:%d, inst:%d }\n",
> +					n, ci.engine_class, ci.engine_instance);
> +				err = -EINVAL;
> +				goto out_err;
> +			}
> +
> +			if (n) {
> +				if (prev_engine.engine_class !=
> +				    ci.engine_class) {
> +					drm_dbg(&i915->drm,
> +						"Mismatched class %d, %d\n",
> +						prev_engine.engine_class,
> +						ci.engine_class);
> +					err = -EINVAL;
> +					goto out_err;
> +				}
> +			}
> +
> +			prev_engine = ci;
> +			current_mask |= siblings[n]->logical_mask;
> +		}
> +
> +		if (i > 0) {
> +			if (current_mask != prev_mask << 1) {
> +				drm_dbg(&i915->drm,
> +					"Non contiguous logical mask 0x%x, 0x%x\n",
> +					prev_mask, current_mask);
> +				err = -EINVAL;
> +				goto out_err;
> +			}
> +		}
> +		prev_mask = current_mask;
> +	}
> +
> +	set->engines[slot].type = I915_GEM_ENGINE_TYPE_PARALLEL;
> +	set->engines[slot].num_siblings = num_siblings;
> +	set->engines[slot].width = width;
> +	set->engines[slot].siblings = siblings;
> +
> +	return 0;
> +
> +out_err:
> +	kfree(siblings);
> +
> +	return err;
> +}
> +
>   static const i915_user_extension_fn set_proto_ctx_engines_extensions[] = {
>   	[I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE] = set_proto_ctx_engines_balance,
>   	[I915_CONTEXT_ENGINES_EXT_BOND] = set_proto_ctx_engines_bond,
> +	[I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT] =
> +		set_proto_ctx_engines_parallel_submit,
>   };
>   
>   static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
> @@ -818,6 +959,25 @@ static int intel_context_set_gem(struct intel_context *ce,
>   	return ret;
>   }
>   
> +static void __unpin_engines(struct i915_gem_engines *e, unsigned int count)
> +{
> +	while (count--) {
> +		struct intel_context *ce = e->engines[count], *child;
> +
> +		if (!ce || !test_bit(CONTEXT_PERMA_PIN, &ce->flags))
> +			continue;
> +
> +		for_each_child(ce, child)
> +			intel_context_unpin(child);
> +		intel_context_unpin(ce);
> +	}
> +}
> +
> +static void unpin_engines(struct i915_gem_engines *e)
> +{
> +	__unpin_engines(e, e->num_engines);
> +}
> +
>   static void __free_engines(struct i915_gem_engines *e, unsigned int count)
>   {
>   	while (count--) {
> @@ -933,6 +1093,40 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
>   	return err;
>   }
>   
> +static int perma_pin_contexts(struct intel_context *ce)
> +{
> +	struct intel_context *child;
> +	int i = 0, j = 0, ret;
> +
> +	GEM_BUG_ON(!intel_context_is_parent(ce));
> +
> +	ret = intel_context_pin(ce);
> +	if (unlikely(ret))
> +		return ret;
> +
> +	for_each_child(ce, child) {
> +		ret = intel_context_pin(child);
> +		if (unlikely(ret))
> +			goto unwind;
> +		++i;
> +	}
> +
> +	set_bit(CONTEXT_PERMA_PIN, &ce->flags);
> +
> +	return 0;
> +
> +unwind:
> +	intel_context_unpin(ce);
> +	for_each_child(ce, child) {
> +		if (j++ < i)
> +			intel_context_unpin(child);
> +		else
> +			break;
> +	}
> +
> +	return ret;
> +}
> +
>   static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
>   					     unsigned int num_engines,
>   					     struct i915_gem_proto_engine *pe)
> @@ -946,7 +1140,7 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
>   	e->num_engines = num_engines;
>   
>   	for (n = 0; n < num_engines; n++) {
> -		struct intel_context *ce;
> +		struct intel_context *ce, *child;
>   		int ret;
>   
>   		switch (pe[n].type) {
> @@ -956,7 +1150,13 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
>   
>   		case I915_GEM_ENGINE_TYPE_BALANCED:
>   			ce = intel_engine_create_virtual(pe[n].siblings,
> -							 pe[n].num_siblings);
> +							 pe[n].num_siblings, 0);
> +			break;
> +
> +		case I915_GEM_ENGINE_TYPE_PARALLEL:
> +			ce = intel_engine_create_parallel(pe[n].siblings,
> +							  pe[n].num_siblings,
> +							  pe[n].width);
>   			break;
>   
>   		case I915_GEM_ENGINE_TYPE_INVALID:
> @@ -977,6 +1177,29 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
>   			err = ERR_PTR(ret);
>   			goto free_engines;
>   		}
> +		for_each_child(ce, child) {
> +			ret = intel_context_set_gem(child, ctx, pe->sseu);
> +			if (ret) {
> +				err = ERR_PTR(ret);
> +				goto free_engines;
> +			}
> +		}
> +
> +		/*
> +		 * XXX: Must be done after calling intel_context_set_gem as that
> +		 * function changes the ring size while the ring is allocated
> +		 * when the context is pinned. Mismatch the ring size will cause
while... when... is ambiguous - changes the ring size at the point when 
the context is pinned even though the ring is already allocated? Or 
changes the ring size even though the ring is already allocated and the 
context is already pinned? Something else?

Mismatch the ring -> A mismatch of the ring

John.


> +		 * the context to hang. Presumably with a bit of reordering we
> +		 * could move the perma-pin step to the backend function
> +		 * intel_engine_create_parallel.
> +		 */
> +		if (pe[n].type == I915_GEM_ENGINE_TYPE_PARALLEL) {
> +			ret = perma_pin_contexts(ce);
> +			if (ret) {
> +				err = ERR_PTR(ret);
> +				goto free_engines;
> +			}
> +		}
>   	}
>   
>   	return e;
> @@ -1219,6 +1442,7 @@ static void context_close(struct i915_gem_context *ctx)
>   
>   	/* Flush any concurrent set_engines() */
>   	mutex_lock(&ctx->engines_mutex);
> +	unpin_engines(__context_engines_static(ctx));
>   	engines_idle_release(ctx, rcu_replace_pointer(ctx->engines, NULL, 1));
>   	i915_gem_context_set_closed(ctx);
>   	mutex_unlock(&ctx->engines_mutex);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index a627b09c4680..282cdb8a5c5a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -78,13 +78,16 @@ enum i915_gem_engine_type {
>   
>   	/** @I915_GEM_ENGINE_TYPE_BALANCED: A load-balanced engine set */
>   	I915_GEM_ENGINE_TYPE_BALANCED,
> +
> +	/** @I915_GEM_ENGINE_TYPE_PARALLEL: A parallel engine set */
> +	I915_GEM_ENGINE_TYPE_PARALLEL,
>   };
>   
>   /**
>    * struct i915_gem_proto_engine - prototype engine
>    *
>    * This struct describes an engine that a context may contain.  Engines
> - * have three types:
> + * have four types:
>    *
>    *  - I915_GEM_ENGINE_TYPE_INVALID: Invalid engines can be created but they
>    *    show up as a NULL in i915_gem_engines::engines[i] and any attempt to
> @@ -97,6 +100,10 @@ enum i915_gem_engine_type {
>    *
>    *  - I915_GEM_ENGINE_TYPE_BALANCED: A load-balanced engine set, described
>    *    i915_gem_proto_engine::num_siblings and i915_gem_proto_engine::siblings.
> + *
> + *  - I915_GEM_ENGINE_TYPE_PARALLEL: A parallel submission engine set, described
> + *    i915_gem_proto_engine::width, i915_gem_proto_engine::num_siblings, and
> + *    i915_gem_proto_engine::siblings.
>    */
>   struct i915_gem_proto_engine {
>   	/** @type: Type of this engine */
> @@ -105,10 +112,13 @@ struct i915_gem_proto_engine {
>   	/** @engine: Engine, for physical */
>   	struct intel_engine_cs *engine;
>   
> -	/** @num_siblings: Number of balanced siblings */
> +	/** @num_siblings: Number of balanced or parallel siblings */
>   	unsigned int num_siblings;
>   
> -	/** @siblings: Balanced siblings */
> +	/** @width: Width of each sibling */
> +	unsigned int width;
> +
> +	/** @siblings: Balanced siblings or num_siblings * width for parallel */
>   	struct intel_engine_cs **siblings;
>   
>   	/** @sseu: Client-set SSEU parameters */
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 8309d1141d0a..1d880303a7e4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -55,9 +55,13 @@ struct intel_context_ops {
>   	void (*reset)(struct intel_context *ce);
>   	void (*destroy)(struct kref *kref);
>   
> -	/* virtual engine/context interface */
> +	/* virtual/parallel engine/context interface */
>   	struct intel_context *(*create_virtual)(struct intel_engine_cs **engine,
> -						unsigned int count);
> +						unsigned int count,
> +						unsigned long flags);
> +	struct intel_context *(*create_parallel)(struct intel_engine_cs **engines,
> +						 unsigned int num_siblings,
> +						 unsigned int width);
>   	struct intel_engine_cs *(*get_sibling)(struct intel_engine_cs *engine,
>   					       unsigned int sibling);
>   };
> @@ -113,6 +117,7 @@ struct intel_context {
>   #define CONTEXT_NOPREEMPT		8
>   #define CONTEXT_LRCA_DIRTY		9
>   #define CONTEXT_GUC_INIT		10
> +#define CONTEXT_PERMA_PIN		11
>   
>   	struct {
>   		u64 timeout_us;
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index d5ac49c0691e..08559ace0ada 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -282,9 +282,19 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
>   	return intel_engine_has_preemption(engine);
>   }
>   
> +#define FORCE_VIRTUAL	BIT(0)
>   struct intel_context *
>   intel_engine_create_virtual(struct intel_engine_cs **siblings,
> -			    unsigned int count);
> +			    unsigned int count, unsigned long flags);
> +
> +static inline struct intel_context *
> +intel_engine_create_parallel(struct intel_engine_cs **engines,
> +			     unsigned int num_engines,
> +			     unsigned int width)
> +{
> +	GEM_BUG_ON(!engines[0]->cops->create_parallel);
> +	return engines[0]->cops->create_parallel(engines, num_engines, width);
> +}
>   
>   static inline bool
>   intel_virtual_engine_has_heartbeat(const struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 2eb798ad068b..ff6753ccb129 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1953,16 +1953,16 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
>   
>   struct intel_context *
>   intel_engine_create_virtual(struct intel_engine_cs **siblings,
> -			    unsigned int count)
> +			    unsigned int count, unsigned long flags)
>   {
>   	if (count == 0)
>   		return ERR_PTR(-EINVAL);
>   
> -	if (count == 1)
> +	if (count == 1 && !(flags & FORCE_VIRTUAL))
>   		return intel_context_create(siblings[0]);
>   
>   	GEM_BUG_ON(!siblings[0]->cops->create_virtual);
> -	return siblings[0]->cops->create_virtual(siblings, count);
> +	return siblings[0]->cops->create_virtual(siblings, count, flags);
>   }
>   
>   struct i915_request *
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 43a74b216efb..bedb80057046 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -201,7 +201,8 @@ static struct virtual_engine *to_virtual_engine(struct intel_engine_cs *engine)
>   }
>   
>   static struct intel_context *
> -execlists_create_virtual(struct intel_engine_cs **siblings, unsigned int count);
> +execlists_create_virtual(struct intel_engine_cs **siblings, unsigned int count,
> +			 unsigned long flags);
>   
>   static struct i915_request *
>   __active_request(const struct intel_timeline * const tl,
> @@ -3784,7 +3785,8 @@ static void virtual_submit_request(struct i915_request *rq)
>   }
>   
>   static struct intel_context *
> -execlists_create_virtual(struct intel_engine_cs **siblings, unsigned int count)
> +execlists_create_virtual(struct intel_engine_cs **siblings, unsigned int count,
> +			 unsigned long flags)
>   {
>   	struct virtual_engine *ve;
>   	unsigned int n;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 25a8c4f62b0d..b367ecfa42de 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -3733,7 +3733,7 @@ static int nop_virtual_engine(struct intel_gt *gt,
>   	GEM_BUG_ON(!nctx || nctx > ARRAY_SIZE(ve));
>   
>   	for (n = 0; n < nctx; n++) {
> -		ve[n] = intel_engine_create_virtual(siblings, nsibling);
> +		ve[n] = intel_engine_create_virtual(siblings, nsibling, 0);
>   		if (IS_ERR(ve[n])) {
>   			err = PTR_ERR(ve[n]);
>   			nctx = n;
> @@ -3929,7 +3929,7 @@ static int mask_virtual_engine(struct intel_gt *gt,
>   	 * restrict it to our desired engine within the virtual engine.
>   	 */
>   
> -	ve = intel_engine_create_virtual(siblings, nsibling);
> +	ve = intel_engine_create_virtual(siblings, nsibling, 0);
>   	if (IS_ERR(ve)) {
>   		err = PTR_ERR(ve);
>   		goto out_close;
> @@ -4060,7 +4060,7 @@ static int slicein_virtual_engine(struct intel_gt *gt,
>   		i915_request_add(rq);
>   	}
>   
> -	ce = intel_engine_create_virtual(siblings, nsibling);
> +	ce = intel_engine_create_virtual(siblings, nsibling, 0);
>   	if (IS_ERR(ce)) {
>   		err = PTR_ERR(ce);
>   		goto out;
> @@ -4112,7 +4112,7 @@ static int sliceout_virtual_engine(struct intel_gt *gt,
>   
>   	/* XXX We do not handle oversubscription and fairness with normal rq */
>   	for (n = 0; n < nsibling; n++) {
> -		ce = intel_engine_create_virtual(siblings, nsibling);
> +		ce = intel_engine_create_virtual(siblings, nsibling, 0);
>   		if (IS_ERR(ce)) {
>   			err = PTR_ERR(ce);
>   			goto out;
> @@ -4214,7 +4214,7 @@ static int preserved_virtual_engine(struct intel_gt *gt,
>   	if (err)
>   		goto out_scratch;
>   
> -	ve = intel_engine_create_virtual(siblings, nsibling);
> +	ve = intel_engine_create_virtual(siblings, nsibling, 0);
>   	if (IS_ERR(ve)) {
>   		err = PTR_ERR(ve);
>   		goto out_scratch;
> @@ -4354,7 +4354,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
>   	if (igt_spinner_init(&spin, gt))
>   		return -ENOMEM;
>   
> -	ve = intel_engine_create_virtual(siblings, nsibling);
> +	ve = intel_engine_create_virtual(siblings, nsibling, 0);
>   	if (IS_ERR(ve)) {
>   		err = PTR_ERR(ve);
>   		goto out_spin;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 013f36ef98cc..ecb938bb99fb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -124,7 +124,13 @@ struct guc_virtual_engine {
>   };
>   
>   static struct intel_context *
> -guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count);
> +guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count,
> +		   unsigned long flags);
> +
> +static struct intel_context *
> +guc_create_parallel(struct intel_engine_cs **engines,
> +		    unsigned int num_siblings,
> +		    unsigned int width);
>   
>   #define GUC_REQUEST_SIZE 64 /* bytes */
>   
> @@ -2615,6 +2621,7 @@ static const struct intel_context_ops guc_context_ops = {
>   	.destroy = guc_context_destroy,
>   
>   	.create_virtual = guc_create_virtual,
> +	.create_parallel = guc_create_parallel,
>   };
>   
>   static void submit_work_cb(struct irq_work *wrk)
> @@ -2864,8 +2871,6 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>   	.get_sibling = guc_virtual_get_sibling,
>   };
>   
> -/* Future patches will use this function */
> -__maybe_unused
>   static int guc_parent_context_pin(struct intel_context *ce, void *vaddr)
>   {
>   	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
> @@ -2882,8 +2887,6 @@ static int guc_parent_context_pin(struct intel_context *ce, void *vaddr)
>   	return __guc_context_pin(ce, engine, vaddr);
>   }
>   
> -/* Future patches will use this function */
> -__maybe_unused
>   static int guc_child_context_pin(struct intel_context *ce, void *vaddr)
>   {
>   	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
> @@ -2895,8 +2898,6 @@ static int guc_child_context_pin(struct intel_context *ce, void *vaddr)
>   	return __guc_context_pin(ce, engine, vaddr);
>   }
>   
> -/* Future patches will use this function */
> -__maybe_unused
>   static void guc_parent_context_unpin(struct intel_context *ce)
>   {
>   	struct intel_guc *guc = ce_to_guc(ce);
> @@ -2912,8 +2913,6 @@ static void guc_parent_context_unpin(struct intel_context *ce)
>   	lrc_unpin(ce);
>   }
>   
> -/* Future patches will use this function */
> -__maybe_unused
>   static void guc_child_context_unpin(struct intel_context *ce)
>   {
>   	GEM_BUG_ON(context_enabled(ce));
> @@ -2924,8 +2923,6 @@ static void guc_child_context_unpin(struct intel_context *ce)
>   	lrc_unpin(ce);
>   }
>   
> -/* Future patches will use this function */
> -__maybe_unused
>   static void guc_child_context_post_unpin(struct intel_context *ce)
>   {
>   	GEM_BUG_ON(!intel_context_is_child(ce));
> @@ -2936,6 +2933,98 @@ static void guc_child_context_post_unpin(struct intel_context *ce)
>   	intel_context_unpin(ce->parallel.parent);
>   }
>   
> +static void guc_child_context_destroy(struct kref *kref)
> +{
> +	struct intel_context *ce = container_of(kref, typeof(*ce), ref);
> +
> +	__guc_context_destroy(ce);
> +}
> +
> +static const struct intel_context_ops virtual_parent_context_ops = {
> +	.alloc = guc_virtual_context_alloc,
> +
> +	.pre_pin = guc_context_pre_pin,
> +	.pin = guc_parent_context_pin,
> +	.unpin = guc_parent_context_unpin,
> +	.post_unpin = guc_context_post_unpin,
> +
> +	.ban = guc_context_ban,
> +
> +	.cancel_request = guc_context_cancel_request,
> +
> +	.enter = guc_virtual_context_enter,
> +	.exit = guc_virtual_context_exit,
> +
> +	.sched_disable = guc_context_sched_disable,
> +
> +	.destroy = guc_context_destroy,
> +
> +	.get_sibling = guc_virtual_get_sibling,
> +};
> +
> +static const struct intel_context_ops virtual_child_context_ops = {
> +	.alloc = guc_virtual_context_alloc,
> +
> +	.pre_pin = guc_context_pre_pin,
> +	.pin = guc_child_context_pin,
> +	.unpin = guc_child_context_unpin,
> +	.post_unpin = guc_child_context_post_unpin,
> +
> +	.cancel_request = guc_context_cancel_request,
> +
> +	.enter = guc_virtual_context_enter,
> +	.exit = guc_virtual_context_exit,
> +
> +	.destroy = guc_child_context_destroy,
> +
> +	.get_sibling = guc_virtual_get_sibling,
> +};
> +
> +static struct intel_context *
> +guc_create_parallel(struct intel_engine_cs **engines,
> +		    unsigned int num_siblings,
> +		    unsigned int width)
> +{
> +	struct intel_engine_cs **siblings = NULL;
> +	struct intel_context *parent = NULL, *ce, *err;
> +	int i, j;
> +
> +	siblings = kmalloc_array(num_siblings,
> +				 sizeof(*siblings),
> +				 GFP_KERNEL);
> +	if (!siblings)
> +		return ERR_PTR(-ENOMEM);
> +
> +	for (i = 0; i < width; ++i) {
> +		for (j = 0; j < num_siblings; ++j)
> +			siblings[j] = engines[i * num_siblings + j];
> +
> +		ce = intel_engine_create_virtual(siblings, num_siblings,
> +						 FORCE_VIRTUAL);
> +		if (!ce) {
> +			err = ERR_PTR(-ENOMEM);
> +			goto unwind;
> +		}
> +
> +		if (i == 0) {
> +			parent = ce;
> +			parent->ops = &virtual_parent_context_ops;
> +		} else {
> +			ce->ops = &virtual_child_context_ops;
> +			intel_context_bind_parent_child(parent, ce);
> +		}
> +	}
> +
> +	kfree(siblings);
> +	return parent;
> +
> +unwind:
> +	if (parent)
> +		intel_context_put(parent);
> +	kfree(siblings);
> +	return err;
> +}
> +
>   static bool
>   guc_irq_enable_breadcrumbs(struct intel_breadcrumbs *b)
>   {
> @@ -3762,7 +3851,8 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
>   }
>   
>   static struct intel_context *
> -guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count)
> +guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count,
> +		   unsigned long flags)
>   {
>   	struct guc_virtual_engine *ve;
>   	struct intel_guc *guc;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 0179f92e0916..c2a63e1584cb 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1824,6 +1824,7 @@ struct drm_i915_gem_context_param {
>    * Extensions:
>    *   i915_context_engines_load_balance (I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE)
>    *   i915_context_engines_bond (I915_CONTEXT_ENGINES_EXT_BOND)
> + *   i915_context_engines_parallel_submit (I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT)
>    */
>   #define I915_CONTEXT_PARAM_ENGINES	0xa
>   
> @@ -2098,6 +2099,135 @@ struct i915_context_engines_bond {
>   	struct i915_engine_class_instance engines[N__]; \
>   } __attribute__((packed)) name__
>   
> +/**
> + * struct i915_context_engines_parallel_submit - Configure engine for
> + * parallel submission.
> + *
> + * Setup a slot in the context engine map to allow multiple BBs to be submitted
> + * in a single execbuf IOCTL. Those BBs will then be scheduled to run on the GPU
> + * in parallel. Multiple hardware contexts are created internally in the i915 to
> + * run these BBs. Once a slot is configured for N BBs only N BBs can be
> + * submitted in each execbuf IOCTL and this is implicit behavior e.g. The user
> + * doesn't tell the execbuf IOCTL there are N BBs, the execbuf IOCTL knows how
> + * many BBs there are based on the slot's configuration. The N BBs are the last
> + * N buffer objects or first N if I915_EXEC_BATCH_FIRST is set.
> + *
> + * The default placement behavior is to create implicit bonds between each
> + * context if each context maps to more than 1 physical engine (e.g. context is
> + * a virtual engine). Also we only allow contexts of same engine class and these
> + * contexts must be in logically contiguous order. Examples of the placement
> + * behavior are described below. Lastly, the default is to not allow BBs to be
> + * preempted mid-batch. Rather insert coordinated preemption points on all
> + * hardware contexts between each set of BBs. Flags could be added in the future
> + * to change both of these default behaviors.
> + *
> + * Returns -EINVAL if hardware context placement configuration is invalid or if
> + * the placement configuration isn't supported on the platform / submission
> + * interface.
> + * Returns -ENODEV if extension isn't supported on the platform / submission
> + * interface.
> + *
> + * .. code-block:: none
> + *
> + *	Examples syntax:
> + *	CS[X] = generic engine of same class, logical instance X
> + *	INVALID = I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALID_NONE
> + *
> + *	Example 1 pseudo code:
> + *	set_engines(INVALID)
> + *	set_parallel(engine_index=0, width=2, num_siblings=1,
> + *		     engines=CS[0],CS[1])
> + *
> + *	Results in the following valid placement:
> + *	CS[0], CS[1]
> + *
> + *	Example 2 pseudo code:
> + *	set_engines(INVALID)
> + *	set_parallel(engine_index=0, width=2, num_siblings=2,
> + *		     engines=CS[0],CS[2],CS[1],CS[3])
> + *
> + *	Results in the following valid placements:
> + *	CS[0], CS[1]
> + *	CS[2], CS[3]
> + *
> + *	This can be thought of as two virtual engines, each containing two
> + *	engines thereby making a 2D array. However, there are bonds tying the
> + *	entries together and placing restrictions on how they can be scheduled.
> + *	Specifically, the scheduler can choose only vertical columns from the 2D
> + *	array. That is, CS[0] is bonded to CS[1] and CS[2] to CS[3]. So if the
> + *	scheduler wants to submit to CS[0], it must also choose CS[1] and vice
> + *	versa. Same for CS[2] requires also using CS[3].
> + *	VE[0] = CS[0], CS[2]
> + *	VE[1] = CS[1], CS[3]
> + *
> + *	Example 3 pseudo code:
> + *	set_engines(INVALID)
> + *	set_parallel(engine_index=0, width=2, num_siblings=2,
> + *		     engines=CS[0],CS[1],CS[1],CS[3])
> + *
> + *	Results in the following valid and invalid placements:
> + *	CS[0], CS[1]
> + *	CS[1], CS[3] - Not logically contiguous, return -EINVAL
> + */
> +struct i915_context_engines_parallel_submit {
> +	/**
> +	 * @base: base user extension.
> +	 */
> +	struct i915_user_extension base;
> +
> +	/**
> +	 * @engine_index: slot for parallel engine
> +	 */
> +	__u16 engine_index;
> +
> +	/**
> +	 * @width: number of contexts per parallel engine or in other words the
> +	 * number of batches in each submission
> +	 */
> +	__u16 width;
> +
> +	/**
> +	 * @num_siblings: number of siblings per context or in other words the
> +	 * number of possible placements for each submission
> +	 */
> +	__u16 num_siblings;
> +
> +	/**
> +	 * @mbz16: reserved for future use; must be zero
> +	 */
> +	__u16 mbz16;
> +
> +	/**
> +	 * @flags: all undefined flags must be zero, currently not defined flags
> +	 */
> +	__u64 flags;
> +
> +	/**
> +	 * @mbz64: reserved for future use; must be zero
> +	 */
> +	__u64 mbz64[3];
> +
> +	/**
> +	 * @engines: 2-d array of engine instances to configure parallel engine
> +	 *
> +	 * length = width (i) * num_siblings (j)
> +	 * index = j + i * num_siblings
> +	 */
> +	struct i915_engine_class_instance engines[0];
> +
> +} __packed;
> +
> +#define I915_DEFINE_CONTEXT_ENGINES_PARALLEL_SUBMIT(name__, N__) struct { \
> +	struct i915_user_extension base; \
> +	__u16 engine_index; \
> +	__u16 width; \
> +	__u16 num_siblings; \
> +	__u16 mbz16; \
> +	__u64 flags; \
> +	__u64 mbz64[3]; \
> +	struct i915_engine_class_instance engines[N__]; \
> +} __attribute__((packed)) name__
> +
>   /**
>    * DOC: Context Engine Map uAPI
>    *
> @@ -2157,6 +2287,7 @@ struct i915_context_param_engines {
>   	__u64 extensions; /* linked chain of extension blocks, 0 terminates */
>   #define I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE 0 /* see i915_context_engines_load_balance */
>   #define I915_CONTEXT_ENGINES_EXT_BOND 1 /* see i915_context_engines_bond */
> +#define I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT 2 /* see i915_context_engines_parallel_submit */
>   	struct i915_engine_class_instance engines[0];
>   } __attribute__((packed));
>   

