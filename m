Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A22532D32FD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 21:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2226E069;
	Tue,  8 Dec 2020 20:11:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79BE06E069
 for <Intel-gfx@lists.freedesktop.org>; Tue,  8 Dec 2020 20:11:25 +0000 (UTC)
IronPort-SDR: i6f/KXtdwPaOZ+gA4zpETII2evdVp262gUYgD75xCWMa/5NRKJAWqVzDYk+kFh8oyP5iCcNTQt
 YiLpMkd0Jycw==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="161013415"
X-IronPort-AV: E=Sophos;i="5.78,403,1599548400"; d="scan'208";a="161013415"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 12:11:24 -0800
IronPort-SDR: Qhv4xdeqkQXJW34k1e1QquZq7sFNkRYroE8FLxFNH6YJ205XSLwOHLWjpfJKwc/XfX8YZC7BKD
 iLS04TVwRc8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,403,1599548400"; d="scan'208";a="552365793"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 08 Dec 2020 12:11:24 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 12:11:24 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 12:11:23 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 12:11:23 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 12:11:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qw3CgRvbZ6bNW9KCbjxfx1fbOKHxT3O8kb0wK6HVBu14IttvRIuLAf9kV/L1bpG7oPQtR5tPz9WFEhnRR4Eeh1+v1rCZnijv/8GhVbCcBtAn5ROnJtbrOl1OXT6xNg2k07wB6OTIPe5H/4O7pLO6u60SKG4ndVgInRcRPSAYJSGoo2BkWNVYB/rkF1wRRznyvtKj4ua0I2ev8UwlzOoNj15RRxmOCFZ8ivHYTOm6HsIyE3/WYA6vOYZO2LloWHTrxCvdwhl0Rna5WxcPy34+Tktb1UHFoi2Otw8j1s20UrhVuzx+QwnJPVhrCT9OaD7JRRegA8Rvf7NOINhsO9cfQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sef/ZnUbCGD4CNpkB4KETclkb43XUZivRPMPY59Ik5I=;
 b=isZfRKoN9rnNVPlHGs6BCLDwqEo/Fi/8rzMPHFdWH52nVolUb0cVWtxgvhWpr1W2IfmVIzAxhRx7YOYnDGiPfikqbujGEpBGCnwVy8RwGSkQz6gbphn0XkxUnuC3tDsPt2STz3cHecFaDwqdS6ggPNzNYhOVQy95BYlhzZa2wdo4VLbwUFqeirRCJB7LH8jVedb0B//AqAjdB4E2H266Qcp24NekeXxXLUQfbDDRLWB8lHst4peoKpjFBCwrv5oin6TG/Z1emI1l7tapecq6DAucj9zpx/h4x7liG4S4uFLk4mhJ3MRx5Pb5Eb7/7nXQoiDmkTcPhCjjk/S638HSKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sef/ZnUbCGD4CNpkB4KETclkb43XUZivRPMPY59Ik5I=;
 b=xFvn4uPp0GhaXCmEYf2lFkXN3nEA/Uitli4n+Hjn5GfZ6MDimD3zti4ljP0w0znJyMdBYEr3hLYV0aYJPmesk0G4tFWwtfeL9P4hUdiCuJDES/R1fbqTZB6twSom7RRz0n/dOOcBHt8AXQcu9xaJTdNqUOdF/V8Fo0WD6hqty4I=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3466.namprd11.prod.outlook.com (2603:10b6:5:e::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3654.12; Tue, 8 Dec 2020 20:11:17 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Tue, 8 Dec 2020
 20:11:17 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 03/16] drm/i915/pxp: Add PXP context for
 logical hardware states.
Thread-Index: AQHWzIbUUnmwj50czEWxxHcLYGeyjqnsXNzg
Date: Tue, 8 Dec 2020 20:11:17 +0000
Message-ID: <DM6PR11MB45313947EB92E9DB090E11AAD9CD0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-4-sean.z.huang@intel.com>
 <160733823922.9322.17600246328526278530@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160733823922.9322.17600246328526278530@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73c41b0f-5ac5-4980-f3e9-08d89bb56bc8
