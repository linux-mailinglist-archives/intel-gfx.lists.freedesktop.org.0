Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 763952F9B42
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 09:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D0D6E1B1;
	Mon, 18 Jan 2021 08:29:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1214A6E197
 for <Intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 08:29:41 +0000 (UTC)
IronPort-SDR: ej6za9FrR2tZ2edIKCKUmGteY/jwtiDOk879hKRvVai+fd/r7oNkrSWJv0Q7LYHib0ezou/mtI
 1Zpy5Rp3TyRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="157955286"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="157955286"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 00:29:38 -0800
IronPort-SDR: bT5jSlYmPbE7azgy2dejbdwYkOvB/dpUZaTvtQDdTGtzoRMzvPeqWbthiOiAFUE8qwSziNRfGp
 Qb8NSBVRzJ4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="399049158"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jan 2021 00:29:36 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 00:29:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 00:29:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 Jan 2021 00:29:35 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 18 Jan 2021 00:29:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwcCyg0p7cT4cP/2sDZdA8gmj1ddy5Uk2iEcB4pTg1IG13ehXL/h01y/tR9U3AwUF1yWtHGdytLE/yYwvtwIVRmHgkyB7058iP1NJDPYzPxudvrDCPVN60O4AKs2xBpkzzQ4OwqVYKKltfPg7+fi++t3PBKG0aDHI8BlXLKuBSLEvGPg0K7l2ERnpovKAC72kxYGNnEzpVIRRVi43hNP/QE5u0xo4A77mgu6yWX0oEkVRtH+WrNv2vckrjth4Dl7980k8OS8D85RQwdzytB2rpdLlLGata6qo/Sjn2q9WyzV13/oQPFyTpWAE6HKXGudxJ7X1ysZoi2PL++uapLnxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivWAc+fQfM+x8qKW+ppQOhTzq7JhVwezFd7Kr2h6vhU=;
 b=PlAWoWOKE3bZaNvySXcLlclzI0cqQKdQBOXgMxIGt3QHM8sq/yQbWzNBmfifGcopDqeR9yGVsnhQcRAKqcGTQosxE6QsLiIS2B0HMDmlxWWqe+i92oGnoTZBfhqYBNMbvwvZbtfD5/LznJQB2gixmDKjC+m+ZATm33QGvp2WNH9ARBQXvwD+07+WSx3pbY9vGL6ynRI3D121O5WZlGoNQ2/m82bulOVysEXa6UculgUn1vXFJMM6yZm7q0tP++EqnoGvtOl22+LkKQvRfI7U+8yfLE5FwBVsk2HyfsL2YKzz+2p1w2AzieTsKgf4To2/EhOfcYedVawT5Bz/E2rHjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ivWAc+fQfM+x8qKW+ppQOhTzq7JhVwezFd7Kr2h6vhU=;
 b=BHuZMVByt9/5wG4q72Mzuoo8nwrdBQ2lOtI9SKj0E5Vf0VBhb4x5MxTzVhn9BZD9iqJ81yDlY+EQ+norIadPllJzoLHfosPSNRq50NX1P9C5nQlZ6exXFjPodhqGiGVLuKI1u72i8QKGjA1CAubbD+psDSpHDT/AD4/Sd/FtAT0=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB3579.namprd11.prod.outlook.com (2603:10b6:5:13c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Mon, 18 Jan
 2021 08:29:33 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%7]) with mapi id 15.20.3763.014; Mon, 18 Jan 2021
 08:29:33 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 12/13] drm/i915/pxp: User interface for
 Protected buffer
Thread-Index: AQHW5IFqa9A4XBouDUO+DTsVb+85HaocUtEAgBDKuoA=
Date: Mon, 18 Jan 2021 08:29:33 +0000
Message-ID: <DM6PR11MB453135B169FE1539A83910A7D9A40@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-13-sean.z.huang@intel.com>
 <6a770d9a7c2adad3a905d16022368f454a6d5ffb.camel@intel.com>
