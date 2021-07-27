Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6836E3D7E4B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 21:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E793B6E0C2;
	Tue, 27 Jul 2021 19:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C956E0C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 19:11:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="199734880"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="199734880"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 12:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="566626088"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 27 Jul 2021 12:11:50 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 12:11:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 27 Jul 2021 12:11:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 27 Jul 2021 12:11:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHYhQwhIhabmSP7yD/lBjIct4fMixLoIe+b9QEo1b/x1JmbaTscGXbAsvDXWKZU4ZMiTPc/P16ZZ4ehLWkmqzoU0ziEgJMEW01cGJHprMSJJfhJAOLCeIwRXKby1nnbNYqBP+8ZXqSApEEqJt7rtGG1Yu9fV6CcN9xLUFNV5EnBrxYIQlbEMQItQyPxmEF2mlu0u+jZp19/SAYdWNIvRKo36yrfC7/viqwkL1mW8zdG3e31p3X5GsP+YOKvAkaw8iBYNO+/r566j48NX4Jpp/CkVy+A2H1d08/ht0rZn8UoCNXUzbN8yQuEK/HCF6+SMDkp92ERwgimGwzbau53lOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lElQWIvbbPntePK1qDuXawmwOYC9nIjtIVlq1+8mmag=;
 b=FvQ1TNZWKMJqEoBnDGUFOEVSMO39uDpg2hshy4UVDD1NfepSfYbtHycFr0wgzjbhTn5FyLJaaMTrJ/rixsz9Vu96IvqpIpkiRWZCm21U1qRT1UWdrChHKyvtAbavXMGsQEJcc3S260cpsJ/xMOnjkoTLpBUgqyRSDzGjniED8qGjt9T2aDyrhI7qJ9WwM7/0LiY68nLCNL8e3GVZxMDxME262j5NyZcHXAPORmcpxPIKNKyYklXaSdrxIpqdeghfWOT108PT+FFiNoYY4JZ67zoG98wqcMLd7p6FRKmwrfefmMknHxC4d+Z+OSJpjYmc/F0G1DKh3slEbV/ZiCY0vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lElQWIvbbPntePK1qDuXawmwOYC9nIjtIVlq1+8mmag=;
 b=q/7TE2tz6D/fxzUpKEnBDj135fZabXiOaeb/8SAXpxK31KVeRmTQ/3e53dintLuyNdPnifPM/NmleoICkMUkJoPolgIbGYqp3vqmYN08cPteCroLSPvWPrl30J0WftTk3JaHM9mguc7VZOge3fj1TniOPLhOUq0HfZ9z7HoyUk4=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by MN2PR11MB4615.namprd11.prod.outlook.com (2603:10b6:208:263::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Tue, 27 Jul
 2021 19:11:47 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%5]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 19:11:47 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 06/30] drm/i915/xehp: handle new steering
 options
Thread-Index: AQHXf+ppC3Wshk6m70CufScRM2tGhqtXNqaA
Date: Tue, 27 Jul 2021 19:11:47 +0000
Message-ID: <8fe1598b50752e7797245e680aa4ffb038b12bfa.camel@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
 <20210723174239.1551352-7-matthew.d.roper@intel.com>
