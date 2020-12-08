Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DA72D1F0A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 01:35:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1036E8AB;
	Tue,  8 Dec 2020 00:35:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD4C6E8AB
 for <Intel-gfx@lists.freedesktop.org>; Tue,  8 Dec 2020 00:35:03 +0000 (UTC)
IronPort-SDR: TMF+nlxCFYikW7ihF8tdI85QxMWlOklw2i81pwcL0uBA0TohegBNT/PXg1hx0CCTZlHCpLu3RP
 LWsakeKQ8gcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="192084473"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="192084473"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 16:35:03 -0800
IronPort-SDR: PXkNLQIzvyPY3SULALsbtfM3kFyDASltCcfFkTwv5gqNylIWajLDN03325JCFS4PhJJLiKAPrU
 Veycf4nvVD4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="539995751"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 07 Dec 2020 16:35:03 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 16:35:02 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 16:35:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 7 Dec 2020 16:35:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 7 Dec 2020 16:34:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z+wOpio/oKLR+ALc6Elfdh1XPE0nawiSBMfnZz9/MiA23oxvfs4yU2E63WiPH8pyn7arEl5yOip8JGzAQzvVomqPksgx4UomwiCKC3Z5JsjAsQ3LJDBhX5Qt9DHfbfiHjfWeIF+b1Nvz267vg9LYXZ29SoTARaGeovBVXo33zAQnN8+wL6tVcho8DXjFLKyVuOmoodlT60STT7PRaU1FmzKuXF6D7a43MihnFOckquz6KlUM0k4vdElW2M1eETkAIg7XQ/IbOJn5C+all1wercx3jAiqYrT/DAV3cNLjklWsbxxl/Rom8yZoUUNzyYTWYYCJmOZ6kuVSEcWUvu0mkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1c8QsANqWBOwr34A0cMbm7eWCEZE45rM5JW39GrSuA=;
 b=l3g/pgnLyrbKDmyh+Yq6ihDpE8/EZhBPdceS4SAHMHJeeoDdDE6cVk13u7Op8FUWYNaCqssVvssGfgUYtLEECEVfRCotS1Iy07kbX1ji59v+lAUJwYK+nr056ewf+Vx3vRatdkN81/ZPDi0AF7ZjGIzqGcTTiHzKea6Jg4pK83gMRjFJjhr5kHqVIyN4RXwl5zd84Wfzsb+9FAMUhB4cqQSx7wnJ7R6l/FQuu19zOP9+nI8XNmsXoCuACfTWWTloS8bfqM7JaEqMM4smW1sXspnIy9KIelUpSmVE8HsZUl1i79cdOKBwWiXsuVjk25GImo2bSiBtl4nUiLv4MNQT/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1c8QsANqWBOwr34A0cMbm7eWCEZE45rM5JW39GrSuA=;
 b=hiqaUTR1Trueo4/wgj7VrqRsrNQQK+z5qwWPgZmcJ0uPlgAOTqgSRuBDyYz5pcFOIyrkoNqFQO8jhh6PWrAu7FSHQbDy+HL62UWEzb54H/ruhU3IhMD8YBZzctDYRkllwjVYOl+5mG+RYRj77W4/1fAKpbyGbbS5CWIHMRxLrZA=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3017.namprd11.prod.outlook.com (2603:10b6:5:6f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Tue, 8 Dec
 2020 00:34:16 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Tue, 8 Dec 2020
 00:34:16 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 02/16] drm/i915/pxp: Enable PXP irq worker
 and callback stub
