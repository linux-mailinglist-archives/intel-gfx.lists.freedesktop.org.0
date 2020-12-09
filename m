Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4492D4939
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 19:42:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D9A8918D;
	Wed,  9 Dec 2020 18:42:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE4F8918D
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 18:42:15 +0000 (UTC)
IronPort-SDR: 2PThOuZEm21hBF42WnTHl35JnNisP9zU1ab2tFkQI0jeMb5EXiiXxoyO14sysdjzRkd3klopV4
 bVRQDj52zLnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="258844367"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="258844367"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 10:42:14 -0800
IronPort-SDR: wxLn5ndK9flyudb1oS9b7KE6SDaHtQ5rv80Op3y+CbMV3FwY+LKY7lY5R5c9G1XPS6/pIZ2yra
 IetaZBhSI8gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="375623958"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 09 Dec 2020 10:42:14 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Dec 2020 10:42:14 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Dec 2020 10:42:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 9 Dec 2020 10:42:13 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 9 Dec 2020 10:42:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4tQk1ZpnuAckUTbKym+/OYuUZhkvZpndH4vxv5IohMIdtcfUmrbVNr9bswtY4Ogyz6DHUPiVz/8msjmDSpdJOpBRsiQNKi49vgx+gn3s5PKPFRHcB1BLrVBlzsB6/XnfwbDTDvAxUF3XkWeFXErFdXc2v9xpX7t88ZX1+CNlL2xTOpq096tsinbfY1JMTpM/ugA7Tew0Rk1/vpTsmj76J7f759blHNTldepYwL/JuHJpQDR7y/UneNJRWj/HLaXYE6gHV2WZ0vHdBbdUG0680uDnGw5mqQDWfFnuoxE/wuL3XHyOeEVgK5jrPHwyfy3V2IEj42qe6sw8oV0nxVwcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5/2jFNDg3COB0FGk2gDrCndOC2LJWwQQ3J/6nurbeHY=;
 b=kQaRFL4OoDw8BR3jIgZg0n82POlADd8hxG/2OWDgRgPDdjcYcdvGsrelK1KKy6HwJEZrWiIBCB1mOL8q2jqXV3E1/+Un2CqhWQQl87hKJ/rQa4o+OSOvEt8fe4k+N3tXM0jBrp2RI3DerVU15Bfj7XNBYlTGBUIwmQMFE6Iatc6luEH23FBzM38BXReS8jGuNY9NzUchi+xu44fXXZjx2kKzNDmoQLfwGZ0g92R9cpiFbRIkqvFVL1siYkQyqWni4AAiynUcVJtb7wQH5FPJWOLuD8hJ97vXKs2OZJEtfj3J8x/iq7XeZPg7LhAm2JENFEzOlnKdne070+071IV5GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5/2jFNDg3COB0FGk2gDrCndOC2LJWwQQ3J/6nurbeHY=;
 b=DGcMKpuhYgWYrJS5hmljKeCD0VWVcMgioQjS7gyLmR94kdOgozWlfuILKxxdNmAB5ZlQeJDymBj8e1HxF+Lkh1XU7aCvqNvpCaEBwq74FPLpPu8SbqAUWVWnXI8YzCjlbwDzD2FsgQwRY1GMy5PXtQCXTG139ymilgnO+PM9CZc=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB4548.namprd11.prod.outlook.com (2603:10b6:5:2ad::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Wed, 9 Dec
 2020 18:42:12 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Wed, 9 Dec 2020
 18:42:12 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [RFC-v3 01/13] drm/i915/pxp: Introduce Intel PXP
 component
Thread-Index: AQHWzlXxz2rWxXfAPE6t1yWsQcw2o6nvGDxQ
Date: Wed, 9 Dec 2020 18:42:12 +0000
Message-ID: <DM6PR11MB45315781A6522F168224CA21D9CC0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-2-sean.z.huang@intel.com>
 <20201209180530.GA3405@intel.com>
In-Reply-To: <20201209180530.GA3405@intel.com>
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
x-ms-office365-filtering-correlation-id: 98a8423b-545e-4e44-d0b0-08d89c722465
x-ms-traffictypediagnostic: DM6PR11MB4548:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB45482A821EE10A9FD0A5A7D6D9CC0@DM6PR11MB4548.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ioEXD5SKJIr9BTDQqCDdXAlc0gN7lB7vAtZ5Xl8Odk1ltT7K7coAxJqLtaygS1PVsxeEmTOjlwI9DHZeYNlkW1ViMi9iaTVjoZeHCsmcVg8D3ESa7POICduI+UE69QkMac+MQTDEA1PzKs2EPQAnrFG6sHr5IUDtSiixGqYwDfN5HO+zSLOZtnfH92dd7TOyGIb8X/gTadoMkXiPsxYLb1s8bDOgOgMsSIRZ64JXcVdXP6NZRMl7J8DNyWAVSaAh0PRzqozEmKRwK94BB/VHSItN39xz/uHftHck4tmc7SlFKzxJm6GJnrko7+g5aNerKlOqwHd92fkK4H1blKYqoyBX4WUYeew53dj/BlJdMXA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(55016002)(2906002)(66946007)(66476007)(4326008)(508600001)(8676002)(966005)(71200400001)(66446008)(6506007)(64756008)(53546011)(66556008)(5660300002)(7696005)(186003)(8936002)(26005)(86362001)(6636002)(6862004)(9686003)(76116006)(33656002)(83380400001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?DAlZuSGW1YFVX2QTB/BWHq+dlE4PgBDZrYwfALnPJobmNbFjep9CKK3rML3p?=
 =?us-ascii?Q?nwzwZeXGMGe6dtrYqgG5YkW5h9dRbOuOXcd/hIgZiC+zYzItDr41bWoaHIFi?=
 =?us-ascii?Q?/ZHQHiXEtW1UuhvGvvezk1m/QUj2GJzsrkJasSpn7pER4XQ55qSFKy2u0Shr?=
 =?us-ascii?Q?3c3TCXWbV3vCRVyT6IKXe8Oo3KMZvrqkR7REH7QpNFg5uj9WNF8qfEe4ZbSP?=
 =?us-ascii?Q?c879PlXbnbR6yNEMqCbepNR7jhroJG2bCQcHfFlybUreH8tDBKboY2tn6t8n?=
 =?us-ascii?Q?wn+CBC9vfNsVyob2tPBP1/knjyP/ZNdLUY5KaMLIMfxkuFZrb9s6M3KtuyaQ?=
 =?us-ascii?Q?fnB3u+8M1Iw217B6plxy8aI3zwOHED/fNi8cW5UXzerj/IjzaxZDdML94dqj?=
 =?us-ascii?Q?RNcekUdG5CbYB6m1XCfWUGVnjk7/6C41fl9dM5TKM8rQIKatfK2tHohZ20yX?=
 =?us-ascii?Q?JmTiRcaR7K0Qs65dS9z7wFX2VSSgXuTUmvchYz+/9yRlvorH7dWWuR3KdN9g?=
 =?us-ascii?Q?7zD6F3QOxPAohVsVfo+TbFLL12rHovmk6OZfuFl5NTj1OlYxaTVKcNW2+VKV?=
 =?us-ascii?Q?D/a3eiKDer20/x2zifeuI0mbPfc4al4NEl2g6gEHVqDvPkqEtFDXuPWVAvIp?=
 =?us-ascii?Q?m3mgcX/jH5Kf5XfZGzjwih1cKwg29zLbQJDfeZ/mxPb7EZn94tabqcgCwKyx?=
 =?us-ascii?Q?ur6nvJhBc71RvwU6I0HhyDIPKjOJfYVzHnpVzvRuT6EQHBYuWNPkzskQEZ5q?=
 =?us-ascii?Q?Wrams1hhH3qWyfOcXIacTKCMWjr38F3vDYgPKyEy4jrRpBTRXqrdsCDHJ9Sk?=
 =?us-ascii?Q?n1t0cTgl8Kp4lDQjwcKzeaYMQblHc+AFpedCVmc5EWugcbj6E76JJXk8WxTE?=
 =?us-ascii?Q?3VZJHVJEPcUvBQybbPOnEcWx0NNStNee/hKYgSzKmTRuQ0tayasK7fbagtWo?=
 =?us-ascii?Q?ibfFCNeJvR/gi6NyyEoUB72TDN1jtXJYDhqCLAdeGeU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98a8423b-545e-4e44-d0b0-08d89c722465
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 18:42:12.2916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6QkvoOgrlId+HWyXqDLIqNisJV2nl9RNQloZDEPOXIVe5CyEe1az8N8MJZnfqWbZivULkGUIi3FHrQCNRTqpmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4548
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v3 01/13] drm/i915/pxp: Introduce Intel PXP
 component
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

Hi Rodrigo,

> why do you need random bytes?
> why couldn't the default session be simply "1".
By the architecture design. It would like to keep some flexibility in the future, so maybe we could have multiple ctx later.

Best regards,
Sean

-----Original Message-----
From: Rodrigo Vivi <rodrigo.vivi@intel.com> 
Sent: Wednesday, December 9, 2020 10:06 AM
To: Huang, Sean Z <sean.z.huang@intel.com>
Cc: Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v3 01/13] drm/i915/pxp: Introduce Intel PXP component