In-Reply-To: <20210723174239.1551352-7-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7564dad-9482-45a5-91db-08d95132617b
x-ms-traffictypediagnostic: MN2PR11MB4615:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4615D27539086D66494449AE9FE99@MN2PR11MB4615.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8mP8NFE7LbGwO5NM4w1mbll3an6yU72/l00bCRFBZNPncTvVF2/63nvDAne2sbaSmRKwBuEuS6sRdBooOHi3e7G5YxMiHTokM8++PyFSpbE33HC/JZcowLYXVxm/tQh9Mtci9hNM2Vb4LL+kLME1Pe80fx+/Nz3ROZU88lzSVARnXIEIL0VcHijCaptD5Th2+lkyfXB1HzC/E5zLQntDmTwCRG1KAl3fWmfoM91bAkKfzgRlpKnRlqWwry9oCnkR3KaGBgfV/skFIeYfl6aDpVIzHoYKVXDxKyiTmkhZK76g4sjNAFrxnmoYk0xcvRFQAj24B5wTAN2XN9nr/xwOSRwfEuBclaRlss43nlc0zlEIWNWpoX2NsS+o/IIqkJGz3ZBNuY66G+HI/2xyhHc/GeU0a6vtWbVWsHllGlFSzGXgjPNWTsgEMYvOxng2llB2AcdXLAX6a14NPD+S8e4JmY0vpMelFebp8Oyjf8JvQOeFN05em4jVISYpshRuNjWAkz6uF6AvPoW7xxwG2mtpoYRuPVB5ke8jcBJdKbjvqBGHI/k0t/AoAYx3oTV87C382pCGfysf7lyEn8hdjekRBW89piiFCnBuXm9TSFjwAUU3ys0xHqY4a35HjSNX1G9dHgZ4ospaV0I0B2cVQoIk2V5U+y5myMpM3xJAPwHPFzdXty+7PTsXseNzrcb7qUlgRhGoxk0EqpIw0+bTUwre+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(396003)(376002)(346002)(366004)(36756003)(6486002)(8936002)(26005)(66476007)(76116006)(38100700002)(64756008)(316002)(30864003)(110136005)(6506007)(2906002)(38070700005)(66556008)(86362001)(186003)(122000001)(2616005)(8676002)(91956017)(5660300002)(83380400001)(6512007)(478600001)(71200400001)(66446008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3JmNHZxVUx2Und4c1NyaDdGVjdpWmdVT3dCaTJjM1BOS0VsdnR0Y25qOEpo?=
 =?utf-8?B?LzFCbmNGNVNoby9TY1FxWEdEYkFDajh0YkxkWEEwYSs0NHVmUExIR3NhVjAv?=
 =?utf-8?B?Y2NlWG4zOFA0UVM4YVY4cnpBZk8yZGJ1TnVidGFJUzFUd3c3MVhQU0ZUYXF5?=
 =?utf-8?B?anhEb0F4ZUV6WVJHL1dkN3BlYUNxTnhiYXlDVkRpK1NjUGtod1c2dVZiZDJj?=
 =?utf-8?B?MFpWNnlhakFIdVJPVlVHakFOMTVldWxONEk3emtSakVNNDU5cHBXYmlKWlM5?=
 =?utf-8?B?NngxOVRFeUFQVnRJNGovRnlTay9nOWJMclFyaGFRSUdFMXRJd0FPNVExTFpM?=
 =?utf-8?B?QjhZS2NuV0R0aE92MjMrSnpWTXcvUUNWN053eUkwTHpQaHdUOHBrVXQxc0I4?=
 =?utf-8?B?UnpkbFd4VFRnb2E4bFExUHB2c01vSDhEQlVSVXFyYVNIbDlBUUFqVUMyUGlY?=
 =?utf-8?B?MTh6U0NBWXU1OTUwMC9FUDFRUXRwVkhRTHBrdjFKTXNMYnM0d0FBbkxiSFpy?=
 =?utf-8?B?SnFLRVAwcU5VRlBvVERoK1ZwZ05NMnBnWWVUL3RsdmEyNmVaazlGUGpTTGJK?=
 =?utf-8?B?ZVJQaU1BYWlQNEFHYUU5OWVIRW5ObCtuYzNvVDNKWkt5MHNkVktjM05zSk8y?=
 =?utf-8?B?eDc3aDY5dUl0VDdUTFhsNlAzbDJrYXJnSnU0cjJaSlU2elIvVXRXNHhScXh2?=
 =?utf-8?B?cVloNCtRVTVvU2tRaVJxTVkrSUt6QUZLbzgyZW1hVW8vSWM2UGF3NmRKRDd2?=
 =?utf-8?B?ZGg4clMxeEd0cTZWNkFuUk51RGE1ZXR4NW1pMG9RQlpaZWJKMHRKV00yMlpj?=
 =?utf-8?B?aW1ES1NGTDVGbnJmcVhsUnBEVVFsbS9KRFpHcG8waUp3NmJxcEZNYTFmb0tI?=
 =?utf-8?B?VHNGMkluck9QbTF3bytKUXR1ODgvTjNDVUFWNGpMOWtmQTlyYjdiUVhhNUNC?=
 =?utf-8?B?YnozM0t5YktnREtQMFVHVzhMNVRvRTFndVpabGhSMUVkOFNEU0cydU5oOFRq?=
 =?utf-8?B?RWJDWGZpL3E5VFppWFkxVHpFd1I3NjdDb2hVdnNDNlJGaCtFVituUGt6djc3?=
 =?utf-8?B?T1ZsU2tLeVZmNVNhZHVkZXhxZEduMUNFb2IvM1Z1VG5tRmY0eFN3T2x5MUxo?=
 =?utf-8?B?NTRScElRNm5yK1NnK21DMFFxUy8weHk5bDh2VG5MOGFUdTJmWFVZR005aFVX?=
 =?utf-8?B?U1VRcEsvRzBhNEJhZG4zb1BybGM5TXdXMHVUdFF0L1NJV3R1cGp3R0pOVWo2?=
 =?utf-8?B?bkU2bXFySjAwT2VIVXM2ZVllOGd6aGg5dngrOWdWSUhJUktKTVlqTkhKVUpD?=
 =?utf-8?B?MnNnTk5YQXJuNDlXNjgyUXFVRVZEczBxdUozMHBoc2hvMm0vZ1A0T1JVaGdz?=
 =?utf-8?B?dGFsNXFtbVQ5R2dudEtTQmNNZTJjdVVVR2s3Nm9UNEFCZ3dHeFQwVTZKdGl3?=
 =?utf-8?B?V1BWT0VMTnZNSmdKZXpsK20wMld1Zm9JVmQwV0xvVC9RSFlZQlN1R1F5bzZP?=
 =?utf-8?B?QUEzQnBDRmVIeVFHK0dHQVJsRlFiZmxzQTFscENia1Y5b2puUXVQYWRvNWQv?=
 =?utf-8?B?UmY2cDVmbGYzUkhtOWxla0NHY2pBaFJYb0xKdUo2R1VrYWZFR3d1ZzJ3L3ZW?=
 =?utf-8?B?N3dISFdLK3JFSXQ1SW9QdDhmV3duL1VRYm9XUXIvOVpZWlpHTFJodUphcVZ3?=
 =?utf-8?B?U2hscGpRR1dxUk9LYlpvU1oxVjJPUzk4M3hSa0FIZ1pmaS9NS3QwUlZWRks0?=
 =?utf-8?Q?/mZbgY6Dw/5EM9jFOw36aCaqYItjQya1PRirric?=
Content-ID: <CA63DB438BF4A44F8548B899B786B4B6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7564dad-9482-45a5-91db-08d95132617b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 19:11:47.3755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: calioSkpHW7Sr4X5AzkeI36AulJiCC3uh+2/rmObRQWCTG2YGAT4PsT6cngu/NTq79OX4SOtbv7jstuZOUWyDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4615
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 06/30] drm/i915/xehp: handle new steering
 options
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2021-07-23 at 10:42 -0700, Matt Roper wrote:
> From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> 
> Xe_HP is more modular then its predecessors and as a consequence it 
then -> than