In-Reply-To: <6a770d9a7c2adad3a905d16022368f454a6d5ffb.camel@intel.com>
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
x-ms-office365-filtering-correlation-id: 153af43d-7501-4a1b-77f0-08d8bb8b2ef1
x-ms-traffictypediagnostic: DM6PR11MB3579:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB35797A56F8C8CBC1B1C611B2D9A40@DM6PR11MB3579.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HjGkhJFJF+jyTpfSpnQPcLyRbv8Ldg8DAexr3VxZ6rD/zUlHEnHxuH2QGcapjmDaHG6Gnua64SABok2SaDnejhTrIs4WH/q/PQnP0CYQYJn4jzGyKe74Wfp1ZD2u72q6yvOJU3o3ijgHa9DKorzy2JHeNqz6yUChUfU44kV1eGXDuwVgOjNqeHMIcUe9Xkq5a+NXOy1w4BXaHXuvEq7+sclDQmSJys6uQEfuO+EiJtHprPyzEIPY41WsHdG9D1MTvJ6uL9srOTkLrNN7F/wzKehTFiEpCu9e1yRN1YrRsaLbpH6mIpUmJmd08R1TRtZLtOOge29jxaUKfejuftHl1uLRuERXAA1BI39j7eiSvPAAJR82BknsR6CusRkGICk3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(86362001)(71200400001)(2906002)(8936002)(8676002)(7696005)(83380400001)(316002)(54906003)(76116006)(4326008)(6506007)(52536014)(110136005)(66446008)(33656002)(64756008)(66556008)(5660300002)(66476007)(478600001)(66946007)(107886003)(55016002)(26005)(9686003)(186003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?Y0doUzZnUkdlNWxPT21OaXA3OU42YXhlM25CNWNVVDQvOURsdC9jbkIvV0Q0?=
 =?utf-8?B?a2tXaitJK2RURHZNRFM3VEgrd3hXV1Z1TWp2ZW84cUl1ekU1VjBKdGYzRU50?=
 =?utf-8?B?V3poN2VXMFdIUWtFa09LYk4xSFBSQ09qWnlWRXFuZlJsazB5REhjSXJ6eVdE?=
 =?utf-8?B?MDhXQmNDVTZ6U2dBV01wckthMERXYnAxTlUxREVEUXVvREtpVDlJZmRlRThi?=
 =?utf-8?B?ZXdqU1k4MXRGbVZsM3RGa2xNLzZmaDFpT2RIR3F1b3RIZlBPbGhZWHpTWmZG?=
 =?utf-8?B?VkpldzRIbm1hbExkQjNMTXIxZHpONm5SY3FJNVZ5bFp1Zk5pRlR2UzhMNUFS?=
 =?utf-8?B?dEVWQy8zU1BuQ3NFd0hWR2VURUhRcHVnMUxXT2FDOUl3dHdqNGdoVnl2a0FI?=
 =?utf-8?B?dlFMMWhmNjdlU1QxVzVYWndUN25oUVA4LzFQL0l3ODJiYVR0NE41aFdGanlQ?=
 =?utf-8?B?R0xFbFpyVDR0Q2dENlN6cDU0MFY0ZnI1akpUTkZweDZRZTkzcUNDbklPQVFW?=
 =?utf-8?B?YnFiMjlPdHZjRmZXdkU5TkNGaU9LajQwN1dneXBrclAzbzB3L1VoR1V4dXBj?=
 =?utf-8?B?dUlnTyttSmM2WnBFUHlNU082V1djTkt2bG5vU05pd3h2TE12Y2t2eWJPRGdQ?=
 =?utf-8?B?Tms1QXpLY2RaOWtra0FlZC9rOHozRHlSdkNpbDFqKzJmTmdYME5sWVIzR1hT?=
 =?utf-8?B?eVBlT01ZeFZOU1JiMTVmV1MyZDlpdVlCOVh2VUZ0cEtyNGw5OE5DSlk5NzN1?=
 =?utf-8?B?azZ0Y05Gd2poSXppcGZ0Qy9KdVhhdFVvZ3JJbkV4eTRFNm5CZFVRMjh1WDBB?=
 =?utf-8?B?d0ZxamYwc05TdnZIOWFnWUg3OFhjUCtGVUV6K0FtaCsvbVRiaURhYWs2YVA1?=
 =?utf-8?B?SE1FanlmS0RsU0lrUXA2bmRZMjlpVzdzMkRQKzV4L2d5YzRCRW1YNnFOK2I1?=
 =?utf-8?B?dHYxd3J3WFdvdjA4OUw0ajRGYmppamRJNHFwdW1HbnF1TnNqbzlkR1V1aHkr?=
 =?utf-8?B?L1R1MU1kVmFkMElLdDhwVW1OTFBKOEpFazZpTmVpc3dxV1MrS0YwWkh0emV5?=
 =?utf-8?B?dzdKeG1hTmNzUWpCSkRjQnVncXIyUnBTZGlCa2FkNzZieVlkd0xDTDl3bEtZ?=
 =?utf-8?B?bEV0NTMvY3RrY2MzZUUxYzZVWTFWdHRrZHBXbkFZM0V6cmRWQkYwNXEzd2Js?=
 =?utf-8?B?STR1U0h3WG9OdmJlek5nbGhremZDUnE2ZUQ4MTRJTWFEU01QaXpRY1AvOG9t?=
 =?utf-8?B?WXN5VVBOYlJ0ZDlKVmhvUmRqRlM5V2NDeTNYZ255YTU5LzVpMk0rUmNyUWY1?=
 =?utf-8?Q?bbrnwr/ytITP4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 153af43d-7501-4a1b-77f0-08d8bb8b2ef1
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2021 08:29:33.3717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k/+uV2qajsWlkGefxjaBB7X7PoXX2CMP7T3S4Er9wPlfe5Mkcy70ocLvpzd9IZFgzoZ04ZRx/ykJT31cyKQxSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3579
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v19 12/13] drm/i915/pxp: User interface for
 Protected buffer
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
Cc: "Kondapally, Kalyan" <kalyan.kondapally@intel.com>, "Bommu,
 Krishnaiah" <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

