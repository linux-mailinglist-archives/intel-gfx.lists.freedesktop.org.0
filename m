Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 737012F2268
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 23:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0929789D39;
	Mon, 11 Jan 2021 22:06:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524AF89D2F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 22:06:30 +0000 (UTC)
IronPort-SDR: U58m6PNj8HGAA2T3LvYg/YXXxeBpIj4KZThrGJbqpQAMXrHJCmj+QpH70+9kIb8Qf6GKdvjARV
 ghrltKebRP7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="165025894"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="165025894"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 14:06:29 -0800
IronPort-SDR: TMuf9FVnT4iZO2ke9fh4XOtt1ChS/1RCFKZ4c/l50bgS4g8HWcGz8SXASEeYjfaM21gNvU0jrq
 OIN8V68g098Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="381167117"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 11 Jan 2021 14:06:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 14:06:27 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 Jan 2021 14:06:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 11 Jan 2021 14:06:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 11 Jan 2021 14:06:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vomc/Dk0ToBJEMsdkFLh2PLjbgvNafNlD1tS7Y9wprpaJ+WJbPZzE/NSNfXjD9YEI9yTCvQjIyIubXtJ9KfqdBXH6p7L0a1HRK20Z+jEVbDvYrABy0gVdQYyaUadntJMV5dOn9ra/3abc7OTHkP4ggxHckWhkM7nz513uF9bplrgdINXyvGbnOtGiyfOyufMj9AQmy/IqvjrgvPSRY5KuQFeh1eJF2aMoAK2Y4WkrOWJ6L/BLKq6eYYtuQAtN0TDBKsWuXYfyX1xP2iV3RzZdV3+eSpiDVODI/eSmTpqn8q22ZyYx5fcngbOgpp7M1BXY0nvEO8sxz1rJZ2UXsgtGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qNAD9nQT3VAS/3CDJrfmMc3/XZlFVeE341I0yOiVwOQ=;
 b=LL6xmYxW9BUVWJFtL654/F1PmcBFHc9z4dI2PCEhI4QrGf3Y9lxEcCxUo2RSzREULjyZ0O+YOnVOgaVmXpkNAnDy7zD1/i762NV9Lu9mmu2a3E6jiN0ISZ+XKt83J8TYO91Zbi9wfLd1XznwoglGj9TbPShGiAZigfIlj1GFn3EVWcqlLMWm3drAK3pODCyjtQ7INZ6n/nuNpxXZli6+VE14QW6a2YQKjanomQk7d6fteiQtRKj7fuDgqcchsQuYUgI/fJUieLUXHVINemftbcHv+4Tr2mFf8ZUxzGwWvXyuEzHMqiyVLe0oet8kcMaoUj35AEZ0XGp3d0kKutXq7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qNAD9nQT3VAS/3CDJrfmMc3/XZlFVeE341I0yOiVwOQ=;
 b=mb1Y21/44u0gWMnKU+6xSxO0FwA3m/d2zyUFMd963Yf5ZIk4aLECTLe93dqOkD6i2ze40e/cD9N7tJDgEsQ3sAGsSHhd+gnSRyzRwEG+/AtxZQcSubj4Co7PVcGO9lHUM/pTMIEfNlu7H+Ed8SPFiHUqs/M1E5g1X4CexeEKd8Q=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB4516.namprd11.prod.outlook.com (2603:10b6:5:2a5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Mon, 11 Jan
 2021 22:06:25 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%8]) with mapi id 15.20.3742.012; Mon, 11 Jan 2021
 22:06:25 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 01/13] drm/i915/pxp: Introduce Intel PXP
 component
Thread-Index: AQHW5IFpbYlVQh0HpESJPNBbA4h7WKoc0KYAgAYwVKA=
Date: Mon, 11 Jan 2021 22:06:25 +0000
Message-ID: <DM6PR11MB4531DD91F08A59B1AC200A7AD9AB0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-2-sean.z.huang@intel.com>
 <173ae13b150a41f3efe476ad043606a0c8aa20de.camel@intel.com>
