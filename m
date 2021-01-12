Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD522F39C7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 20:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A4189C9C;
	Tue, 12 Jan 2021 19:15:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8664389C96
 for <Intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 19:15:26 +0000 (UTC)
IronPort-SDR: 0CTSOV7EB9KXzaec/r2YKE/pvpWZ/GGjSVQgxxvBLBCpBrSqmNuqCpquEYlBNB3+EunlMyj79h
 nOcJgnUL86Hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157272572"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="157272572"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 11:15:25 -0800
IronPort-SDR: QWwAlFdnTzKEyHnchvvlQCby1h8k3/r7fkNbAP/LPJEcvXC/3yRl9Nw2QsFwBMnrvysV6jD9nt
 0PNzinU/HTIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="424270260"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 12 Jan 2021 11:15:25 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Jan 2021 11:15:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 12 Jan 2021 11:15:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 12 Jan 2021 11:15:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4hJe+RlU+28L1xipA9uNR0dVgUPa3Wr0VNtvTUYN1pVQZOGdDpQIUYAb/Ei5b8e6+sBj91G8sw8FjxqMY+rYF0mvd8KBs7kaULAn9sE6QL8tCR4Z3pnp2dscAFHPqlt5+9MYsub2o/Ua9hxf6Tqcq+lsELh+qxjhYP1D+4I0JVr/IXvIcbMy/ZNCmPiU/fUv1W2/mE2oeJhWrFVJ53WmhOiq0k273F5ONK1Txrgp2GFykNkRXWIvhl3it2WjHY4yhvdRo2t6Pk5wsKqbXWtJtELcCxWF/wzDlxeuG0p/UH/rO0WH6rumRuwuv/p3jAGhSzXtePDqRX8KWzRCdoR6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y84eNFGOEqgvuLxnQS2EiE197bsvK+MmmqnYnx+IV38=;
 b=bBxDQXuhcoBe1D5SoiYyPOhXI+Z83xuSCsYNQaWwp2kjKmZvvDfhtL+WGUGeiPEDxhwNvlpQs41bL6nUOLCtHxv2aA1LW80LLMAWASzaTT3HftlM8uysJlNeeIcdaevCT9PrWzEIMiGhXWgMQ9/VHX5mSI12X1CwibcLqzOn75VbzpSkbka4CJ4LwdRPWCu2ta6cxuumRLa2NhoQMIcWeb0OzTUKxee6LBkIEC9PHZhvRcrEDCXDXzmHXtyUT3HoGuuBSOEiP9R2DvySPLRFVG2ZSffAlPMhUpzO9cIjyy9z3negF9ZVrHhYvqjcA5MQ9wBrtakeqpT6ovHq4ougTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y84eNFGOEqgvuLxnQS2EiE197bsvK+MmmqnYnx+IV38=;
 b=BBiJ79sQDuBmsUICvPZgUCsZRDo8iwAGtIJUQpOzuRoBXQ+AIIEmGpx4Da8Op7j0dy7fe6HTanqjQgSJChlOM6TnCyU8CjRDL47DOMmzzFJMwIHBUGp06a+9GMDrP3e4VwjKYFiNTmprXzWDCpfaQWXzM89eWzljzLjoGdXH7I8=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM5PR1101MB2090.namprd11.prod.outlook.com (2603:10b6:4:51::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Tue, 12 Jan
 2021 19:14:57 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%7]) with mapi id 15.20.3763.009; Tue, 12 Jan 2021
 19:14:57 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 08/13] drm/i915/pxp: Enable PXP power
 management
Thread-Index: AQHW5IFyJGNOx7q9ikK/6SMniTPSzqoc11KAgAeLn3A=
Date: Tue, 12 Jan 2021 19:14:57 +0000
Message-ID: <DM6PR11MB453116086A4A8A58AA38EFC6D9AA0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-9-sean.z.huang@intel.com>
 <7dd1995a02b103b5c9438555e48bf8f062e7bb01.camel@intel.com>