Thread-Index: AQHWzIKxDpHg1nlPukybW9nIEL2TrKnsDJNw
Date: Tue, 8 Dec 2020 00:34:16 +0000
Message-ID: <DM6PR11MB4531F1A4144A9DF0919F784ED9CD0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-3-sean.z.huang@intel.com>
 <160733646002.9322.17986069886877489765@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160733646002.9322.17986069886877489765@jlahtine-mobl.ger.corp.intel.com>
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
x-ms-office365-filtering-correlation-id: 75d51b43-099d-4828-8ed9-08d89b10fe7c
x-ms-traffictypediagnostic: DM6PR11MB3017:
x-microsoft-antispam-prvs: <DM6PR11MB3017DCC3D9C77F4A1DAFD27DD9CD0@DM6PR11MB3017.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z98TeXrkhg84Zv0UByAy2GaXywRBmevfMUsL05RQ1Nu8PEQDW5seoO78BSM3ZC/9ghP0bS5ifCxnrHWLUoqdrVS19gWys6XFFAH1AVgFwUjAFEglwzZxWOKqdwKlTRHeI3m0sCG0Dlh/w5uQNr2Wsc9loN1H/P+oLKdVQFpbCDD2nY+09Qk4Zyyy4sIxTKM/LYQd/yy3VY1adV9ZBIxmJScbawU1LqDT/DU/5QTiKeJbwbgZd0J35I6xRmKgDF4x+KGCt3t5/qu+ex9er4XWdQHheQ9ZDk0rIwqeLBmkknIAXC1vNzkdwzw+CwVIQGeY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(76116006)(110136005)(8676002)(8936002)(66556008)(2906002)(83380400001)(66946007)(55016002)(7696005)(9686003)(66476007)(316002)(71200400001)(86362001)(186003)(5660300002)(52536014)(64756008)(26005)(478600001)(53546011)(6506007)(66446008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VnZWTGxhTjZYeExSZFNPcmxqRndGR2NURU1MZElsSVFqNlgyQldGUUJlR1h3?=
 =?utf-8?B?U2NIbVdDaTZqdHBUL1U2RUNwTm5yUGd0V1oybEZNdHZCcHZWU050WWJiTmxR?=
 =?utf-8?B?U1RHMDR6NFI4QnJOZURWVXNpcHRMNGtJdWdrSWlidzV0bE9Wc2FxVUhQb0JT?=
 =?utf-8?B?YTZLSE1MSmRVTjF2VlZEbVI1NThmQksxVmRxanc3bk1LS2tsbS9BZndMUWlu?=
 =?utf-8?B?S1lJb3ZaeTJWRlM0UUNJZ1JQMkR5WmNFMkxDbUhpaGJrZFZONmVKMndsSUR2?=
 =?utf-8?B?dm1LV1h1dUJGNFAxUHA3VzRTNDhhaDhXV25RR2dsOHg3Y09iVnFPNWdYMWNz?=
 =?utf-8?B?OUpPL25qaTkrVkcxNHVVbUh0NVBNYW5pRkFpUzdZd0lKLzJtamYwSm90SkJ0?=
 =?utf-8?B?czkzbzQrczFvTHNnRXRlM09HQ1Axby9pNVk4K2FSQlFJY3lJekh1K2QxVUZ3?=
 =?utf-8?B?VDRob1dXdkJkMEhCOHZzRm1ZbDhLSi9iejZuYmFLMXpYSC9KS2VWcUI4K3p0?=
 =?utf-8?B?Wk80SmRmcVg3dHlUUjIxUHBsUlV1MXdDRkI3NEZSdnN3WVRwVTBYSHczaHZh?=
 =?utf-8?B?bnJEdTFsazNOd2JRdUlIY2RONnlTTFdhRHFqekgyQndramxDY1IxRSt2cExO?=
 =?utf-8?B?dEFLYlB3UDN2ZVJQcjVpeStZdlp1TjhiMjBlTjFDUHg5dUxraEdROG4vQ1F6?=
 =?utf-8?B?UE9ndHJ0K1NyaUZlYzI4S1RxekV4WDB1R21EdEo2Mk5TZDBRUDUvd2VoNG1L?=
 =?utf-8?B?VDhQZUNiT3MwbDNpUm9NanVSUW1UWjNjVjRjMWZKVlo5SlNNVFgxU2N3RDBr?=
 =?utf-8?B?cDdxaVZsOXAxZWtXN3QrWHhkbGVYeG1XUDBZR3pwajM4eWdvVEpDaUJPSUhJ?=
 =?utf-8?B?RVQrMnl5a0ZyZldoRC9BU3N5cUYxbkFQUm5DRUxuT3czd25tU2tHbERTbURP?=
 =?utf-8?B?YkxjMVIxVUd6TDlrVU43RnM5RGIrdDNEWm9PVnJ0NkxBOEJqQ0RYemFlTGdK?=
 =?utf-8?B?UTF2elBSSmp3ZnJrSTJsb1BxcVdtRUE4UlExMVpYZ0xsSVI3ek1HMUQrL21R?=
 =?utf-8?B?RUNjRlh5aEZ5dS90NnI1Rlp5eXJBM2J0S0hRdU9JSjVoNWEzTXliVWFGaHY5?=
 =?utf-8?B?a2FKa0xDMnF1cDlYcUtRRWx1aXJTMUZ1UnVxTlNFYUx6MzFvYzhqV2JYVWwy?=
 =?utf-8?B?amRvL1VFNG1xeUVmLzArT2M2N21TTDZWbjlQaVk4cnhYZnpRRk9iTlBUT2h5?=
 =?utf-8?B?Zkk4cEZWcDd1STJXbHVGaHMzeUEzN0p6MDZDNHBtM2gzbWx3emNKTGR1NWdC?=
 =?utf-8?Q?0ELrp2JwFYpxs=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75d51b43-099d-4828-8ed9-08d89b10fe7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2020 00:34:16.3128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WiMDmerMlVbyB9fJ5O0glDSpTcVfGTzzNk2zj1qZREK3pLNQ+6IAfL9U2bLm1bwYEgbQ5CLMqz2TOAuQXQR5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3017
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 02/16] drm/i915/pxp: Enable PXP irq worker
 and callback stub
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

