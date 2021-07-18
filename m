Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 059BE3CC947
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Jul 2021 15:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB846E057;
	Sun, 18 Jul 2021 13:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4CCB6E057
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Jul 2021 13:10:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10048"; a="272058662"
X-IronPort-AV: E=Sophos;i="5.84,249,1620716400"; d="scan'208";a="272058662"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2021 06:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,249,1620716400"; d="scan'208";a="574991791"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2021 06:10:35 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 18 Jul 2021 06:10:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 18 Jul 2021 06:10:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sun, 18 Jul 2021 06:10:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 18 Jul 2021 06:10:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xqjb+UTMIDS2WnWoRFEJRaDIvFjK8ETd9jzIf+Y+GuV38gyjYdaaZKNE7G68qrQMvYpKQ0F0dGzeDoCraarhVpKg4TFYSg124AM6mBgV0rw+V1bxs4NGn73FHaOnc38IiJVPZScSjqMO2fxIMbO41NZN89S/1+SwgFeDpa5EvzusHTIZjAtExNBsTWFJnH7t35hVuN+STgOGl4cxxyPY7izsvVoFv8ZG9U3gEEuzLNCuMflfd3Yq55Liu8Hd2gk67t2qR2geoQie5iUcz205qom1unSs9gCsChkHles6zA6uV1RYNUXAGja+pOOsg91bJEnIcrvwkMmMhLUmGM93OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qmzq6GMQUwgmLwRwVasTs/BRwykMOq/6LTQhsS54u2s=;
 b=YmtpgpK+S10BPmeq7Q4gm1oMRRru/xkGx5isuobp/1xxX3WFpI6MIFlYOLvB1Aq5Twa1PqojxLoqr8G9pEebX1vH3PLzXaXncWEjKKfkwS+tT+vzBw4OvQ+pRPz7mGudfbgTQag3Cbj03i6NrHME1ESa8IZ7CvL/HV/1pSBOnHuotQsMHFLkVmBk86c01cjJnXGzjZPuzHB939krcl3Jo3r9t8fwdFs9X94EHmjLCEFX0zYknR+1c+sOw5EnNP17c5M0xVtVSDBleGv7Gl1tXZ0PJfpkDxlL5cicQc7DVaYCLH1M6AZb6SR+aCBBtz6Vy1hzZCR+9Yh2B2gv5aTGCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qmzq6GMQUwgmLwRwVasTs/BRwykMOq/6LTQhsS54u2s=;
 b=kDsLxp04fupJqV2kY01+icZYyt0zQxidZhb/3fYbCeonqtETD7FV2eNenJ8Ytem0lWvZ7ropHsMqHgHAmVgW6TThj4skkgOqscEVAvLT2zFbipP7ZFU+4XkJC/y60qVV4Lf8eXgd5BX8RxCjJ8Xi6KufopFQ2daKRjnQRxO4UcY=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL1PR11MB5286.namprd11.prod.outlook.com (2603:10b6:208:312::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22; Sun, 18 Jul
 2021 13:10:33 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%4]) with mapi id 15.20.4331.031; Sun, 18 Jul 2021
 13:10:33 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 17/50] drm/i915/xehpsdv: Add maximum sseu
 limits
