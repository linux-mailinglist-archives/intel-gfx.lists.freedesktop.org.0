Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3854F769AB6
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6498D10E2B4;
	Mon, 31 Jul 2023 15:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE99310E2CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816995; x=1722352995;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nvfpWlJ/lMLzPqk7yDwayptmNudp2i5ENxkBabquPGQ=;
 b=PSrE/BZwr1xr/F0VA5LmN8n30PwzCLlsODt9KQQA+XtI54Eymnc+sNfD
 r+Sh2FOZi2m79kw4oKUsnHU7xlMbjtRoAbKr8F6kcXhgyLxLJYG9qWv0t
 f+d1ItOY2V0+aZIGL7JB060g+okV11FP6F99uRhwiyA6tEt6G+mH85AXk
 QggQYehp34gZMqHTyQyYRYCBoJnu7jbO1ocqkh43QA9HSrUg32EbD3aiU
 kq/gemXec3Hw3dy00bYzERS7OYvpZVU/Pn2aQQteDMvEGTsulU+hGQsFc
 U6Nly9ykEPnxnUDHe9gwSWsTdaY0aL2zU1lrGNkZzglebN8T0Bk7+nt+u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="455420731"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="455420731"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="763416713"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="763416713"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 31 Jul 2023 08:23:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:23:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:23:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:23:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=USBMj7HUwVmfB/YQ0g179TWb6WScowIvvoUVUrLzDHnB+V/GjsHDUsy0/t8ppygT2OtybE2H3bh4cezRRDjabfeVxLOJqj6EEbTjP0CfXVwq1Bpxm7/8YPNnlfngAhAJv0xF7C3Nr59e7ybde667f86wLF2gKHZ1h3Uy6QIUS4B9aBv6D4+f+6JK0PXSPxy4XaoEVuncxSMXTU+D5lzDpvvU8DcuOunNkZoe37c1Okzk5rnbH0Tw1OyLEX0IBhxiaRbSW/AgDlMgQdG332yW6cc+Ka4wQ46p6dWL1SWTsASxuIUTaQBO/X0aUqtjx3Cb/lEdviRRRZYrhPfItxD9DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FoEJxGguCtOcOEtTZU9+kwcEKdRYek1eRmTdQigVhfU=;
 b=LgsxvJsOgOr0EDNAJMR0vPwbw7j4k9fSqpsr7TUNRI7aWiJK+eHeDDCyHvmYn5GQTVkfX2p+kAkzxuWsnEEZ9Eemx8EIllzpbEQeC+sETtjCRKrtM0J332y1CO4TluA3QB8E44dtVr98jeJSiC+158cjwedbTqlgQoK9S7Za4FTSeUP3L7fkk1SN00mgfcBwE1MVA708rYIVI4HhURe+nueAfTcfabf30FyAKnjqyKIIF5ARElRxPAuZvkD/OdrRw4ef1hrd3nj1yThXN7iHbhdlgJUTxP64eaQp9bBdpYzI2ZUHVz2Gp4Oz8PVHumdAUCHAjQdcRTCyHrrwj99aaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DS7PR11MB6294.namprd11.prod.outlook.com (2603:10b6:8:96::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Mon, 31 Jul
 2023 15:23:05 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:23:05 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 04/14] drm/i915/kbl: s/KBL/KABYLAKE for
 platform/subplatform defines
