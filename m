Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3312D187A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 19:25:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 520F26E854;
	Mon,  7 Dec 2020 18:25:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3211F6E854
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 18:25:42 +0000 (UTC)
IronPort-SDR: pkecPT+Wyf1ZgRM+GwZJ5Xxh0BFkGsx7HPARzfmxwvOKp4XUL/gkHxKfWax/I1bLRdynX6ugmn
 J7+XDluXkQ1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="237853619"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="237853619"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 10:25:39 -0800
IronPort-SDR: nYbigRGFYWwhLdnzIR/BnnuWV78mbqdYgeR7hm/sPO3LkvaXkX5UPI06ZKZl7KQkfQ0eZDuRRI
 8ET0E2YOSqxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="332209786"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2020 10:25:39 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 10:25:38 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 10:25:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 7 Dec 2020 10:25:38 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.57) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 7 Dec 2020 10:25:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CweDWhDIW6AHtVJhkTGe+JXlCGOMKydZi7rZADY3dCRPaAyr+4MUvDc45iL3S+0SeA2zRww/r9bZCcxv8jdW7tdkWheD+nWCqox6JAgKwaptCckjWej50w2tGS7rg5uRXWeslLN1lvPr8VaCysyRJ5Sq3sgRbYi+sLueHdurFpwHIbG0Rhxjtf0MS5elKXQ4k6g1fFttTUaczikt1Gx5tjnIQH2phJOTE+Vd/VdYUEbptct/7b2Prdt0H8MfjXRwH9aPTMpKVB5FWjcsVH2DjVXt9mal8HiD1sSiusz1ryc8EOw0p1enHQU2DQ51RUAnbj8jM0rRTFicAehNdpBWUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2P1tFGOoV9JA5TvDSPmDgFcbrsemeOldzw+HsjSQNb0=;
 b=F+G0g/8/U+jH9WwoqmcWzYc6A8ovFY9ruDFpjLQm/Wob//frSPc1oJR7xU5JPpDNBspWXHzeJXolsqO20WIOTcB009FhN8MhI1C+5prQtNbyD3l2vyux3YBCEcCeG5uLwVS4240Qf4F5IO7/l4VTCAggnxMboJghQbFcs9+lRUyFEObPNSWHjLB0upK6SZ1FNxk/Y96Y0lM1v1Z/Swq1xoYk+G+fPr3RtoqB1HWPhKIj9PUY+5qOdCaL/3lQliXagieRWqqFbI4Xgd8Z1+Q1ojDNNlSFU3bJfaoKJR9nRtwj4llPOjQJwwts92w4kLVmrjMRFmNR23HWfzGuv7QiJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2P1tFGOoV9JA5TvDSPmDgFcbrsemeOldzw+HsjSQNb0=;
 b=xIbXU6c2aUddoKz5Q2Mf24U82ELcKN7pKk9bulYzrTUJ6FojvuWiLCjyJvCJnrrBtaJgp4wsrwHkeVXZDMXmWE9bqjkWYwLAczIIkilhwPaaFKkCD9vE1SenGti6J5CAllmn6vVZcclYMXfUwFAfAnaLo7YZEu/zEpezTjdGVLQ=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB4188.namprd11.prod.outlook.com (2603:10b6:5:198::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.19; Mon, 7 Dec
 2020 18:25:37 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Mon, 7 Dec 2020
 18:25:37 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP
 component
Thread-Index: AQHWzH/qmjx+NikIcE+A6KgBk3DIUqnr8bog
Date: Mon, 7 Dec 2020 18:25:37 +0000
Message-ID: <DM6PR11MB45317C78700D10613CA68D01D9CE0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-2-sean.z.huang@intel.com>
 <160733527668.9322.11627414165047259578@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160733527668.9322.11627414165047259578@jlahtine-mobl.ger.corp.intel.com>
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
x-ms-office365-filtering-correlation-id: 2d81e206-87bd-4c13-1bf2-08d89add7e64
x-ms-traffictypediagnostic: DM6PR11MB4188:
x-microsoft-antispam-prvs: <DM6PR11MB41880DDAC0A1851C0E6E102DD9CE0@DM6PR11MB4188.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G9rKuNYHZQcYLmIuVckF+f2F6di9ycscrL03ip6fYAKCZBTJK/N3FqIaCJKwnnOnqrYgz3M1HUx7f92+rth/y6LvOEODkncGYQpeUyD8+k8fU187NvLnVZyEaLuXTK8Tq8WcvyB5hsJ3RM5hEqgiM0s7qTdYOaLkGhwDq2ba+zOjxgTS7YY6EbfWF239KPRYt4Y0nznQYh8xs6svzWzaqgk6gWOemIXwYzNoQqs79TgQE2IJhPHXPlCA1AHa79PfG0AvJ9AiooYcApx+uO/ys4BM+ELqC4rY0IqjXnGtciwpAzP04sUwSOVtsCt4Bedn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(366004)(136003)(396003)(316002)(186003)(26005)(83380400001)(71200400001)(55016002)(7696005)(9686003)(33656002)(53546011)(110136005)(6506007)(66946007)(478600001)(66476007)(66446008)(64756008)(66556008)(8676002)(5660300002)(76116006)(8936002)(86362001)(52536014)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?bDFSKzc3MEFOSTh4Qmltc29SOEd5Uzh0MjVRRXR6c1FGUGo2YytKSWg3UUZu?=
 =?utf-8?B?dkVLSFgyRDNxVFBUVndiTjVKWmE2akh6Um1vQW5zSlQ2THZQbGdjYmhIME9o?=
 =?utf-8?B?bDVSb0NybTlFKzVZZkVxY2o4T1E1RFk3YlpRSHhLNkVjM2ZYYk4xVmZJdGs2?=
 =?utf-8?B?VS9IekxYc2NrcWtZQ1hybXFIcll3RjFmRm5ZZXFYemFxdWdTRHFFcm50Sjha?=
 =?utf-8?B?eUw4LzBocG9BQ0dqOFBTU3VPM2xoMEdFRUwzSW93RzhXTklRdkhKK2d5RWxY?=
 =?utf-8?B?VnA0bUxZZjQyb2ZBbEZYYXc3dm1qLzJGWktlci9jYStqL3ZZQjhzaTA1eFRQ?=
 =?utf-8?B?K00xa2NhM1dtZ1hoWmt0eEplclVic3NVbE1MNDE5VEd3OHdOaENvZVQ2aHZz?=
 =?utf-8?B?d3hZQmhtOU9Ib0prYkFxMjdFN0pESHhnQUR3S2lpYTdRQjI5dXAwME9wUWxl?=
 =?utf-8?B?VWhPRFJENWRNUWtCNWFNdHNxd2NaUWJoWUNyZUlYNDZSYU8rcWNRTEdiSnBu?=
 =?utf-8?B?RW9QZE9EZ1dMVno4U2ZMc0RGakcxZW9Zd0JBL29OTytUMm1na01jZitaOGhz?=
 =?utf-8?B?OUdaZHVRMHg2QkRxenUvc1JCMlhDWjM2NXVHV0ZmSVZNeklDM3MwMTJoaU5n?=
 =?utf-8?B?OWIvK2lUL2NRZGh6cEVGTUtrTUhWUmtIOG5MNkhISGVDZG42QWRROWgvQUJv?=
 =?utf-8?B?OEIvN3pFSUpMblJHZDNHbG9Ia0c0QVVjaWs4RmJ5UnVRYmk0RGN6TWI4azN4?=
 =?utf-8?B?Z2grcTYyZnNFSHRjZTN2TmVWMlNjaU93cjdGdmcrNm92eWVGM2I3Z3hMOUxX?=
 =?utf-8?B?U0g5NExvbXFoRExRU0wrU3MrZkpmVXJXZFQ4ek42M0N4UlQ4QkRWcDhPRzh5?=
 =?utf-8?B?bTBXUVdJNU5BMU5lYkwxM2tHYmV6MXFIb3NmbS9sNjh3cGdmbXkyR1VQWkFK?=
 =?utf-8?B?ZmhNcDlIMEh3bDc5aDFNSmFkVDlCTGgyRi9weXdKdEZROHBWWmpNOThXdExt?=
 =?utf-8?B?MWhJWmRsMjg1eUl0dEFHYUNjS2I3ZkkwVUlpMnBYUTNMR3RPVE1jbk5mMzZR?=
 =?utf-8?B?UWJEcWpxbFBTdXVWMzI5NVNZSU1rMUpKZW5OamQ5akJodTB1MnkvYzZ3Y05L?=
 =?utf-8?B?YkdqQW1pRUx3eVFvdzFMZkZ1OUcvYzlDL3RSUHl0WGJXYWhhSHNYa0VRaXVC?=
 =?utf-8?B?MVM5TEZwdmJPMUdmbUxYRENhT0svUnRNMDJPaml6d1hPS0Frb3pKQXphZUYr?=
 =?utf-8?B?eU1kQnFCbmFmS291SER1TCtCcW4xRGVzS1ViZkhoWGpXZHA4OWh5aWZ0QzM3?=
 =?utf-8?Q?RtIyFVd/bBhAY=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d81e206-87bd-4c13-1bf2-08d89add7e64
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2020 18:25:37.0959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zqogt2Uu7kolR1t1fxOX3j3alMITzH3oqBwhDP/CyfH2adJ8ylwj5jEp1Cl1vJ2fUSjPnTmoppAkuG0h5E798w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4188
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Joonas,

Thanks for the details review. I have apply the modification according to the review, and will update as rev2.
> Description is no more true for single-session only
DONE

> Same here, needs updating.
DONE

>Repeating the same comment as on previous review, avoid including anything in i915_drv.h and only include in the relevant files that require to touch the internals of the structs.
DONE

> I think this should instead go as part of intel_gt, not here.
DONE

> We should aim to only take struct intel_pxp as parameter for intel_pxp_* functions.
DONE, I think the suggestion is reasonable. I expect that will modify the code significantly in the future commits, but let me try intel_pxp_* instead of i915

> This would be either a major kernel programmer error or the memory would be seriously corrupt. No point leaving such checks to production code, so GEM_BUG_ON(!i915) would be enough to run the checks in CI and debug builds.
DONE, I just remove the error check

> Also, we have not really initialized anything so it's really premature to print anything in this patch.
DONE, remove the print

> Same here, we really want to tighten the scope to intel_pxp and call this from intel_gt_fini(), so signature should look like: void intel_pxp_fini(struct intel_pxp *pxp)
DONE

Best regards,
Sean

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 2:01 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP component

Quoting Huang, Sean Z (2020-12-07 02:21:19)
> PXP (Protected Xe Path) is an i915 componment, available on GEN12+, 
> that helps user space to establish the hardware protected session and 
> manage the status of each alive software session, as well as the life 
> cycle of each session.
> 
> By design PXP will expose ioctl so allow user space to create, set, 
> and destroy each session. It will also provide the communication 
> chanel to TEE (Trusted Execution Environment) for the protected 
> hardware session creation.

Description is no more true for single-session only.

<SNIP>

> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,25 @@ config DRM_I915_GVT_KVMGT
>           Choose this option if you want to enable KVMGT support for
>           Intel GVT-g.
>  
> +config DRM_I915_PXP
> +       bool "Enable Intel PXP support for Intel Gen12+ platform"
> +       depends on DRM_I915
> +       select INTEL_MEI_PXP
> +       default n
> +       help
> +         This option selects INTEL_MEI_ME if it isn't already selected to
> +         enabled full PXP Services on Intel platforms.
> +
> +         PXP is an i915 componment, available on Gen12+, that helps user
> +         space to establish the hardware protected session and manage the
> +         status of each alive software session, as well as the life cycle
> +         of each session.
> +
> +         PXP expose ioctl so allow user space to create, set, and destroy
> +         each session. It will also provide the communication chanel to
> +         TEE (Trusted Execution Environment) for the protected hardware
> +         session creation.

Same here, needs updating.

> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -105,6 +105,8 @@
>  
>  #include "intel_region_lmem.h"
>  
> +#include "pxp/intel_pxp.h"

Repeating the same comment as on previous review, avoid including anything in i915_drv.h and only include in the relevant files that require to touch the internals of the structs.

> +
>  /* General customization:
>   */
>  
> @@ -1215,6 +1217,8 @@ struct drm_i915_private {
>         /* Mutex to protect the above hdcp component related values. */
>         struct mutex hdcp_comp_mutex;
>  
> +       struct intel_pxp pxp;

I think this should instead go as part of intel_gt, not here.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +
> +int intel_pxp_init(struct drm_i915_private *i915)

We should aim to only take struct intel_pxp as parameter for intel_pxp_* functions.

> +{
> +       if (!i915)
> +               return -EINVAL;

This would be either a major kernel programmer error or the memory would be seriously corrupt. No point leaving such checks to production code, so GEM_BUG_ON(!i915) would be enough to run the checks in CI and debug builds.

> +       /* PXP only available for GEN12+ */
> +       if (INTEL_GEN(i915) < 12)
> +               return 0;

I think -ENODEV would be more appropriate return value. Also, we should look into returning this error value from inside the actual init code.
We want the user to be able to differentiate between kernel does not support and hardware does not support status.

> +       drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", 
> + i915);

We shouldn't be printing the pointer values, especially not in INFO level messages. INFO level messages should be useful for the end-user to read. This is not very useful, we should instead consider something along the lines of:

"Protected Xe Path (PXP) protected content support initialized"

Also, we have not really initialized anything so it's really premature to print anything in this patch.

> +
> +       return 0;
> +}
> +
> +void intel_pxp_uninit(struct drm_i915_private *i915)

Same here, we really want to tighten the scope to intel_pxp and call this from intel_gt_fini(), so signature should look like:

void intel_pxp_fini(struct intel_pxp *pxp)

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
