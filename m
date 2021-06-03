Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1553996C4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 02:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6146EEA8;
	Thu,  3 Jun 2021 00:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3846EEA7;
 Thu,  3 Jun 2021 00:07:53 +0000 (UTC)
IronPort-SDR: fRmgQ3C0nN30QBwHJ1glNreyNnu0j7J3K04t4dxT+jLUweR6VCx5WCpGECvx55m1dhnMXm/r4j
 NWxq6U4Fu6Tg==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="200914166"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="200914166"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 17:07:51 -0700
IronPort-SDR: 2fQUTZQKLa7bHJMiPRnBiEh26GaFD0Rpa/UsLSFD06veb0GfY3X3LJExXrhSId3yl/72f8TqW2
 rknuHtSSMsmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="633505121"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2021 17:07:51 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 2 Jun 2021 17:07:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 2 Jun 2021 17:07:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 2 Jun 2021 17:07:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GuYRz8QzwMuxZo8weopUX/4gjJDWS+jeTFa38VSrxDRNLEOan540clhQ5jL9OqqpgPWxeHgloOEhwkeZdQbYz2y7Lh93LosQkpfRBvmeP2nO/MY6y0EdFhjeEjhZBgObcpsHiJIAa4YNMfm/chIFRZAIfeWLFrHWO2bH7QnfCa4AdBQf2OHUzLp3v8v9wt/n06J4zO5Ir6rvrBWCQ1kr3uVn6fuUlEYPYW9dEGPVrkVs9FWCq4fMAck7uikXesGVUWXFvFKaLfvA/3Y+ORz1dmkg8xVOGh7WQecIiCMKZUqOd974S1MS3NfSvQ1HVeFHCSb3R8hlodw6D/N2j1BuVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2rgIKamgzym9/MrLzbzrc9j6/E016Dylf5Qqol7x/M=;
 b=m9P424FR1F0yQs2Kejrt/7rCKp0wKpZVIs2WPvoBsG6aZvSaEM7L7x/Ns9s19Usv5TN+G01FnUYLUQ0lkLcGiBJywOBroM1udlG/GuTJy1u2qWI4EcIqRAIiZu/mtGLsaY4Smax4Ndai3q4DG9LBp21Ly8UYqQt9IbrROj/KBsg2wt2nU0DeMilc/rU9J10TBq2GfHNce3PlcoQXRE9VcYKaViQPx293rm6h9JzMfx+cN6oPS2k977xlDUfy/wyJiVHJrR769ouTduLxIv11yPQFoxMYTnFR3RI1siIP+taGFCuQ/wtkaiIsCupNf6xtv4vNCoibH2HtN70behAb+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2rgIKamgzym9/MrLzbzrc9j6/E016Dylf5Qqol7x/M=;
 b=V1QKkp6fUHEioYhMR6+90udMtQePI/DRxdf4W07BbDxHjDMkSmkNyulAtXQj+N4zzqKRlW81zFaibneFSay0RVJ6FydH6HgOH2ghl/drAdebcMSNmZfY77MUa7feIo+x3nAZDKuZbcYmFZ+WwvYZHaDu5tAJRYODzSYSnK1IhHo=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB3173.namprd11.prod.outlook.com (2603:10b6:a03:1d::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Thu, 3 Jun
 2021 00:07:17 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::492:b03:847d:aa8c]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::492:b03:847d:aa8c%6]) with mapi id 15.20.4173.030; Thu, 3 Jun 2021
 00:07:17 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 06/17] drm/i915/pxp: Implement funcs to
 create the TEE channel
Thread-Index: AQHXUSmkG9c1ydcXKkOw0zCwORZ/Y6sBdn6A
Date: Thu, 3 Jun 2021 00:07:16 +0000
Message-ID: <28c1689132ce15f8c88e714aafb7d630555ec3a4.camel@intel.com>
References: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
 <20210525054803.7387-7-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210525054803.7387-7-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.4-0ubuntu1 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08450d4c-9e9d-496e-5881-08d926238c6f
