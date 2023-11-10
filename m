Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC81D7E78F5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 06:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9994010E68D;
	Fri, 10 Nov 2023 05:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1792B10E68D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699595994; x=1731131994;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2xOrY35eCtwEP9Nm4YkOrytq0GpScCe1JeaxQ6fjvEI=;
 b=N5tBXiRx5mP75K/siU7S4hs3Z4f5W2iPaKy4dpFYNngPWO0OhIkwdRv6
 IX9ncqRsE9Yeox5QdF+wnCaa7Q8a/L6tjLiCp4MBBRjSn/iM+gfKSUqwY
 H/uQUSnMkX9j7yJbiCX+pYPw6kBziEQJUvlJGo7Dviv15J3qILVfAf7jU
 svZnsgOCnNeA/Cww5THLn21bdiGi0pXeJfAk77+V7NqlTAYc2Hp/sLTxw
 eM7M9d4G0l+YpxWXHkXc8/b8EVLFtP+CN7bsw/mWkepyYC+xi66O9dGBG
 HtLKhRZZwx60H9OeNAkZnaE12QxzGzqhOr6UHp/VwgjJ7LfkibBN3tPXV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="389945057"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="389945057"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 21:59:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="798530820"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="798530820"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 21:59:52 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 21:59:52 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 21:59:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 21:59:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 21:59:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ms+VB9S8n9SYNmkfPiHV8eG//a+MBZsVlkeeVMqRRR+KQIA1P9fUxzEE9DOC/EJCOMFv64g7C0BXeYzESdMVTyR9pGbAU9tzVKzLDIjPJlWlecju4Ekjh5EZjFN86PBBCJKQRluJq2ws2y3MUCXX7eWN6tnzxUjz2jKk9xX1fb9wCqItdML9QkjuAp5CtpHyayVlBiB8sgLch14luNg3WLIgnt8lYDl4MIF7HoChvNcZ1YKhpCSO+O0w0J8cLyL0Laaijco9j2XJ3TBHJJgonVcSLO6pBdqilbyluTqSsj++ALZ1cEdFaU/+GaErBsTPACpNOuu07Px3+qjnqGR68A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+dTq8dm9qjold30WjM3TxII1KIAg41amaIHG/TTIXo=;
 b=TDQOhsKFpcG5NMPp9sjcB82upaQsqQ6mN72MPPK2wSVMeJ8Oaj4a0HZPP8on8vov52ZuiOFMA0vrBf8O4IvHHZKiNcJZJQgTT47JpDOpB92GZolnAKncYZSUspNbldI4/O4UQlEeuoERdK7y8TV+L288AGfe5m4ww/u1B9MhyTpmXen0J55cp4piGA36uRXiSEQjnCUHkWPmAUnzCnMGc6UwxsYqYz8EDESxZ/iMDw76Zcaa83yTBHDJEBSfzBfd/QZgHKI6lyuisaJ3yyH8uGNthN69H9HzQM2KKuUJEhrewmWUm3geJoz/0LFIfPPkipq034w1Soo0CiCHEGCojw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.18; Fri, 10 Nov
 2023 05:59:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6954.029; Fri, 10 Nov 2023
 05:59:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: abstract plane protection check