Thread-Index: AQHXeF6nykMbB1VmH0mFBDX1UWP8W6tIu9MA
Date: Sun, 18 Jul 2021 13:10:32 +0000
Message-ID: <697ac22290be4e34206ac0c91d4461c167e732da.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-18-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-18-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 601afc71-23fa-4843-5ba0-08d949ed6cc4
x-ms-traffictypediagnostic: BL1PR11MB5286:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL1PR11MB528699169658761C8E0F6B0B9FE09@BL1PR11MB5286.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wecdMUO5veOPDl/1J8tlddXiPS4e610xJ30B7YZiN9LDELXtpqwfcsNUU7r2Ny6ikYnQzTL15zxSLo4KNZjnlRJYOHGYoMIXFZzNt2XRGAglfQ1P6OzEzEppPA5FO5Ml5DJywYz7Kp7TjuDM80Tv4vs6Tk8x4fT6eE2ycJEu168LeZl0c5BVp064Dh5tPuo0cd6+IXHRO28bog+5BBbsRIEQ0gb9GbxYe2KyYDtcxi+GUsau4u8HSdzYXeI2vKWbYBUN3v8TQLXdFnl9NTHuZk60ZOKHoO5iohEGrntQH7zlbTJd5SpWo4clyJGBvsBlUkM/dDVMiBq5LaLrMUoc9I5tjo3ljK32cfuHh2k/ji7RtU7lQPDavVG85f07rLwOmFRSszvlHReT95oFS5NtLyShHVF/FxyQsuCZ1aNjxq574RG+33agHMHdSwz+wQcyURkTY15Nb7/T6KTY0oDad5RxtNUz3odzSmwRqZjMW9w1noOdhu5DI1V6qRccEtkIo/WJFPc0LqYV2vvKe8dISQojrdh3UWmuzIoyRAnj9x9M/pxXs7mVIW+ufztR0AuNZJapXWsmjaZiyRfVkbf3Q4dlX4F7JK7N5r6uqGXfTIE6qpuRxp05yujdlFFXLi0ujwZTuknUWtVyg4PgvutRyls5HZ/VJufIE36FZEQv41l+j+W6y8qUXAWgRL4pGE9skCPUJwvuhVYdERggy4iqrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(83380400001)(478600001)(36756003)(91956017)(76116006)(66946007)(8936002)(8676002)(86362001)(122000001)(110136005)(6486002)(5660300002)(186003)(316002)(6512007)(2906002)(64756008)(66446008)(71200400001)(6506007)(66556008)(26005)(66476007)(38100700002)(2616005)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXJDN3VGaGxVbUJYak5CTDcwMzByUmxuZ2xYWkl1Tmh2bW9YRHFiY3ZlSi8y?=
 =?utf-8?B?ZXdnSno4a3JYdWtWend0Q3hTYnV1cFhlZXpqS2RpcnVTY1J3NDFGZlVPWXFx?=
 =?utf-8?B?VW1kNHNaQm11THZDbHk2dkg2dmc5eDFzc0l3Q1k3ZGlwcFFnc2pCQktZVXlh?=
 =?utf-8?B?TVkreXkrOXhkSTNla1NNdmd0Y295UGx2Z2FGcmhWU0EyRlhEOGx2ZTkxdUFU?=
 =?utf-8?B?cktqeGdRVzJyQ210OWlpZ3FGeGhUYWJkcTd5T1lTdDFrd3UrL0pWbSszd0Zt?=
 =?utf-8?B?bnFXSkJhY3hCWkU5cWdtRkVIMUtSREM2OHdiaVJsNFBFb0ZzTCtaUmZVUEtx?=
 =?utf-8?B?QkxBellqRFpjb3JMYzh2Y0xGdFF4Qk1pbHlZdjlVcmFEZ0c2MzRIam9KQ09y?=
 =?utf-8?B?bU5WbjdvT3FRdFM3Wk56K2pqaVdUMjQxakduUVQ5TnZlWkE3bjBDZlV6VUtP?=
 =?utf-8?B?WkZqVi9zNmVYd0M2WGZvRXVjOVB4M21GNHQvVjN1MVpocWM2T3dOUzFJUDFH?=
 =?utf-8?B?RlF6NXAwUkhtM3ZMSjVzZjdHZ1BYRG5PUVAwRlUvLzJ2K1hXMWlSWDdmczFN?=
 =?utf-8?B?VGwwbGhERzVKMVczTDZ1SDdjdVQzYWNyb25PNjA5SldiVm5QSWFkL3UyNUpO?=
 =?utf-8?B?bTVkc2ptWGM3dS91QXFCdHRBTnVNY1pwaUNqSEpNN3hZSkx0b1drbGxrWU44?=
 =?utf-8?B?UXBNUjBhNmwyRi9oYmxxcXI1cDlrVjJ5WElpcWdGRFo0Mkl3L2lCSE1DdDhM?=
 =?utf-8?B?MDRVMnM3aVZaekJnSlkrU256SlcrTE5MMmFTNnA1cHJxd0Vaam5MRHgyTEdK?=
 =?utf-8?B?Q0VvQ2Z5RkYrVmpERTFpVlpiS3I3dmMvVGJFNjRJWHQ3ZlVYSG9LNXRIbjNv?=
 =?utf-8?B?ODZRc3JYQ3ozWmxZemNDNno4MlZPd1B4OG1FYTlxekdvc29NUXpKL3Zyd3Vk?=
 =?utf-8?B?b0FBaFBSTnQva1duVk15OHhIWTFIZ05MYzcvcUpGSTZMSmFveXQzSmxuU1pv?=
 =?utf-8?B?R1BubmNON3BWejBVRGJEeXk4eVNsVy9ZNG9KTzNlREpTYk1jeXRaa1d0TTJx?=
 =?utf-8?B?U3N0VmcwR0tKcGNsSVdUMk1zVko3ZWJLci9rQXFjbUlnL0tNRFMzR1JpV3ds?=
 =?utf-8?B?dnJMOFluTXFJQzc1MGkvYUJRVWFGOEJ2QThHUzNGSFYxL2FuRzdwaUxTZEMy?=
 =?utf-8?B?R2s0aENnSDlUSHVRTlZLdUFSZ1JCVHdQdThSME5RSmRYRStOcXRnSVZuZkx3?=
 =?utf-8?B?eER6V1RqY3pjdG5oK2MvYVJUR2dLOWFHdzUyT3FWOW04elZHQlNHOXJBWml1?=
 =?utf-8?B?a2NDU2xNRUk0T0d3N1BrN3RaVFI0QzAxYVh5YU91SXdtODZwVmxWZ2x1c05H?=
 =?utf-8?B?bC9jWXcweFBhOUFrWjAwZjdFS0VITmZYUVFoOFM3ODN0SFlINXhVR0dRTGtn?=
 =?utf-8?B?SEtmSXRuUzc5Mm45WGV3WXV1WHQ0ajNkclVQY2puRCttQWp4ZTl1MmZuV2ZZ?=
 =?utf-8?B?cWlsbEVpRXl1V0NIbGgrRnlMOFQ1NzlPRFNwY0hrZVRYUGlCTWJVNXVkWHdB?=
 =?utf-8?B?ZmVSTXN4UnY2OWZzWEhsZUVBV3gzN21JWDQyTy8rR2tzejVscDhCd3IvbG5n?=
 =?utf-8?B?a25VNFZiVG9WamYyOUdQMTJOUzN2bGdNUXJ1aFdCV2FtQXJ6ZjlqbTdEK2xn?=
 =?utf-8?B?ZVloZjFGWVY0N1dMMFM4Q3FDQkw3bDJqb01GTjZUbE1aSHNDcS9QeWJLSVB2?=
 =?utf-8?Q?sAPfqtwixOOoXsspkOweROZuedZa1rU3wVSvy9v?=
