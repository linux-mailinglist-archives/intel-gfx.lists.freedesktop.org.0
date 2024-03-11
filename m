Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8758786D4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 18:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A20B310E1C7;
	Mon, 11 Mar 2024 17:58:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AXMCiVxu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2F410E1C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 17:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710179887; x=1741715887;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ja3HVgCv5qbAFdGHL8KXCd+TAZgKHTtVucd7f54Usjo=;
 b=AXMCiVxuRVS2tR0YqBZ12poXjyAdbxM5815yuzs+nwY0gNTPzq93U0mc
 xHB7GzWWnt9i/WVlJZN/fvAhaZ14BdV5Y8eyZrMkT0QosHPZplbINU/3/
 NQWWRbRcv/YwDF6lM8gpV7ykfrqY3+sDqKETAAhJpWJ1JkANJJgA3Vg6u
 Kt7tbw+jC9BZlo7U5h2sWMIAhgPYv/l4TA7MCQLP2XnN3fucGIC8pEFPK
 v5wr0tbT8+xkSLUwTI2B/NyaCORtzIqxuENzrB+oPPUzUcW1Wk67GC1IT
 rsuITYRYIviIK/EFnwyAzSpoCHkaj3u/9rgHdEAk2qpH/yHBdOv9cJoPc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="15423141"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15423141"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 10:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11236115"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 10:58:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 10:58:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 10:58:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 10:58:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EqIXx5jVkUnJVwgMaheOJami7JptgHJ8i8e5YFwTgzVv2Rcp0Pxy/lU8bGLaFJukARBouTT5ulnRpgi7tsdYtUX26t6XOz62scFW0i6fRUROEdbFTyXap1OBp6ctxNfNqxwFi4QNwXsqAqbsjJti9Hl1lapOFA78Pjypg3nVslKL+rSmRUwgkSn7q7PIcPJ0kMjjXQQAVJMAAx9rE1n/OfaNqrnGRsWgFS4rT/e8inQB48iFTHoxJiY01L2HUX5InODjpqB5DN5561NTJexU01iirsX5Vn9IPFc7egpBx/dW0+1jGT7fUtnAic7qnt3CMzizsLVHXgtSWDL7YdBo2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qOIpKM/VsrziBPw8/RLdLYS+YT8qWCP7wHZ0Lil7Dzo=;
 b=YjwDstn6eXOlULoDmWiMfqKdntzRuALfAzpK7QpRUlmYcPQlyU9LSKxoTJtNpfJBLSiobWMax2dOpGXb3YvmkpXJERRm6jRtOxC6pmjWzGuHGwJQg/ZfvaKwFS7ewD30yWEnKPLodl8rJg/sT/2ZCM2R1e34EuDghjh/XWytK0SwPhrx8IjsK3hGvlSTHvNnswHmIsDN2Mqc+lCC2piDPhh00FpbF1rTK4jyVACgKOGCPuBlIC9UbryfzgwX5dkGAlTcSs8MgX3gxrJ600HAR/QEcjXHZMT+nY1Wrlj2wgUpVG13Cbz5lF/JkD7Ni9Q4/HytsffzLwsAl+Envfz2Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CY5PR11MB6319.namprd11.prod.outlook.com (2603:10b6:930:3d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.16; Mon, 11 Mar 2024 17:58:02 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 17:58:02 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v2] drm/i915: Reuse RPLU cdclk fns for MTL+
