Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC537321E1
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D9410E553;
	Thu, 15 Jun 2023 21:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F395410E553
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 21:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686865538; x=1718401538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=umqgtuukIn0P7aQi2SGZZCl7ez+nnxeU6oOpiqXD+tI=;
 b=GlCG2d3MjdPCgnd/9prM0ERKGWsNkWg5BbIDJ0AtRcWghxHV1nVK3rQT
 kygnJxQWi7xalY8zX9oH5J7pxHkn6PLzrym7jGNJjKlw3d/VL+yApI4dZ
 4vP0YTWOACuPrjPKazakMshlXZYHO0i9ywIYPPthu8FovtERqE9vQVAWa
 UcEcLnOTVU8jmigzoLSrJxGdDpLxUplkIXg+HWTzwsDPlYeQwIt848DOe
 gdz2odfTNZyDvAdXBqsjRR9iYWhh5JllqyS9JYuVXoPeX968+xPr3SSzd
 QKNQ0xEyfnb9ldx7Rd+et2I5Jo0YRLyIaekjvTXa5QzXAsc8LhVa1v+3l w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424980138"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="424980138"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:45:37 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="745834667"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="745834667"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Jun 2023 14:45:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:45:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:45:35 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:45:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QSO3Bz6xQijLVBT4o9mLXq0/etYHscd7ua/N7sePZnDrizAB4PJc2Ca6HNs4ucgc0colIB5v6ef67Ep5w5c4j8iWySePBJzSxVaUZkeKdTveGvz7w+v0/nQyzZYCJixwiwgZBANFhkN/A5pbY1cgz1M8dikpNWQbi0tXb6liEa7SJ/N5m8SrlTCfdaqxmtSt5Ap+nMbSHMxa/VBknsrOR1JYbGAPwbD2zfC0BARujsRb/oHRDZBdNjIm9A0Qk7ZvQFudN9eoYvg0ROyd+T2v7bQ6BPSrMfDwT1cnMg1nOqNgSOyKsegwlBZv0vkxfKe1xEsP/bJiJRcNqr52XU2ZHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eT46B2MDS1HMddQlZ7WnjTbxDyuSKFJqeJXLVqSL85M=;
 b=OF6jOVaOnp0fnS6BeNhQk55dire1GH1Guo+q5GbA12CB7VZyzq+V3X7lYAwLCiLYmIaynNIl2wntLfK9ohTAJhjNc774SFOUNPy7DE+NXLgMIAn007SUcVaYA6u2tgNJ6YZmTze0oiJM78meEcLCtEud5Io1Y4AnZrMalaMsYOH+O8k+BVddQqw7/oaFcBoxRxTpIFwujkNXfL8rS9WjNZLcdYHwbB/Z2+s7kpX5hEdAv/1/wHtKNKM4KjnbZrLk38UBcCCbeK3BTHrS5JgqnNrUAsHtuUihR0C4XzwEBV5mY12Tpr/kErErPSoarsGQ4905jAA/i3odVJaodfLpeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by BN9PR11MB5514.namprd11.prod.outlook.com (2603:10b6:408:103::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.27; Thu, 15 Jun
 2023 21:45:33 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 21:45:33 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 06/11] drm/i915/SKL: s/SKL/SKYLAKE for
 platform/subplatform defines
Thread-Index: AQHZn0Zat4fz51HuUEisHbELFt6Pcq+MZqzQ
Date: Thu, 15 Jun 2023 21:45:33 +0000
Message-ID: <SJ2PR11MB7715B80D4F6D6FE045403E6CF85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
 <20230615050015.3105902-7-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-7-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|BN9PR11MB5514:EE_
