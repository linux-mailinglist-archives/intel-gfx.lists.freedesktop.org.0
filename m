Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3497A2D4967
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 19:48:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E072B6E1A7;
	Wed,  9 Dec 2020 18:48:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2826E175
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 18:48:08 +0000 (UTC)
IronPort-SDR: kNDz69Kea+1Rd4woIhtgiyBg4s5bGbqDXgsqYfES9DOAXpBCF3y2uZ8tBn+6j5HsspcrsInoA7
 L0aPik1NJ7GA==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="161887182"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="161887182"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 10:48:07 -0800
IronPort-SDR: HDVjWOhm1Gi22f9ubVpMGk6Cs/Y+viiiumr1bUR85Gsw2L3KoS/4e9OKJ0IH0nCW0huWMMHLeB
 ybMy7zj/g0zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="333025455"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 09 Dec 2020 10:48:07 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Dec 2020 10:48:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 9 Dec 2020 10:48:07 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 9 Dec 2020 10:48:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X+tTy56Cf4ePfjJUf5TsArWrdS7V6mEDQN3I21REpgIb2SCWINZ60aBwFqaC8vxg7KFKbPnF3E8MR5ZnwhnGENLmAhorzMoTR6DcdEoA7ElN/n37viAfqqPUHvv4ditgDPsIM0pI+aVGCYCaqAyALSFnbL1n0WU9jO45GkjeSsuT1CTeFVG/vmSoNo9dHG/UaDdrtZKjL+QEYlKhvJCBZq8UgEtZq/fHlKwaKoy55YoATOPDU8ASXmNteozF2lfV5nhYak9dIQeSSDvamF2EpjmNe+1eTewqth7S1KmsXt0oCV7Nbr2KY3l+bAElR/LrHIXdagNFBL7zsofd0mU8og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PUKff0MWDqPbblcXAP55Byhmtu3glUaM3Rv4N6+dM3k=;
 b=EjoH/H1UAhJIUydoJVP8i/zMXJajmK2N7ca1AwBpnyZn1aRNz9QQZA2j6biBWx50qmHODZwMqXjfawRbq2CoRwD4XWEUvJdtJlohp3WL3D9QxFKRft/9eMO6zkNDldy+uR4QoEqqrs7/qCD2/9o38Wo/0yG+pQATaexzIPCvuFNh4h7mh00DUtCRSKCBNPt6Ydbijvk1tKzIS1wZsfJYvG3RyPbhUS8r8UK/pEI2ruhb3jCvRwTYQ1S7xBLJU8WZJMCFzWSfTetYXIe3ynjt8io61fpIelXJ6eVW23mp7PCsp71aHyT5MJfwzNLFf0pJve5zXPZUHa7O701onuqj+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PUKff0MWDqPbblcXAP55Byhmtu3glUaM3Rv4N6+dM3k=;
 b=ukClwoDdOs2I2IZEW9Zw0/THwz5/JYrpS6wFyEKeW4w5iUZvxu1Id7zIUubPUE85fhsCubXkvXLZbadahlOtdg3shE7Q50FmYrls5KB7LgUHfy9psZDOtrnWwNExsxuQeWuD0nGewI5Xjgg/4dOI7PRdibdWHol8U9VqQQpKCbw=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM5PR1101MB2171.namprd11.prod.outlook.com (2603:10b6:4:4d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Wed, 9 Dec
 2020 18:48:05 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Wed, 9 Dec 2020
 18:48:05 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [RFC-v3 02/13] drm/i915/pxp: set KCR reg init during
 the boot time
Thread-Index: AQHWzlZCJ/V+htRdM06oHm0M4c4sV6nvGnlQ
Date: Wed, 9 Dec 2020 18:48:05 +0000
Message-ID: <DM6PR11MB4531315D7E535ACCD09547FED9CC0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-3-sean.z.huang@intel.com>
 <20201209180759.GB3405@intel.com>
In-Reply-To: <20201209180759.GB3405@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 695e77e4-2aba-4556-76c0-08d89c72f6b3
x-ms-traffictypediagnostic: DM5PR1101MB2171:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB217164C8EB7584981EAC5EA1D9CC0@DM5PR1101MB2171.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:651;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wrsf4F6MyiI7vAw0O3xQINyOWTvjFXXHzO3jn4OsDVnTH11fxUc76A9YmcstzS92PbcdfwAf9KGq1SBd7JUWB/tlFLTNemTEoLUnsQxEO0FYppCy8Uphk8G3jqjac2cug2iEQ0VKjNA+W/s7RU5eQKsJM7ItXOaC8lI4J0K5M5DfzrbJrS/09y3qszaBxi0a0kmpb4HkENX+QQwm02cjxcFKH/KmXzLiaNZb5hqkWxNb4yfkmbgDHKkYX1qUZgqK25ptHVq4ARYQfeIrlO7oZFpgG+ZlLbyrVBMxIGwaNkwgbXiRdR9MQGWFuEuEwjC9DtnEOntZnomX771nrlpIQyHE3VWyMH1YY/97Z5AdfTM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(366004)(53546011)(6862004)(33656002)(64756008)(66446008)(966005)(71200400001)(8676002)(55016002)(66556008)(66946007)(26005)(8936002)(86362001)(7696005)(9686003)(6636002)(52536014)(83380400001)(4326008)(186003)(508600001)(5660300002)(76116006)(6506007)(66476007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?VOQjTkOBDeHL2AXB+6hxdFMm1hqyv7mfNEIUKkCKUQfujxnYZnNFEPjlvPGF?=
 =?us-ascii?Q?RGVtr4XxeMdtcObeFEV/fGfORFg/vOVRNf8GJ7paVWlt2fNyYumRERDXLM2L?=
 =?us-ascii?Q?m8hWSo7K1ZcMdXc/R61QJlNcYy7VXMP+KiEjuk6j/icSi+x74jaUcO5nJ//2?=
 =?us-ascii?Q?NrOp8G9+vQs0PypyefOkpguVeSnqum7h97dCyY6Ut/J++/DR5M/UXRp34jtJ?=
 =?us-ascii?Q?k4BysdSzhKRblYUlCC+db2pwTBGzxFrCI+l8r0ETxc8eSNDk3UO+B667OfS3?=
 =?us-ascii?Q?CunbnjBrbnBTK6uKFUzP7mwdzQcUBejBp8dyXok0P4TTsEIXcQfMy1EolZne?=
 =?us-ascii?Q?pNUVgLHO1WsqN6lKLJg6yWMEuvFnzsvqzdjQKEk/70fk4l6ALmgvCKv8wDx/?=
 =?us-ascii?Q?W5qgFmQZ975NtiZgM4wMAWKWLnhVsLLT1TQlt132/1aiG5fy9E1j0sCEwG6+?=
 =?us-ascii?Q?rwQ29lCkMJzH0BOX4rIRBDirh3CIjXHcUEpV8Hc+Si4gwzlPFU5FjxI2kCSR?=
 =?us-ascii?Q?d2nxeTH0e4Yfdb1Rt7KiaDbNqk2BoRLmKCNn9PWm9cSeynhlIzk9gCCV3vcM?=
 =?us-ascii?Q?qAG5nupSZhYvvd4RQ5FGFho/kmeoJw913xYqkx68qDo6xhl7/OEUL1+dnqv6?=
 =?us-ascii?Q?gmk/BS61saFbWy4/DplJajUB8pcllVTwAFZ/peFET6nrdlbJoPNFfbXl7AmG?=
 =?us-ascii?Q?WyOQip8MjmQ1uFUfCU0bH8DZ9PRuCNg06aQ67oVIWZ+u+v+gxTv6AujRoR8D?=
 =?us-ascii?Q?z1X2P4giKtGe76HbWwIRfvHYApn/DAULrFzEU96L76GIVNVQ4q6SVUBOC8GJ?=
 =?us-ascii?Q?z2rZIe2RPC49jzNf1avV5BvfT4FII1XNeJRp++ipl2oCgawtQs/HCzHOhOJU?=
 =?us-ascii?Q?Z2Fv+5EGyXn9ZLCdM8haOCDBadCR3Krd1F8sYNx7xcht4gCVF70R8L9Es9WL?=
 =?us-ascii?Q?XGoBXW/VqCGDrL5Dv8fvTlpu8Aa4g3Vzr2owDS40ghA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 695e77e4-2aba-4556-76c0-08d89c72f6b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 18:48:05.1459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: reiYBdWtBMOwvzfX9dkNSen0IEpUFPt3Tv2y+6k6hw9qWPOPy6Vkj8bIgRqRtqTRhA/JxpoRdb+nQye9e8pJCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2171
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v3 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> I'm wondering if some other patch in this series will explain the need for this, but as is right now, this shouldn't be here on this patch... and maybe not even at all.
> Let's minimize the wraps and use the already provided read/write functions.

Thanks for pointing it out. Yes, you're correct. I missed this one and it should be removed from this commit.

Best regards,
Sean

-----Original Message-----
From: Rodrigo Vivi <rodrigo.vivi@intel.com> 
Sent: Wednesday, December 9, 2020 10:08 AM
To: Huang, Sean Z <sean.z.huang@intel.com>
Cc: Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v3 02/13] drm/i915/pxp: set KCR reg init during the boot time

On Tue, Dec 08, 2020 at 11:02:56PM -0800, Huang, Sean Z wrote:
> Set the KCR init during the boot time, which is required by hardware, 
> to allow us doing further protection operation such as sending 
> commands to GPU or TEE.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++  
> drivers/gpu/drm/i915/pxp/intel_pxp.h | 6 ++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index ba43b2c923c7..c4815950567d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,12 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  
> +/* KCR register definitions */
> +#define KCR_INIT            _MMIO(0x320f0)
> +#define KCR_INIT_MASK_SHIFT (16)
> +/* Setting KCR Init bit is required after system boot */ #define 
> +KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << 
> +KCR_INIT_MASK_SHIFT))
> +
>  int intel_pxp_init(struct intel_pxp *pxp)  {
>  	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp); @@ 
> -16,6 +22,8 @@ int intel_pxp_init(struct intel_pxp *pxp)
>  
>  	intel_pxp_ctx_init(&pxp->ctx);
>  
> +	intel_uncore_write(gt->uncore, KCR_INIT, 
> +KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
> +
>  	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content 
> support initialized\n");
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 7c3d49a6a3ab..b906bf7dea90 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -15,6 +15,7 @@ struct intel_pxp {
>  #ifdef CONFIG_DRM_I915_PXP
>  int intel_pxp_init(struct intel_pxp *pxp);  void 
> intel_pxp_uninit(struct intel_pxp *pxp);
> +int intel_pxp_reg_read(struct intel_pxp *pxp, u32 offset, u32 
> +*regval);
>  #else
>  static inline int intel_pxp_init(struct intel_pxp *pxp)  { @@ -24,6 
> +25,11 @@ static inline int intel_pxp_init(struct intel_pxp *pxp)  
> static inline void intel_pxp_uninit(struct intel_pxp *pxp)  {  }
> +
> +static inline int intel_pxp_reg_read(struct intel_pxp *pxp, u32 
> +offset, u32 *regval) {
> +	return 0;
> +}

I'm wondering if some other patch in this series will explain the need for this, but as is right now, this shouldn't be here on this patch... and maybe not even at all.
Let's minimize the wraps and use the already provided read/write functions.

>  #endif
>  
>  #endif /* __INTEL_PXP_PM_H__ */
> --
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
