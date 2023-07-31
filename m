Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFD6769A74
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C2B10E2B5;
	Mon, 31 Jul 2023 15:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B7910E2B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816205; x=1722352205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eOdt1edh+sd3nLRbaZLWurWdAOQvPogxF07tO0EfjvI=;
 b=GlWxiL4/P8ndjqruPmaW+XPjn+jHY4IpfFiBxtfeqbkwl8T4mzmIV3Jw
 a2aRSkT46E0lrX7sqzwwcptuaa/vqyZXUmC3OFPVjbnkWItuOnUSbBamf
 HJS4IasXmZmWyyhelZSb5NQNIFAlYmA83w79X9UgCxxUSwnycJKpPp4kY
 iGXpXzJZbJo2A4vjw29z7BCPnnzOpJbvfVUAbcv5217bPRay9a0qrIFHi
 MMFi7IfpxM5OIG3/622A+UxlQ2J+DA8u134sHikYXSbrLLhf4b/uS5eVL
 AwPLAJr3bTK7j7bBcKphA9FcaKNnwEgHzBeKpk5oO+RatyO/XMdPgxcWc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="369054052"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="369054052"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:09:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="678379821"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="678379821"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 31 Jul 2023 08:09:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:09:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:09:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:09:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ajRDgZ157eTm63EHLAleX3ecXoKl2P8TouFoGYvf+S1QNUGVXKZ0mccuuAalEB/FOKOF/1hlDHByNcQPgUpKD5KHwhTRgnGzOkj702P1HuqxWI2DPonviJagX0awSjBF/uKJlqsMhuGYlcyHgd2Aw4fNJ7qc7Fx2DIt/s0Mvkt3JuPa4yDgD+ZlXn80Nn5wN9ZJSYmJvBlSvHmfuIx2caZx1undLohuUOSfOEgMfIprS4t/ACt6ZkoFimf0vhz20rsIra+5DPxkCmfx5lB1ZFMepdRIinX3Fab4ZXU/f9GY1GqFlvE1agF1OO5h+cVOLXRhQgWTiI4VJCwOwbBumEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odARIJ19xrme1QJ0OVrbx5sWVH8KdLRwWKnGRD9uYDU=;
 b=aqYyjeWdQxRc61Vr4BUlYd8Lbd03/Clorvsee5lmGHiwVvYcxWVE/BHP4Mzso2jINSOIiniOmq5qpg/rGme2s93af37A0Qqkwg54i3UsakRCjWNmS8JV0dNbS1PuUjr44L7HJUXNIqt11N53sRd5wsXr5qa+JiXyoDK+zz7OUAGkw4B+adoZ1dpFMphDFMnYw4ELe1NOCy9brQCFXixzW/yGqtxDEYkA9+r46356xFiNXd92P8sTO6xdAEvzs/ne/WkiI39n6XUeYkZkITwR9mLAw6sohLmHD0T11DGDmcvqMwehMPeJEHK0gg1jrRhnmSZVnQcyCwig1Fu7uaMq3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 15:09:10 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:09:10 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 03/14] drm/i915/skl: s/SKL/SKYLAKE for
 platform/subplatform defines
