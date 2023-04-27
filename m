Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 840766F002E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 06:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8338A10E1D0;
	Thu, 27 Apr 2023 04:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FC510E0B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 04:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682569789; x=1714105789;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=15Hz758PY2Wz/93NBOFeEjFwV7FAf2Qz2YOP0B2uAyE=;
 b=DWjhUibFerhyTFyDT1/ASP8CK6spks9/mVfhq+8KZemduGEAb0nWYvtz
 itMxVPK4oweB9jF4HBvEesm867InMhZZVHwyAMDbEJDi/1pAOwWeJyy59
 /NyQegnT1blWdd/x/q1bbiQtHfTIcKbb6wkFokFoxg9Mkq9DauQdTM+g2
 89x473FDW8Ufp8Y9CUUa+hnPXDIc1Z5ZvtLiuhDMX+QTjNj2aEykJxBpn
 oki8T3uo1jawWuTHgs2u7cRNCU+XnxxJ0dL71gDUMMkcfW4+Mus2nraTt
 jkJpzXM7ZZimVVuJB+9XEqnUcJQjvpiJ6inzFM5xiKolZwvDsh4VgjC3u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="433608441"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="433608441"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 21:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="940506833"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="940506833"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 26 Apr 2023 21:29:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 21:29:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 21:29:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 21:29:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 21:29:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aLz1J3yCtu15dPydwEMsGDUDEYaBCoEkom8DeIfxom/JsBkKo1v7B1k5Yr321zik3i89jh/Zv5pbztXGhkETjD4yS3Hl5uaoXPuqg9QZ9kYy4PCb2jktenC1LFPO2EwwCS0gVuqv9C5myvO/ynRcWoQ66OhsZ8zIFQQwBeeYXEqaC6QTPOHNBDxNPvW2Jq4qyrSR+tNit8MiPNPRpZc27iR8sQYLJckUUbGQPaNVXXKlNkEtAuv7ccE0X0EIePjAmS1FUoaYNi11AK1OeXNhOnD2Nf3sx39PoypWDhZx+o3uPqU2IZYAx9kjrtS5R6rC2XQsknyc2lVCMEqMqPtxyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+KzoGXx/ma8D63PQ1yeEb2DpHMUbAxFIN8HUgeIdPg=;
 b=nL/J4v9pZW/kD/dVTXy3ojE02x51V2+JS6Ikw9TxhT4eG6A13TFhlIOrKodwIzV16/tbIyS8ADLo8+25rjWpKVU9zfy0nByJ6a6mnrzfWbi2tv5H3PgjrNEkMsgf00D60/6rbQNbu++KPWcOu41mNwncvsJUj+2QYeqFhY9eTMtM/AKEfhk7DLiiRzrJ1Pm5skcFHgRJj7lTVsy2AzzzS51yW0n9wct5Z8fQU9pgHmjEaOp4s1iYj97WtFxlVcd6/M2RXmTVxYOj9kl8iYWvlH2UubfDC+NjzOxRjP8oL7pxSHJWRz2iSCpHBUcHd3gjjaPAIN3onqEAFF1EQ3/Ibg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 IA1PR11MB8197.namprd11.prod.outlook.com (2603:10b6:208:446::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Thu, 27 Apr
 2023 04:29:45 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 04:29:44 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/13] drm/i915/mtl: Add voltage swing
 sequence for C20