In-Reply-To: <173ae13b150a41f3efe476ad043606a0c8aa20de.camel@intel.com>
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
x-ms-office365-filtering-correlation-id: f10cb229-4eb1-4311-2da0-08d8b67d238a
x-ms-traffictypediagnostic: DM6PR11MB4516:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB451641AEF4CFBD9DF96923E6D9AB0@DM6PR11MB4516.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WE80p1H0VTRnk1d6qORi3OOEYQeigB+TWBCilhMTyyyro/7OpUSzUUQJmmCffOsKQRyBkowBuOgY9KwNzy0rNuVvA/OI1vnHNcKUXhzNqgTtuMn4Ne3biPos+spzlCCuTJ8s052zOzNhHenQHXHXQES5JdLND6RNqdlvNQgXmFXu2Ruk2+RqYwisjfMdXBMDigoMUmUti/7/wnOCUOp3X5Hlrs2Rp0gTCjaVG0ZUN1+QLqy0JwnEzp7r9l856cwI4Cc4fkFYRYhD3RpbKCNeqqO4C+TfG8MMBYcpwekv3GSHd2ESm+gcYjZLpUh/dyP2gBKPvp8Qqp7Hqra56oE0PtDgLU6uLaTxq6Sh1L7U8p2LTEm2RSLyq2H7CIbcztmBRE4QIqcD6qK8XC89YKMlVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(66476007)(66946007)(316002)(64756008)(66446008)(71200400001)(9686003)(66556008)(110136005)(76116006)(2906002)(8936002)(83380400001)(86362001)(186003)(55016002)(52536014)(26005)(8676002)(53546011)(478600001)(33656002)(5660300002)(6506007)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?cldmbnF5MlhaOWdFWHhXbkk0MldsL2NwZnJZL0E4Q0V5dTVpNGZObGU2em9D?=
 =?utf-8?B?Y1J0aTZwQjYzYTFNWjZWb2F2eGNlTDBRb3Z3M0tUQUpJVW9SUElqWUlmcndN?=
 =?utf-8?B?c3Rrbi9oZm5nKzZRVTJLZ0xkK2tOQ1JrVnc0d1pacVRITyt4ZnBZYVc1aVl1?=
 =?utf-8?B?TEd1UEZwT3lrN0Z6VWdvWERmSDdUQlRzejJTQXJXY0xJaGl5SWFvS1F5R05Q?=
 =?utf-8?B?aDJKSmZleUNhS0FGNU1DeDFDeUt5TVU5cWp1Zi9Jc0pwU3ZDalhHcjNlYld5?=
 =?utf-8?B?THRUWmJyUzdiWVNEQVN4a0VQam5MaUhNNEI0WnVrdUtnRCt5MEtPVEdKMXR6?=
 =?utf-8?B?TU42WnY4QjZHY1JJenVwK3cvYkVQbFZOMjIycHMyUWJwOE8vSGRpUnFrMmNu?=
 =?utf-8?B?cnhzK3c3L01Db1ArSUZ1T0pwUWtKT2FqUmZpKzdQQ1ZhSlp6dkZxaTh2ZFhs?=
 =?utf-8?B?amRpVXdZT3g0ZUJRVzJpRkV2SmJOMFZ6L1hReXBkWEI1UXJUQlhvMysyNS9P?=
 =?utf-8?B?YUh6NndiekgxZkptaytXSEhzQ21DemVFcmdVQ0lNUUlyTmFHUituM0c2THVZ?=
 =?utf-8?B?MVZnWUVIQkZMdXc3MkRON0QwYUx6TmFoMzV6cEc3ekNHRWNZSDFWVXBDNG5p?=
 =?utf-8?B?RnZhZHRDdW1oWG15ZXVYdVBRVTRSK1hDVUtpcnBNNk56TUNaV2lWQkFHb1Ax?=
 =?utf-8?B?S21iSDQrLzNiUlBuS1pYTkFGTjNGYnlMZG04c05YdEY4RURlSjN1alErelBy?=
 =?utf-8?B?bmVMajJWUEVRT1pVUVBqeExyTmtyeXI3YWI4Sm1rUnpQUk82eENqNjhjU0Zu?=
 =?utf-8?B?dUR1Qmk3ODhCbGpDL1pEUWxwRUlBM0R3REduWUlqOHRUYVpDTHZGWDJRRjY3?=
 =?utf-8?B?aUhIeTc4R2tEMVlIUlNadGoyLzZjbHZVMHJqbHVveEF5U2RRSFdxZERhRjdL?=
 =?utf-8?B?SUxML0VUNzZZY3hlM01qdDNKZ3Q5Q2dEQTlDOWVSVTFCdzJlSk1Ya2IzUlNq?=
 =?utf-8?B?ajc4T0ZxTFlkVmdteUorWEVYNklyRk1LSEFobkFHbU16Uyt0cHpXTTVrVTBN?=
 =?utf-8?B?L0IyUE11US9XNW51ZFFleGMxRVJQekJHeC84T3hqdWJ1dVBTYjE3azdKTTU5?=
 =?utf-8?B?R2FCaW9KWHJwb045Uk1FZGJMTC9SMGppWVpPdWtzMWlFKzVza05FQVRXeVlM?=
 =?utf-8?B?S3VJRU5VTVduT3l6aGxnNmtaYkxXcjl4TExBSllIRzZMdzl1OEVhT3ZBWkNI?=
 =?utf-8?B?bWZ5aC9Uc3FOVTIvZHdhYmtVMWFpV3pvS216ci9CVHJJcFJ6RkFIclRDdmpG?=
 =?utf-8?Q?rQtZe2syiVbpc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f10cb229-4eb1-4311-2da0-08d8b67d238a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2021 22:06:25.3981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XL1Iqcal7Akjxs6D2xX+f6reKK6caeR1ZVW1IvEw4gP5ttTuGKiwe728JnefBGNxyB1L8q686O97nv7avzBnCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4516
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v19 01/13] drm/i915/pxp: Introduce Intel PXP
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