Thread-Index: AQHZv/zHoFAKEw0Awk6+8As/uNCyo6/UAcqA
Date: Mon, 31 Jul 2023 15:09:10 +0000
Message-ID: <SJ2PR11MB77152130A89A94D94D2F212BF805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-4-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-4-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|CY8PR11MB7170:EE_
x-ms-office365-filtering-correlation-id: 4be90a40-e754-483e-f4e1-08db91d8181c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OrbuGuW0CoJpADMXTZKyq9Egtk3pktSRdg084ObU5m9edGe2GxWXsiBUHOhgH2lekCibTP3PJum7zv5zN/kPoMWQXZqDwdFaupJ1oFMqOwNpwaFJ8NEAo8l1wjCjLpkwJQXFuR0JcqK8mx3k2+UotFrBYKWUexQ/zJ4H9KRvIn6xZzQ9Nl+oowR/tGBiyynhIy0vOzGXmAnB0gZLnlPjvjnRXuY9o2XwxYek02sO5CnJ4Ar4ybCafaCScxleVOEmhkWXtgJCtIjAliQhLPTooDRIff/o00s0hFGNHK0D8+jcn3M2Caz8FqSGCUyq+RUGOwEnILeMV48cxTElxFjyOMYGQ7NhGMHJJofkZNkbQB81GYieS/x89qzWXAhiODYI5XjhDL0OyvgmjSACOIKb4w8x68YmfIY5ugVRzJVldcAS2jJxVjYDfkxg/XVvv7LjGZzxAq5NPChr52JCx0wFz4llYnyw8lpcauroZ2DUYxfax+zKqN2Br39EeGeAe4M+zg2i88QjRxsr/U2zKoDz6B1DP2dgXrSnxNxTVAxMW419IokRl77lvxkpfFkVYaCTI6FMeeNmGpnNGIOrJVRYQVVOHBdGdVx815Xyczi83boQfvMvKc9yx5tpjM56vsFZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199021)(9686003)(7696005)(55016003)(53546011)(26005)(6506007)(83380400001)(186003)(33656002)(76116006)(66946007)(66556008)(52536014)(41300700001)(122000001)(54906003)(82960400001)(110136005)(38070700005)(86362001)(66476007)(316002)(4326008)(5660300002)(64756008)(66446008)(8676002)(8936002)(38100700002)(2906002)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IMV01DoMCV2/0evOTWyeiinhvXiZ+k5h9MW5r9Ri/RE31KLkbatMDhRQsw4x?=
 =?us-ascii?Q?LSuy7IYg+aTzSjkSCiEpab/Le+sTd2gBq5N3yH5C9fX/HUxhSHVxSwg/4NGV?=
 =?us-ascii?Q?XLl3xAf8YKxE8TnKyQ+p5P3OSplVhSz4zbf/9eeiiLCOzilGqret/CLIJ2vD?=
 =?us-ascii?Q?I/vtP5CH7KnvxDCmsJxp+s8kR9nk9ocY9Nuvi3VCIef+37AHUZvUvTy1bno2?=
 =?us-ascii?Q?/6hewBPAIWrFDi8T142GMsA0rFXIjsBEL2wj7bRMAUifZhPCV5YqNtBKNc8U?=
 =?us-ascii?Q?Sc+hNJVnwWMjfiIEhIqM3hlz6r/dwKY9hcqoCeJLKjCnC+VPwIz3AubFyr4B?=
 =?us-ascii?Q?TKooUMDUpyX6EPE6/UcSqXjYep3Z7FwtG57Rb6jkYnhqqLJTC1p3BsjpYBaK?=
 =?us-ascii?Q?0Pxf752lkrZII9XpAaV/AAJ18MFH5ldeXnVnyt8n+pZV570HY0GjN8w9enpR?=
 =?us-ascii?Q?YLPZUllH3XHyIxlEr78RYqOUXZOR8yCR6FO9Ixw3ie3IW2HjCKe/2BtKE9Lv?=
 =?us-ascii?Q?pR4FV1Rw8ZJZ5mFpUgh/L4IipyzoV0QXZPU94GXcqDHK5LVko9bChqLkJeYJ?=
 =?us-ascii?Q?BXkWsO7ZIRY4KYxTxSoRteM9FxLUnG8rHXAp8P5Y3vb2UjqrvO8onfEvb/41?=
 =?us-ascii?Q?kOmmhC1CgLwyUOW1a8pTrONzdXBNQEiGqJoJnVNMxgOf1Qul8G+O142sJvBo?=
 =?us-ascii?Q?VeCu3fTqalIav2IYKEYJ+4SzWBw3fnK4ICKNQIHdBK5v1YHaLkrVFWIl1kNw?=
 =?us-ascii?Q?yQeHm5gQNzVD61SHw5uzS8dC4NUEeYjbKf3ypePuHbwIp4PtKQ6EbrAH00Kr?=
 =?us-ascii?Q?HCXq9HFqxLd4AWnYuHkMulXmtvno2Fs8CFcyDqaeVVyoGoN39oc/XTXQilEe?=
 =?us-ascii?Q?P3cnE+AC4/KGVTaQv1OS2CUOWN7RXVl8DDcR9Ur4Z9bd/gcCrsR+Px4SvhB8?=
 =?us-ascii?Q?uJO8QzXo42vZts2ex4dNC4eDwcO+JI06YB+i9OsF444WEX9DhDW5h/ZhX+dB?=
 =?us-ascii?Q?RgJADJ6gUNvYCdQQiX3sJkg/SR93iP5nlI9w5zQc91ujvwoKPE9jPaZZuoAL?=
 =?us-ascii?Q?2AU92hZTbSs7jKXGrZ6LlCBWgKQcmwCmg/KuAe9AzYwM5l/yvFslGInvV1Q6?=
 =?us-ascii?Q?AvN8KgXto2yb+SS5CAIe6EyRfAE3jXMDCcAwbi+78MrFg1zh/GtGIS6fMrcR?=
 =?us-ascii?Q?1qg0xox4zENf5V1r5zgddfu9CXL8sfuTbcdLTL5HtEB5nUqlhZxCZIR5bbkG?=
 =?us-ascii?Q?GeNaU4vIdW+Fnv9g50ek5gB4MIHBfM1ir6ofqPAe1cas02LNU7rPdhkX6Toh?=
 =?us-ascii?Q?QcBxFVYZIgSxuJBtPCMwjGqpYOo8fdmPEvcChaPux6T0yY6TLgJaFovFr33w?=
 =?us-ascii?Q?Lj9AMPgntTSLMakE6azYjkn76kiRUxfgQGxDo+AiVw7ArqT7/8BQtV8sWWId?=
 =?us-ascii?Q?stmUjJaAG4fnT3qMC0RhinntNzszPS//i4IYpEAKd5weGfBt3EX0SB02keGk?=
 =?us-ascii?Q?Ps5cotKj6fsoF38qfHv2kkHcLS7QIziuIMRkjigFmQUM7avPIer/+qdkM/dp?=
 =?us-ascii?Q?pRVx9EvyYHEfUJ9iKI99tHcCyB+tDlxJeKnG5sPW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4be90a40-e754-483e-f4e1-08db91d8181c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:09:10.6352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wQkAfiyVco9KIFUtg4FnnK5h//qakJ/SCf0+8VLfeUZNa9B7VDzkMBbE4+8DGjUYuN48nLAm5gFn9SJI9veNYiehmklpHvGV0rTbZ21OgNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 03/14] drm/i915/skl: s/SKL/SKYLAKE for
 platform/subplatform defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH v4 03/14] drm/i915/skl: s/SKL/SKYLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace SKL with SKYLAKE and Replace