x-ms-traffictypediagnostic: DM6PR11MB3466:
x-microsoft-antispam-prvs: <DM6PR11MB3466BD4E1AB191495552C0C8D9CD0@DM6PR11MB3466.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RawpTzozqevcfCZry3zpegZxwVxpyzrP7N0nspK9wMg4R0l1L1Q3amNRx43qYoLO8aF67o6kK4hRYsF0b7f+7sRrAyMZRVdDf6kEX1IanvmzuLYbN5lU+e4TUZVDBoTg+6O7uZk/r53UPCSDoHUw51ET0R+W5QJfQ9aCmKa1J4CiRhaSuqlwYfdYGyuJZynt0CNNvq41MG9FsRfWsFdd3iAynzl+ngqBYVQBR5W+qiHNy+/Hb4rAVfNKPVzQsMAdleyzveQIi+h2pGBr1KMZcgJPIvyVXh6yPinCkY2naAq4OxTA6UxgUvdiv9EMT8Mk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(366004)(346002)(2906002)(71200400001)(66556008)(66946007)(110136005)(8936002)(83380400001)(64756008)(66446008)(66476007)(5660300002)(8676002)(508600001)(86362001)(76116006)(52536014)(33656002)(186003)(53546011)(7696005)(6506007)(26005)(9686003)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?eEdjL1YvOFRBZVdaaWRUcjFtaldOWXVLc01lanVMT3JiVXh4aDNST09WQ3lm?=
 =?utf-8?B?WE5UYTl2aHdhdXNWOHBmeEJEZjc1K1I3Q2xaajFhZ3Z6MkxnTzI0VWhWMlM2?=
 =?utf-8?B?ZVpsOXRud2VTVmZFcFl1ZVNpMkRoWXdlRDdJMXBBdjQ0WDk2cFU0alN1em5j?=
 =?utf-8?B?RUQ3V1psZUxTTjNvV2tjd20yOW9Qbi9LSzV3T0pmb2lCbjFZN2hwd2c0NkNH?=
 =?utf-8?B?RjUvRmJ5Myt5eGxGSlZEaFNieVNyZncyNkVIZ0JHbGZLakJ0U2ZlY3ltVjR4?=
 =?utf-8?B?aUJqQlpUUytsSUZqM0NYeWFMRFB3UWpRelhZcVFXbUpHVEV3UVR5R1p0Q241?=
 =?utf-8?B?M0QwM3RVRERUQVNJSmQrN3o1Rkt1bWloWnZoWkV4R21JWldvdnFmSGh6QXJa?=
 =?utf-8?B?TXpYb0dtVi9CK0VHWTNQUktpblR2YmJ5YlVCZTg1M09GVHQxQVpFUzJqT2xZ?=
 =?utf-8?B?Qk5VdnpOV0xycmcyUEJrRXAwTk9SWURVZVRsN1NEWm1NbWw0MHpiNTFWb0lv?=
 =?utf-8?B?ZzErNzc5RS80UlNHVDZORjZyeGlRVlFZaGVUWWFSTDIvN0Q2L2ZicXFQa0Nv?=
 =?utf-8?B?OHBqbWhxZXBRL25JWHpVWnNiTkVyWGprZUI1MWg3cmlEckhRUy9aWkJsVGk5?=
 =?utf-8?B?UTZlK0VuNWliZjdHT3JrZnc3dTNhRTBHbWpYTmN6R3FYOUp6OXFLNUREMHBy?=
 =?utf-8?B?bklPQ1hsbGxHVG9LR3plMGd1ZFJHcHRQNkVrL2k2YkpSUnhqWGVhVmtPTDBV?=
 =?utf-8?B?QWZmMDVvR0kxODhnbkh6ek53U0Z6cUx6NkY1T01aWXA5SUpjRHRha0NmYXow?=
 =?utf-8?B?YnRKeS96TEpHaytTYjZibkc5SXN2R3YvQ3N3KzZlWXViRXpXVlpQU1lDU0lo?=
 =?utf-8?B?K0hCdk5pTTJVOThUY2RCWE1xZSszOG5XL2RnVW9oSEYrMjl1UGEzbXdXSzZr?=
 =?utf-8?B?aU1sQTZEM0ZuY0NOVHNFc1hHWG16MTZWamcwOFE1ZHdqNDFTazg0c3RKMzVL?=
 =?utf-8?B?Z1FHZjdwem9HeUp1VzlOdDlhMEJzRnZVVStwbFhVT05rUjlwWjRUSGRRQlNR?=
 =?utf-8?B?QjRPV1JPWkNWTEdNMTBMODVFQ3QyaHpHVndlMFAyQmdNRThLTWZnUEdmc1pp?=
 =?utf-8?B?TUxkTEZKMi9kaTE1QUdFMXVwMzE1cjdjdVNETExDRi81bU5WMDQ1cDZCNVdP?=
 =?utf-8?B?NEg0M3RNMDN3TVQzd01NbTJkbVpxVFMyQ250Z3pCVmNRcUc1Y3JaUUZiYzh3?=
 =?utf-8?B?eUt4WUhEZ25BQnpFNjRoaloxanBBenRKN0l2ZG0vVk9qeGM2MWVXWGJBZEJC?=
 =?utf-8?Q?0nErr67q3IrEs=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73c41b0f-5ac5-4980-f3e9-08d89bb56bc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2020 20:11:17.1527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VeU52U/mJA1O8vfikQLPM93YzU6XC8twDoHUck+hHxwRhy5khq3dWSjhUbxh9uT8NwjHhkW1YgVfdKLA1MevDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 03/16] drm/i915/pxp: Add PXP context for
 logical hardware states.
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