Hi Rodrigo,

Regarding to Chris comment in v4:
>> +config DRM_I915_PXP
>> +       bool "Enable Intel PXP support for Intel Gen12+ platform"
>> +       depends on DRM_I915
>> +       select INTEL_MEI_PXP
>
>Doesn't exist.
>
>Kconfig dependency resolution is not recursive; you probably will need a
>depends on INTEL_MEI

Since select INTEL_MEI_PXP isn't recursive so I have add "select INTEL_MEI" accordingly based on Chris suggestion.


In the rev20, I removed the term "Mesa" from the help description, modification as below:

          This patch series is to allow the kernel space to create and
          manage a single hardware session (a.k.a default session or
-         arbitrary session). So Mesa can allocate the protected buffer,
+         arbitrary session). So user space can allocate the protected buffer,
          which is encrypted with the leverage of the arbitrary hardware
          session.

Best regards,
Sean

-----Original Message-----
From: Vivi, Rodrigo <rodrigo.vivi@intel.com> 
Sent: Thursday, January 7, 2021 7:29 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v19 01/13] drm/i915/pxp: Introduce Intel PXP component

On Wed, 2021-01-06 at 15:12 -0800, Huang, Sean Z wrote:
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
>  drivers/gpu/drm/i915/Kconfig                 | 22 +++++++++++++++
>  drivers/gpu/drm/i915/Makefile                |  5 ++++
>  drivers/gpu/drm/i915/gt/intel_gt.c           |  5 ++++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h     |  3 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 29
> ++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         | 25 +++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.c | 25 +++++++++++++++++  
> drivers/gpu/drm/i915/pxp/intel_pxp_context.h | 15 ++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h   | 23 ++++++++++++++++
>  9 files changed, 152 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig 
> b/drivers/gpu/drm/i915/Kconfig index 1e1cb245fca7..594775c11e19 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,28 @@ config DRM_I915_GVT_KVMGT
>           Choose this option if you want to enable KVMGT support for
>           Intel GVT-g.
>  
> +config DRM_I915_PXP
> +       bool "Enable Intel PXP support for Intel Gen12+ platform"
> +       depends on DRM_I915
> +       select INTEL_MEI
> +       select INTEL_MEI_ME
> +       select INTEL_MEI_TXE
> +       select INTEL_MEI_PXP

I'm afraid you haven't addressed any of the Chris' comments from V4.
I saw you marked as "done", but I'm seeing everything back here.
So I'm not sure what's going on here.


