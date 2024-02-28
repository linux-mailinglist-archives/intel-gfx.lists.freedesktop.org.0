Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BBC86A826
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 06:59:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB7010E2B9;
	Wed, 28 Feb 2024 05:59:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDXTP0BM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2B310E2AC;
 Wed, 28 Feb 2024 05:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709099957; x=1740635957;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oaRqgn+l5WhRm/5pFqyVrjKFEu9bxyqh1OHP+uiOB1A=;
 b=MDXTP0BMe0F+oUUBRjcNecNPFcmDJV9XQ4ENm+tjVeZfdKTHg5gem45f
 E6JiZDOnRDwyieT503RgBJZBY+WWdj2q6IMWP4h9azGTeVmoaS58CNqdB
 Kdf2tZSNrGpxE43AjnIMm+7gukhb44yW4/xps4LuRoxCYv2jUzNo0Dk3w
 XQPtvGRyolrk0LbpeYe9mOPnMekCAxxSA5au4Urby7qohTnj8hdiQ5tJA
 M8PYKiHwV7sLmN7kUWqZu2JZaF0gNrQFt7aVAwUbm0FcFXGHUjuR7wxUg
 ULGk81yXb+eYT8FuDmCmne7MR280+DC0zkk2hJhqCSGrMaEu8VCBfQtww Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="7265945"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7265945"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 21:59:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7531391"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 21:59:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 21:59:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 21:59:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 21:59:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=etM1r15G+NVnMQyBf0mR+bI9Zth249Lgze9IiQaI7D+R6JKmY10ppMpfyKaPTmQ0+RJh/QBl2cq3RhDayH61zyAE2ctIqWs4KxlDAmuWelYZg6c0idEjJk5MJR63mfvEtL4WuaKuXezNGc/E4JUFyEmr0Nw5VurIKfRykLXTZ2lRaXKvsDcyr7etjPtih+0vHlDTngwOBcIhQCYv6Tl5w8cohVtdBi9F7drNhHFO3PeUut9WDipPyMJHFNmzjsE9qdBcTGkHZXDXBQqFqAV1udjuQ7SqOJPwB9iCHO877wzpKacK2IE25T9IsnYZlJHd33hf1etaQGNkX1x9Osdu/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oenTiBBAMoYLOR/Z7jLOMiN/8ef2osufzZR/G0X5k8E=;
 b=JQ1KFFXt8NZ5dweXicUNQQkrYKNiOisRrY33CThAZG/IrL+5O7Uf7ultLcdIshbK7adnO+Jm8+3Okfa876oG+9GOF1Bt55fsjkntZVU8iZmU79D3+Sweavy4eSE0D7n6lOf5WtZOUx8Sh8VovNpCz0M0wNwCiQ8imkFq2/QVsyfP/zoqEEnZG1fcxnf9zNDMALS3M/XfzoLAiVCm1WojxC+TMwqTunFpbXrzkWf/BkkmlbCITh2yM1RKxLLesbcMDrmRnDdUeU3tP+UWIL6WxoUfu8SjcxHCOV7p4n7QpX68mEOYDOovuSYQRDnD+qr1YmhzdvWZhJZu303xXPMZNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by LV8PR11MB8608.namprd11.prod.outlook.com (2603:10b6:408:1f0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.13; Wed, 28 Feb
 2024 05:59:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7339.023; Wed, 28 Feb 2024
 05:59:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
 from header file
Thread-Topic: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
 from header file
Thread-Index: AQHaaT6W2FVIB8fo5km21k3RGnhyTbEfQ+Cg
Date: Wed, 28 Feb 2024 05:59:12 +0000
Message-ID: <SN7PR11MB675021117B67C9F8E600C294E3582@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
 <20240227053204.1748920-2-suraj.kandpal@intel.com>
In-Reply-To: <20240227053204.1748920-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|LV8PR11MB8608:EE_
x-ms-office365-filtering-correlation-id: a6b50a46-715a-43c3-cb53-08dc3822637f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SdECRuHcreWvS5cXdt+EsMlNidRJeCnLraUKO4ZeiJLlwQYmJNjYuF308FTypk/TYb0cXhsNFUq0qoAlNfIg3tPpMhFPL816N7bNUS5cz5c6lUaDsvW4HKI6JKiTwNeRSAiQi2VEuMh9bFiYbJ/5IDXVdVHaTBR9iXy/+AdDic8rm9g+7CKIMdNyAOXMiyL3ZieUi9n5HEAjznu4Rg28J/2CkRpYSWMazO5MTwP5g4akW4nf4vsCS8baoQn34FAbWxdOC/ryt/lntxdFeMw6i6PA0rI1WK7e6hy9IyKlw3a1om+QjE8XmDs6L0ZpM4F6O3seghoesYxtG1u5+soW2Jjp8eae0S77yghR6U2t/763ToYjR7RocR6PWFMji94aoUrnYh2ZSNPRecktliqASum4+TPXNPVGLX6LHNDYWFwUJsLxKRV7fBlqcT7tyS1ulxmi49D01QYBqe0F2P2i9lWLrCDmzBTWAazefHu7VAX1xSZCtO7scBTcZodr0KcG7AleCyFbAcr1IROgZM9gogCZy6RKYXawoO1SfQFydZRcA28oYiUVAbZtnnKPlNQl4ehC7vISPqoqHDaV6CoHY2A9SJcfgFfajAmnRDfnTa84cFyVNfAwnJCagccF3csiZD2L2ONzyViZ5rkegbDlE+b81M9SlVspE51eyUkwptbXgIzMRLKjL1a+ll2cdIogoS2rMBZGA5Re8Axze1hpGTJtyO7oBUN0Y54DeXHFO4Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pKoEMJcwIxXjPkGx5u3qEw2HTnaxIcx1BXCYjX26ii14y+fvah8JV7x5rry7?=
 =?us-ascii?Q?PPBfryNXRUCUxvCZ+uyKIXxmgxSB6TpOExSS1MXdUEN6LyjVWcXQ/Wr9DCu4?=
 =?us-ascii?Q?6lIiC3QMUoctdh3jexgrMjAmfd1pOWTwUQFaYxFUlTVZ6d1Br7gZYPYVJym+?=
 =?us-ascii?Q?JQWMq8eTevZHr3/xu/XVAhUt2JrvuuUjzvZUar9XTR2PsXQ7wkLLyntNR9IL?=
 =?us-ascii?Q?8N3p6GNxtLERCjwSlEh9NDJJ2+tR5ZKsVvuISb94gsXLWJDrUUQCpcAU2gSr?=
 =?us-ascii?Q?KD3xquFnL2CO4upCc1RLXAT5BnAj6Giwfqsf90+kLiDI1Rw7IPnPgr8zbJ9/?=
 =?us-ascii?Q?P0X52XRlhTTnSH4yj54vcmZZV2wLRWdrbsgmtE+ThaarSKYzlDGR2wFLXTTv?=
 =?us-ascii?Q?I+gIqPy0QpQ1rb66fHea3jw8ZRai62yLiawyWsxo2ymol18lT/Aat/rSfLFK?=
 =?us-ascii?Q?eX70G3TFSoN8gm25/IYt0up9PRAHZvlZ8u774O5ZEd8WsjcbT+wb6A7+LhcB?=
 =?us-ascii?Q?As+s+KGmF0oovZ7Qd+FM+D0Q+G3NDnj/sCS47hnr80MRcbjjHhdFR6ZVAmDY?=
 =?us-ascii?Q?IFwe7RYLqCXlbQtbUlyhjaoHiXhWCIVpp13ARGPs5rDPMvGjDxeRpvhFGLey?=
 =?us-ascii?Q?xMsPJko4K10ni4TvhQHfEBQbOzG9nCXkwicRSPuLepV7mrKIbNgaUPrVmmlT?=
 =?us-ascii?Q?x1XcM8eSLtfxJMF07yjjOli9RFh0rfzLZSf9nhSE46rVTIxjKL3BtBVorY4H?=
 =?us-ascii?Q?qjCpQqHc3p94nS2o7HPzThxdWbiP3FFL8yRucrZaKtlWgcoM6EPGk8OdCDnU?=
 =?us-ascii?Q?nDVpsvm8KiiZ28SfYBBj2FZmy5ZVyf52bfEZIPwPyYli9YoS5ydNfqfPWw+I?=
 =?us-ascii?Q?UZ61aTgZeXF5/YPJWE1zb3YAWtiPHaU1NklDrPBXT3L20APCXO8S2byKJ4re?=
 =?us-ascii?Q?YBiNO/fwb0U/19+EXYczGZNzhFoxhd2V7LThucdqdbzJAEcPGHp4/L+Bv6Ps?=
 =?us-ascii?Q?xVjvR3qMKdqn1ZEIhSSRxUDuIu1UTElutdZwWq51a0i/l5KLOvxnOrsg/R0j?=
 =?us-ascii?Q?vBRfSH/DiSMJhLTlXr8VQgSfcGf0Ml1+aDQJ92oDYQZEtsI9e0Z7PpF/GFMk?=
 =?us-ascii?Q?4ilpC8qq0QRMExDuqVCeXNP/zMsqzgHnLSkuZRMbiNPvTTT3K1ZROUUQAd8e?=
 =?us-ascii?Q?w46PYUxJfBe5bKp4tVlLuJ0wbRxaqJWShfLqlQ6shwyHvDzeCmCsShnunLFK?=
 =?us-ascii?Q?eJFHwwPYEK6VimrfUaX9sIzVVqBZ3obDfG47QiSCM4PzC+FzFv3CCcDfdbqF?=
 =?us-ascii?Q?2c9GIhrQJSxTo4A9zqRdxvdRT6cDvf+qqXPfXdl+gobTyJe6MH/yzhhw0r6m?=
 =?us-ascii?Q?NUSny2wxYEsjzE+4uxanLzgjfrYfr83Ia7t1eH/xyZJvpJy+VXrSD7Gp8sWE?=
 =?us-ascii?Q?DCcfZu0oNpiO1KCQMv4UNWrNbDthu73UTp9z+bPgs0INlt0Q2sb9OZDuYRYI?=
 =?us-ascii?Q?+axk/CIOYaG75O6XSXjSt0OOrWhLLrZjWHmkw7Q05vCz+Yx4oKaRd4Uz3Gn7?=
 =?us-ascii?Q?GZq/QI9+rps+RsKs52DY62SgGWgDXRcxcTjJA1WS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6b50a46-715a-43c3-cb53-08dc3822637f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2024 05:59:12.8777 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fGuC9JHTjgbIOc7XSkTMfYfmfgAnPn6rye9advtHxZOzoCkpVIb2GEt4oC7S5rUM5mYpaMJhyZt61bgaDeh6Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8608
X-OriginatorOrg: intel.com
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



> Subject: [PATCH 1/4] drm/i915/hdcp: Move intel_hdcp_gsc_message def away
> from header file
>=20
> Move intel_hdcp_gsc_message definition into intel_hdcp_gsc.h so that
> intel_hdcp_gsc_message can be redefined for xe as needed.
>=20
> --v2
> -Correct commit message to reflect what patch is actually doing [Arun]
>=20
Any Reviews Arun

Regards,
Suraj Kandpal
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 6 ++++++
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 7 +------
>  2 files changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 302bff75b06c..35823e1f65d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -13,6 +13,12 @@
>  #include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
>=20
> +struct intel_hdcp_gsc_message {
> +	struct i915_vma *vma;
> +	void *hdcp_cmd_in;
> +	void *hdcp_cmd_out;
> +};
> +
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)  {
>  	return DISPLAY_VER(i915) >=3D 14;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index eba2057c5a9e..5f610df61cc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -10,12 +10,7 @@
>  #include <linux/types.h>
>=20
>  struct drm_i915_private;
> -
> -struct intel_hdcp_gsc_message {
> -	struct i915_vma *vma;
> -	void *hdcp_cmd_in;
> -	void *hdcp_cmd_out;
> -};
> +struct intel_hdcp_gsc_message;
>=20
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);  ssize_t
> intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> --
> 2.43.2