All the modification will be included in rev2. Thanks!

> We should take &gt->pxp as the first parameter and keep a tight scope.
DONE

> Again, we should be taking intel_pxp as parameter to tighten the scope.
DONE

>Instead of writing to register that is indicated to be "reserved" (RSVD), we should properly document the register in i915_reg.h and the comment should not be needed.
DONE, remove RSVD from its name and add document in i915_reg.h

> This INFO message is wrongly placed, either it should say "initializing" and be at the beginning or "initialized" and be at the end. Also see previous patch for more comments.
DONE, 

>_ptr is a tautology, we can already see it's apointer.
DONE, remove the "_ptr"

> We should go from intel_pxp to intel_gt to i915 here, once the struct intel_pxp member is moved inside intel_gt
DONE, yes now pxp is in intel_gt

>The mapping between the callbacks and the hardware events are unclear.
>These all seem like display related events, so we probably need a split between the GT and display PXP code.
>It's hard to review as this only adds stubs and no actual flow. I think teardown interrupt handling should come later in the series after init and other code has been added.
Personally I would still prefer to put this in gt instead of display, because when teardown happen it means the "crypto engine" (This should belong to gt) has loss the key for display.

>This INFO message is wrongly placed, either it should say "initializing"
>and be at the beginning or "initialized" and be at the end. Also see previous patch for more comments.
DONE, change the log as "Protected Xe Path (PXP) protected content support initialized " at the end.


>This enum here feels like a misplaced hunk. We should be adding the enums and structs only when they are used in the patch. Reviewing the logic and looking for dead code is much harder when structs are introduced way earlier than they are used.
>We should be adding the base structs at most and extending them as we add more functionality as we go.
DONE, Thanks for capturing this, this enum is for session management only and I have removed this.


-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 2:21 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 02/16] drm/i915/pxp: Enable PXP irq worker and callback stub