> +       default y
> +       help
> +         This option selects INTEL_MEI_ME if it isn't already
> selected to
> +         enabled full PXP Services on Intel platforms.
> +
> +         PXP (Protected Xe Path) is an i915 componment, available on
> GEN12+,
> +         that helps to establish the hardware protected session and
> manage
> +         the status of the alive software session, as well as its
> life cycle.
> +
> +         This patch series is to allow the kernel space to create
> and
> +         manage a single hardware session (a.k.a default session or
> +         arbitrary session). So Mesa can allocate the protected
> buffer,
> +         which is encrypted with the leverage of the arbitrary
> hardware
> +         session.
> +
>  menu "drm/i915 Debugging"
>  depends on DRM_I915
>  depends on EXPERT
> diff --git a/drivers/gpu/drm/i915/Makefile 
> b/drivers/gpu/drm/i915/Makefile index 4074d8cb0d6e..cbf2f0594b4d 
> 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -259,6 +259,11 @@ i915-y += \
>  
>  i915-y += i915_perf.o
>  
> +# Protected execution platform (PXP) support
> +i915-$(CONFIG_DRM_I915_PXP) += \
> +       pxp/intel_pxp.o \
> +       pxp/intel_pxp_context.o
> +
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
>  i915-$(CONFIG_DRM_I915_SELFTEST) += \ diff --git 
> a/drivers/gpu/drm/i915/gt/intel_gt.c
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index d8e1ab412634..336ad7deae06 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -18,6 +18,7 @@
>  #include "intel_uncore.h"
>  #include "intel_pm.h"
>  #include "shmem_utils.h"
> +#include "pxp/intel_pxp.h"
>  
>  void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private 
> *i915)  { @@ -584,6 +585,8 @@ int intel_gt_init(struct intel_gt *gt)
>         if (err)
>                 goto err_gt;
>  
> +       intel_pxp_init(&gt->pxp);
> +
>         goto out_fw;
>  err_gt:
>         __intel_gt_disable(gt);
> @@ -607,6 +610,8 @@ void intel_gt_driver_remove(struct intel_gt *gt)  
> {
>         __intel_gt_disable(gt);
>  
> +       intel_pxp_fini(&gt->pxp);
> +
>         intel_uc_driver_remove(&gt->uc);
>  
>         intel_engines_release(gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index a83d3e18254d..c4760e2722fd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -23,6 +23,7 @@
>  #include "intel_rc6_types.h"
>  #include "intel_rps_types.h"
>  #include "intel_wakeref.h"
> +#include "pxp/intel_pxp_types.h"
>  
>  struct drm_i915_private;
>  struct i915_ggtt;
> @@ -145,6 +146,8 @@ struct intel_gt {
>                 /* Slice/subslice/EU info */
>                 struct sseu_dev_info sseu;
>         } info;
> +
> +       struct intel_pxp pxp;
>  };
>  
>  enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> new file mode 100644
> index 000000000000..9bc3c7e30654
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_context.h"
> +
> +void intel_pxp_init(struct intel_pxp *pxp) {
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt,
> pxp);
> +
> +       if (INTEL_GEN(gt->i915) < 12)
> +               return;
> +
> +       intel_pxp_ctx_init(&pxp->ctx);
> +
> +       drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected
> content support initialized\n");
> +}
> +
> +void intel_pxp_fini(struct intel_pxp *pxp) {
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt,
> pxp);
> +
> +       if (INTEL_GEN(gt->i915) < 12)
> +               return;
> +
> +       intel_pxp_ctx_fini(&pxp->ctx); }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> new file mode 100644
> index 000000000000..f47bc6bea34f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_H__
> +#define __INTEL_PXP_H__
> +
> +#include "intel_pxp_types.h"
> +
> +#ifdef CONFIG_DRM_I915_PXP
> +void intel_pxp_init(struct intel_pxp *pxp); void 
> +intel_pxp_fini(struct intel_pxp *pxp); #else static inline void 
> +intel_pxp_init(struct intel_pxp *pxp) {
> +       return 0;
> +}
> +
> +static inline void intel_pxp_fini(struct intel_pxp *pxp) { } #endif
> +
> +#endif /* __INTEL_PXP_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> new file mode 100644
> index 000000000000..2be6bf2f0d0f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_context.h"
> +
> +/**
> + * intel_pxp_ctx_init - To init a pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_init(struct pxp_context *ctx) {
> +       mutex_init(&ctx->mutex);
> +       ctx->inited = true;
> +}
> +
> +/**
> + * intel_pxp_ctx_fini - To finish the pxp context.
> + * @ctx: pointer to ctx structure.
> + */
> +void intel_pxp_ctx_fini(struct pxp_context *ctx) {
> +       ctx->inited = false;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> new file mode 100644
> index 000000000000..f51021c33d45
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CONTEXT_H__
> +#define __INTEL_PXP_CONTEXT_H__
> +
> +#include <linux/mutex.h>
> +#include "intel_pxp_types.h"
> +
> +void intel_pxp_ctx_init(struct pxp_context *ctx); void 
> +intel_pxp_ctx_fini(struct pxp_context *ctx);
> +
> +#endif /* __INTEL_PXP_CONTEXT_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> new file mode 100644
> index 000000000000..f9b40ea98b1b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -0,0 +1,23 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_TYPES_H__
> +#define __INTEL_PXP_TYPES_H__
> +
> +#include <linux/mutex.h>
> +
> +/* struct pxp_context - Represents combined view of driver and
> logical HW states. */
> +struct pxp_context {
> +       /** @mutex: mutex to protect the pxp context */
> +       struct mutex mutex;
> +
> +       bool inited;
> +};
> +
> +struct intel_pxp {
> +       struct pxp_context ctx;
> +};
> +
> +#endif /* __INTEL_PXP_TYPES_H__ */


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
