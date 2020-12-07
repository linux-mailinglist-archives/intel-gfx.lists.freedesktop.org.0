Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1AD2D18B8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 19:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF286E8A1;
	Mon,  7 Dec 2020 18:49:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284B06E8A0
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 18:49:02 +0000 (UTC)
IronPort-SDR: l8RSzQVixosj/7IJeBWcVvY3YxGJRsxdQzS352oKyBhuX729/IRcqgnvrfybSV1LC1Dx6KmOxX
 +Qgk6iKYZTFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="153565287"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="153565287"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 10:48:58 -0800
IronPort-SDR: 6X8LBvbjWSIqixOXSf1Hsxkjlo77I8RqDq4NG3d1TEjDZMvEiu8eIqgDAN9x2nRlLaNEs6ZJW+
 q5BBYDom5e8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="483317687"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 07 Dec 2020 10:48:57 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 10:48:57 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 10:48:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 7 Dec 2020 10:48:56 -0800
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.55) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 7 Dec 2020 10:48:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lVtdib9O5ApO7a0+34niRTKo1Ba9eiOwMCv4KrwoS4+enJ4+YkJHX9llR+bucwVisKdly09PAAP0kD/2k/WgK6FHVHkdFSkN1Rdq6Bz17nCstvmKsqkeMABshftN2a67A8FaLFmGZJtt+2FHUEz1p3YsGDo6aa/mWqItw9T64VZCNUOl1aH49JdIivu64m013kkibktPEYmngYneXh5z6Hc9aIdko62Ot0vLg/ep5tFiX8r7f9n/AkdVbIKcfvVlIJWuFXa0+gGPsOBrz7steWmWIF/E/i/Dbf6SKZ5hNj2hx9MYA/3rY38tFf+4jxkDPjfNjvhIQYlf6uNwUIE8Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7zurqz7kkfu0YS3P59BzXUKdiMZxfPOw3hw1lAowJfg=;
 b=Q93FCSjFrWkGHFmRN34oAFj/wQUK0RpQwmXoQksY1rYC+kkqyC6SRp/J64dcWvXWpLn+vLLXuEgfUeBmE5RNsWRqQZisMxhP1qXtFFHIyPK6aAojQEZbfwLhOrw7EYfIMyuRWEAzUYDUcu+QxDx1WdDEJtgYLA7jnFbHCUckK+VJlRyHyzFsdGRa8NHGD31KLoqZTWr5UnJu/i+LThBfJC/uegs05eKsu62qVCt1raH7ssmhqAnLSES+8ESfuaHMt+a0CKdYCWNkFtBmJLiAEy3VA2nkk0g/WsCGk1Wg/3MsC2vn7gEOfWRxOtWXEEgA/3d4sOITkXFJHz3OMwqynA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7zurqz7kkfu0YS3P59BzXUKdiMZxfPOw3hw1lAowJfg=;
 b=DEusgi8gmMxoAxArwy6L13u3OQm/Y7I3p8PVNT0AdX4N2lNuxS2CKNisrnMg19R5JkZEDOnsECQg2aJWIRw2dOvjFnWegzxgrzczCJo0bgIbA9vV6vpjCNXIrppzC3S2sL7LDvHk2Jptfaq4vkcOsGWFeIT8UmNsjDW376wgSZ0=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM5PR11MB1755.namprd11.prod.outlook.com (2603:10b6:3:112::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.18; Mon, 7 Dec
 2020 18:48:55 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Mon, 7 Dec 2020
 18:48:55 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP
 component
Thread-Index: AQHWzH/qmjx+NikIcE+A6KgBk3DIUqnr8boggAAIFRA=
Date: Mon, 7 Dec 2020 18:48:55 +0000
Message-ID: <DM6PR11MB45319AE783547ABAE415ABD7D9CE0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-2-sean.z.huang@intel.com>
 <160733527668.9322.11627414165047259578@jlahtine-mobl.ger.corp.intel.com>
 <DM6PR11MB45317C78700D10613CA68D01D9CE0@DM6PR11MB4531.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB45317C78700D10613CA68D01D9CE0@DM6PR11MB4531.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: ab676153-d673-47be-f025-08d89ae0bfc1
x-ms-traffictypediagnostic: DM5PR11MB1755:
x-microsoft-antispam-prvs: <DM5PR11MB175565C95D351CFF1BB6617CD9CE0@DM5PR11MB1755.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6kuRGdzb42TPt4LkD1zSWzKqoDLos4KGbG0e9X1T+MwLSTgKt74UrIzOfleda4zFQ4OAyGYEpFpsfLvpzKgd4HL4y9UTTJQ0+omg7e4ulYjYC//xUR1u01H8g/wbMPAdZjnUfk9ancuW01KPK9c1kHAH+haGOemN6EeQ/k724sjp9T0LwSGllx8nn8ur5c3KhQ1sksQY/H3BnTLFvl7ezbXIgCpr7FM684spXCzB9jpL6y/VvtQzGf13UGoZoPwwoPm6jLfl5cC+7lv+5h9V13VPxBd1a47RlpHbBB8c8n1eIWQhDX4cK230p9ip6Voh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(396003)(366004)(346002)(136003)(66946007)(6506007)(7696005)(5660300002)(2906002)(83380400001)(64756008)(8936002)(110136005)(8676002)(86362001)(52536014)(316002)(66556008)(76116006)(9686003)(26005)(55016002)(66476007)(478600001)(53546011)(2940100002)(71200400001)(66446008)(186003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZVcwZUhBL2ZkMkpHTjI5anpMVXplV1hLNXBNTXFpTzRNcjlPa2Q2ZFYvcXlu?=
 =?utf-8?B?SGRGS1JtOTV1N0o0azJ0YkwzZ0lSbzlKZ25GWWVmeFlRMkplV0N3TlRyTzVm?=
 =?utf-8?B?WHNRN21ZREJxQkRseDYzdGhLQkxxMXpUVUI0eGVvYXAvUEZKcW0vTFF6T1hC?=
 =?utf-8?B?NU1lK01HVUppd3ZPeVMrd2M5dG9PdnMvNi9Edi9kV25vbDNFMCtRUy9EZXd3?=
 =?utf-8?B?NHBOQk5Gamh0SXpaMjJGQkxkMXU4ZXViNG5TS3ZsVWhkMk9MMjhUc0dJejBI?=
 =?utf-8?B?blRZTlowWFRIdzR5VVppQjlHU0FIZGN4cmh3d1VZMEZwVG8xTVBMVHdNRDhy?=
 =?utf-8?B?TlRGWGZVUDllRkppUktrUmxqcVlTWjRnVmJPS0U4ekxHa01uZ0IzSWRqV2Jz?=
 =?utf-8?B?Mmtib0liUEtpWVFkMmZWUFNXZ0laMjhab1liNmJDQ2YzOEFVdmRWZTIwUlJw?=
 =?utf-8?B?dUxyR2NiNGtWczZiaDZSeG9GWjJHeEpjdlA2YndPN2QrTUZ3OWJkdlk2Rlp4?=
 =?utf-8?B?Tk9ubWU1MlVYUlJycEQ2RWVObDJPRzNRZmlvSUUrSUhKMDg0Y25DazNmNVdM?=
 =?utf-8?B?WTF1cWdwVUFxdENEc2JaS1VQVDhsQkhNN2hwOWZPekVDODk2ZGFvb0RpUVAw?=
 =?utf-8?B?d2ZtMkF4UFRnejBZZDdMaWpxQld5alFnZE9BL2p5b1N3dktqWVpOTWRwRGZO?=
 =?utf-8?B?aU4wRGlPeG9xbVY5VVBTMmVlUEhwN050MG5lMTAyNys5eDVvUUVQbGpDVEow?=
 =?utf-8?B?U1dqa2ZCSTRYclhSaTZIcFllNG9ZR2h6cUJrbW9nZnNYamdKbytWemwzWlQr?=
 =?utf-8?B?TGp2MSt5ODVFcHZ2ZXQyOWFYRHA1aVVZZVBJYUJxODBVTTBKWVpUMEZRRDBR?=
 =?utf-8?B?SnlxMkp2aEl4KzJoQVRoeWczcWZJaWlUZi92RVAybUIrc24wcDA2a0pvSzZj?=
 =?utf-8?B?MytUMWNDNUl1UTNIY0JNeWpYTzRTMW5QckcySGxrNFl6Z01YaWtjTTVJcTc4?=
 =?utf-8?B?M2VtMFQ1VTZOV05NNGVyOWY2QVFDUVBsZW0xVUt3WmdoR2d4Zm0wTFQ2WC95?=
 =?utf-8?B?b1ppdExUZFpmRDN3M3Q4OG9tWGRaaTBkYkg3ckF0V05zd3lERW5TRjVNRVJE?=
 =?utf-8?B?dDRqbE0rSmhTTVJpQnMwZ1JleDZDL3dUK01ZSHR3ekdSMHF0VHZOdzNYbHVK?=
 =?utf-8?B?bml6Yklhd0p4dnFnYlZGU29vRmlYSFh5a05JWldxUjdFakNGdUpTd1pXZXYw?=
 =?utf-8?B?aUpjdGNGRnRvU0FTb24xS0ZLdmpGK05zWUtNYVovWlBWRS9XM3hFQWhnc2R3?=
 =?utf-8?Q?gV2cNUdWARim8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab676153-d673-47be-f025-08d89ae0bfc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2020 18:48:55.1931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LMka3T0s0coyKOn/FOJIeWdKNObpocc1G9YST+ovaktyg9c3c4kD/s0CNyU62AeCdjzcT4vmA2bjMLoxHtIgtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1755
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


>Repeating the same comment as on previous review, avoid including anything in i915_drv.h and only include in the relevant files that require to touch the internals of the structs.

I would still need to include i915_drv.h for macro INTEL_GEN(), hopefully it's acceptable.

-----Original Message-----
From: Huang, Sean Z 
Sent: Monday, December 7, 2020 10:26 AM
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Intel-gfx@lists.freedesktop.org
Subject: RE: [Intel-gfx] [RFC-v1 01/16] drm/i915/pxp: Introduce Intel PXP component

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

> Same here, we really want to tighten the scope to intel_pxp and call 
> this from intel_gt_fini(), so signature should look like: void 
> intel_pxp_fini(struct intel_pxp *pxp)
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
