Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE767268FE
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 20:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F5510E543;
	Wed,  7 Jun 2023 18:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D5F10E544
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 18:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686163029; x=1717699029;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/z1sWI7XZQipYm4WTCuOzsT8Geof2GMyiWOTS+//MSw=;
 b=NexOUDeUJQ3zivQqApMqOYM89YL/RO1+bzoLqPK4eV1bekDCTI3eLkFL
 Rr375Eow0z3+7iXfqJE4flYL7CjkJRsh90USde+qPArwmWkOoawAv+1vp
 bpL76WU1DIG+iWEkGpUrlTgXTlxgqMmNikk5eLalDHM70GEFfsdpix1JS
 Cco/UmhBObpVD+jeRm08XaGEgIr29Tt0DJD6/K2k7etMxXnAoyBdsBYpE
 kHduwXVAHSVT9Qr3sb0o5nMVDhuDNQpyPJyqOwQX3p2RZnXxPsuxminPm
 c/F2UbfEbq64B8s7G0k8k9YgVQLhU38/LgxAXciDH9iHW4OZ//bwGhQR4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="355932469"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="355932469"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 11:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="687080681"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="687080681"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 07 Jun 2023 11:37:08 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 11:37:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 11:37:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 11:37:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KPjW8936y2upBC10b2E/1NRFzHY3y0l6WCXu113vhgkTOgOeRuhf96zUFYhoL+B6JQjJsaOxbaBqDyAyvnTar+fJ/dxDKKNaB8eKA7k+FpxSb4YZGBrRaREzNFFWfUcP5auOMH0gidfZVw+HEhg8DqInT3oEq5GupPcfzMVcqtTaU7U3PF35xYKirno4JSN7rDve9ZjFrm/iygAx/k28Ez71d4ZuvIuzYzqhNifr3qZ+NtbmB2WEm9ckUwI7c4hYxsQ/Y1Zi4oabvYD44KHbN7dWqcBLx5v+cQU2NT7lqJYgppkRw6/fiZxRKIOIJELaWlURyOPUya686xBVp5lZGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7DLND/ztSi1W+qiuXGjOkLmBM1C6+k6vhe6fuVnu+Kc=;
 b=E/3msu49OHlSBjMLUyQ6Cd19b8WMrPUhonKz+eKoOsVi8FtGtYZNvVyt6lWe2CEEjiUIoEk57nDP3GwLhyzW4csagKxMbKrnyOOclzKfleI/LY4boSW8wvkVqDkVOWGEMku+hBbjl9V+ifQ5hxwz6SL0/b+owPHYA1kK7nyztAYEuh7xTTDo8VChfUoTKoIp6D0jOfSvjDu9ECYGrhWIuJpL2vAv7mMjWOQoZ5eCbLcoBqwDsZ9QaPJ4aFQxhmaEx/ay3IyTb1uNctZSC4db0bwVn/UohLyjtJ/Zha2CFriKYZ6FvgwVTCJnNGBviQmHyzSafrMWp3fof7njtJlRBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA3PR11MB7462.namprd11.prod.outlook.com (2603:10b6:806:31d::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Wed, 7 Jun 2023 18:37:04 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 18:37:04 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Add new vswing table for C20 phy to
 support DP 1.4
Thread-Index: AQHZmGPkiK6dDT2erEaN0nvE1F3cSa9/rHnw
Date: Wed, 7 Jun 2023 18:37:04 +0000
Message-ID: <DM4PR11MB597151E052588064FB7E039E8753A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
In-Reply-To: <20230606104306.32001-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA3PR11MB7462:EE_
x-ms-office365-filtering-correlation-id: bf713d94-4a98-45a5-54ee-08db678630e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2E70nMd7VxX7rQa78SSJ5c1/2tffYqxpqK6byb+XByg1voJyLW+5X1CAFP61SGFFu0QbhNPmHVEvzSsuX6KSUG/uh5jAc8t2X+JcTbMF5+LasWpu5Km7AiJ4Ci/wdWEUtskB8CFfZNgvQnQZtfcwfg/LW16c+1WPCj++pbta4lGoJH4Y3Jy+nlbNnBW6Nzh0j+zotXvgTxvKSSflwmxBsTtcCMpsAHtyTFvQScnBp+g2Ee29Aw7V8xmjq/1F0caiC/tGDy/8ImMonAS/0yMqzsqLEgQX4b/g9BWYaX7505/saPH5vn5Nyz5Tza0TiB8SRiu3qw1uKasQxnFXQN2NgqA0qOmuOWyXsQCn00NuZB+39yImwYToesTSk2N3RTgvlTI8vChFWoA1l9ggE1gBp1hyUTnvUdEzwF+10Rem1UJu/5Fvre4GsrIcQPVUhuPEZTE1NCJTA5E+6uybsQGzXFe0NO0BMRx+VHrmdeG7RlLQsoBMrzGAW7srO36pEM+2Irs+ovWh6HcRpWcVarW0/Czypf9or8E/sm2EqaHqwoS7jssrkUbdnIET7fNpFBrPb/yvHDyltzdM3HqX8eKbngpUML/KW9wOpeJ9O6vFcoaiSFff1h9Mk/BZk2hA84IG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(396003)(376002)(136003)(451199021)(55016003)(110136005)(7696005)(186003)(54906003)(82960400001)(478600001)(8676002)(8936002)(122000001)(64756008)(4326008)(38100700002)(76116006)(66556008)(66946007)(66446008)(41300700001)(66476007)(316002)(71200400001)(107886003)(9686003)(83380400001)(26005)(6506007)(53546011)(86362001)(5660300002)(52536014)(38070700005)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dEWVcS9iAeWZweZX1sIEJ4p69kmCNXJL5CwDUMy8Iw/HfND8+ZBxW9Qa7Mbn?=
 =?us-ascii?Q?q/k8oR/fXUpxaGVxPJaExceqwKxmSNfoGRbusci9+umq8g/6RRAQEZ2+kl4P?=
 =?us-ascii?Q?nZQQf0JIV/LmiuxoPUt6CfyDQhh+/TODHFB66mOQmLNBGCegpkjBMuOjPtm/?=
 =?us-ascii?Q?arSdZ74qtkMMVkO5TjFMWELfsAVTuWPLwm4vQJ7ps+5GwcPhIvxrxfuxuBSs?=
 =?us-ascii?Q?C95Zp+SJaaPwhKRuEV5TUe2qQcBx1OqQzZGrpOOkO66POkJ822tUshtJpaS7?=
 =?us-ascii?Q?Oq0QrAHM+XODfVtMTrCu0v1NkEm25QgnJfm0zAqJiEzr/uCA8qXpRZTTJJEq?=
 =?us-ascii?Q?FTW37elvm3ly1TgqIIL2sgKWMrlpPHdp+sYiOavkunZxR8YRsPBlKtIp62H4?=
 =?us-ascii?Q?gGmvJfj9IWSHc9GS9uoq4lSRSF529xEXg8FFKZQrRgt8115YHnryHRA/P8aV?=
 =?us-ascii?Q?7vJKCVBqX/Dl4OrcGgfz/7k5sj8jp7Bu6ToFTzeiwbmIlkLjUhyOkAzXMX6I?=
 =?us-ascii?Q?S1gT0iMnThI3OP8Jj8aEay7Zj650/ioSGRlRr7GOfvlTUxGIR4uiluY7E7CH?=
 =?us-ascii?Q?JJhEa9+BYPmK1VJ4oj73bx+MKlY28EZKUk8BIk0YfBD8nJ8i1F3MSmEDAgqX?=
 =?us-ascii?Q?pV1OF5lyceAPGZ9oBMrNLxOUoTkWOv36CbZO0siOValPrAVD/R+zRaUnawew?=
 =?us-ascii?Q?pjtdTrsbPrpX+HY+VIdaDovqtNEJVm1KhTAK8jJ8dQfoHifmPrCgYaNgL7fl?=
 =?us-ascii?Q?AM4tniQVDLgg7pxQ6RexzTwf20SOff6r3eV+x4ojY4tBtmiscOPiHZy8IcW3?=
 =?us-ascii?Q?QUkkUoRA0IyM12XoqeSxNJRexRbIQsGHkuLyan2P4IRHZ5pf2y2BkwRtz4Hj?=
 =?us-ascii?Q?yy5US33WQxGTMGhJK7x6kQmjvuwhL/9SELiaq5J4/laEBYoUvVrAcPIuGOC2?=
 =?us-ascii?Q?H4+9CB0sszajQWx3JQ0TezuCSRdR25nA4W6ltcF/fAjcCPD9eaOVSbAmeksW?=
 =?us-ascii?Q?t/cAykgi3+tbdm6jWsh+hWtd9YJm+iELbAOOKs8vwzwbAMAsQjOYpUhuhsBW?=
 =?us-ascii?Q?vGlZrG9zUJ+oCkSGRIEO9MXP6LWqXosdG6oyXXXaldy4hjS6yio1YjKwf/wy?=
 =?us-ascii?Q?qc1tV5T0EdN5BRpkB6BYVsQWA3mJXMrzScJTNsrflYeDJxPufwbwqedUusLN?=
 =?us-ascii?Q?jk7oSvPPm9F/b42UdnYc30n1H5SZDwgivKJNiybZjzgXEs/rOndQaUCfYDpN?=
 =?us-ascii?Q?vAZCG3KsHmM4AdZ4KDY9a8/RGR4nIYVxWbgLJVo+LFXkajPHbywnHZo/fd2n?=
 =?us-ascii?Q?Ks/+bGCv4ipKaqGwSRPy+xdfd22M0V5MT2lW065LM7gtC4tQXlhAGZZXeCh9?=
 =?us-ascii?Q?C6INLvLWyAf3McZKrqPGI3E340OfPud0dKiE+kz3bO5LtvrVzKKoBmSPP8dv?=
 =?us-ascii?Q?RgXvmlyUx+ZMY2QSurUY6LE9KPj5Dfdxsw+rZ280Lb4FbiOwA20YSm+pAtJ2?=
 =?us-ascii?Q?roxNyx9ESYZgs21SHKeMS1cbgs3w/8E0W8ZI3z6OijZFqpwVymy1O3xFRk4Z?=
 =?us-ascii?Q?ounZwNs0ftXoJ37QgNHA5f+MAMVrQE5yKg5r9Osk+n5V+njiFBfW4LKAf0Yd?=
 =?us-ascii?Q?xQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf713d94-4a98-45a5-54ee-08db678630e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 18:37:04.6316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TwdJsWl3oi4xAzn22z3p63I1ceTIJ80SrbI6AgvGJVqvCRs+g7lc41sfzjh/E3AKfInbT0UKiUyVSyL2M2ev7JgWF9P/EOVga22O6imAptQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7462
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add new vswing table for C20
 phy to support DP 1.4
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

Hi Shawn,

> -----Original Message-----
> From: Lee, Shawn C <shawn.c.lee@intel.com>
> Sent: Tuesday, June 6, 2023 3:43 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Kahola, Mika
> <mika.kahola@intel.com>; Taylor, Clinton A <clinton.a.taylor@intel.com>;
> Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH] drm/i915/mtl: Add new vswing table for C20 phy to suppor=
t DP
> 1.4
>=20
> Add vswing table to support DP 1.4 for C20 phy.
>=20
> Bspec: 74104
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index b7d20485bde5..6a1507515119 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1055,6 +1055,20 @@ static const struct intel_ddi_buf_trans mtl_cx0_tr=
ans
> =3D {
>  	.hdmi_default_entry =3D ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
>  };
>=20
> +/* DP1.4 */
> +static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] =3D {
> +	{ .snps =3D { 20, 0, 0  } },      /* preset 0 */
> +	{ .snps =3D { 24, 0, 4  } },      /* preset 1 */
> +	{ .snps =3D { 30, 0, 9  } },      /* preset 2 */
> +	{ .snps =3D { 34, 0, 14 } },      /* preset 3 */
> +	{ .snps =3D { 29, 0, 0  } },      /* preset 4 */
> +	{ .snps =3D { 34, 0, 5  } },      /* preset 5 */
> +	{ .snps =3D { 38, 0, 10 } },      /* preset 6 */
> +	{ .snps =3D { 36, 0, 0  } },      /* preset 7 */
> +	{ .snps =3D { 40, 0, 6  } },      /* preset 8 */
> +	{ .snps =3D { 48, 0, 0  } },      /* preset 9 */
> +};
> +
>  /* DP2.0 */
>  static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] =3D {
>  	{ .snps =3D { 48, 0, 0 } },       /* preset 0 */
> @@ -1090,6 +1104,11 @@ static const struct intel_ddi_buf_trans
> mtl_c20_trans_hdmi =3D {
>  	.hdmi_default_entry =3D 0,
>  };
>=20
> +static const struct intel_ddi_buf_trans mtl_c20_trans_dp14 =3D {
> +	.entries =3D _mtl_c20_trans_dp14,
> +	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_dp14),
> +};
> +
>  static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr =3D {
>  	.entries =3D _mtl_c20_trans_uhbr,
>  	.num_entries =3D ARRAY_SIZE(_mtl_c20_trans_uhbr),
> @@ -1678,6 +1697,8 @@ mtl_get_cx0_buf_trans(struct intel_encoder
> *encoder,
>  		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> !(intel_is_c10phy(i915, phy)))
>  		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
> +	else if (!intel_is_c10phy(i915, phy))
> +		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
>  	else
>  		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
Nit: With mtl_c20_trans_dp14, mtl_cx0_trans looses its meaning and needs to=
 be renamed
As mtl_c10_trans or even better mtl_trans_dp14 for the sake of consistency.

With that,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

--Radhakrishna(RK) Sripada
>  }
> --
> 2.31.1