Thread-Index: AQHZc4Yxg8s6oFM8VE+/pQ/qAyBqgq8+mlJw
Date: Thu, 27 Apr 2023 04:29:44 +0000
Message-ID: <DM6PR11MB31775A3C02254AC33512E06FBA6A9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-6-mika.kahola@intel.com>
In-Reply-To: <20230420124050.3617608-6-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|IA1PR11MB8197:EE_
x-ms-office365-filtering-correlation-id: 6e8ac193-9df6-4b77-3581-08db46d806ed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1DkBvfxJdYuRxhy6dLqqBIMtak1WWTJt/GOBx5OnFT82Y3NrfAjla3i1aucbGWra9uF/WEO/wtNp4uoTw031G3eI1/HE2C8/wtAGPGVc7rgXyjofX2oFwNRZRSPMLc88gTNaHtfG+SN7JYzzuGKUksi/yxMO60o56GU7/zELxNiAL/8nDQO4GdGcH7K+HaOErzHetfYenBJIsi/p85whWU0gHwm/nWsD9+M7FQfP674vLi9wSS7hZKr0b24qZyz6NaYce5/v9e5J5A9Kp9YH/1WWEXu9BIeuOoYnVW5KbjLG0noAtJ39xofqTSldgDgLcJw7rqzKDBufWhLYUyhV56xcWIuaHeM0cDs9f6TS58POFHmxEvbP3sVgP2GrZEEpemwReGPgHYz7Q2rKWuXpzae1EsHxRDt3uRCeDu70A1y5NR26X5HnPWp3pYZ6W0JqyahyCzn2c2IWJdkwjztt3sBMtSdpysdeKgxB2jFTcgCFy/Zuj0plvnPYyMsuV+GC5Pi9AIImQrFHk+Ua5v0Dla9YXUMmznYK0HdQ4aYSl0nbRSbyo3x6jbj8+Cj2r2UmZ9KgSwjfXf2i+YNlrYbcoYyX4W4AR3nb4fZND25D81yQxnxz3w4Kj+MkDoLCjDNN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(136003)(39860400002)(396003)(346002)(451199021)(9686003)(6506007)(55236004)(53546011)(186003)(478600001)(33656002)(110136005)(7696005)(71200400001)(8936002)(5660300002)(52536014)(8676002)(2906002)(38070700005)(38100700002)(66946007)(82960400001)(64756008)(66476007)(66446008)(76116006)(66556008)(316002)(41300700001)(55016003)(122000001)(26005)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DSgbt91fOaZgoQ2cFPOD6lsIo36okianT/fQZy6wkuugrjpw1i9LLXkuDjt0?=
 =?us-ascii?Q?RFMO4ctrHCP2HFXfe1hQ7kyeYYabTxwd2UCAa9wVmJLRzZnHuzJMEKqPGAND?=
 =?us-ascii?Q?Ax35s4wBpjn6d+vPYXpK4nSaQAx9LyO5JeBFOIDMnKWweqaiLizvKic3I5mE?=
 =?us-ascii?Q?y1fH/ugtQI4mvOlGWNd7dv4yl8ZehKjdswLjAsFYL0papxHsHli4OKx2HJDq?=
 =?us-ascii?Q?V6C8CFLYWMk8CAFSmuhjbhsID/nn6VeaRjvbeTA+PSUIvPDmKOv5ADXdexBA?=
 =?us-ascii?Q?LU+Kc8UI0G/sXNanb3+oswJGl5QVS2d6KUWJKnYe5+0mLHm9mlpIbPOGyBlX?=
 =?us-ascii?Q?pZq0wJgjQCM2kFQ69aIpe7CJMmeFYpsnJ8GIGkETZ3kojgO5dJSo6BIv3Tpu?=
 =?us-ascii?Q?9jFF20hdLMrvpP4pmTJN+oNSr0ZzEKXmkDqLbEFFH9rcB2Zebj5L9siEes9X?=
 =?us-ascii?Q?P6YpN9r4HtOnIwoedfBHvTWe7m6eTkzcjXiKv12RYVDZChvuyqfnTuLEAzcV?=
 =?us-ascii?Q?Rb81akT/lYGGyApAuAA/MAi765RpLJJDs/Xh0+P6PIJyxNGmwcrso/F5VPjb?=
 =?us-ascii?Q?hWhcJD5ON60IuaVX8mpckK4H5rns3BjSstaCDVjPtr9HQlMaScUyQ+otiwp8?=
 =?us-ascii?Q?wchk6CRcotLmFFaGIZSJ18sGf37foiwkIbAf95VMtsSjpoT/wmbATiuKdCD/?=
 =?us-ascii?Q?i2P7MStyMHBnL+ylH38E1EOm1qEMhdYGTKJze95qmz5aylIXcP3TLDSZgbGK?=
 =?us-ascii?Q?t0uFu0pRA4SKpV5JceL6YEYwrV90AaouSKR4ODn9ugC/T76z+AYGrWH66viY?=
 =?us-ascii?Q?XI9Fz+o5hvfG+cizjNOdK2BOjpgSI8Q6cr4S8lOXvhft3114AKE3q/qoMXFD?=
 =?us-ascii?Q?2Te+684o97A6llrCwJmjiz0K5KbJcwP2b1gurBztGaPJ1YP9O9OoOmvlh+vY?=
 =?us-ascii?Q?AdXI3h/6QCtwz+oa/ZqWxAImy1LtNYZDeL5zsVm29yMfButl2IeQl8PI7cM/?=
 =?us-ascii?Q?D7yfmpSkQ5ZRCB3u74x0dxycxOXO2wjPBVfnFuhvGhkH6tGJuNVCJMojc3FJ?=
 =?us-ascii?Q?+KcMTv5Sx/yZAYH1WLMasbc1toPJ+ieg5QDRGAKzLwHpLfND605LobKaJTP+?=
 =?us-ascii?Q?mwlYF9+kBWOmJtHRvOPw17lx1yh/YDnb0w4l++MTa3phLosyzwcBN75kBrRK?=
 =?us-ascii?Q?6W/2NXXXFkI6ps6PwTUhS91tNVIm6wVfi37TzZM/6DyjQnEJFeTrtH88gyR9?=
 =?us-ascii?Q?yPNA1obp3UHSCa82AO2YEEDIoz96vdMMgCW/c1SnzfTkKG4EfXYssrlD5LXG?=
 =?us-ascii?Q?t1/GuIQV7knlOX5PF6+b1HHysHFUi9M5QhnFDnxCOh2kAvEw9RDhf6f4IODV?=
 =?us-ascii?Q?rzfbZbytcpXUHZEOC0T2YsU15B+jpEz5qohaOnsmSIrpn1YoX16kCdECI3MU?=
 =?us-ascii?Q?CoC7cqnjBkBd1m2Qt4mr8shjJ2V465ODBQn3G/5rCa4YPRW1V+acb/bDqsjt?=
 =?us-ascii?Q?NaV6/1Zt3yYtD12KgZBdTYlT9RPiBTwJjB0VuXwPKln7jiAvU7lNng33HNvU?=
 =?us-ascii?Q?KAbL+f3hzcwmvta/XLX22ighyXsOVG3c111FvpO2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e8ac193-9df6-4b77-3581-08db46d806ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 04:29:44.5757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jR9aK78NCptVPm/uKzcIbisCly9ZL1cvKjvCZQkAcai/l5vB7sr6cWylHInxICIdI7Fhj3hpehiRa9y7iEB4jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/mtl: Add voltage swing
 sequence for C20
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Thursday, April 20, 2023 6:11 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 05/13] drm/i915/mtl: Add voltage swing sequen=
ce
> for C20
>=20
> DP1.4 and DP20 voltage swing sequence for C20 phy.
>=20
> Bspec: 65449, 67636, 67610
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 53 ++++++++++++++++++-
>  2 files changed, 55 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index a5e5bee24533..5305cc8aad8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -211,6 +211,10 @@
>  #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
>  #define   C20_PHY_USE_MPLLB		REG_BIT(7)
>=20
> +/* C20 Phy VSwing Masks */
> +#define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
> +#define C20_PHY_VSWING_PREEMPH(val)
> 	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
> +
>  #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D +
> (idx))
>=20
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index cd4becbae098..b7d20485bde5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -9,6 +9,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_cx0_phy.h"
>=20
>  /* HDMI/DVI modes ignore everything but the last 2 items. So we share
>   * them for both DP and FDI transports, allowing those ports to @@ -
> 1048,12 +1049,52 @@ static const union intel_ddi_buf_trans_entry
> _mtl_c10_trans_dp14[] =3D {
>  	{ .snps =3D { 62, 0, 0  } },      /* preset 9 */
>  };
>=20
> -static const struct intel_ddi_buf_trans mtl_cx0c10_trans =3D {
> +static const struct intel_ddi_buf_trans mtl_cx0_trans =3D {
>  	.entries =3D _mtl_c10_trans_dp14,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c10_trans_dp14),
>  	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,  };
>=20
> +/* DP2.0 */
> +static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] =3D {
> +	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
> +	{ .snps =3D { 43, 0, 5 } },       /* preset 1 */
> +	{ .snps =3D { 40, 0, 8 } },       /* preset 2 */
> +	{ .snps =3D { 37, 0, 11 } },      /* preset 3 */
> +	{ .snps =3D { 33, 0, 15 } },      /* preset 4 */
> +	{ .snps =3D { 46, 2, 0 } },       /* preset 5 */
> +	{ .snps =3D { 42, 2, 4 } },       /* preset 6 */
> +	{ .snps =3D { 38, 2, 8 } },       /* preset 7 */
> +	{ .snps =3D { 35, 2, 11 } },      /* preset 8 */
> +	{ .snps =3D { 33, 2, 13 } },      /* preset 9 */
> +	{ .snps =3D { 44, 4, 0 } },       /* preset 10 */
> +	{ .snps =3D { 40, 4, 4 } },       /* preset 11 */
> +	{ .snps =3D { 37, 4, 7 } },       /* preset 12 */
> +	{ .snps =3D { 33, 4, 11 } },      /* preset 13 */
> +	{ .snps =3D { 40, 8, 0 } },	/* preset 14 */
> +	{ .snps =3D { 28, 2, 2 } },	/* preset 15 */
> +};
> +
> +/* HDMI2.0 */
> +static const union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] =3D {
> +	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
> +	{ .snps =3D { 38, 4, 6 } },       /* preset 1 */
> +	{ .snps =3D { 36, 4, 8 } },       /* preset 2 */
> +	{ .snps =3D { 34, 4, 10 } },      /* preset 3 */
> +	{ .snps =3D { 32, 4, 12 } },      /* preset 4 */
> +};
> +
> +static const struct intel_ddi_buf_trans mtl_c20_trans_hdmi =3D {
> +	.entries =3D _mtl_c20_trans_hdmi,
> +	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_hdmi),
> +	.hdmi_default_entry =3D 0,
> +};
> +
> +static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr =3D {
> +	.entries =3D _mtl_c20_trans_uhbr,
> +	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_uhbr), };
> +
>  bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)  {
>  	return table =3D=3D &tgl_combo_phy_trans_edp_hbr2_hobl;
> @@ -1630,7 +1671,15 @@ mtl_get_cx0_buf_trans(struct intel_encoder
> *encoder,
>  		      const struct intel_crtc_state *crtc_state,
>  		      int *n_entries)
>  {
> -	return intel_get_buf_trans(&mtl_cx0c10_trans, n_entries);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock
> >=3D 1000000)
> +		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> !(intel_is_c10phy(i915, phy)))
> +		return intel_get_buf_trans(&mtl_c20_trans_hdmi,
> n_entries);
> +	else
> +		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
>  }
>=20
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
> --
> 2.34.1