Content-ID: <6C1183C94D6F2641B05F359FCF6F6608@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 601afc71-23fa-4843-5ba0-08d949ed6cc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2021 13:10:32.5592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8lP8SMXpzijaYMI/poWeqwAqdTD8++HJDOOjshweIFMqXmHASPNIicfiftMm/zbY7Bsle6B1w2iwWP/kaWZeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 17/50] drm/i915/xehpsdv: Add maximum sseu
 limits
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

Reviewed-by: Caz Yokoyama <caz.yokoyama@intel.com>
-caz

On Tue, 2021-07-13 at 20:15 -0700, Matt Roper wrote:
> Due to the removal of legacy slices and the transition to a
> gslice/cslice/mslice/etc. design, we'll internally store all DSS
> under
> "slice0."
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_sseu.c         | 5 ++++-
>  drivers/gpu/drm/i915/gt/intel_sseu.h         | 2 +-
>  drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c | 2 +-
>  3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 5d1b7d06c96b..16c0552fcd1d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -145,7 +145,10 @@ static void gen12_sseu_info_init(struct intel_gt
> *gt)
>  	 * across the entire device. Then calculate out the DSS for
> each
>  	 * workload type within that software slice.
>  	 */
> -	intel_sseu_set_info(sseu, 1, 6, 16);
> +	if (IS_XEHPSDV(gt->i915))
> +		intel_sseu_set_info(sseu, 1, 32, 16);
> +	else
> +		intel_sseu_set_info(sseu, 1, 6, 16);
>  
>  	/*
>  	 * As mentioned above, Xe_HP does not have the concept of a
> slice.
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> b/drivers/gpu/drm/i915/gt/intel_sseu.h
> index 74487650b08f..204ea6709460 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> @@ -16,7 +16,7 @@ struct intel_gt;
>  struct drm_printer;
>  
>  #define GEN_MAX_SLICES		(6) /* CNL upper bound */
> -#define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
> +#define GEN_MAX_SUBSLICES	(32) /* XEHPSDV upper bound */
>  #define GEN_SSEU_STRIDE(max_entries) DIV_ROUND_UP(max_entries,
> BITS_PER_BYTE)
>  #define GEN_MAX_SUBSLICE_STRIDE GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
>  #define GEN_MAX_EUS		(16) /* TGL upper bound */
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
> b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
> index 714fe8495775..a424150b052e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
> @@ -53,7 +53,7 @@ static void cherryview_sseu_device_status(struct
> intel_gt *gt,
>  static void gen10_sseu_device_status(struct intel_gt *gt,
>  				     struct sseu_dev_info *sseu)
>  {
> -#define SS_MAX 6
> +#define SS_MAX 8
>  	struct intel_uncore *uncore = gt->uncore;
>  	const struct intel_gt_info *info = &gt->info;
>  	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
