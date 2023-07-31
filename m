Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 954EF769A92
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF0B10E2B7;
	Mon, 31 Jul 2023 15:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B993610E2B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816518; x=1722352518;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nvfpWlJ/lMLzPqk7yDwayptmNudp2i5ENxkBabquPGQ=;
 b=SdXy5/k2cptKm1V9B18zFJWYyMEfjhQMdPnO+j1jPh6Sdx+Ves+mtViO
 ee6FlXLjCFw8CV2ateZNYbzYQCPS2XIln7ncBpmM4FWU6xs6BhfpaDPGP
 iJEtp53w4OWiFzvgP0F/6/ycrHFHioJjGybtdqfrTF8Ga1jHo1UFey9V/
 CT3tXk4eTcTV38RN8OM3NCXk5nYC7oYM8fXv61iWVud00GzeXlC7+QPxP
 e+ede2UwUjmx1cGWoF8MWT1N8CkXSamX67A89eL/FsyHWZrqIeDNKMZ13
 qoLM7YZWZBCsDgzJqpiVuSa6WCmJLVRO+ynOs6pxUB8hD6eKjv7rB7cdn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="369055485"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="369055485"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="842305496"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="842305496"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jul 2023 08:15:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:15:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:15:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:15:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:15:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHmpUjomQw3aoJleQJ1E1r3mpy4xjcBe62NmNMYFUuW9wIyN65T8pgvGXuU2xd4uPCbTVkLXXd4JiSjFUC+Gl/cdJuKDvMcJQtDHy9zHQKCYg1VWEfs0LwtnP9hi+tNNIemJJQvhsoncC773Xo1RTX8VUzzyutu5Q6svbjEpH0pq9yFJ6PxCr6rACxQKbJCpCXFwGpa38t2+dQPaMMCdpMT07VF6QEiMw6vf+plWrkm9ncYd6GROz+w7s9JIuCY1/2z6zmo0wZyVt41XpQ5wSZRQlxChZ6T7KnmeQkxuFqRF1Dz2chfPZuxMnG9euxksYdZe5F+lcNx7tgK9B/puCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FoEJxGguCtOcOEtTZU9+kwcEKdRYek1eRmTdQigVhfU=;
 b=NzcK4YM0umvz0wkje51pRsY+ovPM880XzyuwgLhnUno0zwY7fifVNoJJMHKzWcEeXnMuxjoUOIzkYUriSW2pkB0cyj2AqxdgoFrW5UQ3ANFoeVvG5a4R3gIcjZI+4NU1X1Dk1eIJnZqx6DY5+zJyRcPPiOYK923ZAnXVLBOETWH2feaO242CFp0GFJFZiviaxQfWKzobIW0sROBOfdar4b3vz9N19rybKqqHhbkWxxnNiZ/FlJ/CS1nuW++UuT/Cg8sxbw0tPqPSX4Z4LIG27CO+Gw2pnY4MiPQscnlC4SaKgzve4yDDbgqruYbp5EMBRli1uULlIPQpi+XQ/8QM8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SA1PR11MB7063.namprd11.prod.outlook.com (2603:10b6:806:2b5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Mon, 31 Jul
 2023 15:14:58 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:14:56 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 04/14] drm/i915/kbl: s/KBL/KABYLAKE for
 platform/subplatform defines
Thread-Index: AQHZv/giK1tXsn2Mj0SlJIz880PqDK/UA3yw
Date: Mon, 31 Jul 2023 15:14:56 +0000
Message-ID: <SJ2PR11MB77159C8C9CF3EE54FA2F0EE0F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
 <20230726193333.2759197-5-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726193333.2759197-5-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SA1PR11MB7063:EE_