x-ms-office365-filtering-correlation-id: cc990037-e3fa-448b-7cdb-08db6de9d8d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OtmTP30ufueGxWK0eKmdKoffy9OwFGAy01XNTv8ZJe5WILpHIe4yE6/m3dgkbi88KmNmxTRnVdjlGtwNJvL3JmYIRnpdK/3w+ktgKm960fxhUekW4OGLpTBwtHX5cMMZwcNT9fu0S1CvZQVEp5b+D8g2O4+g+fmBpRcIqgTqNaj1KaxTgkh2ObzUYV9Xc2dDFn9dnTPBXpeEdElsTuwISe0Ym9RGMS7/PgZijvWkIa7BZl9Uvw/CbbzLu2a983DbDTdCcBzKy6fYvVZWOzXQR0IkJJJEztWWVLi83xR8SjoeSyOpVjEUFua8HMV0TB+prMNV3xjM7nfoNyfVAGWQxcf2/99Sisdlcad7sDwkrR5YxLiTs105if+lpNliALADi/EbVT5+5NjWvJBcekyERB9zz+yFkm1gRy7yuS0zZBZLtpkE1GpgcDuykdi2Q6O1em456Gq1dINbJtYjn+5cjnV5f8OB6rsO1mfgxpDgreLoQkphsQZ8Hl9qQ99XG8Li9GZ6z3/HogVHfRoC6DPodsNXKOzqJo68L5VGJUHPrbwpva3v+LEhIFnBsnqF/2cHaRwbsu3fueB+8dVNeZb5VEPR7xS7fNgBJIBoNfSW2xb6gYWSsfWMQlsT528R6gCM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(396003)(366004)(39860400002)(451199021)(5660300002)(52536014)(71200400001)(55016003)(2906002)(41300700001)(8936002)(8676002)(4326008)(66446008)(66476007)(66556008)(76116006)(66946007)(64756008)(316002)(33656002)(478600001)(110136005)(7696005)(9686003)(38100700002)(53546011)(86362001)(186003)(122000001)(82960400001)(83380400001)(107886003)(26005)(6506007)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qlTIxvNjFNAZmAFLtwDEE+yuNAIoLH0IJYVSTZdIvStg0N83kFevt8DcSAKU?=
 =?us-ascii?Q?pqkeUJ96uGy9dj1648yUxGD/VMkPnO8U+U+1Gl2vvU0aI0Um4bjBioBWM5No?=
 =?us-ascii?Q?2S1UHuTPUKf/hx3xeJMoGFQSJg05MeAbmo1l5twCoudX6I08G9aur+IVBy4P?=
 =?us-ascii?Q?e17iuINlkJ0MuE5kZ6A6vZl4IczE4wdVXmrVD5Vh5am8LIbmYo0dmqZUN8jU?=
 =?us-ascii?Q?f093bZ2bxgxOIJBUmBvLjnJhXKTCraNLaZN+O7AKkUPPZHpNS0dpw8hqzHUJ?=
 =?us-ascii?Q?GGLPUd3nHySG7YePd08sZn/wDoN4XtyWcGS3vPUooYjUJyX3jMwNO/KN8J4p?=
 =?us-ascii?Q?yL+bM4YWqGhes+9AoUvpL46iO3o61u102/vZpk3CIix7drJXzmcO1Xs+OZK0?=
 =?us-ascii?Q?GQmxAVZ8GabIjRyw3FIqFOM3rOEYXgPGZmZ7G0WsWnkN3zW9Is86vwQNVxb8?=
 =?us-ascii?Q?ZMNq9O0JjsCsOVuCUqd+9W68X0u/AKpWir/WdqAxGBWOsbOVsJrGICAlWU+1?=
 =?us-ascii?Q?nBaZPwz3pnChGkpd8h0qRff+Ui2K9dLo1J5NCe9bY4SD6kITSnUgUAtck+nb?=
 =?us-ascii?Q?2yQVts5c5Kpl4BmnrSsFxpTixvKWZV3p4ptFwo7yAxk/5pEv7EfVBvBpIjkQ?=
 =?us-ascii?Q?SCHlrXhog3rFys8Cz2hwmRfyDIn4cvFtfXKNuLjgMvZp/UuMdTcyh63q+c7L?=
 =?us-ascii?Q?A3GaO5a4T3BZiDE04eoNXt0qerjYzceY7rd0E0wwlFA1GBiKiiaxiWEIQC3z?=
 =?us-ascii?Q?9bTmg6sJJXbQj8gnYQtuTAjXJQ3tFW9gfo4Pl2iwOQwWS7TCVBRK2WfUM7px?=
 =?us-ascii?Q?YnZRuNEHkFxCq8bxRuTeeQ8SOFmjODp+g9outbu7XW4P1Ot4ScvaMBjDCEgK?=
 =?us-ascii?Q?SOVhgBSsEsR/mhK8f1k1JbJ0eouEUi0JVveZ4ptHtKrM2nmplreUd4GXEr0A?=
 =?us-ascii?Q?ThV5qn4oL+Whgcq0CRbWj/epi9IeZxc72e9QKEbo8N1Nv7CMWgSOpl4ECPam?=
 =?us-ascii?Q?PuiapM3uqktXoh8wR+j6MSgSkPwkk1R/4k2DA440/6F6W9FERqthwfTan/M0?=
 =?us-ascii?Q?rjF7/SYP+Rot9TaFflorWJJbJf4zz1jFlheLYyjRtCiBPcysHatkKfpHnvET?=
 =?us-ascii?Q?U3bB0YmYSqpL2ZNadkEc0Lbjbn6sRGIh8r2JENeBGrRcaA1aBAG9Lh0vefvI?=
 =?us-ascii?Q?d4I/L/EXtV5JBWDRT4Bb/q5wo10u80zAdE6NIjjjHz01c0W8eIPRnYK0i1WB?=
 =?us-ascii?Q?4P7RsKOXK2Av7vmVS2yCW+JdhIUe8+bhzGluripE4d5lAjwIHcdKBcWK6vOz?=
 =?us-ascii?Q?3KhWtp27Zt6ykZiTLeaSVTjODdUzO71vV76PaV8h6HKJu9QRhsFH7cjWzIrw?=
 =?us-ascii?Q?hKpglHf8UFshOyRv0pm1SBWAriiZFPl0RtpoUpJxtwEn95kmVeF+v5fklnqC?=
 =?us-ascii?Q?Qh9877DnNEVPLgE2FXIUio5Js+HTHo0BSQzBerVaQZde2xl9bgJkdJr6EISL?=
 =?us-ascii?Q?IjQQ0m3enWM3hux+hU66gJstzrIFrV1hutblbgZrisrc6tAcASi04tcC6xnO?=
 =?us-ascii?Q?vXfBIsYaM+yUpZfwdD7r37zBXK2Q+3IYixeJkIHH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc990037-e3fa-448b-7cdb-08db6de9d8d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 21:45:33.5521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uKpTxzIfdVZqKaX8/2YyuwkdvqRQnaClGnkNWjJumYy5VF6Q9yAFs0xhbjkApG0YA8t2gT1VO2ECiCUmB/oOzs7tASL7k4/sIaL0eOErdb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5514
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915/SKL: s/SKL/SKYLAKE for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apart from the platform subject prefix,

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, June 14, 2023 10:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH 06/11] drm/i915/SKL: s/SKL/SKYLAKE for platform/subplatfo=
rm
> defines
>=20
> Follow consistent naming convention. Replace SKL with SKYLAKE.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_workarounds.c        |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 14 +++++++-------
>  3 files changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 84b09d188d2a..ab84d003232c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1724,9 +1724,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder
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
> index b632fb5592a8..10a4e0fc23ec 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1173,7 +1173,7 @@ skl_gt_workarounds_init(struct intel_gt *gt, struct
> i915_wa_list *wal)
>  		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
>=20
>  	/* WaInPlaceDecompressionHang:skl */
> -	if (IS_SKL_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
> +	if (IS_SKYLAKE_GRAPHICS_STEP(gt->i915, STEP_A0, STEP_H0))
>  		wa_write_or(wal,
>  			    GEN9_GAMT_ECO_REG_RW_IA,
>  			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index f19915115cff..3c4a66f1a7ba 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -610,19 +610,19 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  /* ULX machines are also considered ULT. */  #define IS_HSW_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX) -
> #define IS_SKL_ULT(i915) \
> +#define IS_SKYLAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT) -
> #define IS_SKL_ULX(i915) \
> +#define IS_SKYLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
> #define IS_KABYLAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
> #define IS_KABYLAKE_ULX(i915) \
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
>  #define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 2)
> @@ -650,7 +650,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_TIGERLAKE_UY(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
>=20
> -#define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) &&
> IS_GRAPHICS_STEP(p, since, until))
> +#define IS_SKYLAKE_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) &&
> +IS_GRAPHICS_STEP(p, since, until))
>=20
>  #define IS_KABYLAKE_GRAPHICS_STEP(i915, since, until) \
>  	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until)) @@ -
> 801,7 +801,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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