Hi Joonas,

> This should really have its own function intel_pxp_context_foobar() that is called from this point.
DONE, remove global_state_attacked and flag_display_hm_surface_keys from this patch and only added them if necessary.

> Also, as you see "ctx_mutex" is tautology and "mutex" is enough when it's member of "ctx".
DONE

> We seem to have two separate interrupts at the top level handler. Either we should handle the interrupts separately or just have a single variable "teardown_requested" that is flagged from here.
I would prefer to handle them separately because they are indeed coming from different irq, having different handler would be more readable.

> The effects of setting these variables can't be reviewed as not even the initialization sequence has been added by the series, so this should definitely be much more towards the end of the series.
DONE, got it, let me re-order the commit sequence and move this patch to the tail.

> The if() check is pointless. Again, we should not directly poke such deeply, but wrap it in a function.
DONE

> I think this should be -ENOMEM.
DONE, no need to allocate or return error.

> As we only intend to support a single context, we should avoid a pointer
> + alloc here and just use intel_pxp_context_init(&pxp->ctx)
DONE

> intel_pxp_context_fini(&pxp->ctx);
DONE

> These should be prefixed with PXP_ also, we should not need these at all if we only intend to support single-session.
DONE, remove them since not required by single session usage.

> Adding "new_" is tautology here. Also, we try to separate the allocation and init to separate functions so that we can embed, like I suggested above to embed the singleton context to intel_pxp as member, not pointer.
DONE

> "ctx_id" is again repeating as it's member of "ctx", so "id" should be fine for member name.
DONE

> We shouldn't need any session tracking as we only have single session.
I have trimmed the code only for single session usage only, but hopefully we could have at least one tag for this single session.

> We should only add each variable only when the handler code is introduced. For now the names don't really give a good hint about what their usage model will be, so can't recommend better names.
DONE

> In this series, there will be no user space context ID, but only a singleton implicit session. So we should not need any tracking code.
DONE

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 2:51 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 03/16] drm/i915/pxp: Add PXP context for logical hardware states.

Quoting Huang, Sean Z (2020-12-07 02:21:21)
> Add PXP context which represents combined view of driver and logical 
> HW states.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -5,6 +5,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_pxp.h"
> +#include "intel_pxp_context.h"
>  
>  static void intel_pxp_write_irq_mask_reg(struct drm_i915_private 
> *i915, u32 mask)  { @@ -28,12 +29,28 @@ static void 
> intel_pxp_mask_irq(struct intel_gt *gt, u32 mask)
>  
>  static int intel_pxp_teardown_required_callback(struct 
> drm_i915_private *i915)  {
> +       mutex_lock(&i915->pxp.ctx->ctx_mutex);
> +
> +       i915->pxp.ctx->global_state_attacked = true;
> +       i915->pxp.ctx->flag_display_hm_surface_keys = false;
> +
> +       mutex_unlock(&i915->pxp.ctx->ctx_mutex);

This should really have its own function intel_pxp_context_foobar() that is called from this point. Also, as you see "ctx_mutex" is tautology and "mutex" is enough when it's member of "ctx".

We seem to have two separate interrupts at the top level handler. Either we should handle the interrupts separately or just have a single variable "teardown_requested" that is flagged from here.

The effects of setting these variables can't be reviewed as not even the initialization sequence has been added by the series, so this should definitely be much more towards the end of the series.

> +
>         return 0;
>  }
>  
>  static int intel_pxp_global_terminate_complete_callback(struct 
> drm_i915_private *i915)  {
> -       return 0;
> +       int ret = 0;
> +
> +       mutex_lock(&i915->pxp.ctx->ctx_mutex);
> +
> +       if (i915->pxp.ctx->global_state_attacked)
> +               i915->pxp.ctx->global_state_attacked = false;

The if() check is pointless. Again, we should not directly poke such deeply, but wrap it in a function.

> +
> +       mutex_unlock(&i915->pxp.ctx->ctx_mutex);
> +
> +       return ret;
>  }
>  
>  static void intel_pxp_irq_work(struct work_struct *work) @@ -69,6 
> +86,12 @@ int intel_pxp_init(struct drm_i915_private *i915)
>  
>         drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", 
> i915);
>  
> +       i915->pxp.ctx = intel_pxp_create_ctx(i915);
> +       if (!i915->pxp.ctx) {
> +               drm_err(&i915->drm, "Failed to create pxp ctx\n");
> +               return -EFAULT;

I think this should be -ENOMEM.

> +       }