x-ms-office365-filtering-correlation-id: 065d56eb-a060-4fe2-c809-08db91d8e66a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3vkiVtfvi16/gzVfnMHG7rQZTOYBrE9J2xCsDe451OExF70P63xTRWEwlDVbZ+M2yK6ZmW3Fn+T/pgs2gGV6cfpR9hSKFZrzCF+bY6dl4Ln8VsF/br0GXqevMzX9w/cqhFoIB5dqt4azhM/cyiLiRBArPwUMw+bLhtOI3Gyp2+UeQnPYq34wmhup9DQFjCbPMSlTyPMRiP9Uvtay9RljRr1ephxvWayXP8uYKNONWche7uWGoAr1D17hX6429651iZexUXjUqCXBugLsEqGMtNpocJT+KzMQYzxXLx8KWUm61REZjV+XqOjfL7dl9jvpK6uDfauf9myKNzub7c/PCEzje3YbpKdgtJdHtfG/OR1i2WsHaal92x5sqZZV4YpiV4xW0Hh2/HDOWIMCV8U9feAU0HO/AwhklXbIGrRoiFH4Dw5p9lfvf4VRLS7vVQmdztKHzbxngJcEvOxyi7Kc1fxuqSy+SE6EKeqPuhP6DypusEkjVnHA8cQ/x/ZDvBpkr2pKveTuEceaAwHcTqtm5FLJ66JlXUpRI80iT/PnbGHSS7icI1hlXOGa2y2E1oiAcsM9pXnTzAasukbZnx0F0nL/5TanWbx9F2LtfD02hoYUpZUtRQhQYf8Eo6zHWaWX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199021)(26005)(53546011)(52536014)(6506007)(8936002)(8676002)(33656002)(86362001)(5660300002)(186003)(83380400001)(9686003)(41300700001)(76116006)(71200400001)(122000001)(82960400001)(2906002)(7696005)(478600001)(110136005)(54906003)(55016003)(38100700002)(316002)(66446008)(38070700005)(66476007)(64756008)(4326008)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZkNpk4mIGMORrLrz7vdIxGGrsXLn5b2sUiPWCB4KZEYVmQq841bI/Wb6ULf6?=
 =?us-ascii?Q?UuOoe5WiACRAXXDc24noGmkh7URa7bWXs1MpNso1KK6ZyPQ14oLuCDppktlt?=
 =?us-ascii?Q?TC6CILWPasoWgB8dOc95HFWrw0SSNjQ9T6+MlIlipXi1qylg5l0VwvmlNGBk?=
 =?us-ascii?Q?6Us3y6ggAV4sJqdh+HhlW2AsCQ8ACLC8LvAA0vwEir3zY6Xsw16h6cbDBWjV?=
 =?us-ascii?Q?WRNcXHt8D2+909Cj63+L2CQYasMQVcQHtFP6OF6SfvBflaB7SSRfG+0EUhiH?=
 =?us-ascii?Q?MmTco7SxVa/8BDsc1GBCtwtOdQ5mtskIGv+W+anqB7QbojQMuxH8ujZkjrRI?=
 =?us-ascii?Q?XmQ6Lk+5HHioZ3k9f1s0oOvkfn5vXnp37msuKCCfBm9smreHzEV54Q8yh8Ch?=
 =?us-ascii?Q?6u2oS5u4lN35QTDJ/LGiGxQEpCY08FFbn5wF4LTqdYx3Ju+orLlb9LkuRK57?=
 =?us-ascii?Q?MO1wVcm7Gk3+lKAHU/rXoZ1/sBR+IJh2ELV7PAbViFTQgT/dqXh9wVw8dMnd?=
 =?us-ascii?Q?3ckQsctPbxygl6dNmAB3aPHOPm2lD+evZGOcsZ3cVUZIJSJCe3uXSGtdHgKp?=
 =?us-ascii?Q?avLVn6WPg/OdUZvKNbqEsnHzG6coq+kJMgfcfhNrPU5autNTLo9FImBZuDoR?=
 =?us-ascii?Q?Ul/v9jufTWzgYO8t/e+IUiJkwpXY4scKENynL+MA4TouSJRqRinNimjFtJoH?=
 =?us-ascii?Q?x3ZP9DA/aYqeLZGZ69f9wxXXCMBTWMlPweT+/dW/PZOKbpsGF3xLCgHlVj18?=
 =?us-ascii?Q?AHGVn5RljQnHx0OM0R8I2o2Z4faRYYQHEaNkD4XfbjJKHPiPgEJQnV6K3K/s?=
 =?us-ascii?Q?XblSaH46zKXmJwJqavyraewN80g+8sGAZd4DQ+SEEij8CI+p0BcGTHsQr0tG?=
 =?us-ascii?Q?KQJNtRLVphlIW237EHLTx506sa/uCZEY4JqQruPQAc8rnxQieQwaxYOPJ3f8?=
 =?us-ascii?Q?E2V0D10qN0/k3ErDIIsjIf0hcVaW2mPOqwZrrztZI4rJplmfm1Cz1/AzTSJZ?=
 =?us-ascii?Q?WgUoHCffYt0+Bu7opbESf9ui4YouNdszmfCW5T9EGRmaDVP76m+e9+8eaKRA?=
 =?us-ascii?Q?8CPP4L0f07xMGVO/WV7TmQnC32QZIqDuiGZugRqNYdKC3MAeN8sm70U3VleE?=
 =?us-ascii?Q?inwaFY3McoNk09d7H1W9IHL4I16oATFbnT9IFZdw0QDH/c4henI29vfdehj3?=
 =?us-ascii?Q?gb0xXykmZ7gQARROgTvVhIYKRgWmHA4lkWR8uFSV0ParENfsmIflaD9OIThA?=
 =?us-ascii?Q?Vbn7cKm8i1WBkVtoylEkwwkf0m82G7Stj9tfKDFnRpJUXQ3Lt0fceiMZyRPR?=
 =?us-ascii?Q?4TTk5mN+PQPUCyx27Xl7nNmdHvaAxsHOtYCnDazwawCX6XAFb/mVJ4x9/D4b?=
 =?us-ascii?Q?7KO0NBKquN/NQV+j1zD9oPztTNIlrXMx3eHUZBGuMPOqTcxfefBGcxN6ma7N?=
 =?us-ascii?Q?JMYE0iTvAZzLfu+UQkGrd4A5qYvDjD5ZfY7HoaYcTGbZzFF0z4gSdTX2/mKB?=
 =?us-ascii?Q?LdeBRG3reHfVcmL/kgLl9bMSRw6HVo8PMXiygF1gZrCwa2NlackeVqdGEiqM?=
 =?us-ascii?Q?TLumCjGwruRw8hi4NfxY2DSXIdFfLoR9VSqezG83?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 065d56eb-a060-4fe2-c809-08db91d8e66a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:14:56.7698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 00KyZE8q9kbWQELEYo/lgB+S+s5d4AWaej/FhJ9GCaQgSvJ1YTgl2kz0BHtvVTLw71j6j6ZOXFhwmVSJ5PwMyAdZEu5qW5er13lrWSCqAIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 04/14] drm/i915/kbl: s/KBL/KABYLAKE for
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
> Sent: Wednesday, July 26, 2023 12:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v4 04/14] drm/i915/kbl: s/KBL/KABYLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace KBL with KABYLAKE.Replace
> IS_KBL_GRAPHICS_STEP with IS_KABYLAKE () && IS_GRAPHICS_STEP().
>=20
> v2:
> - s/KBL/kbl in the subject prefix(Anusha)
>=20
> v3:
> - Unrolled wrapper IS_KBL_GRAPHICS_STEP.
> - Replace with IS_PLATFORM && DISPLAY_STEP(tvrtko/jani)
>=20
> v4:
> - Removed unused macro.
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c        |  6 +++---
>  drivers/gpu/drm/i915/i915_drv.h                    | 12 ++++--------
>  drivers/gpu/drm/i915/intel_clock_gating.c          |  4 ++--
>  5 files changed, 12 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index e85eab21b09d..39eab9ea02dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1740,9 +1740,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder
> *encoder)
>  			encoder->get_buf_trans =3D icl_get_mg_buf_trans;
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		encoder->get_buf_trans =3D bxt_get_buf_trans;
> -	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) || IS_KBL_ULX(i915)) {
> +	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) ||
> +IS_KABYLAKE_ULX(i915)) {
>  		encoder->get_buf_trans =3D kbl_y_get_buf_trans;
> -	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) || IS_KBL_ULT(i915)) {
> +	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) ||
> +IS_KABYLAKE_ULT(i915)) {
>  		encoder->get_buf_trans =3D kbl_u_get_buf_trans;
>  	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) ||
> IS_KABYLAKE(i915)) {
>  		encoder->get_buf_trans =3D kbl_get_buf_trans; diff --git
> a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 23857cc08eca..971cddb6d760 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -43,7 +43,7 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32
> mode)
>  			vf_flush_wa =3D true;
>=20
>  		/* WaForGAMHang:kbl */
> -		if (IS_KBL_GRAPHICS_STEP(rq->engine->i915, 0, STEP_C0))
> +		if (IS_KABYLAKE(rq->engine->i915) &&
> +IS_GRAPHICS_STEP(rq->engine->i915, 0, STEP_C0))
>  			dc_flush_wa =3D true;
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 85176eabcda0..3b4a5b49418d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -600,7 +600,7 @@ static void kbl_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  	gen9_ctx_workarounds_init(engine, wal);
>=20
>  	/* WaToEnableHwFixForPushConstHWBug:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, STEP_C0, STEP_FOREVER))
> +	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, STEP_C0,
> +STEP_FOREVER))
>  		wa_masked_en(wal, COMMON_SLICE_CHICKEN2,
>  			     GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);
>=20
> @@ -1204,7 +1204,7 @@ kbl_gt_workarounds_init(struct intel_gt *gt, struct
> i915_wa_list *wal)
>  	gen9_gt_workarounds_init(gt, wal);
>=20
>  	/* WaDisableDynamicCreditSharing:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
> +	if (IS_KABYLAKE(gt->i915) && IS_GRAPHICS_STEP(gt->i915, 0, STEP_C0))
>  		wa_write_or(wal,
>  			    GAMT_CHKN_BIT_REG,
>=20
> GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
> @@ -2945,7 +2945,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine,
> struct i915_wa_list *wal)
>  	struct drm_i915_private *i915 =3D engine->i915;
>=20
>  	/* WaKBLVECSSemaphoreWaitPoll:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
> +	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_F0)) {
>  		wa_write(wal,
>  			 RING_SEMA_WAIT_POLL(engine->mmio_base),
>  			 1);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index d7f7ca135000..ba075bb183db 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -613,9 +613,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
> #define IS_SKYLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX) -
> #define IS_KBL_ULT(i915) \
> +#define IS_KABYLAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
> -#define IS_KBL_ULX(i915) \
> +#define IS_KABYLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
>  #define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> @@ -623,9 +623,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
>  #define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 4)
> -#define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
> +#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> -#define IS_KBL_GT3(i915)	(IS_KABYLAKE(i915) && \
> +#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
>  #define IS_CFL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULT) @@ -650,10 +650,6 @@ IS_SUBPLATFORM(const
> struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
>=20
>=20
> -#define IS_KBL_GRAPHICS_STEP(i915, since, until) \
> -	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))
> -#define IS_KBL_DISPLAY_STEP(i915, since, until) \
> -	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
>=20
>  #define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
>  	(IS_JSL_EHL(p) && IS_GRAPHICS_STEP(p, since, until)) diff --git
> a/drivers/gpu/drm/i915/intel_clock_gating.c
> b/drivers/gpu/drm/i915/intel_clock_gating.c
> index d9600cd1ab06..81a4d32734e9 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -456,12 +456,12 @@ static void kbl_init_clock_gating(struct
> drm_i915_private *i915)
>  	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0,
> FBC_LLC_FULLY_OPEN);
>=20
>  	/* WaDisableSDEUnitClockGating:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
> +	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, 0, STEP_C0))
>  		intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6,
>  				 0, GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>=20
>  	/* WaDisableGamClockGating:kbl */
> -	if (IS_KBL_GRAPHICS_STEP(i915, 0, STEP_C0))
> +	if (IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, 0, STEP_C0))
>  		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
>  				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
>=20
> --
> 2.34.1