> IS_SKL_GRAPHICS_STEP with
> IS_SKYLAKE() && IS_GRAPHICS_STEP().
>=20
> v2:
> - Change subject skl instead of SKL(Anusha)
>=20
> v3:
> - Unrolled wrapper IS_SKL_GRAPHICS_STEP.
> - Replace with IS_PLATFORM && DISPLAY_STEP(tvrtko/jani)
>=20
> v4:
> - Removed the unused macro.
>=20
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

>=20
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_workarounds.c        |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 13 ++++++-------
>  3 files changed, 9 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 5b2665a9d86d..e85eab21b09d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1746,9 +1746,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder
> *encoder)
>  		encoder->get_buf_trans =3D kbl_u_get_buf_trans;
>  	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) ||
> IS_KABYLAKE(i915)) {
>  		encoder->get_buf_trans =3D kbl_get_buf_trans;
> -	} else if (IS_SKL_ULX(i915)) {
> +	} else if (IS_SKYLAKE_ULX(i915)) {
>  		encoder->get_buf_trans =3D skl_y_get_buf_trans;
> -	} else if (IS_SKL_ULT(i915)) {
> +	} else if (IS_SKYLAKE_ULT(i915)) {
>  		encoder->get_buf_trans =3D skl_u_get_buf_trans;
>  	} else if (IS_SKYLAKE(i915)) {
>  		encoder->get_buf_trans =3D skl_get_buf_trans; diff --git
> a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9634ab8d738b..b0b7d448364a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1192,7 +1192,7 @@ skl_gt_workarounds_init(struct intel_gt *gt, struct
> i915_wa_list *wal)
>  		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
>=20
>  	/* WaInPlaceDecompressionHang:skl */
> -	if (IS_SKL_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
> +	if (IS_SKYLAKE(gt->i915) && IS_GRAPHICS_STEP(gt->i915, STEP_A0,
> +STEP_H0))
>  		wa_write_or(wal,
>  			    GEN9_GAMT_ECO_REG_RW_IA,
>  			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 6607f233461a..d7f7ca135000 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -609,19 +609,19 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  /* ULX machines are also considered ULT. */  #define IS_HASWELL_ULX(i915=
) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX) -
> #define IS_SKL_ULT(i915) \
> +#define IS_SKYLAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT) -
> #define IS_SKL_ULX(i915) \
> +#define IS_SKYLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
> #define IS_KBL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
> #define IS_KBL_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
> -#define IS_SKL_GT2(i915)	(IS_SKYLAKE(i915) && \
> +#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> -#define IS_SKL_GT3(i915)	(IS_SKYLAKE(i915) && \
> +#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
> -#define IS_SKL_GT4(i915)	(IS_SKYLAKE(i915) && \
> +#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 4)
>  #define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> @@ -649,7 +649,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_TGL_UY(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
>=20
> -#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) &&
> IS_GRAPHICS_STEP(p, since, until))
>=20
>  #define IS_KBL_GRAPHICS_STEP(i915, since, until) \
>  	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until)) @@ -
> 800,7 +799,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>=20
>  /* WaRsDisableCoarsePowerGating:skl,cnl */
>  #define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
> -	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))
> +	(IS_SKYLAKE_GT3(i915) || IS_SKYLAKE_GT4(i915))
>=20
>  /* With the 945 and later, Y tiling got adjusted so that it was 32 128-b=
yte
>   * rows, which changed the alignment requirements and fence programming.
> --
> 2.34.1