x-ms-traffictypediagnostic: BYAPR11MB3173:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3173D202079A322AF15E8DB88A3C9@BYAPR11MB3173.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YfzD7W3aZgm1CNlSFboK7R/sp7xbMjD8YOid12Kg/I7bTElYe8C63kLP0EPbb/W/dPfETGZFhL/lM+I+Lxz0DOPfvOY0k8ex53VM8KHboPCzAVmKhoTe9JqFS0zJJ9us5aTpRZapT0m0DrVsTjwpcbgDUwprhO1/OSnRFKVg+vXzQYmekYqr+hV6mCGhvcrLf8thADOItvsZs37wvq6iwlGBNYCdhaXMafnh821EMUvr9AyetP2uf1YY20QSuDOIo2ZJ/OTOzajUZzzWQeuEUhiXrLhZ+vhR2KSEMrNPNLNv0WssVpE+9zpY6BhQOhpWLxzB2y8czjBKscTpKc2QMLBRMOA6mGvgobGkvxN9e/hBl8Y31NSC8u0qvQ+hQYMoxfZRJf2VVkJqWAMVKPDFuLPlAK/BWkxmS8seGVrB2dJA/Ej8zPR8jO2+g17BEBzp1GVq7/DiH5S29wIOmNK++qVL/PjQ8D8f2wtEK+64DtLdlfW7ZtVk1R3vXaqsPRfymS/4iUpfImp0XkQGI2+6Ziw9ggylY/qdr4Ir6sczw2ldILkg45t83SoQGdC5rzxJ5sUbkwes8LUFKYJHV4gkDZkwP0HCwvAZIVLEY5c/57M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(396003)(136003)(376002)(39860400002)(186003)(66946007)(76116006)(66556008)(66476007)(83380400001)(66446008)(122000001)(478600001)(86362001)(64756008)(4326008)(2906002)(38100700002)(26005)(6486002)(8676002)(6506007)(8936002)(6512007)(316002)(54906003)(36756003)(110136005)(71200400001)(5660300002)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VlEwMVBkQU1kY0xSSElxbGtDOWZZWTM1c0lyY3RwVStOQzRDblRnVUxMUjZw?=
 =?utf-8?B?V01vcE9RT3lzQVJpUVFMUUFtVVliMFc5bUIrTC8raC9UT21VYnhRVnBOQzBY?=
 =?utf-8?B?ZFpsMUVFNDR0c0hzZGg3d1JqWGtubnFOQS9jWmY4RGd0SENyUHdxLzJNb2NM?=
 =?utf-8?B?L05Uc0M1WkZxK0NxcUw5MCt2VUZ0cGUwZnJ6ZER6VVQ1eGg4RUE1VVc4QkpG?=
 =?utf-8?B?emtLU1BpZGlNZE5VZlFJZmpzQzR5MkFvenRSNm5aWWNUMVRJKzdnQWhib1pa?=
 =?utf-8?B?a09GWFg4RE5neE5OU1ZLaGtTMFM2bmZRcnU3VXpFNmJWMkJJL1ExWDZYaTQy?=
 =?utf-8?B?bC9OK2FjMUdwNnROOFNkSlpGL0ZZd1ZveTBKeXZGTlNLUFVGU1VteEdZQm9B?=
 =?utf-8?B?ekJIUzdJOUpBeGJadkx2MjFtWWJudWc0K1YzeHBqZVpLbW4wSzFpOTNWRy9q?=
 =?utf-8?B?c1VTZytKYzRObng5V2VVYVVEbW5GUDMwcHdUenNBUWpMdzV3bUI5d2xmVTgx?=
 =?utf-8?B?M1ZBTWJIY0Y1ZUVBVkthL3VtdnVSWVNLQ2pvRlBQazhwazVuUHkwaHhxK2hF?=
 =?utf-8?B?MnNkeTFJSS81dHdyU1YrVmw5dWNTRkxuMGpaTUpoZ05BeGlaOFRMa0ZMSXE0?=
 =?utf-8?B?V1NDTFVlS0Y5QWhBWCtTRTlFWk12QloweStYU0R0dWs0cmVKcVVZZE1ycEtq?=
 =?utf-8?B?cWtRQm02THlIai9peWVzTjRYQ0gxb3hDS1RYR0hOS2tLVmw4Z3lzb09Lckgv?=
 =?utf-8?B?N05FOHpsRElHTEZDRTdDanBBS2lFSzZ4TjY1dmg5R0hoYnJkRE4rQ200WXcy?=
 =?utf-8?B?aWJhNVorSE9iRGE3QnRjcktlc2prR244U0w1WXdUODAwNSsyNEEwSjlSSXhZ?=
 =?utf-8?B?ZnZRSjVsR0liZ3ZvRlFwbFdWOFVXY0JRUU03ZVg1aU1XWWRDY1pRUnovM3NK?=
 =?utf-8?B?YjYrMU0vK2ZmZTd5VFpETjNqSE4yeVV0MDJGRXhpZEd5Qzd5WlJCSjVaVHo3?=
 =?utf-8?B?dVYrT0tMRFFQd0pOVjdBVUhWWXNhV1lnWFZHWjV3SUVzU0x2K2dteWljck9y?=
 =?utf-8?B?Rnc2SjQ5NWwyTEM3M0xJZnA0OVdUTkcySHlNSzdvT3R0U20rd0JZZThQbHI2?=
 =?utf-8?B?YXZ1U081YU5XUGVDQjVaZlJKWGppWitZV2k0cFErK0d4ZTVhTjVjc1p3b0Yw?=
 =?utf-8?B?OFdjRWprbVlxajlTNGVMOWV6UkMrNXY1RitzcjNnVTl2RWpTQlVQR0U3czdJ?=
 =?utf-8?B?NnpmUWluU253cjZQd1NYUDhZZ2daSUtiMlpiSXNDRDJNK09BUUswVTJydlgx?=
 =?utf-8?B?U0NaUEEyTTJzTFdLdnVaemxxTTNrRDRuOE1scFBqTTNZTjROTnRxcTFtUjdn?=
 =?utf-8?B?N0FaZUNCN2pBdnRwOXhUKzVvQTY2bU1rQnQ4cE9QRzM1anh4ZHFZNzBPOEFj?=
 =?utf-8?B?ems3RmNoY3pwTllwSE1jczU2WklrUmlWOWFOb1UzTXZDbzI1eXV5REhvaGZJ?=
 =?utf-8?B?Z2lFMHNJcTR3U0RaUXNUeWduV3NvbDk4TTVyKzdSWlkvSVNDVFRpbFJPL0dM?=
 =?utf-8?B?QUtpd3RGV25YT1hQRWQ3bFNETG5pYWZrVGVNMjdMMUpleVRtVmpZVm1MYUZL?=
 =?utf-8?B?R1ZBTVIwMC9WK1ZPOHk4Wk9lZG5EWllQNkJuVjNtenU0NEFrSmdEUW8zc1Ar?=
 =?utf-8?B?c1oxQ09RMmFOcWxldXIyZU1wNTl4bFJ1bGVxcFA3MTUwZXFSVWxMbnN2VnJC?=
 =?utf-8?Q?LhPZcWFlA9VUnRqDnyGePq5elPkU633b3CCzcu5?=
