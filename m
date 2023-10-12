Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 376C47C6649
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 09:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B1110E424;
	Thu, 12 Oct 2023 07:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5659210E423
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 07:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697095258; x=1728631258;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OE58UsRhG57SmGlhtIWw/TsBX7EmFpuuyyzGu6XA5RU=;
 b=e6qynyWS0FEMx0sbnxOv8A9PGZgO44ZeH8Af1EG+SM1UVcdjsja6FUmE
 33FWn12ID5/jwQnc+AVBEpQmOJcr9uPpcELgURP48Z0xUM5QCq7aHB+qi
 q7T6aH97adbQFiRH6nApzAFEsEkK42ABzBbHd9vDomtslcPjGayPAxqr6
 X0Y6XdDutAA7u86+LI/Y0NGk722mNL9LUz+/f1A4uPV+S4Yw6YoQuqPh0
 MNdY6HtHpa9bToH75/Ta56GKOHxAtA601DRGfb5g1UZqtZziFm8m+IGoc
 XlW99fM9m4Cyls4x6//PKYxey0OsG9e5W3CjIwvd+1i52bNhjrTQz56fC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="365125851"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="365125851"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:20:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="754141340"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="754141340"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 00:20:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 00:20:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 00:20:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 00:20:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 00:20:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lqjm2slC1pgDYDGyb8CWVnKz5soKmqaDyyzP8YPzYQhKGJnPKQD2l1N2mnGOuXh+LiVyCFmr92T4fkIuRE/ifmA+xHR/lJkvf3NmgOiwDkqbhIvvSK30fz7urRqz+4BTgy7juXizoehWOfKdJREB1u84mOij7RyDf0TI/PCLTGkqnlDjhhzlbxtRtbrHYwPaQAQybcAVsiFRuNhPjl7PoyGD9RyYtFRwToYODSDwWmLjHSBFZmKDnFVR1+NKnS2pDil8ADKXi16PovIUenBek4WjniYNwfotHweJ/2wY05sGk6ZdnzRCf8J+PMwoaCW6yowyPZk5d5YWKjKB/t+tfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QXeaUskNwFRHupsvSUhzaL5g4/KZDqDWWN2r2MqDRDg=;
 b=GHG+3Mpewp0m+LJ4R4taRyEES59fE3LxHTsVvrMTEhqz3jGB7VHCqfXG/uvUU9iqtQbK55j4DreivUaMoAU4jKjdIhostdi+IDyNd/8ybImSXO+zwsEmYZJxZqWpYyqJpkXYPkrCj6GZeMcFgz6RKOSP8fhJR7Kv+jc6gKwO/XmpKZ/kc8krvIvALLOxUjhhs6NNHrcgtLelDmXuYfzpWziTYhvYp1yZRO/CRqQpHVit9y28y91KWg3Svzev/ThJfdl9rR9MocWCqp+Qx0HEMvI9hciXS7ug9zLOOmn72YCOMfkWQMw/veA8ebR6fF9L/4ibRrAUkZtxar+KRu5xww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB8274.namprd11.prod.outlook.com (2603:10b6:510:1ad::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.42; Thu, 12 Oct
 2023 07:20:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6863.032; Thu, 12 Oct 2023
 07:20:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Remove the module parameter
 'fastboot'
Thread-Index: AQHZ8FrJY2KwJPUbq02pNit5pSspX7BF2CRg
Date: Thu, 12 Oct 2023 07:20:32 +0000
Message-ID: <DM4PR11MB6360F99A526E51F1FEF31B40F4D3A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230926091157.635438-1-arun.r.murthy@intel.com>
In-Reply-To: <20230926091157.635438-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: arun.r.murthy@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB8274:EE_
x-ms-office365-filtering-correlation-id: 26a234fc-a7cd-4fc2-ea72-08dbcaf3b847
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oRTHo43bJMPDPwT3O9ZMmyY3lX3nW69F+No2Uj7AbyEtBN4LpxMlJ8lLUXFgBy9yx8r2vJlSkkDqiSBLCYIE4DA8VzxZMex4ggyNlFLutX6mucng2HHECNp+258sF4p+XbjNVuSryBXjFBLMYWDOac0e8ZaB438QQk8BlN37iRnWOL3Wa93xRqTcvCsbFUq9FLrNEh3b1Bhn9QdQMeapZSyLbgFaLYLQmPZQK9UfVCV0mbC/Yx69DPU4y6bmCPmGVLJgyTqJ5MAYFPOc/fBpFj78X1Caa2n4pFja4z+k7XRGXln+nuXMLjU6HIBFxAyHc2fCzhTVQ9ChwxmZ4SbqaIq6uMzmybKmNcbnbTsS9ZRTS2eVDxjkzoZ5uiBss3iaPtt0plNGcIXXRSjPY51/JiM5K0beqmvmHHNuugnBQXljAqUmT1b3uSfxwUCh79FrFBt2d/iCGRowlIwPr8PzjRBXd6XUGfP/03cublHPYEWIfGwjz7FLqdcUuVns4yRCL61s4w6Jg00kP+Kqw2pThm9y9Vo20LzTih1J4aXkHFqvEdhY8qzm6wTNeTWCIuOElqQZQ8Fhg0udy5+vPKtfQSaoup7wrW8/Et+dz1YjO2tUchwbYybZXw5wsy5qm0ZH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(346002)(136003)(376002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(478600001)(71200400001)(7696005)(55016003)(6506007)(53546011)(316002)(52536014)(83380400001)(5660300002)(8676002)(8936002)(2906002)(38100700002)(38070700005)(76116006)(110136005)(66446008)(33656002)(64756008)(86362001)(66556008)(66946007)(66476007)(6636002)(122000001)(41300700001)(26005)(9686003)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QF01K+8qf0SUsYGsesK3bnkZHX/wgn7ytZHugJXq72V+LH/+CmmsT8TGTDL4?=
 =?us-ascii?Q?qA/8V7gcBppsJugYPILFtdoVT0zfo+yr8RZ4CnNa7/oVzJomYimNHLWp6VcG?=
 =?us-ascii?Q?aBJgb3TT3xPESl4iy4efvmV0mxlLON4LNxfM5NQMpxkLuhAnjd8Cf8eTKj2i?=
 =?us-ascii?Q?yCbYPNR12nmQ1me0NJ2bOHXRBBNHqnHgu8vr6H8WllW+veyKPt+eOSfRU/7D?=
 =?us-ascii?Q?6l61Zrs77sWIMCNg5k/vQKzX2YJh9OdH7bbGevvJFs3EBOCTxQAl7ylu4TJL?=
 =?us-ascii?Q?eQitoYDVHthR46xE8khOlj7WrdEyz1M3BzyWCyhwRph7s8Xszju5nURpsmQb?=
 =?us-ascii?Q?s93RvbtGmqdR1gTS4vicsd46fxCeVZoiVPqGh9HHPLlL/DSRTBIcTbdhXIER?=
 =?us-ascii?Q?yb3i/6kLBDm2jdhS5aYJkCBTSce1RpcqL+P5cDEGPg8BPZFAcTgaGOw6gBOK?=
 =?us-ascii?Q?n1Ri9qEPwKbMplecEdqu5YTD5do5+WLOxdCDjMXR9mblDXzqANeC5pt+Y1vC?=
 =?us-ascii?Q?07ygM92ekDM3faVH5vximQrxUnCMGmMoorkZ8VkdPl1me17grwbhbakAt4RU?=
 =?us-ascii?Q?SVIj/PAQN+/8KnB/TGkD81yAYwCvEpM97/CoJb27uCLXZWEHoNFJrs5tO/6I?=
 =?us-ascii?Q?oq/d7z4KTyeHQOBGg0Mfz2adYZaNcn3HZ948AKCRTwlUb6OF0ab9ZYJRWL/P?=
 =?us-ascii?Q?NO3XQ/6FeKJijFpRHsFyTqZeVL2JUJif/Owbth1uJ47e2A0GJCF7Xd5F3ujg?=
 =?us-ascii?Q?FXKQytNOqDvDEBiLU4K5Pr/masUfM+D0LvGVu/zrLacnHwJZeEOl0S4pjQCZ?=
 =?us-ascii?Q?OgDOHJdex6edjs5LWeRXFZZAJe+GOG9pLiyHb8OnBquFCSsH6L8DDBMdxY7t?=
 =?us-ascii?Q?4jok6CxcUjZWwrEl7xplowQ/npJG17swFbW68wblcOPMS9RnDZN/SlFL4Vk5?=
 =?us-ascii?Q?8sgt+uyRXRZyqm39PsDeniTCPeoD6jwkxEiGTddoL4iY3iTxfKxNzjW59fqB?=
 =?us-ascii?Q?A7waJWEsIdQhFM1ChraQGis53i8Gx1PKimZUwOXL0zYwISO8SiRnaaGBFEUV?=
 =?us-ascii?Q?XpmzOFfbPBU7+AKsGE/D/jegQHo5y7Bo8C0HgRO0Wu6/HKZLXRzBe4dIzv+t?=
 =?us-ascii?Q?SXGGGng9QIDVZLRBhj76NDt3X+KpWXiqVv5VmoYqQ/Mq+c1Og5Dwxc+kSVo9?=
 =?us-ascii?Q?uDQvvRby9lj+8eVAHdlpKUd6aBVMtLtylyS2z1E+VaAHDItEwaq6zKx4GJ6I?=
 =?us-ascii?Q?IoihHpU/5fZFdpsM9RR3eAxP16l9thoH9tcO2CEL76DXBQhJyz60FolLKCg3?=
 =?us-ascii?Q?ZTgzccX8fm2nNMpybXDlysGIu8o69/xfKMEjLuXovXezDF8pogJcwzeT6kIx?=
 =?us-ascii?Q?c8cJu4kUg58wFB3KCrvV3CXNapUzub4+GFWmp1IizoJRrOHjriGsdhqTNqeA?=
 =?us-ascii?Q?gqgtgyF5xz5ct/mqAVBwn2mQYFvRWx78m5x0LvbhbjNDSPfoWbBxcCPH4JFd?=
 =?us-ascii?Q?Rp3MFNZIR1Ytuqygyj8Nmiv/J+29veTlurftEaklfGjzuCclNWCAk8aTkMoZ?=
 =?us-ascii?Q?eLXYzoO7oEIi6QiEQHls1xeuBLon/5qWUw0Wm4Lv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26a234fc-a7cd-4fc2-ea72-08dbcaf3b847
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 07:20:32.0281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oQvmn4OfZg9VE/+nL/lYoxx/cKB7xsDi8ixqr+XURniqJebd0cKO/M8BSyOjwtFt97jut57Tx6u4SMlKtLoBHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8274
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove the module parameter
 'fastboot'
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un R
> Murthy
> Sent: Tuesday, September 26, 2023 2:42 PM
> To: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915: Remove the module parameter 'fastb=
oot'
>=20
> By default fastboot is enabled on all Display 9+ platforms and disabled o=
n older
> platforms. Its not necessary to retain this as a module parameter.

Pushed to drm-intel-next. Thanks for the patch and reviews.
@Arun R Murthy Please work on the follow-up patch as highlighted by Ville.

Regards,
Uma Shankar

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ---
>  drivers/gpu/drm/i915/i915_params.c           | 5 -----
>  drivers/gpu/drm/i915/i915_params.h           | 1 -
>  3 files changed, 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index edbcf5968804..9d6e2d19d636 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4986,9 +4986,6 @@ pipe_config_mismatch(bool fastset, const struct
> intel_crtc *crtc,
>=20
>  static bool fastboot_enabled(struct drm_i915_private *dev_priv)  {
> -	if (dev_priv->params.fastboot !=3D -1)
> -		return dev_priv->params.fastboot;
> -
>  	/* Enable fastboot by default on Skylake and newer */
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
>  		return true;
> diff --git a/drivers/gpu/drm/i915/i915_params.c
> b/drivers/gpu/drm/i915/i915_params.c
> index 0a171b57fd8f..036c4c3ed6ed 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -137,11 +137,6 @@ i915_param_named_unsafe(enable_ips, int, 0400,
> "Enable IPS (default: true)");  i915_param_named_unsafe(enable_dpt, bool,=
 0400,
>  	"Enable display page table (DPT) (default: true)");
>=20
> -i915_param_named(fastboot, int, 0400,
> -	"Try to skip unnecessary mode sets at boot time "
> -	"(0=3Ddisabled, 1=3Denabled) "
> -	"Default: -1 (use per-chip default)");
> -
>  i915_param_named_unsafe(load_detect_test, bool, 0400,
>  	"Force-enable the VGA load detect code for testing (default:false). "
>  	"For developers only.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h
> b/drivers/gpu/drm/i915/i915_params.h
> index 68abf0ad6c00..d5194b039aab 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -72,7 +72,6 @@ struct drm_printer;
>  	param(int, edp_vswing, 0, 0400) \
>  	param(unsigned int, reset, 3, 0600) \
>  	param(unsigned int, inject_probe_failure, 0, 0) \
> -	param(int, fastboot, -1, 0600) \
>  	param(int, enable_dpcd_backlight, -1, 0600) \
>  	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
>  	param(unsigned int, request_timeout_ms,
> CONFIG_DRM_I915_REQUEST_TIMEOUT,
> CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
> --
> 2.25.1