Quoted: " remember that we also need to require recoverable flag to false. It cannot be implicit."

Yes, I have prepared the patch to check the  false of recoverable flag in KMD, but haven't merged it into the patch series yet.
Because I would like UMD making the change first accordingly, to prevent breaking the integration test.

Best regards,
Sean

-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com> 
Sent: Thursday, January 7, 2021 7:58 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Cc: Kondapally, Kalyan <kalyan.kondapally@intel.com>; Bommu, Krishnaiah <krishnaiah.bommu@intel.com>
Subject: Re: [Intel-gfx] [RFC-v19 12/13] drm/i915/pxp: User interface for Protected buffer

On Wed, 2021-01-06 at 15:12 -0800, Huang, Sean Z wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> This api allow user mode to create Protected buffer and context 
> creation.
> 
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 19 +++++++++++++--
>  drivers/gpu/drm/i915/gem/i915_gem_context.h   |  5 ++++
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |  2 +-  
> .../gpu/drm/i915/gem/i915_gem_object_types.h  |  5 ++++
>  drivers/gpu/drm/i915/i915_gem.c               | 23 +++++++++++++++--
> --
>  include/uapi/drm/i915_drm.h                   | 19 +++++++++++++++
>  6 files changed, 66 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 68f58762d5e3..00d7ca3071e7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -81,6 +81,8 @@
>  #include "i915_trace.h"
>  #include "i915_user_extensions.h"
>  
> +#include "pxp/intel_pxp.h"
> +
>  #define ALL_L3_SLICES(dev) (1 << NUM_L3_SLICES(dev)) - 1
>  
>  static struct i915_global_gem_context { @@ -2022,12 +2024,25 @@ 
> static int ctx_setparam(struct drm_i915_file_private *fpriv,
>         case I915_CONTEXT_PARAM_RECOVERABLE:
>                 if (args->size)
>                         ret = -EINVAL;
> -               else if (args->value)
> -                       i915_gem_context_set_recoverable(ctx);
> +               else if (args->value) {
> +                       if (!i915_gem_context_is_protected(ctx))
> +                               i915_gem_context_set_recoverable(ctx)
> ;
> +                       else
> +                               ret = -EPERM;
> +                       }
>                 else
>                         i915_gem_context_clear_recoverable(ctx);
>                 break;
>  
> +       case I915_CONTEXT_PARAM_PROTECTED_CONTENT:

remember that we also need to require recoverable flag to false. It cannot be implicit.

> +               if (args->size)
> +                       ret = -EINVAL;
> +               else if (args->value)
> +                       ret =
> intel_pxp_gem_context_set_protected(ctx->i915,
> +                                                                
> &ctx->user_flags,
> +                                                                
> UCONTEXT_PROTECTED);
> +               break;
> +
>         case I915_CONTEXT_PARAM_PRIORITY:
>                 ret = set_priority(ctx, args);
>                 break;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index b5c908f3f4f2..173154fdc311 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -70,6 +70,11 @@ static inline void
> i915_gem_context_set_recoverable(struct i915_gem_context *ctx
>         set_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);  }
>  
> +static inline bool i915_gem_context_is_protected(struct
> i915_gem_context *ctx)
> +{
> +       return test_bit(UCONTEXT_PROTECTED, &ctx->user_flags); }
> +
>  static inline void i915_gem_context_clear_recoverable(struct
> i915_gem_context *ctx)
>  {
>         clear_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags); diff --git 
> a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 1449f54924e0..0917c9431c65 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -134,7 +134,7 @@ struct i915_gem_context {
>  #define UCONTEXT_BANNABLE              2
>  #define UCONTEXT_RECOVERABLE           3
>  #define UCONTEXT_PERSISTENCE           4
> -
> +#define UCONTEXT_PROTECTED             5
>         /**
>          * @flags: small set of booleans
>          */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index e2d9b7e1e152..90ac955463f4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -161,6 +161,11 @@ struct drm_i915_gem_object {
>         } mmo;
>  
>         I915_SELFTEST_DECLARE(struct list_head st_link);
> +       /**
> +        * @user_flags: small set of booleans set by the user
> +        */
> +       unsigned long user_flags;
> +#define I915_BO_PROTECTED     BIT(0)
>  
>         unsigned long flags;
>  #define I915_BO_ALLOC_CONTIGUOUS BIT(0) diff --git 
> a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c 
> index c53b13c02e59..611a0b5ab51f 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -184,7 +184,8 @@ static int
>  i915_gem_create(struct drm_file *file,
>                 struct intel_memory_region *mr,
>                 u64 *size_p,
> -               u32 *handle_p)
> +               u32 *handle_p,
> +               u64 user_flags)
>  {
>         struct drm_i915_gem_object *obj;
>         u32 handle;
> @@ -204,6 +205,8 @@ i915_gem_create(struct drm_file *file,
>         if (IS_ERR(obj))
>                 return PTR_ERR(obj);
>  
> +       obj->user_flags = user_flags;
> +
>         ret = drm_gem_handle_create(file, &obj->base, &handle);
>         /* drop reference from allocate - handle holds it now */
>         i915_gem_object_put(obj);
> @@ -258,11 +261,12 @@ i915_gem_dumb_create(struct drm_file *file,
>         return i915_gem_create(file,
>                               
> intel_memory_region_by_type(to_i915(dev),
>                                                            mem_type),
> -                              &args->size, &args->handle);
> +                              &args->size, &args->handle, 0);
>  }
>  
>  struct create_ext {
> -        struct drm_i915_private *i915;
> +       struct drm_i915_private *i915;
> +       unsigned long user_flags;
>  };
>  
>  static int __create_setparam(struct drm_i915_gem_object_param *args, 
> @@ -273,6 +277,17 @@ static int __create_setparam(struct 
> drm_i915_gem_object_param *args,
>                 return -EINVAL;
>         }
>  
> +       switch (lower_32_bits(args->param)) {
> +       case I915_PARAM_PROTECTED_CONTENT:
> +               if (args->size) {
> +                       return -EINVAL;
> +               } else if (args->data) {
> +                       ext_data->user_flags = args->data;
> +                       return 0;
> +               }
> +       break;
> +       }
> +
>         return -EINVAL;
>  }
>  
> @@ -318,7 +333,7 @@ i915_gem_create_ioctl(struct drm_device *dev, void 
> *data,
>         return i915_gem_create(file,
>                                intel_memory_region_by_type(i915,
>                                                           
> INTEL_MEMORY_SYSTEM),
> -                              &args->size, &args->handle);
> +                              &args->size, &args->handle,
> ext_data.user_flags);
>  }
>  
>  static int
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h 
> index f9a1d26824b6..6822f11814fa 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1716,6 +1716,15 @@ struct drm_i915_gem_context_param {
>   * Default is 16 KiB.
>   */
>  #define I915_CONTEXT_PARAM_RINGSIZE    0xc
> +
> +/*
> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true (1) PAVP content protection is enabled.
> + * When enabled, the context is marked unrecoverable and may
> + * become invalid due to PAVP teardown event or other error.
> + */
> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
>  /* Must be kept compact -- no holes and well documented */
>  
>         __u64 value;
> @@ -1735,6 +1744,16 @@ struct drm_i915_gem_object_param {
>   */
>  #define I915_OBJECT_PARAM  (1ull<<32)
>  
> +/*
> + * I915_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true (1) buffer contents is expected to be protected by
> + * PAVP encryption and requires decryption for scan out and
> processing.
> + * Protected buffers can only be used in PAVP protected contexts.
> + * A protected buffer may become invalid as a result of PAVP
> teardown.
> + */
> +#define I915_PARAM_PROTECTED_CONTENT  0x1
> +
>         __u64 param;
>  
>         /* Data value or pointer */


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