In-Reply-To: <7dd1995a02b103b5c9438555e48bf8f062e7bb01.camel@intel.com>
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
x-ms-office365-filtering-correlation-id: be8c5abd-7ace-43d9-3281-08d8b72e59ab
x-ms-traffictypediagnostic: DM5PR1101MB2090:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB20901BF92295F2F6B15C2CF8D9AA0@DM5PR1101MB2090.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fL4yiH04GwoDiiXmDMT3WYSIv4JtKAqufZtq5+K0pSB4qmBDK1ByxTMcZc/WmhnErYFZU6VgfkyB3aOg07X7F5r9z11N6TKKIJvslQLHGs5IQNRvHtOVI9l7hGqpxTlWRvlX1chf+q/jIyJjqnaNx09o7mONwghTbnLabDy3IOZoaLLmeqlPkqQNSLOvd30Yug6kQzkCb9BsB8aMc4N9QXhuDW/ohwOmIEUKWuH1mOIGuwi10W6y6dn7OHgPHjuQDN4un7AG+0KeyaZ9xUpAm81YKgUYA+c3le8V14Uuq4NLR6D0/NMzF0sajWasYPlsDoM1MtkkuB0qcxjVBIN6MBs05q3AMwB/kLy5RARweJozHK2SbA/nk4VkkcSqF+1/chVTZqQyf2Ywm+6MdXxrCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(136003)(39860400002)(366004)(346002)(64756008)(66476007)(76116006)(66946007)(66446008)(33656002)(55016002)(66556008)(8936002)(478600001)(9686003)(110136005)(8676002)(5660300002)(83380400001)(52536014)(26005)(2906002)(6506007)(71200400001)(86362001)(53546011)(316002)(7696005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?bnRiTFRwd2QwYXlTTlA3cnJqREh3cFRMRkM4TDdUQ01jYnJPd3pJenZKSWhP?=
 =?utf-8?B?ejNWRVNiZTE0SnY3aDVLc3pTbkRaMTgzRmYxSXp6RGZlZkhOMGJzZFNCY2ts?=
 =?utf-8?B?NzZLWVd3eGQ3VFd3Mnl4MVBTbWw4USt6YkMvK0RoL3V2cVhzTUlodVEyY1Vp?=
 =?utf-8?B?TEFuWnZrRlZ0aVVERklzYTd0eDFpVituVjBGc0dBUGo4VkJCSkdmWkh0ZHp2?=
 =?utf-8?B?WUtJOSt3OWxhL0tVVzFxVjFuLys5bmw2M0xIVzZkcHB3SW9pMjIxWVhnbUZ5?=
 =?utf-8?B?NktERi9DaHhTanpIMDIxelA4Z0xHK3A1aHhYaVhWTXJKcjVRM2pHVUw3a3Qw?=
 =?utf-8?B?cWdkWTNvK25mcDJnZ24yM2JBVWREUU1scEVOV0ZIa3pSNEh5cHlxRkg0N1JS?=
 =?utf-8?B?bFRXd2dLNWhoSGpOVy9waktOb3ZTdUVEN0JlYVp2eEhwYnZwdXEydWUxQ0Jq?=
 =?utf-8?B?ZElSYU9uclhGVzZMbGcrM0FsUWVzSHZJb1VNZjBSVWQ4Q1pvZWNRSnNvK3pK?=
 =?utf-8?B?aUhCUTdPMVV3c290bXJvMmFwa2RrT2E5MVB5YXV0MGI4YVB1V21yUmVydnhO?=
 =?utf-8?B?SUlIb1lrUVlIZjJ0TVo3NVB5TDdDSXF4SU0yR2k0RmFhTy9vVWdLYzdyZkxr?=
 =?utf-8?B?NHFsK3JUdG41QzlqdVZTNkNwTDRlRnhrZ1l5b3laaGhURitNM3dLSTlFbjFx?=
 =?utf-8?B?WXdNSFl1c0VZdFAzR2Q4cDhZTnBaK2xyamxXand3a1M4SFR5N0hyYW9oQkt5?=
 =?utf-8?B?NWsxTmJxYVp3Mlpmem1SN3VpckNuRExUNExWRFkwMGpJTUVxSTFmbXhlMFJP?=
 =?utf-8?B?SEwrczBSTkMwczRxeFRxT1l6Z0h4WUFaZ3BsRTlTU2gzMWk3SGVmbnBFRVB3?=
 =?utf-8?B?ZFR4TVlzQ0hqeHZUTjRVRXluOEY4R2tSc2hGWW11cWliM2cyWWlyRGF6VGdo?=
 =?utf-8?B?MnFDc3FvbGdKdWh2R1U4WG9YOHptUHZqWnlDOWJVdi9IVlZ1c29DMHF3Q1pu?=
 =?utf-8?B?SnpwQldPUXM4M3JzdWx5U2hkcEZpNWdDaUtiS0RjYm1hU1hsTnFOZDlIaitJ?=
 =?utf-8?B?cmpNVTBWMHRKNlJDeCtUdzREOEVPS0syUDBqTXBwTVpPK0RncWlpamVrcDNC?=
 =?utf-8?B?eC9hRzRlMVRCZ0plVmNlN1hYOTlZQzdqdFpTTUQrK0pOUUUxdU9NNjhMdW0w?=
 =?utf-8?B?RExGVmNPK2dQY0hFQm5HeGFjNXFVd0JOcWZNcTBEbFkxK2NGV2RvSnIyOHE4?=
 =?utf-8?B?T3hnZTlVMWdWMU95ZDEyckVxNlo2QU5kVy9BbWtuUDhmSElEaXJtK3BKN1N5?=
 =?utf-8?Q?Zhp+3EwaZmQCw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be8c5abd-7ace-43d9-3281-08d8b72e59ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2021 19:14:57.2919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IzeQJ3y6zhrjBB2QNdyVwQqIiq+vqi+wVcJC5hddsO+tFP5WjmZt54CETsNDol0D9iQvZ876jtxYRCkG6P2ptw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v19 08/13] drm/i915/pxp: Enable PXP power
 management
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