Quoting Huang, Sean Z (2020-12-07 02:21:20)
> Create the irq worker that serves as callback handler, those callback 
> stubs should be called while the hardware key teardown occurs.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -13,6 +13,7 @@
>  #include "intel_gt_irq.h"
>  #include "intel_uncore.h"
>  #include "intel_rps.h"
> +#include "pxp/intel_pxp.h"
>  
>  static void guc_irq_handler(struct intel_guc *guc, u16 iir)  { @@ 
> -106,6 +107,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
>         if (instance == OTHER_GTPM_INSTANCE)
>                 return gen11_rps_irq_handler(&gt->rps, iir);
>  
> +       if (instance == OTHER_KCR_INSTANCE)
> +               return intel_pxp_irq_handler(gt, iir);

We should take &gt->pxp as the first parameter and keep a tight scope.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,58 @@
>  #include "i915_drv.h"
>  #include "intel_pxp.h"
>  
> +static void intel_pxp_write_irq_mask_reg(struct drm_i915_private 
> +*i915, u32 mask)

Again, we should be taking intel_pxp as parameter to tighten the scope.

> +{
> +       /* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */
> +       intel_uncore_write(&i915->uncore, GEN11_CRYPTO_RSVD_INTR_MASK, 
> +mask << 16);

Instead of writing to register that is indicated to be "reserved"
(RSVD), we should properly document the register in i915_reg.h and the comment should not be needed.

> +static void intel_pxp_irq_work(struct work_struct *work) {
> +       struct intel_pxp *pxp_ptr = container_of(work, 
> +typeof(*pxp_ptr), irq_work);

_ptr is a tautology, we can already see it's apointer.

> +       struct drm_i915_private *i915 = container_of(pxp_ptr, 
> + typeof(*i915), pxp);

We should go from intel_pxp to intel_gt to i915 here, once the struct intel_pxp member is moved inside intel_gt

> +       u32 events = 0;
> +
> +       spin_lock_irq(&i915->gt.irq_lock);
> +       events = fetch_and_zero(&pxp_ptr->current_events);
> +       spin_unlock_irq(&i915->gt.irq_lock);
> +
> +       if (events & PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED ||
> +           events & PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ)
> +               intel_pxp_teardown_required_callback(i915);
> +
> +       if (events & PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE)
> +               intel_pxp_global_terminate_complete_callback(i915);

The mapping between the callbacks and the hardware events are unclear.
These all seem like display related events, so we probably need a split between the GT and display PXP code.

It's hard to review as this only adds stubs and no actual flow. I think teardown interrupt handling should come later in the series after init and other code has been added.

> @@ -17,9 +69,45 @@ int intel_pxp_init(struct drm_i915_private *i915)
>  
>         drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", 
> i915);

This INFO message is wrongly placed, either it should say "initializing"
and be at the beginning or "initialized" and be at the end. Also see previous patch for more comments.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -8,18 +8,54 @@
>  
>  #include <drm/drm_file.h>
>  
> +#define PXP_IRQ_VECTOR_DISPLAY_PXP_STATE_TERMINATED BIT(1) #define 
> +PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2) #define 
> +PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
> +
> +enum pxp_sm_session_req {
> +       /* Request KMD to allocate session id and move it to IN INIT */
> +       PXP_SM_REQ_SESSION_ID_INIT = 0x0,
> +       /* Inform KMD that UMD has completed the initialization */
> +       PXP_SM_REQ_SESSION_IN_PLAY,
> +       /* Request KMD to terminate the session */
> +       PXP_SM_REQ_SESSION_TERMINATE
> +};

This enum here feels like a misplaced hunk. We should be adding the enums and structs only when they are used in the patch. Reviewing the logic and looking for dead code is much harder when structs are introduced way earlier than they are used.

We should be adding the base structs at most and extending them as we add more functionality as we go.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