Thread-Topic: [PATCH v2] drm/i915: Reuse RPLU cdclk fns for MTL+
Thread-Index: AQHaapAwi5xGs88UWEOI3vCOB4UjcbEy5hAQ
Date: Mon, 11 Mar 2024 17:58:02 +0000
Message-ID: <DM4PR11MB597120463B925ACB63BAA67687242@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240228214854.2530205-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20240228214854.2530205-1-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CY5PR11MB6319:EE_
x-ms-office365-filtering-correlation-id: 6be18eba-9ef3-473f-bc96-08dc41f4cbab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GY2ncJLeakDX8C9B2FfGTjK1onaSccQGqfQ9brn7lcwZxUtt9fsxQk4yVnbB/PVM15BqELEqfL2bPrdt0oGntkdoFV5H2US5RB4OPja3OMGL3kKXhZIsXwqVEFwppVezFtFXzckKgOP89sRATV60r6C6kbKi2SvMCdMe50nsagiVCCasv/GOg44fFiMOl6Utu41V068pP8X4rMkL5W7Upr642wZSqFNrieRRtRL4xV1PevsdbF63qw6FPJgQksf++B99/Hg3HnHm28XMT3985vfp+VkOoqxbXRlrG4GUdmRY9hBL90yGlrXh5J+vbgdgL2DG94SSSOoAmIOu+5hwpSeP2d0czMRsaMcqJ6P3M1twHoagLKzOKeUAS3Y4SRxPA+ynVhFRmvObcbOAiBF5JzTilBi7srbT0Lzc1fOTY9bkPzVIdjX3T6cH5b0Mlk9uRVgEkhMIa2zRZBX+qWkkcyP0I6vyEVY3d4v/BulX/BdAyNXJgJw8bwe4X5xpDZ8xSCZ3CCsPaBQLH8ZQRF29LAB/bzWI0XkXp6GakW5BvbT/gTL6SQHYRvMRLZHBoCIMO26idGW5SJ8Ji9xPz9iBhrXpU6aqKys56GPLsq7c7ShbibhcQ3A8WEI4CUyNIft2VxLg9yFSP3hGN9zqOGrk0wTyuO5rgVvPHd3I5pgI7ZGZwayAsqi3yxpQWSjnbsOCH1TcJVrSmaqZI6yD+r2JohTIO+4aUkM8AZDSvRqWX/k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MrK794W2uD6GUKdVURyCmYoseTqhXDQ9MOkUKOrYdfJc54O0LzZGkISKoozt?=
 =?us-ascii?Q?TfexF+MiEGSriMwwhBdviribxpFMZQDmCbMdyBs00qBkwkR5waC6gkMLKQdx?=
 =?us-ascii?Q?H7I6EN1eEg+zg8SixnB6ANWq2iK3ZZ6E+ANC/n/m2TxtaUa2pvsdSfiOUJLl?=
 =?us-ascii?Q?6J9VWAxoLwnaHa400TAYc5t2t0DS9SN6jz4XL1zz0NON9QUv0xN0boE1jfDx?=
 =?us-ascii?Q?z/AC+LUKTBtIK+OcjQSrAWn7A6mHza7R8QWpSkAfMaoj6epL7CoQwX34Rdne?=
 =?us-ascii?Q?ftw56nlnlqNUNAFSYfROQEARepgQPDuG2i+jEBy4dYHcoN5kX+PBxmddckOF?=
 =?us-ascii?Q?FoxERycV1ioaVE7xQLzGQjicx8hm8422LZ8ikKhwpX6wwNQgAqHmkYtuN1zO?=
 =?us-ascii?Q?oD9aLz/xH0QPkhkkZMd9CgcG58kgjVPviVYCBBspPPXIcT8U5By5Q8ODPF/m?=
 =?us-ascii?Q?lEkieaWH+ASWzdU4PNWJrSOcLp6fhn7/56gJoh7zG3NlBRtfMhD9uEdH/lry?=
 =?us-ascii?Q?xyl+jv+caO1LHfAX4kSedH56JRpre2d5+uek3WBZejdrOW/JFpaq8/4FumJw?=
 =?us-ascii?Q?aqlkRpcbkN8mutjj9uTqx1Mku/CueT9pec949G93HnWOvlJptiqWWZ813b9y?=
 =?us-ascii?Q?fMdyR39No+uUTqiVI346PfvZck3JV7Khzlm7eOFnBbnKm8Q0yBE3pFu221i3?=
 =?us-ascii?Q?hZ/BoyFAFUoiY6dX2fv8e+fzdKufwooZMEf2wL5uXVphz3LvC3J6M9N1+bg+?=
 =?us-ascii?Q?W0oEJI5mcmgoUF71LPN1fxuOkOHEwh1lR8+fsBb0WcyKlLjPyHD1Z1efCojQ?=
 =?us-ascii?Q?XbS0rsVCvtVDzd0Yt23M9yuYCXHTA1JtIk5tH8iM3BNQJa+gEUH9vomCEKgi?=
 =?us-ascii?Q?xswJAMrsUuaQklqofvaAzVGxklLSnvPIJwktrn8muzYDAb1qU9LRbFVpnGay?=
 =?us-ascii?Q?eypgBrUkiosDc7F86OKlOWpLQi7T4WjFpJQmHgz5jfv3vaQisiz1ZqdqlvA4?=
 =?us-ascii?Q?Uaoce8GXDtnWOuxLDgm+EehpoDXuJNA4S+z7NzEH2NY7YwhpoRW2PUipNsC5?=
 =?us-ascii?Q?u26K6KLQ3NETwMDkTPgZ1+7cr394+CFGrf4GWWp7RGMM5z47ByIDDlS9SmoD?=
 =?us-ascii?Q?WxvppLZf11Btf8Y9TDgpPcblkJZ7St6gG3gfBuBd2l3ABMFkxkR0pYYfodRl?=
 =?us-ascii?Q?o+91qvEZzQVpe4wgcf2z2sWkmWhil/IjiG6XgwBHdWR+uGbRTpAa7Nkf6ghd?=
 =?us-ascii?Q?TeaWbG8LO8zh0I4NHBjTWD8QedrWD9ACBx25uY5D4pgznYg4yztiIxtOppNT?=
 =?us-ascii?Q?nHq9uaucqpqJcZzjFpiFWl4CojMoB10wI5XRA2gyNqFz//clagcuYHP16IMn?=
 =?us-ascii?Q?chWENYz2dFWjTM0aa/DGJkTw4Pn8B/q8E/Tw2djqHAG0/VjBijMqKkcvS1GF?=
 =?us-ascii?Q?qa2JHadDyyoHaVSW3wyq4bjpvYrffEERYYJ3pfm46cNSmXd6kZ9v1CXR4Kes?=
 =?us-ascii?Q?aZD3GzLk/dohe0K7KSrTP97TIU+e9nBDeh2sWEfzYgWx6N0UEWXwBVwBASF/?=
 =?us-ascii?Q?+EbQH8iEz4s8+Y3LadtnrgPlKhRoiVVwPLbwJ+Fe8RVxLGJCIrL1hXUNqvtC?=
 =?us-ascii?Q?yA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be18eba-9ef3-473f-bc96-08dc41f4cbab
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2024 17:58:02.4590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YM4GhfHazV3vAKR1DR8xh4OmdLDQjnWrT1IwniPSHOlppq0CBqK0X1PnvlfhBCcolAtZhbH96WX78800bKs/jvFaFC8cFuF8XpSjsaYshVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6319
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