Thread-Index: AQHaEycXkcaZGiqLI0qRWsTeyXTk57BzD3vg
Date: Fri, 10 Nov 2023 05:59:49 +0000
Message-ID: <SN7PR11MB67509A92581D822FF1436740E3AEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231109160722.3372379-1-jani.nikula@intel.com>
In-Reply-To: <20231109160722.3372379-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM8PR11MB5621:EE_
x-ms-office365-filtering-correlation-id: b71717cb-c947-4be4-1bc2-08dbe1b2400c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: evPoYPBNX5JTiWrJJJg6zWI3DeJHKdYjUR8uYvRzjbjzbXOObe0Rz7JVMKpSicc2u2NGg9ZWE+MfKxOwK82/zndsC1IxMcp4sZZkmxwgK8VVP5XXdEU7L8EjqGZA7HFvVchg11Gy7toDvfW41OVQRtQKvadFsHM5wyHV/mUi4ZNZlCngybbkRbwz6uMFZ8LLmzzbBvy70Xwdkafr29thnidJLFC2sY/8VfKbb1U+WjFFbiwocTQ4Wze5sGUVhJGzVHlRN4COhXXC1rvgQvUF7KAzQniEaVgEiYxOnM+7GoRm4KgpnuolgPuiORQZpMXfobwTYsdmyc8SjgFuehrHSvfONgRT7EVMzpfSV6WL1R2XxLKCh+tg6g3ayGKyo71c02svPz76Cd+eF6ZhYhiCChQPEv8Xz9duYv21esP35WZoduJSth0o5esKEK/Vrj6i0+CLetC7vUC9wbguNeDyIpQU/G3h+QRxccmjiFjP7iGul0AH0ZngsaHJza7bMEJBwcRRK/UQOKuuaBIh5FN9Y1dnggZs2bF9qZoLgEILGliYBxvoNno70Dh8PVlRIDdQk5GwL258Exn8gf2nKjjgKoXq5JHc2+ilBKyAnllVgvlcGVnZCf59FBjPh0n2r921
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(9686003)(71200400001)(53546011)(6506007)(38070700009)(38100700002)(33656002)(82960400001)(122000001)(86362001)(83380400001)(107886003)(7696005)(26005)(41300700001)(110136005)(52536014)(66476007)(64756008)(5660300002)(316002)(66446008)(55016003)(66946007)(4326008)(8676002)(8936002)(76116006)(66556008)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SvXPYQrCKqtALnpb1C/zx59h/ScqNSBRhDSo7+/SvLmsj6oBLNyQt3CUdCvb?=
 =?us-ascii?Q?ZOdHWeUjDwHbBkBXe05uwObbiMNB/ZByUVJAimd+iByiKA4MlIMTEH6UEE8m?=
 =?us-ascii?Q?1BmRpT2A4r7Z6BrJSy90D0bhy2YF0Aa3mXi5UhVssjHq0HWoPyDNpiNJg8dG?=
 =?us-ascii?Q?ezkxw/FUui5b8/VJm6ux0MARL37eS/o5tj82iZ3CAm1AZLPFqD29UTj8YeKZ?=
 =?us-ascii?Q?umEGIJp9SXubB20yrBrK+edBNtdmjWKv/H+dl+9JIUyCgZzHCCSqp7sWZiki?=
 =?us-ascii?Q?BB0stN6uajL/WBcz+QsSOBJv2OSemXYj6Xx/C4Ov541B+2QHS1gHPGZt66Hb?=
 =?us-ascii?Q?Utu4NqkPbkcIDF2La2q2xbVNBlDJ3O4eVYExMQup2RbAylzYQYsMGJepG59T?=
 =?us-ascii?Q?zEMy7qTTFPBjPXZSGPXc9CqdiTAv6KlkoEa7tSpH2LeplUuT1cnjK2jCy1LW?=
 =?us-ascii?Q?xG0knPKdg1qHBl0T2vIBd1s0MA/HJIqtcsJupEiYI2BJcXH81IUYDqSTzKmu?=
 =?us-ascii?Q?Yw+UGOlDBYBMurzDdIvolXEcBJz676l749N0CdLfYFdT1M9ov8Jz+1WoJf9O?=
 =?us-ascii?Q?+rSoitwvbQe38lGMMUpDfxYx1o+aSSduzlygt+7Zr2MzjCVke2CW0L/+1nJp?=
 =?us-ascii?Q?Q6i6dW17hOmtOx52M/w0vc5KOk4ohyiO1vVkFm45HKmVGlczEugD5YQ29a7Y?=
 =?us-ascii?Q?RiN+iEMgmTHPUhSOeihhP+7faJ4LRNZ/BfCkbvOupmB++bHqV36L7C6ZYr3Z?=
 =?us-ascii?Q?6glggeXwUHYM0Crs130vAV//bu4gPL1u2H2t+JAk/YjcTSO8HJoDoMjAODQ7?=
 =?us-ascii?Q?7EuBviLWVDuEBD3rFgw+t3CwmEpmFcYgG2tTPBpC0FP7BuC5Y6gUCcKtx5XP?=
 =?us-ascii?Q?Y8EGi5iQMVGwmU62sElqNYCnZYVMRyQ8cAcv414Oz+IZCYlv8tjfkX42EJlH?=
 =?us-ascii?Q?QXc5rmAiqxbF789MvFVycz5hCbPy9+ZFxBBySHq8Qf2hgnCyl+V4k6BGT+jW?=
 =?us-ascii?Q?QR+/u0UJSjw7+FT2IlIX68fW/ozU3o6+9GPsMqgEwQIqUi6RJTBpq80hDTQb?=
 =?us-ascii?Q?cGJ/tYA3jdSkRiEjKE7V6nQJK8WOw9HWLyQznXfdlswAQszYIGKus+wE/GjB?=
 =?us-ascii?Q?fXStuMwBLsSASKh2uKCVg8W9L9147yLjgXv17pPEO0GWYYf+cwiSrkuDiI6C?=
 =?us-ascii?Q?yF0ClTUIzftgIthFP5HpynrK5tosOiaj82I4/khF1lszfdUMNaqvgrKzxd44?=
 =?us-ascii?Q?DSIfSDLRVZrBe3An2ibZYQipM6W8ZBS0aB0hI40oytdE15YOYJKg0y1Uu3E+?=
 =?us-ascii?Q?uESP35t/l6frypVtNDMPStGrSNC6iBj4BTS5WaVHUqPbJvX6JQPC9kQw3s4C?=
 =?us-ascii?Q?u+tIflirA9b+KLPMYKr/kEZ/GGv4bXlGyeWunBovDlbeCM8ZBdn3lvoli/5b?=
 =?us-ascii?Q?t/rCY1HqBw1kASDQGIYyLfgfQi2jY9Uw3nYrEE1DX2Ffs0j6ah7J9efmJ94P?=
 =?us-ascii?Q?iB4XrXkRDCUgAkElyFekeJ9BCoAbVFFsMxHsLjtZR9DnderZm+dBQiABYaPO?=
 =?us-ascii?Q?QnRPDeTrmQ19q/kQjJs2/JpUoscpTYneGvLDpMuL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b71717cb-c947-4be4-1bc2-08dbe1b2400c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2023 05:59:49.7585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K6pMORiqfs+DWn8NMHRPjGS9n1sQDqmegTl9t3b8rLhT3pf8dcgnGcEDpiXZlPZIpmOkbpYAgAQqGhBlLGHOIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: abstract plane protection
 check
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, November 9, 2023 9:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915: abstract plane protection chec=
k
>=20
> Centralize the conditions in a function.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/skl_universal_plane.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 68035675ae3c..98acf25a5ca3 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1866,6 +1866,19 @@ static bool pxp_is_borked(struct
> drm_i915_gem_object *obj)
>  	return i915_gem_object_is_protected(obj) &&
> !bo_has_valid_encryption(obj);  }
>=20
> +static void check_protection(struct intel_plane_state *plane_state) {
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +
> +	if (DISPLAY_VER(i915) < 11)
> +		return;
> +
> +	plane_state->decrypt =3D bo_has_valid_encryption(intel_fb_obj(fb));
> +	plane_state->force_black =3D pxp_is_borked(intel_fb_obj(fb)); }
> +
>  static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  			   struct intel_plane_state *plane_state)  { @@ -
> 1910,10 +1923,7 @@ static int skl_plane_check(struct intel_crtc_state
> *crtc_state,
>  	if (ret)
>  		return ret;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> -		plane_state->decrypt =3D
> bo_has_valid_encryption(intel_fb_obj(fb));
> -		plane_state->force_black =3D pxp_is_borked(intel_fb_obj(fb));
> -	}
> +	check_protection(plane_state);
>=20
>  	/* HW only has 8 bits pixel precision, disable plane if invisible */
>  	if (!(plane_state->hw.alpha >> 8))
> --
> 2.39.2

