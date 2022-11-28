Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AEF63B28F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 20:52:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAC4310E356;
	Mon, 28 Nov 2022 19:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C32310E331
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 19:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669665140; x=1701201140;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ISLcBaZXBSugXWT/NRQrqf9F/qlrgdBIohhRwd76GoA=;
 b=F8W26yAN14Fgw/Na4H2rdFEka/3AFxr+IPyNsPWhwuc/L98je78bLQGF
 fMRQDJb6ZzYWo76D7RHKJupjsUvjabZKWwQ54C3v2Dywi7HKfLwKSjmeA
 NVS25j27wXh6jDqOi6RpFZqMl20p+7P+C0mcH7AMSwV8blBubKacrlmJ0
 TCBshvs8go+Bv7fXQ3sWjVCtKZVJ7rR6lVi3iFegEMwHrFpajZsybgC0i
 Hq/jOPIhmeGBj0Suwl0OIQjdIJUqR7PtR1Nxya+a3KEeLtSl7sgJNCmbI
 KHyUuXuHJv5j77tAN3uRm58EHT0AMmyZV97YcycspeXRYagVztWDMQQKS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="313640704"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="313640704"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 11:52:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676168101"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="676168101"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 11:52:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 11:52:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 11:52:17 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 11:52:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmzsbUPivqTcblli6F/SuuuDPin59dn9Uydu9Oa0uIIXoEeEfQEcVNKerabMRZpw+FeBjWOYGq+fVEgRdCUqRuqIPWH4aBUVmPSJrbEZC7spCYYlRYL6Hpg1Uq7onUmlBY17vcwZ4ICarm0XJUfP8DLAXx0yqIowKyXqIcYADF0qbhJlrRlJ7ZJo76283Eays2gHvFLaRUdtKi2k0N+12/aSatsaBsh/XHetT1DlLzgghqicP/6MjQVogFKKWwJ2ZQyzGvaJH63cRhB9ntpessvGC0Ya+PZPyX59Cb0pHlR/75GregkTGLyVe1e8D8H/H04Be1BAk235N/nx1vpXpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sAlukGXMgdlvpDqHirVgmSIS8d0oxSyp3L+W9zkvq44=;
 b=cQpkLNzGBiCQrSPsrLilKk6PhuzfFGIrwYMmTNfCi8ZOSoKz4YJ/zX/8lTvU1yP5xbW0CbcpElQp51t3uVR6wpfsRLNWgrMf51HftpRNx9HB7n6a9+7ZYiaKpjwEyNaAEgAThoMtyGWD74Tq+BE4o8vKLRFU/Yn1RlfHN6fciJuSl+KbhfKAzFyReNlZDn4Q8UU6jgZZTFsEZipUKBQFc2qCQHW4VYN4xl3b1LgCU5/ITxZg4iHX5M5AGhlaCrR7eII0NFTwMBEenzMk+Ft7ZEBVA5GrY6uVyJp8ZjYEdrL+N8yxo5nqCoPAXwLomeIgJjEVq3LCkX1bIxLAzC0Sjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 by CH0PR11MB5523.namprd11.prod.outlook.com (2603:10b6:610:d6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Mon, 28 Nov
 2022 19:52:15 +0000
Received: from BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::5a00:2abf:1a27:d980]) by BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::5a00:2abf:1a27:d980%5]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 19:52:15 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/mtl: Define new PTE encode for MTL
Thread-Index: AQHZAxAWypVwO27RVkyMthYJcJAFSq5UvWaQ
Date: Mon, 28 Nov 2022 19:52:15 +0000
Message-ID: <BYAPR11MB2567D3C27AF5E87453E722FA9A139@BYAPR11MB2567.namprd11.prod.outlook.com>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <e65f3bc9dc0f90bc95bd529d2822568ac596be28.1669629369.git.aravind.iddamsetty@intel.com>
In-Reply-To: <e65f3bc9dc0f90bc95bd529d2822568ac596be28.1669629369.git.aravind.iddamsetty@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2567:EE_|CH0PR11MB5523:EE_
x-ms-office365-filtering-correlation-id: 1f54c2a5-b93b-491f-d4a2-08dad17a0c7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n4aXBsN/n8CFjJ50TkjCiHE1UZPaQtIMYJ9wiOC1JaEiyTqvY1z2rT/7j51gx5Jw9dJysRRMXulmVEt8WdB/WoRNqyYukPkn7UABhiZpYp8WWQi0/EYjEuRnE31OBzaQ7cOX3cvqMTYEWfGw2asbttsM5Jmkhf/p486UhRcu0S99wZA3nndsBArlwXSirkzQhpL7AImhHEI6902tulPAWgLrLTvlcNHdB94w8dxM6ab4S0EB2S4PMdXTRLe8IJlnJ8k//fif8XEundhHyFsdsKndb7oK1ShPeSwZaZ1qSJuPuQTzdI5rWAaGminhEkNtIAU6Ek7L7D4CrQfSFDV74ZuvqxhLs7IVVAGnxzWtYwG/jAXxZgRjjfBa9DjoQygH51+Nn2lqsIGy2cXSAau68ShdzKnxouWjDxtv0ChUSYnxot9PDqNZf2KxE2Sk3wSX0HUBePTiAlhGr1GjzLpSArvEkHHcyTNendUCV4MFI/ocskRPbYwtLmhna5mhqZ02sZzO7RJ1onm/BV2aUHds3xLLWFyr+ipD1i4/+npxq2FolM4MbYr16y3L7odlJ19oRELWxzHXPI6cBSnzW/yuoDOQLgystt+9ibCFPCO+356bV0sZZHPHUG0x+D5As2Ol2kz/F23jNWrEr9CtbejzPIu9UaaFxpCtWpVDovbo4CfWfjQgFY4kSaQWSLXKQ6MO27cCDBudK/04JA1zeIxxNw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(366004)(39860400002)(396003)(346002)(451199015)(66556008)(52536014)(186003)(8676002)(41300700001)(8936002)(66446008)(76116006)(9686003)(53546011)(66946007)(64756008)(107886003)(7696005)(316002)(478600001)(66476007)(71200400001)(4326008)(33656002)(38070700005)(6506007)(86362001)(55016003)(83380400001)(5660300002)(2906002)(26005)(54906003)(110136005)(122000001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vCiqFKzjNA/8x0ZGf9BY4xf51Uh0QjyXHv4+h72ssetI/+93T/93hSY7YujH?=
 =?us-ascii?Q?MvJP20bgmVuP3rjJA09Hw6Nmaj47ASjJevT1wvpDxwzB/gKwabrzzuSak+8u?=
 =?us-ascii?Q?6mK1oET7cT09LNPmFb6OSj7NmX2CBqKAGxORcMj+PmJmgDRg6hN/ASibXeja?=
 =?us-ascii?Q?QI+aUFIcPvj/JQEyIRqFWsi32MXScw8mOJo+XH/YP6Mn0D4cN4cwcvJypl9D?=
 =?us-ascii?Q?O1IAckfugUAUP5eVZlsSfJLg0MwN77vbuCzWCXciptyrR8ZJVY51kFVxoGij?=
 =?us-ascii?Q?uthHylE2zHzuEIHyePSjTsshOpMSNNwXfYzmGwRlQvAcU96T1TW/ZbfeVszJ?=
 =?us-ascii?Q?Hjvs0wN41yXbv03YcH0gRkPEuQilhjouStA175uzAiUlkYu/9u8lCXm8tRs1?=
 =?us-ascii?Q?EJUKFo5z7hnrZcnjez+98+PEoiPZVrMw0JanbODxA3xnzT4kW9KTAFeBMFhe?=
 =?us-ascii?Q?4dFDaPXDUwZQqAt0Kh941LIP/GZeP/AJ67dgP2XYH7TlM+AkHSsDhqHUU9Fv?=
 =?us-ascii?Q?4Jxr66yr0+yWP0+8cZj2JbsZ8thVMPGKP4nMuE6pT/lWVCqlB3KgnL3b6FhM?=
 =?us-ascii?Q?ezH0ypZQOGGBgcddtpk5IFp6xIZctvSMjyr9fbYY3ZWRAkra+kswugEyXLwV?=
 =?us-ascii?Q?SSu/eCnjDoWwoZj8H+oZMB/ec8K/GOjwDIZfb9MOyTn1UGvs2PYfHcFPhdNU?=
 =?us-ascii?Q?pA0txnPX80NDoxpogMrG+ZUd7hIwZbiAosILnVzzGEsYlkOTX9hGp3jLGAvk?=
 =?us-ascii?Q?c/ms5V//K/8bj3XoOu6agZ50X8rub7jgd9dedRQQBTE7x5Vxe3LVcEEHcaUv?=
 =?us-ascii?Q?hb1OaPjmcEdlFVmAf8EdnT4EHOhhvMgvflnGvwNsc1KCAJdb95y4Au1AQHrg?=
 =?us-ascii?Q?V5Cu3ArYNgMhkJd5hiH6msWKahJdvPvCgqfpbOF/PLdfZ8kDbhoKNf/hNO4Z?=
 =?us-ascii?Q?mJPs/QIDlq6+AIBKa4PJO8pE81KtWiQhc516Gz5q6He16sK1tcMc88wngi2H?=
 =?us-ascii?Q?q3EULsjeCzsDRisumzDy2vWNwrC6m1LADqjXlag4FZkpDw04r7HS/kYwguzq?=
 =?us-ascii?Q?zgJ6Sw92p5uxmpb45Z2rqw2nykY58HqHBMoFqZSVm6BsL2JD2AsFYfE3axrv?=
 =?us-ascii?Q?GvLXgDFfhlUlZNOrJoCtMxzPGZ8veyRCs3qhsu1SKd6XPoxxrvXdBNB8H+FI?=
 =?us-ascii?Q?SXJT9w8aS4/0VfjUdy5CjTiE1jQ+TA1YkgaHUhMUQC8ghbOIBYuvdG0zZJch?=
 =?us-ascii?Q?j3nZKipXj9x4C8utwdkxlR+kfK/Viu6NL+JfpBw3Sq8ahue0ghRYg5QBFu7G?=
 =?us-ascii?Q?R9UhqiP9XxawuA/tfyNzk9I/fb3d6wTE+flLL8GQJ6LzDKuMh8ITvUllFJFh?=
 =?us-ascii?Q?1bitC4Z7h04Q6V9023PUksqft4freSbdLLzhrelcxSvK0R01yFpVgmtdLJ5l?=
 =?us-ascii?Q?YHsqT+tnnVEsP7tcHL2oOqQpH7WTh64ourzaD6bgi5K+76FYRBETvBGIQfo+?=
 =?us-ascii?Q?/3hHWiNn10FWneb2WN7s022giVT0B8E14JT+MfGeg+lVGSERIOkO3a0MiJIo?=
 =?us-ascii?Q?KByMqU8M1Y+NpsARWQk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f54c2a5-b93b-491f-d4a2-08dad17a0c7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2022 19:52:15.2044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GfLiZ+6EuWouUX5Lu0iJtLWEqCAIFtaQe/DgncnEjGEVZpbJ4kQcwh4ty4YKcsSfwA8Ri1IskgPTyjN3cfMQrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5523
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/mtl: Define new PTE encode for
 MTL
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Iddamsetty, Aravind <aravind.iddamsetty@intel.com>
> Sent: Monday, November 28, 2022 2:14 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; Roper, Matthew D <matthe=
w.d.roper@intel.com>; Yang, Fei <fei.yang@intel.com>
> Subject: [PATCH 2/3] drm/i915/mtl: Define new PTE encode for MTL
>
> Add a separate PTE encode function for MTL. The number of PAT
> registers have increased to 16 on MTL. All 16 PAT registers are
> available for PPGTT mapped pages, but only the lower 4 are
> available for GGTT mapped pages.
>
> BSPEC: 63884
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Co-developed-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 43 ++++++++++++++++++++----
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.h     |  4 +++
>  drivers/gpu/drm/i915/gt/intel_ggtt.c     | 36 ++++++++++++++++++--
>  drivers/gpu/drm/i915/gt/intel_gtt.h      | 13 +++++--
>  5 files changed, 86 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i=
915/display/intel_dpt.c
> index ad1a37b515fb..cb8ed9bfb240 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>       vm->vma_ops.bind_vma    =3D dpt_bind_vma;
>       vm->vma_ops.unbind_vma  =3D dpt_unbind_vma;
>
> -     vm->pte_encode =3D gen8_ggtt_pte_encode;
> +     vm->pte_encode =3D vm->gt->ggtt->vm.pte_encode;
>
>       dpt->obj =3D dpt_obj;
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/=
gt/gen8_ppgtt.c
> index 4daaa6f55668..4197b43150cc 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -55,6 +55,34 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>       return pte;
>  }
>
> +static u64 mtl_pte_encode(dma_addr_t addr,
> +                       enum i915_cache_level level,
> +                       u32 flags)
> +{
> +     gen8_pte_t pte =3D addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
> +
> +     if (unlikely(flags & PTE_READ_ONLY))
> +             pte &=3D ~GEN8_PAGE_RW;
> +
> +     if (flags & PTE_LM)
> +             pte |=3D GEN12_PPGTT_PTE_LM | GEN12_PPGTT_PTE_NC;
> +
> +     switch (level) {
> +     case I915_CACHE_NONE:
> +             pte |=3D GEN12_PPGTT_PTE_PAT1;
> +             break;
> +     case I915_CACHE_LLC:
> +     case I915_CACHE_L3_LLC:
> +             pte |=3D GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
> +             break;
> +     case I915_CACHE_WT:
> +             pte |=3D GEN12_PPGTT_PTE_PAT0;
> +             break;
> +     }

How are the PAT indices greater then 3 being handled for ppgtt?

> +
> +     return pte;
> +}
> +
>  static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)=
  {
>       struct drm_i915_private *i915 =3D ppgtt->vm.i915; @@ -427,7 +455,7 =
@@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>                     u32 flags)
>  {
>       struct i915_page_directory *pd;
> -     const gen8_pte_t pte_encode =3D gen8_pte_encode(0, cache_level, fla=
gs);
> +     const gen8_pte_t pte_encode =3D ppgtt->vm.pte_encode(0, cache_level=
,
> +flags);
>       gen8_pte_t *vaddr;
>
>       pd =3D i915_pd_entry(pdp, gen8_pd_index(idx, 2)); @@ -580,7 +608,7 =
@@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
>                                  enum i915_cache_level cache_level,
>                                  u32 flags)
>  {
> -     const gen8_pte_t pte_encode =3D gen8_pte_encode(0, cache_level, fla=
gs);
> +     const gen8_pte_t pte_encode =3D vm->pte_encode(0, cache_level, flag=
s);
>       unsigned int rem =3D sg_dma_len(iter->sg);
>       u64 start =3D vma_res->start;
>
> @@ -743,7 +771,7 @@ static void gen8_ppgtt_insert_entry(struct i915_addre=
ss_space *vm,
>       GEM_BUG_ON(pt->is_compact);
>
>       vaddr =3D px_vaddr(pt);
> -     vaddr[gen8_pd_index(idx, 0)] =3D gen8_pte_encode(addr, level, flags=
);
> +     vaddr[gen8_pd_index(idx, 0)] =3D vm->pte_encode(addr, level, flags)=
;
>       drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr=
));  }
>
> @@ -773,7 +801,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i9=
15_address_space *vm,
>       }
>
>       vaddr =3D px_vaddr(pt);
> -     vaddr[gen8_pd_index(idx, 0) / 16] =3D gen8_pte_encode(addr, level, =
flags);
> +     vaddr[gen8_pd_index(idx, 0) / 16] =3D vm->pte_encode(addr, level,
> +flags);
>  }
>
>  static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm, @@=
 -820,7 +848,7 @@ static int gen8_init_scratch(struct i915_address_space *v=
m)
>               pte_flags |=3D PTE_LM;
>
>       vm->scratch[0]->encode =3D
> -             gen8_pte_encode(px_dma(vm->scratch[0]),
> +             vm->pte_encode(px_dma(vm->scratch[0]),
>                               I915_CACHE_NONE, pte_flags);
>
>       for (i =3D 1; i <=3D vm->top; i++) {
> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt=
 *gt,
>        */
>       ppgtt->vm.alloc_scratch_dma =3D alloc_pt_dma;
>
> -     ppgtt->vm.pte_encode =3D gen8_pte_encode;
> +     if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
> +             ppgtt->vm.pte_encode =3D mtl_pte_encode;
> +     else
> +             ppgtt->vm.pte_encode =3D gen8_pte_encode;
>
>       ppgtt->vm.bind_async_flags =3D I915_VMA_LOCAL_BIND;
>       ppgtt->vm.insert_entries =3D gen8_ppgtt_insert; diff --git a/driver=
s/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> index f541d19264b4..c48f1fc32909 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>                        enum i915_cache_level level,
>                        u32 flags);
>
> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
> +                     enum i915_cache_level level,
> +                     u32 flags);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index 8145851ad23d..ffe910694ca0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -237,6 +237,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *gg=
tt)
>               intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDA=
TE);  }
>
> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
> +                     enum i915_cache_level level,
> +                     u32 flags)
> +{
> +     gen8_pte_t pte =3D addr | GEN8_PAGE_PRESENT;
> +
> +     GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
> +
> +     if (flags & PTE_LM)
> +             pte |=3D GEN12_GGTT_PTE_LM;
> +
> +     switch (level) {
> +     case I915_CACHE_NONE:
> +             pte |=3D MTL_GGTT_PTE_PAT1;
> +             break;
> +     case I915_CACHE_LLC:
> +     case I915_CACHE_L3_LLC:
> +             pte |=3D MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
> +             break;
> +     case I915_CACHE_WT:
> +             pte |=3D MTL_GGTT_PTE_PAT0;
> +             break;
> +     }

PAT index 4 is valid for GGTT, right? which means we need to define
MTL_GGTT_PTE_PAT2.

-Fei

> +
> +     return pte;
> +}
> +
>  u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>                        enum i915_cache_level level,
>                        u32 flags)
> @@ -264,7 +291,7 @@ static void gen8_ggtt_insert_page(struct i915_address=
_space *vm,
>       gen8_pte_t __iomem *pte =3D
>               (gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SI=
ZE;
>
> -     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
> +     gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
>
>       ggtt->invalidate(ggtt);
>  }
> @@ -274,8 +301,8 @@ static void gen8_ggtt_insert_entries(struct i915_addr=
ess_space *vm,
>                                    enum i915_cache_level level,
>                                    u32 flags)
>  {
> -     const gen8_pte_t pte_encode =3D gen8_ggtt_pte_encode(0, level, flag=
s);
>       struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
> +     const gen8_pte_t pte_encode =3D ggtt->vm.pte_encode(0, level, flags=
);
>       gen8_pte_t __iomem *gte;
>       gen8_pte_t __iomem *end;
>       struct sgt_iter iter;
> @@ -984,7 +1011,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>       ggtt->vm.vma_ops.bind_vma    =3D intel_ggtt_bind_vma;
>       ggtt->vm.vma_ops.unbind_vma  =3D intel_ggtt_unbind_vma;
>
> -     ggtt->vm.pte_encode =3D gen8_ggtt_pte_encode;
> +     if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70))
> +             ggtt->vm.pte_encode =3D mtl_ggtt_pte_encode;
> +     else
> +             ggtt->vm.pte_encode =3D gen8_ggtt_pte_encode;
>
>       setup_private_pat(ggtt->vm.gt);
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/g=
t/intel_gtt.h
> index 43bf9188ffef..450ed0541d0f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
>  #define BYT_PTE_SNOOPED_BY_CPU_CACHES        REG_BIT(2)
>  #define BYT_PTE_WRITEABLE            REG_BIT(1)
>
> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
>  #define GEN12_PPGTT_PTE_LM   BIT_ULL(11)
> -
> -#define GEN12_GGTT_PTE_LM    BIT_ULL(1)
> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
> +
> +#define GEN12_GGTT_PTE_LM            BIT_ULL(1)
> +#define MTL_GGTT_PTE_PAT0            BIT_ULL(52)
> +#define MTL_GGTT_PTE_PAT1            BIT_ULL(53)
> +#define GEN12_GGTT_PTE_ADDR_MASK     GENMASK_ULL(45, 12)
> +#define MTL_GGTT_PTE_PAT_MASK                GENMASK_ULL(53, 52)
>
>  #define GEN12_PDE_64K BIT(6)
>  #define GEN12_PTE_PS64 BIT(8)
> --
> 2.25.1