> has
> more types of replicated registers.  As with l3bank regions on
> previous
> platforms, we may need to explicitly re-steer accesses to these new
> types of ranges at runtime if we can't find a single default steering
> value that satisfies the fusing of all types.
> 
> Bspec: 66534
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <
> daniele.ceraolospurio@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c          | 40 ++++++++-
>  drivers/gpu/drm/i915/gt/intel_gt.h          |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt_types.h    |  7 ++
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c |  1 +
>  drivers/gpu/drm/i915/gt/intel_sseu.c        | 18 +++++
>  drivers/gpu/drm/i915/gt/intel_sseu.h        |  6 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 89
> +++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_drv.h             |  3 +
>  drivers/gpu/drm/i915/i915_pci.c             |  1 +
>  drivers/gpu/drm/i915/i915_reg.h             |  4 +
>  drivers/gpu/drm/i915/intel_device_info.h    |  1 +
>  11 files changed, 165 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 46441607d18b..0ee33a31a3cd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -89,6 +89,13 @@ static const struct intel_mmio_range
> icl_l3bank_steering_table[] = {
>  	{},
>  };
>  
> +static u16 slicemask(struct intel_gt *gt, int count)
> +{
> +	u64 dss_mask = intel_sseu_get_subslices(&gt->info.sseu, 0);
> +
> +	return intel_slicemask_from_dssmask(dss_mask, count);
> +}
> +
>  int intel_gt_init_mmio(struct intel_gt *gt)
>  {
>  	intel_gt_init_clock_frequency(gt);
> @@ -96,11 +103,24 @@ int intel_gt_init_mmio(struct intel_gt *gt)
>  	intel_uc_init_mmio(&gt->uc);
>  	intel_sseu_info_init(gt);
>  
> -	if (GRAPHICS_VER(gt->i915) >= 11) {
> +	/*
> +	 * An mslice is unavailable only if both the meml3 for the
> slice is
> +	 * disabled *and* all of the DSS in the slice (quadrant) are
> disabled.
> +	 */
> +	if (HAS_MSLICES(gt->i915))
> +		gt->info.mslice_mask =
> +			slicemask(gt, GEN_DSS_PER_MSLICE) |
> +			(intel_uncore_read(gt->uncore,
> GEN10_MIRROR_FUSE3) &
> +			 GEN12_MEML3_EN_MASK);
> +
> +	if (GRAPHICS_VER(gt->i915) >= 11 &&
> +		   GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50)) {
gt->i915 is referenced many times. It is better to define
i915 = gt->i915;

>  		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
>  		gt->info.l3bank_mask =
>  			~intel_uncore_read(gt->uncore,
> GEN10_MIRROR_FUSE3) &
>  			GEN10_L3BANK_MASK;
> +	} else if (HAS_MSLICES(gt->i915)) {
> +		MISSING_CASE(INTEL_INFO(gt->i915)->platform);
>  	}
>  
>  	return intel_engines_init_mmio(gt);
> @@ -785,6 +805,24 @@ static void intel_gt_get_valid_steering(struct
> intel_gt *gt,
>  		*sliceid = 0;		/* unused */
>  		*subsliceid = __ffs(gt->info.l3bank_mask);
>  		break;
> +	case MSLICE:
> +		GEM_DEBUG_WARN_ON(!gt->info.mslice_mask); /* should be
> impossible! */
> +
> +		*sliceid = __ffs(gt->info.mslice_mask);
> +		*subsliceid = 0;	/* unused */
> +		break;
> +	case LNCF:
> +		GEM_DEBUG_WARN_ON(!gt->info.mslice_mask); /* should be
> impossible! */
> +
> +		/*
> +		 * 0xFDC[29:28] selects the mslice to steer to and
> 0xFDC[27]
> +		 * selects which LNCF within the mslice to steer
> to.  An LNCF
> +		 * is always present if its mslice is present, so we
> can safely
> +		 * just steer to LNCF 0 in all cases.
> +		 */
> +		*sliceid = __ffs(gt->info.mslice_mask) << 1;
> +		*subsliceid = 0;	/* unused */
> +		break;
>  	default:
>  		MISSING_CASE(type);
>  		*sliceid = 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h
> b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 74e771871a9b..24b78398a587 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -84,6 +84,7 @@ static inline bool
> intel_gt_needs_read_steering(struct intel_gt *gt,
>  }
>  
>  u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
> +u32 intel_gt_read_register(struct intel_gt *gt, i915_reg_t reg);
Shoulde this function declaration be included in this patch? I don't
find corresponding body in this patch.
-caz

>  
>  void intel_gt_info_print(const struct intel_gt_info *info,
>  			 struct drm_printer *p);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 97a5075288d2..a81e21bf1bd1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -47,9 +47,14 @@ struct intel_mmio_range {
>   * of multicast registers.  If another type of steering does not
> have any
>   * overlap in valid steering targets with 'subslice' style
> registers, we will
>   * need to explicitly re-steer reads of registers of the other type.
> + *
> + * Only the replication types that may need additional non-default
> steering
> + * are listed here.
>   */
>  enum intel_steering_type {
>  	L3BANK,
> +	MSLICE,
> +	LNCF,
>  
>  	NUM_STEERING_TYPES
>  };
> @@ -184,6 +189,8 @@ struct intel_gt {
>  
>  		/* Slice/subslice/EU info */
>  		struct sseu_dev_info sseu;
> +
> +		unsigned long mslice_mask;
>  	} info;
>  };
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index e3a2a2fa5f94..a74b72f50cc9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -10,6 +10,7 @@
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_region.h"
>  #include "gem/i915_gem_ttm.h"
> +#include "gt/intel_gt.h"
>  
>  static int init_fake_lmem_bar(struct intel_memory_region *mem)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 367fd44b81c8..bbed8e8625e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -759,3 +759,21 @@ void intel_sseu_print_topology(const struct
> sseu_dev_info *sseu,
>  		}
>  	}
>  }
> +
> +u16 intel_slicemask_from_dssmask(u64 dss_mask, int dss_per_slice)
> +{
> +	u16 slice_mask = 0;
> +	int i;
> +
> +	WARN_ON(sizeof(dss_mask) * 8 / dss_per_slice > 8 *
> sizeof(slice_mask));
> +
> +	for (i = 0; dss_mask; i++) {
> +		if (dss_mask & GENMASK(dss_per_slice - 1, 0))
> +			slice_mask |= BIT(i);
> +
> +		dss_mask >>= dss_per_slice;
> +	}
> +
> +	return slice_mask;
> +}
> +
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> b/drivers/gpu/drm/i915/gt/intel_sseu.h
> index 4cd1a8a7298a..1073471d1980 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> @@ -22,6 +22,10 @@ struct drm_printer;
>  #define GEN_MAX_EUS		(16) /* TGL upper bound */
>  #define GEN_MAX_EU_STRIDE GEN_SSEU_STRIDE(GEN_MAX_EUS)
>  
> +#define GEN_DSS_PER_GSLICE	4
> +#define GEN_DSS_PER_CSLICE	8
> +#define GEN_DSS_PER_MSLICE	8
> +
>  struct sseu_dev_info {
>  	u8 slice_mask;
>  	u8 subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
> @@ -104,4 +108,6 @@ void intel_sseu_dump(const struct sseu_dev_info
> *sseu, struct drm_printer *p);
>  void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
>  			       struct drm_printer *p);
>  
> +u16 intel_slicemask_from_dssmask(u64 dss_mask, int dss_per_slice);
> +
>  #endif /* __INTEL_SSEU_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3aa5ce3cda8b..48f794f4a1af 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -888,12 +888,24 @@ cfl_gt_workarounds_init(struct drm_i915_private
> *i915, struct i915_wa_list *wal)
>  		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
>  }
>  
> +static void __add_mcr_wa(struct drm_i915_private *i915, struct
> i915_wa_list *wal,
> +			 unsigned slice, unsigned subslice)
> +{
> +	u32 mcr, mcr_mask;
> +
> +	mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
> +	mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
> +
> +	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
> +
> +	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
> +}
> +
>  static void
>  icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list
> *wal)
>  {
>  	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
>  	unsigned int slice, subslice;
> -	u32 mcr, mcr_mask;
>  
>  	GEM_BUG_ON(GRAPHICS_VER(i915) < 11);
>  	GEM_BUG_ON(hweight8(sseu->slice_mask) > 1);
> @@ -918,12 +930,79 @@ icl_wa_init_mcr(struct drm_i915_private *i915,
> struct i915_wa_list *wal)
>  	if (i915->gt.info.l3bank_mask & BIT(subslice))
>  		i915->gt.steering_table[L3BANK] = NULL;
>  
> -	mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
> -	mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
> +	__add_mcr_wa(i915, wal, slice, subslice);
> +}
>  
> -	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
> +__maybe_unused
> +static void
> +xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
> +{
> +	struct drm_i915_private *i915 = gt->i915;
> +	const struct sseu_dev_info *sseu = &gt->info.sseu;
> +	unsigned long slice, subslice = 0, slice_mask = 0;
> +	u64 dss_mask = 0;
> +	u32 lncf_mask = 0;
> +	int i;
>  
> -	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
> +	/*
> +	 * On Xe_HP the steering increases in complexity. There are now
> several
> +	 * more units that require steering and we're not guaranteed to
> be able
> +	 * to find a common setting for all of them. These are:
> +	 * - GSLICE (fusable)
> +	 * - DSS (sub-unit within gslice; fusable)
> +	 * - L3 Bank (fusable)
> +	 * - MSLICE (fusable)
> +	 * - LNCF (sub-unit within mslice; always present if mslice is
> present)
> +	 * - SQIDI (always on)
> +	 *
> +	 * We'll do our default/implicit steering based on GSLICE (in
> the
> +	 * sliceid field) and DSS (in the subsliceid field).  If we can
> +	 * find overlap between the valid MSLICE and/or LNCF values
> with
> +	 * a suitable GSLICE, then we can just re-use the default value
> and
> +	 * skip and explicit steering at runtime.
> +	 *
> +	 * We only need to look for overlap between GSLICE/MSLICE/LNCF
> to find
> +	 * a valid sliceid value.  DSS steering is the only type of
> steering
> +	 * that utilizes the 'subsliceid' bits.
> +	 *
> +	 * Also note that, even though the steering domain is called
> "GSlice"
> +	 * and it is encoded in the register using the gslice format,
> the spec
> +	 * says that the combined (geometry | compute) fuse should be
> used to
> +	 * select the steering.
> +	 */
> +
> +	/* Find the potential gslice candidates */
> +	dss_mask = intel_sseu_get_subslices(sseu, 0);
> +	slice_mask = intel_slicemask_from_dssmask(dss_mask,
> GEN_DSS_PER_GSLICE);
> +
> +	/*
> +	 * Find the potential LNCF candidates.  Either LNCF within a
> valid
> +	 * mslice is fine.
> +	 */
> +	for_each_set_bit(i, &gt->info.mslice_mask, GEN12_MAX_MSLICES)
> +		lncf_mask |= (0x3 << (i * 2));
> +
> +	/*
> +	 * Are there any sliceid values that work for both GSLICE and
> LNCF
> +	 * steering?
> +	 */
> +	if (slice_mask & lncf_mask) {
> +		slice_mask &= lncf_mask;
> +		gt->steering_table[LNCF] = NULL;
> +	}
> +
> +	/* How about sliceid values that also work for MSLICE steering?
> */
> +	if (slice_mask & gt->info.mslice_mask) {
> +		slice_mask &= gt->info.mslice_mask;
> +		gt->steering_table[MSLICE] = NULL;
> +	}
> +
> +	slice = __ffs(slice_mask);
> +	subslice = __ffs(dss_mask >> (slice * GEN_DSS_PER_GSLICE));
> +	WARN_ON(subslice > GEN_DSS_PER_GSLICE);
> +	WARN_ON(dss_mask >> (slice * GEN_DSS_PER_GSLICE) == 0);
> +
> +	__add_mcr_wa(i915, wal, slice, subslice);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h
> index d44d0050beec..e5b53e298e13 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1696,6 +1696,9 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)-
> >has_runtime_pm)
>  #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)-
> >has_64bit_reloc)
>  
> +#define HAS_MSLICES(dev_priv) \
> +	(INTEL_INFO(dev_priv)->has_mslices)
> +
>  #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)-
> >display.has_ipc)
>  
>  #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c
> index f28206484552..d0f18230dae8 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1012,6 +1012,7 @@ static const struct intel_device_info
> adl_p_info = {
>  	.has_llc = 1, \
>  	.has_logical_ring_contexts = 1, \
>  	.has_logical_ring_elsq = 1, \
> +	.has_mslices = 1, \
>  	.has_rc6 = 1, \
>  	.has_reset_engine = 1, \
>  	.has_rps = 1, \
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index 1669aa8e1cff..0009833fa033 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2695,6 +2695,7 @@ static inline bool
> i915_mmio_reg_valid(i915_reg_t reg)
>  #define   GEN11_MCR_SLICE_MASK		GEN11_MCR_SLICE(0xf)
>  #define   GEN11_MCR_SUBSLICE(subslice)	(((subslice) & 0x7) <<
> 24)
>  #define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
> +#define   GEN11_MCR_MULTICAST		REG_BIT(31)
>  #define RING_IPEIR(base)	_MMIO((base) + 0x64)
>  #define RING_IPEHR(base)	_MMIO((base) + 0x68)
>  #define RING_EIR(base)		_MMIO((base) + 0xb0)
> @@ -3113,6 +3114,9 @@ static inline bool
> i915_mmio_reg_valid(i915_reg_t reg)
>  #define	GEN10_MIRROR_FUSE3		_MMIO(0x9118)
>  #define GEN10_L3BANK_PAIR_COUNT     4
>  #define GEN10_L3BANK_MASK   0x0F
> +/* on Xe_HP the same fuses indicates mslices instead of L3 banks */
> +#define GEN12_MAX_MSLICES 4
> +#define GEN12_MEML3_EN_MASK 0x0F
>  
>  #define GEN8_EU_DISABLE0		_MMIO(0x9134)
>  #define   GEN8_EU_DIS0_S0_MASK		0xffffff
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index 121d6d9afd3a..2177372f9ac3 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -133,6 +133,7 @@ enum intel_ppgtt_type {
>  	func(has_llc); \
>  	func(has_logical_ring_contexts); \
>  	func(has_logical_ring_elsq); \
> +	func(has_mslices); \
>  	func(has_pooled_eu); \
>  	func(has_rc6); \
>  	func(has_rc6p); \
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