Hi Rodrigo,

According to our design we terminate the session after resume, and then re-create the session at i915_pxp_tee_component_bind() in intel_pxp_tee.c

We only can terminate the session after resume, instead of during the intel_pxp_pm_prepare_suspend() call, because there is a change that display is stilling rendering/playing-back the protected buffer, and protected surfaces turn corruption garbage if we terminate the session during the suspend().

Best regards,
Sean

-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com> 
Sent: Thursday, January 7, 2021 9:53 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v19 08/13] drm/i915/pxp: Enable PXP power management

On Wed, 2021-01-06 at 15:12 -0800, Huang, Sean Z wrote:
> During the power event S3+ sleep/resume, hardware will lose all the 
> encryption keys for every hardware session, even though the software 
> session state was marked as alive after resume. So to handle such 
> case, PXP should terminate all the hardware sessions and cleanup all 
> the software states after the power cycle.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile              |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c      |  4 ++
>  drivers/gpu/drm/i915/i915_drv.c            |  4 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.c    | 65
> ++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.h    | 31 +++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  1 +
>  6 files changed, 106 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile 
> b/drivers/gpu/drm/i915/Makefile index 5599b92bea9b..7592fc8cbd89 
> 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -265,6 +265,7 @@ i915-$(CONFIG_DRM_I915_PXP) += \
>         pxp/intel_pxp_arb.o \
>         pxp/intel_pxp_cmd.o \
>         pxp/intel_pxp_context.o \
> +       pxp/intel_pxp_pm.o \
>         pxp/intel_pxp_tee.o
>  
>  # Post-mortem debug and GPU hang state capture diff --git 
> a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index c94e8ac884eb..ae0387e419a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -20,6 +20,7 @@
>  #include "intel_rc6.h"
>  #include "intel_rps.h"
>  #include "intel_wakeref.h"
> +#include "pxp/intel_pxp_pm.h"
>  
>  static void user_forcewake(struct intel_gt *gt, bool suspend)  { @@ 
> -266,6 +267,8 @@ int intel_gt_resume(struct intel_gt *gt)
>  
>         intel_uc_resume(&gt->uc);
>  
> +       intel_pxp_pm_resume(&gt->pxp);
> +
>         user_forcewake(gt, false);
>  
>  out_fw:
> @@ -300,6 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt
> *gt)
>         user_forcewake(gt, true);
>         wait_for_suspend(gt);
>  
> +       intel_pxp_pm_prepare_suspend(&gt->pxp);
>         intel_uc_suspend(&gt->uc);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.c 
> b/drivers/gpu/drm/i915/i915_drv.c index 207d50226e64..5923db004d9b 
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -68,6 +68,8 @@
>  #include "gt/intel_gt_pm.h"
>  #include "gt/intel_rc6.h"
>  
> +#include "pxp/intel_pxp_pm.h"
> +
>  #include "i915_debugfs.h"
>  #include "i915_drv.h"
>  #include "i915_ioc32.h"
> @@ -1338,6 +1340,8 @@ static int i915_drm_resume_early(struct 
> drm_device *dev)
>  
>         intel_power_domains_resume(dev_priv);
>  
> +       intel_pxp_pm_resume_early(&dev_priv->gt.pxp);
> +
>         enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>         return ret;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> new file mode 100644
> index 000000000000..ebe89262485c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -0,0 +1,65 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +
> +#include "intel_pxp_context.h"
> +#include "intel_pxp_arb.h"
> +#include "intel_pxp_pm.h"
> +
> +void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp) {
> +       if (!pxp->ctx.inited)
> +               return;
> +
> +       mutex_lock(&pxp->ctx.mutex);
> +
> +       /* Disable PXP-IOCTLs */
> +       pxp->ctx.global_state_in_suspend = true;
> +
> +       mutex_unlock(&pxp->ctx.mutex); }
> +
> +void intel_pxp_pm_resume_early(struct intel_pxp *pxp) {
> +       if (!pxp->ctx.inited)
> +               return;
> +
> +       mutex_lock(&pxp->ctx.mutex);
> +
> +       if (pxp->ctx.global_state_in_suspend) {
> +               /* reset the attacked flag even there was a pending
> */
> +               pxp->ctx.global_state_attacked = false;
> +
> +               pxp->ctx.flag_display_hm_surface_keys = false;
> +       }
> +
> +       mutex_unlock(&pxp->ctx.mutex); }
> +
> +int intel_pxp_pm_resume(struct intel_pxp *pxp) {
> +       int ret = 0;
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +
> +       if (!pxp->ctx.inited)
> +               return 0;
> +
> +       mutex_lock(&pxp->ctx.mutex);
> +
> +       /* Re-enable PXP-IOCTLs */
> +       if (pxp->ctx.global_state_in_suspend) {
> +               ret = intel_pxp_arb_terminate_session(pxp);

I'm confused. I was expecting we terminate the session at suspend and re-stablish at resume. But I'm missing or forgetting something

> +               if (ret) {
> +                       drm_err(&gt->i915->drm, "Failed to terminate
> the arb session\n");
> +                       goto end;
> +               }
> +
> +               pxp->ctx.global_state_in_suspend = false;
> +       }
> +
> +end:
> +       mutex_unlock(&pxp->ctx.mutex);
> +
> +       return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> new file mode 100644
> index 000000000000..135bfb59aaf7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> @@ -0,0 +1,31 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_PM_H__
> +#define __INTEL_PXP_PM_H__
> +
> +#include "i915_drv.h"
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +void intel_pxp_pm_prepare_suspend(struct intel_pxp *pxp);
> +
> +void intel_pxp_pm_resume_early(struct intel_pxp *pxp); int 
> +intel_pxp_pm_resume(struct intel_pxp *pxp); #else static inline void 
> +intel_pxp_pm_prepare_suspend(struct intel_pxp
> *pxp)
> +{
> +}
> +
> +static inline void intel_pxp_pm_resume_early(struct intel_pxp *pxp) { 
> +}
> +
> +static inline int intel_pxp_pm_resume(struct intel_pxp *pxp) {
> +       return 0;
> +}
> +#endif
> +
> +#endif /* __INTEL_PXP_PM_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index 0b140aaeb6ed..13d7b502b7f9 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -44,6 +44,7 @@ struct pxp_context {
>  
>         bool flag_display_hm_surface_keys;
>         bool global_state_attacked;
> +       bool global_state_in_suspend;
>  };
>  
>  struct intel_pxp {


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