As we only intend to support a single context, we should avoid a pointer
+ alloc here and just use intel_pxp_context_init(&pxp->ctx)

> @@ -80,6 +103,10 @@ int intel_pxp_init(struct drm_i915_private *i915)
>  
>  void intel_pxp_uninit(struct drm_i915_private *i915)  {
> +       if (!i915 || INTEL_GEN(i915) < 12)
> +               return;
> +
> +       intel_pxp_destroy_ctx(i915);

intel_pxp_context_fini(&pxp->ctx);

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -12,6 +12,9 @@
>  #define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)  #define 
> PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
>  
> +#define MAX_TYPE0_SESSIONS 16
> +#define MAX_TYPE1_SESSIONS 6

These should be prefixed with PXP_ also, we should not need these at all if we only intend to support single-session.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_context.h"
> +
> +/**
> + * intel_pxp_create_ctx - To create a new pxp context.
> + * @i915: i915 device handle.
> + *
> + * Return: pointer to new_ctx, NULL for failure  */ struct 
> +pxp_context *intel_pxp_create_ctx(struct drm_i915_private *i915) {
> +       struct pxp_context *new_ctx = NULL;

Adding "new_" is tautology here. Also, we try to separate the allocation and init to separate functions so that we can embed, like I suggested above to embed the singleton context to intel_pxp as member, not pointer.

> +
> +       new_ctx = kzalloc(sizeof(*new_ctx), GFP_KERNEL);
> +       if (!new_ctx)
> +               return NULL;
> +
> +       get_random_bytes(&new_ctx->ctx_id, sizeof(new_ctx->ctx_id));

"ctx_id" is again repeating as it's member of "ctx", so "id" should be fine for member name.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CONTEXT_H__
> +#define __INTEL_PXP_CONTEXT_H__
> +
> +#include <linux/list.h>
> +#include "i915_drv.h"
> +#include "pxp/intel_pxp.h"
> +
> +/* struct pxp_context - Represents combined view of driver and 
> +logical HW states. */ struct pxp_context {
> +       /** @ctx_mutex: mutex to protect the pxp context */
> +       struct mutex ctx_mutex;
> +
> +       struct list_head active_pxp_type0_sessions;
> +       struct list_head active_pxp_type1_sessions;

We shouldn't need any session tracking as we only have single session.

> +       struct list_head user_ctx_list;
> +
> +       u32 type0_session_pxp_tag[MAX_TYPE0_SESSIONS];
> +       u32 type1_session_pxp_tag[MAX_TYPE1_SESSIONS];

We shouldn't need any of these arrays as we only have single session.

> +
> +       int ctx_id;
> +
> +       bool global_state_attacked;
> +       bool global_state_in_suspend;
> +       bool flag_display_hm_surface_keys;

We should only add each variable only when the handler code is introduced. For now the names don't really give a good hint about what their usage model will be, so can't recommend better names.

> +};
> +
> +struct pxp_user_ctx {
> +       /** @listhead: linked list infrastructure, do not change its order. */
> +       struct list_head listhead;
> +
> +       /** @user_ctx: user space context id */
> +       u32 user_ctx;
> +};

In this series, there will be no user space context ID, but only a singleton implicit session. So we should not need any tracking code.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