On Tue, Dec 08, 2020 at 11:02:55PM -0800, Huang, Sean Z wrote:
> PXP (Protected Xe Path) is an i915 componment, available on GEN12+, 
> that helps to establish the hardware protected session and manage the 
> status of the alive software session, as well as its life cycle.
> 
> This patch series is to allow the kernel space to create and manage a 
> single hardware session (a.k.a default session or arbitrary session). 
> So Mesa can allocate the protected buffer, which is encrypted with the 
> leverage of the arbitrary hardware session.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig                 | 19 +++++++++++++
>  drivers/gpu/drm/i915/Makefile                |  5 ++++
>  drivers/gpu/drm/i915/gt/intel_gt.c           |  7 +++++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h     |  3 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 27 ++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         | 29 ++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 27 ++++++++++++++++++  
> drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 22 +++++++++++++++
>  8 files changed, 139 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig 
> b/drivers/gpu/drm/i915/Kconfig index 1e1cb245fca7..a42b9b031455 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
>  	  Choose this option if you want to enable KVMGT support for
>  	  Intel GVT-g.
>  
> +config DRM_I915_PXP
> +	bool "Enable Intel PXP support for Intel Gen12+ platform"
> +	depends on DRM_I915
> +	select INTEL_MEI_PXP
> +	default n
> +	help
> +	  This option selects INTEL_MEI_ME if it isn't already selected to
> +	  enabled full PXP Services on Intel platforms.
> +
> +	  PXP (Protected Xe Path) is an i915 componment, available on GEN12+,
> +	  that helps to establish the hardware protected session and manage
> +	  the status of the alive software session, as well as its life cycle.
> +
> +	  This patch series is to allow the kernel space to create and
> +	  manage a single hardware session (a.k.a default session or
> +	  arbitrary session). So Mesa can allocate the protected buffer,
> +	  which is encrypted with the leverage of the arbitrary hardware
> +	  session.
> +
>  menu "drm/i915 Debugging"
>  depends on DRM_I915
>  depends on EXPERT
> diff --git a/drivers/gpu/drm/i915/Makefile 
> b/drivers/gpu/drm/i915/Makefile index e5574e506a5c..99efac469cc2 
> 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -254,6 +254,11 @@ i915-y += \
>  
>  i915-y += i915_perf.o
>  
> +# Protected execution platform (PXP) support
> +i915-$(CONFIG_DRM_I915_PXP) += \
> +	pxp/intel_pxp.o \
> +	pxp/intel_pxp_context.o
> +
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
>  i915-$(CONFIG_DRM_I915_SELFTEST) += \ diff --git 
> a/drivers/gpu/drm/i915/gt/intel_gt.c 
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 44f1d51e5ae5..d8e20ede7326 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -584,6 +584,12 @@ int intel_gt_init(struct intel_gt *gt)
>  	if (err)
>  		goto err_gt;
>  
> +	if (INTEL_GEN(gt->i915) >= 12) {
> +		err = intel_pxp_init(&gt->pxp);
> +		if (err)
> +			goto err_gt;
> +	}
> +
>  	goto out_fw;
>  err_gt:
>  	__intel_gt_disable(gt);
> @@ -638,6 +644,7 @@ void intel_gt_driver_release(struct intel_gt *gt)
>  	if (vm) /* FIXME being called twice on error paths :( */
>  		i915_vm_put(vm);
>  
> +	intel_pxp_uninit(&gt->pxp);
>  	intel_gt_pm_fini(gt);
>  	intel_gt_fini_scratch(gt);
>  	intel_gt_fini_buffer_pool(gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h 
> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 6d39a4a11bf3..05255632c2c0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -23,6 +23,7 @@
>  #include "intel_rc6_types.h"
>  #include "intel_rps_types.h"
>  #include "intel_wakeref.h"
> +#include "pxp/intel_pxp.h"
>  
>  struct drm_i915_private;
>  struct i915_ggtt;
> @@ -120,6 +121,8 @@ struct intel_gt {
>  		/* Slice/subslice/EU info */
>  		struct sseu_dev_info sseu;
>  	} info;
> +
> +	struct intel_pxp pxp;
>  };
>  
>  enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> new file mode 100644
> index 000000000000..ba43b2c923c7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_context.h"
> +
> +int intel_pxp_init(struct intel_pxp *pxp) {
> +	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +
> +	/* PXP only available for GEN12+ */
> +	if (INTEL_GEN(gt->i915) < 12)
> +		return -ENODEV;
> +
> +	intel_pxp_ctx_init(&pxp->ctx);
> +
> +	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content 
> +support initialized\n");
> +
> +	return 0;
> +}
> +
> +void intel_pxp_uninit(struct intel_pxp *pxp) {
> +	intel_pxp_ctx_fini(&pxp->ctx);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..7c3d49a6a3ab
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_H__
> +#define __INTEL_PXP_H__
> +
> +#include "intel_pxp_context.h"
> +
> +struct intel_pxp {
> +	struct pxp_context ctx;
> +};
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +int intel_pxp_init(struct intel_pxp *pxp); void 
> +intel_pxp_uninit(struct intel_pxp *pxp); #else static inline int 
> +intel_pxp_init(struct intel_pxp *pxp) {
> +	return 0;
> +}
> +
> +static inline void intel_pxp_uninit(struct intel_pxp *pxp) { } #endif
> +
> +#endif /* __INTEL_PXP_PM_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> new file mode 100644
> index 000000000000..5ffaf55dc7df
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_context.h"
> +#include <linux/random.h>
> +
> +/**
> + * intel_pxp_ctx_init - To init a pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_init(struct pxp_context *ctx) {
> +	get_random_bytes(&ctx->id, sizeof(ctx->id));

why do you need random bytes?
why couldn't the default session be simply "1".

> +
> +	mutex_init(&ctx->mutex);
> +}
> +
> +/**
> + * intel_pxp_ctx_fini - To finish the pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_fini(struct pxp_context *ctx) {
> +	ctx->id = 0;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h 
> b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> new file mode 100644
> index 000000000000..953a2e700931
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CONTEXT_H__
> +#define __INTEL_PXP_CONTEXT_H__
> +
> +#include <linux/mutex.h>
> +
> +/* struct pxp_context - Represents combined view of driver and 
> +logical HW states. */ struct pxp_context {
> +	/** @mutex: mutex to protect the pxp context */
> +	struct mutex mutex;
> +
> +	int id;
> +};
> +
> +void intel_pxp_ctx_init(struct pxp_context *ctx); void 
> +intel_pxp_ctx_fini(struct pxp_context *ctx);
> +
> +#endif /* __INTEL_PXP_CONTEXT_H__ */
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