Thread-Index: AQHZv/giK1tXsn2Mj0SlJIz880PqDK/UBbqw
Date: Mon, 31 Jul 2023 15:23:05 +0000
Message-ID: <SJ2PR11MB77157BEFD5611618E3DC272EF805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DS7PR11MB6294:EE_
x-ms-office365-filtering-correlation-id: a3557a23-bd4e-4bc6-a578-08db91da099a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2asAx4YX+SJ3HVezuyHH4j7OaZBAxdlPSLqlLwGCNx4TkFIRb3LHt+tvGGZ4nEmBYIq4UDaNoo13uqmf53Iwx0dlPghSEaN70EX9BNnRBNkODYRms7XbmFzVSdywcq84VjsNpBn+8UzUzIBozy+mPLnwjLJatNadrkKxl5JZeYMjaimibNbdbEO90VJJ0y2x32gTzc5ZZysb1pgSw+w7Bu3QIwzFTJ378XMy2EFdP/vSOIKXbGfY1QsQ0/lNG8ytopynQldJ+62Iv3rWLNV1ZG9d5o72Q1BTrzBs8jChQX5eaqbfYgIT84jY2rzb6YAC11RpeYn83N3zk5q4IOzWjeO3fUKGC1Krtk8pn6sEMFaqY8hhRZ3n8Glhw8FdkDgk3fT6i12L0e+nZ/4SeBgi1ia0J0oF23/VdO5RBBDujNGelMU3ro4X22h171YvNBi3TuUU6KI9PaqDRx0ThfLbDdYt0imQiDz9svSyckUp/7oKP5uNrur4Yd61uV/LN1Yz/XX/PqwDxcyn+sfGalYJb9bF2bqUlPn7Cth0Y7mYB+kZMmybsBQ5QhDeplrMFI8uiqvM+5c1VyhI1+iPXTbpQ0KdCz8lRnaYiUlfo1SY7zFIwmkC0TFMZp5qi9dcEmCQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(376002)(346002)(39860400002)(451199021)(2906002)(5660300002)(8676002)(8936002)(52536014)(316002)(66476007)(66446008)(66556008)(64756008)(41300700001)(4326008)(55016003)(66946007)(76116006)(33656002)(38070700005)(71200400001)(53546011)(26005)(122000001)(82960400001)(38100700002)(186003)(83380400001)(9686003)(7696005)(110136005)(6506007)(478600001)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0ucnGuQKpBfVyUqVO5aUmcBzSxkSXXfRN7BmB1tfcTYDL3e7yoa25drs/o3/?=
 =?us-ascii?Q?dNsMzDDa1uOwwCpwmlYCkKhr8KtEgxF/OZv18KlpVmEwNyqV8hZXgHkPwHhi?=
 =?us-ascii?Q?JUUJj7Fi5DQONUcEOExz30mnqJ14GlcjyYBNoA4TKBAORCzbJ7HeT8rVjBfM?=
 =?us-ascii?Q?Z//DwtbX6JsQt5pvRLNgxSz38ng4TgZmoJPTrip7/mhDKrCYKoqJvTi6NayW?=
 =?us-ascii?Q?98nT29Vn5I5idVf9dBVgOvQ9/KxE80R6WXUvK9bgazWGLMQ1IJcI6T/vP9Z+?=
 =?us-ascii?Q?EmszoBxNXkT7Oi6hUQus1pwTJtqQedSvVtKn4xk4hjMjPX8ALbn7JyXWf26F?=
 =?us-ascii?Q?Vr5+WfCPqk5rfpwg1NAxSX7IYpCpbLvSiq3x7Cq0Qn+w5ZSHHGe34lZGJObK?=
 =?us-ascii?Q?U25rFXPugZ6iT6/wbQmUnCpr/PQYxSf+U8tkA9nQLScK5E4s331YUWpbymHw?=
 =?us-ascii?Q?/l1qM19qKvsxtAGjxE4CANw6L2CnspU7f+Jqanvsx9Kl+sIc/axR8GP9SZ1M?=
 =?us-ascii?Q?vjhXzswk2yFbir+EeZkTmhJeGlca4+YElwwkOyq41oW7T0ixqeJu3JraWPNS?=
 =?us-ascii?Q?zrjPm6qAsQV5A6+t+X97zUBNRmMaMtfVlS34n85ZZhZ0aMjnWwQHWBkpUo/T?=
 =?us-ascii?Q?7ZH3QkgEa5cY/rwlM+QI0npUgTnqvYI/9nVPSS2ZNTSQGoxkXty7Swdc+xgX?=
 =?us-ascii?Q?UF1IBfoOse7JH+m5m1EYjuIqKo1c/5jWKhHR2XilAqDj3OlT28lfxsLDl++R?=
 =?us-ascii?Q?IaSdIjgrZ+uKll1QRQppLizwTgO2kq+RpppKWt6o+J1Gk8MtYbiActXSdVTn?=
 =?us-ascii?Q?mAH4SmBBtBs0ZiY5lAHLCsPI9VBw/6ZlURTEXpjgwkRyL9WJLCPLvpX6Vp62?=
 =?us-ascii?Q?VPWKGh5aRgaa/W/8ALDybfaOFK3vTRJfzAOdsntohGowsW+X66xa0irQax0p?=
 =?us-ascii?Q?Vu55gAXfzdsuwE0lwKOAXuS+Tdis1n3K7ZWiGoRpTXieY4mjy9oGhx5Btv0x?=
 =?us-ascii?Q?2ZR64Z+g7lPSVMqesGi3HFE1QWwgOmxBLf/Q3MKAoCWRxQEg2y1S81VkekL4?=
 =?us-ascii?Q?r0QPR4RBcpVkFKHpFmn987eQ3EHbd6UikpZYlNgm3aA7t3vnghvgUaV0p0Io?=
 =?us-ascii?Q?jEgFR+8w+7AabimRf96C6Ct/kb24foWbXaUzT9mlGJX6zSzKyNLOyKhXNf4f?=
 =?us-ascii?Q?b3Y1o45udjieNVTF6CZiYK5nXcXARQ+Wn78MJIoagTNdCrmNtw/ie0cbJBFf?=
 =?us-ascii?Q?0y5/yWudCNDGeuJzfC183QHw75v5M+fEezu9ENIax8OjSLZ453F2fbC8xqxw?=
 =?us-ascii?Q?GtzRvZi8EvH+ITm7bmz1fnwzpwDMdS6wNnw4uhnipupTJEcwhv0KmFG4AgDu?=
 =?us-ascii?Q?Soi1rTfkavRU8xuuIqVgJSEG2fWXg8fmOfGBShkh7FN22RNSmEgyGEXZco0W?=
 =?us-ascii?Q?tUMifLQOPpwUYfsi+AJrroLqNi/fXoqnbcHi6LHF8TnINVN84u5w55Z8qHP1?=
 =?us-ascii?Q?4Xbkn3fQb6bWq2H7of9VARDj006CHidG+WM0EbnseXdq9hT8yVaSBJo+GQV3?=
 =?us-ascii?Q?l1woMWFUU5MGSzhh/oigeKoIpvPeGrLQyfvR/WRh?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3557a23-bd4e-4bc6-a578-08db91da099a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:23:05.2605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1dIbF3RsRnanGLJGGSecZOCKtM2dzq2PLghM9BRmVCQdCVZlraYhCllDEbErrh7S2swii0zfls/RVVa8mzi0Yt1BpJ2IKeT6F+o1hgmKxFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6294
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