Content-ID: <F21D8F4752CB0A4D97FCDF9C9D71B8A2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08450d4c-9e9d-496e-5881-08d926238c6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2021 00:07:16.9755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j4deqRS63uHSZ9Bl+GvQrNrfTKO+NqbQiYQwX7KBDJXUwtPDbOxwuT2QAjlTIV7RMc/5I7fV78djCdz5DXH7pCRAwNaCp35JnUNsVQ010hLujB04cRV87J8zDCjHjEd8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3173
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 06/17] drm/i915/pxp: Implement funcs to
 create the TEE channel
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
Cc: "Huang@freedesktop.org" <Huang@freedesktop.org>,
 "sean.z.huang@intel.com" <sean.z.huang@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2021-05-24 at 22:47 -0700, Daniele Ceraolo Spurio wrote:
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
> 
> Implement the funcs to create the TEE channel, so kernel can
> send the TEE commands directly to TEE for creating the arbitrary
> (default) session.
> 
> v2: fix locking, don't pollute dev_priv (Chris)
> 
> v3: wait for mei PXP component to be bound.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <
> daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> #v2
> ---
>  drivers/gpu/drm/i915/Makefile              |  3 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c       | 13 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c   | 87
> ++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h   | 14 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h |  3 +
>  5 files changed, 119 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile
> b/drivers/gpu/drm/i915/Makefile
> index efd950122e40..0dfff52fea24 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -275,7 +275,8 @@ i915-y += i915_perf.o
>  
>  # Protected execution platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
> -	pxp/intel_pxp.o
> +	pxp/intel_pxp.o \
> +	pxp/intel_pxp_tee.o
>  
>  # Post-mortem debug and GPU hang state capture
>  i915-$(CONFIG_DRM_I915_CAPTURE_ERROR) += i915_gpu_error.o
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 3255c6da34e8..5df2a09c9e4b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -3,6 +3,7 @@
>   * Copyright(c) 2020 Intel Corporation.
>   */
>  #include "intel_pxp.h"
> +#include "intel_pxp_tee.h"
>  #include "gt/intel_context.h"
>  #include "i915_drv.h"
>  
> @@ -50,7 +51,16 @@ void intel_pxp_init(struct intel_pxp *pxp)
>  	if (ret)
>  		return;
>  
> +	ret = intel_pxp_tee_component_init(pxp);
> +	if (ret)
> +		goto out_context;
> +
>  	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected
> content support initialized\n");
> +
> +	return;
> +
> +out_context:
> +	destroy_vcs_context(pxp);
>  }
>  
>  void intel_pxp_fini(struct intel_pxp *pxp)
> @@ -58,5 +68,8 @@ void intel_pxp_fini(struct intel_pxp *pxp)
>  	if (!intel_pxp_is_enabled(pxp))
>  		return;
>  
> +	intel_pxp_tee_component_fini(pxp);
> +
>  	destroy_vcs_context(pxp);
> +
>  }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> new file mode 100644
> index 000000000000..4ed234d8584f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +
> +#include <linux/component.h>
> +#include "drm/i915_pxp_tee_interface.h"
> +#include "drm/i915_component.h"
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_tee.h"
> +
> +static inline struct intel_pxp *i915_dev_to_pxp(struct device
> *i915_kdev)
> +{
> +	return &kdev_to_i915(i915_kdev)->gt.pxp;
> +}
> +
> +/**
> + * i915_pxp_tee_component_bind - bind function to pass the function
> pointers to pxp_tee
> + * @i915_kdev: pointer to i915 kernel device
> + * @tee_kdev: pointer to tee kernel device
> + * @data: pointer to pxp_tee_master containing the function pointers
> + *
> + * This bind function is called during the system boot or resume
> from system sleep.
> + *
> + * Return: return 0 if successful.
> + */
> +static int i915_pxp_tee_component_bind(struct device *i915_kdev,
> +				       struct device *tee_kdev, void
> *data)
> +{
> +	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> +
> +	pxp->pxp_component = data;
> +	pxp->pxp_component->tee_dev = tee_kdev;
> +
> +	return 0;
> +}
> +
> +static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
> +					  struct device *tee_kdev, void
> *data)
> +{
> +	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
> +
> +	pxp->pxp_component = NULL;
> +}
> +
> +static const struct component_ops i915_pxp_tee_component_ops = {
> +	.bind   = i915_pxp_tee_component_bind,
> +	.unbind = i915_pxp_tee_component_unbind,
> +};
> +
> +int intel_pxp_tee_component_init(struct intel_pxp *pxp)
> +{
> +	int ret;
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct drm_i915_private *i915 = gt->i915;
> +
> +	ret = component_add_typed(i915->drm.dev,
> &i915_pxp_tee_component_ops,
> +				  I915_COMPONENT_PXP);
> +	if (ret < 0) {
> +		drm_err(&i915->drm, "Failed to add PXP component
> (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Adding the component does not guarantee that it will bind
> properly,
> +	 * so make sure to wait until it does.
> +	 */
> +	ret = wait_for(pxp->pxp_component, 50);
> +	if (ret) {
> +		drm_err(&i915->drm, "Failed to bind PXP component 

Based on my testing with the 'wip-igt-pxp', this failed here because
the mei-pxp was getting loaded multiple seconds later than i915. We
might need to consider having a check for pxp_component availability on
every IOCTL to ensure binding actually occured and succeed (==pxp-
supported), or occured and failed (==pxp-failed, disable it), or didn't
occure yet (==pending-retry?).

> (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct drm_i915_private *i915 = gt->i915;
> +
> +	if (!pxp->pxp_component)
> +		return;
> +
> +	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> new file mode 100644
> index 000000000000..23d050a5d3e7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_TEE_H__
> +#define __INTEL_PXP_TEE_H__
> +
> +#include "intel_pxp.h"
> +
> +int intel_pxp_tee_component_init(struct intel_pxp *pxp);
> +void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
> +
> +#endif /* __INTEL_PXP_TEE_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index bd12c520e60a..3e95d21513e8 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -7,8 +7,11 @@
>  #define __INTEL_PXP_TYPES_H__
>  
>  struct intel_context;
> +struct i915_pxp_component;
>  
>  struct intel_pxp {
> +	struct i915_pxp_component *pxp_component;
> +
>  	struct intel_context *ce;
>  };
>  
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