Merged the patch. Thanks for the reviews.

Regards,
Radhakrishna Sripada

> -----Original Message-----
> From: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Sent: Wednesday, February 28, 2024 1:49 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Sousa, Gustav=
o
> <gustavo.sousa@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2] drm/i915: Reuse RPLU cdclk fns for MTL+
>=20
> MTL/LNL use the same cdclk functions as RPLU albeit with different
> tables. Having separate tables and not requiring special handling
> for the platforms, reuse RPLU cdclk functions.
>=20
> v2: Update subject and the commit message(Jani)
>=20
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 22473c55b899..5b2688d8c644 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3559,13 +3559,6 @@ void intel_cdclk_debugfs_register(struct
> drm_i915_private *i915)
>  			    i915, &i915_cdclk_info_fops);
>  }
>=20
> -static const struct intel_cdclk_funcs mtl_cdclk_funcs =3D {
> -	.get_cdclk =3D bxt_get_cdclk,
> -	.set_cdclk =3D bxt_set_cdclk,
> -	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
> -	.calc_voltage_level =3D rplu_calc_voltage_level,
> -};
> -
>  static const struct intel_cdclk_funcs rplu_cdclk_funcs =3D {
>  	.get_cdclk =3D bxt_get_cdclk,
>  	.set_cdclk =3D bxt_set_cdclk,
> @@ -3709,10 +3702,10 @@ static const struct intel_cdclk_funcs
> i830_cdclk_funcs =3D {
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >=3D 20) {
> -		dev_priv->display.funcs.cdclk =3D &mtl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &rplu_cdclk_funcs;
>  		dev_priv->display.cdclk.table =3D lnl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 14) {
> -		dev_priv->display.funcs.cdclk =3D &mtl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &rplu_cdclk_funcs;
>  		dev_priv->display.cdclk.table =3D mtl_cdclk_table;
>  	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
> --
> 2.34.1

