Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C460B9408A3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 08:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7919710E44B;
	Tue, 30 Jul 2024 06:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UE8IM0m5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A2510E44B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 06:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722321844; x=1753857844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NNgC3G0WFy9iDcx6U3Xdp6+csY1fzr+3mwoPSgnmIQs=;
 b=UE8IM0m5CFNgDLdUNAPOTnYTj+HewSJ9BwysZBtjj9OCk6ej8oeWuR3C
 ea/IeY9byMwSHzQsMlh4Ql812dOQ+hc7kqoZdToKpSkz6Epwp6HP+ewuT
 BeewVeg8IXrkqEjDWGIHyP7AbSdDGh/inerwEpqastXn65pG7G27J+M1e
 wv3uiq36A1iJIhGK8bowJa7LzOnYmftOMs7Gb10/JSKc4KBiHq+urmyM+
 XFcD/83KY8p6LXdaOsNztq9KZ7xesQYShN/uxkffBaMqujVzuWHUVqcBq
 a5t8GYvx9VdXVJYINxSpsW17n4BHi6GUz4ufA7y0tlzE17IXmNzD7J2UA A==;
X-CSE-ConnectionGUID: njJTgrL0Q9SlxFAVYHe2ww==
X-CSE-MsgGUID: f3UM8brwTdSon/pC9xBSJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="31265391"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="31265391"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 23:44:03 -0700
X-CSE-ConnectionGUID: +/sMuhH2TWCDic1y51b7uA==
X-CSE-MsgGUID: 41I5d2nyRE6iVoE3Y5GpJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54477443"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 23:44:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 23:44:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 23:44:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 23:44:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gpOFyw/Xhu2ElX52MEHvleJ6ucSytgvzqqMuUhjzisWygNNgtYZrLxakeqAY6vZB8VPtLOEw7pPcfT6U1QFAjvvrQNqkmchk53J7r0PfjabGBTKhBQz81eUn8rbQqR37Tjsd1KMKmJmgg1KxbmKpwLS1LvUpc8mXzwBQLhddp7/Fw7NTmfbKfL0a/AlkIHWAW3ypAplxtlALq+lSR/tazb+lT5nETYQp/EyhfZhpC/gU43ethHE5b+9iyytQKVXmG4XGozs7PXAuZd4nCY4alR7iEe6NJwzTQv0lq1B8LQ4kXos+Mx2Fppm7ep646vUMhmOGkQ6YW2l+w4zMrCitTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Hq0lwj4u0FVe0vsrmNsA4ig/D2PbwOAaSo6ZQB17UY=;
 b=kEaQAjjApTAOCiezgkS0fPxb+rJnwSgU2ZHEF2pEQuAlc88KlUQkbrfC8wbEmVf7xOd2t4GxFh7pQJRQNm2EGESt1yN9gYOAlSfkYHrmVRENrw/v+BnMrOsDPWSXwUSIfAJWhi7d2Ee+qy7nbnFWWYgOWkUMUqsnmA9XxutlEkyCj7DZFWW/3g3o3TTRcV4jK48+wIjawKqogGpTLjBtU+3G2kr5sWteEAPfjulqDKdMYEVKdcs59HC6Ydc5KjNA3sc9eAyOiZ4RoQ62uqEzD+DZbwmSJRpTYBDOjLc9Zo1UWH1IwgGJbYW1DjI/YEe1oU3KK05CzZH3PVG97sfHSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by MN2PR11MB4631.namprd11.prod.outlook.com (2603:10b6:208:262::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 06:43:59 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%7]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 06:43:59 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/bios: remove stale and useless comments
Thread-Topic: [PATCH] drm/i915/bios: remove stale and useless comments
Thread-Index: AQHa4d14nPwWu68mUEm/9OnvymS8J7IO04AA
Date: Tue, 30 Jul 2024 06:43:59 +0000
Message-ID: <SJ0PR11MB67893D383296ACED160CABF48DB02@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240729173320.1053791-1-jani.nikula@intel.com>
In-Reply-To: <20240729173320.1053791-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|MN2PR11MB4631:EE_
x-ms-office365-filtering-correlation-id: 16d5e2bb-9170-4258-e123-08dcb062fdd0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qMCIXwK610BlQUNyrxJ03Vi2F6Cl3dMOZirwHoPRPR+M0t5UIiyimU0deUvD?=
 =?us-ascii?Q?NPhRc2N93c55hjcFecAIOH/BdxK4gr2TyzBQh2LDKRztk95uvAyoBaZPE37J?=
 =?us-ascii?Q?QeLMOFUM0A8r9PyRLxl0FEJ+JLRam5TkIpaLzDPBx5MWejPFTm3pMWX4JIBZ?=
 =?us-ascii?Q?C5Z1vOwsgkjr1WSo+qD1xCUBFGoV6OoXkAKZ+qCjcncM0EH5dv1mgljCsgvW?=
 =?us-ascii?Q?Y6bm21zl+eigCjAmNMFPl88hcQywgWJf7WJZIOWzoKmTvvSAK5TwBYwy8bT5?=
 =?us-ascii?Q?ZmXcDoOUe3aZ+o1NGmloAQhCftPOQ9Sfl/5WgbkLTIc7zkeSLBSu5w3WtRaA?=
 =?us-ascii?Q?lB3/79Y1a3Cp/iHHp3cDxBL+pBomg+/l1Uy6deTSxzMWJw/O716boV7mQNtH?=
 =?us-ascii?Q?evJm7MLgnYWxG4aLaFJf9QwfSaZ5WeXCWZwmnDZxTquTYuZu/tVoG1dZ1+KE?=
 =?us-ascii?Q?wHicFmEVf6aa7wmk1xio36EaMm99byYT3QKYp1XlEyQ3OweiYjCMKXfAWgtQ?=
 =?us-ascii?Q?3kxgn6FGRFs+Cm7W4zgm6EkKS1CbmGWHqn6RZI/b9qpAeBW36KpnAW+ndUpt?=
 =?us-ascii?Q?+sMGnpaU5s13Ru9j3bBZJ4JnzN2pUi3Ds14y/ex1WhN3rVyKLwNI7LKxgIC3?=
 =?us-ascii?Q?fcsTbDprrdBMyKZqoy4AteqpT4nmBiipvU9ZfMfZU9potnNRVblit3Zd9SvN?=
 =?us-ascii?Q?6BcIE2BXrXGm0RUtcdi6wmxSp5js//RUbUAHmSwXeUT3pUBhb7Mn8jvFX9Fz?=
 =?us-ascii?Q?e6sLAFC+Vn6GUlr+PKjHJPk2ZqLZAybyZf390iie+kMujAIxB+pFMS9K9/k8?=
 =?us-ascii?Q?J7ZdjAYhXDynRbtDBkxRFPT5al264fKy0IwsVMMkjaXJ/KMa4VnOfxTUYCuA?=
 =?us-ascii?Q?nw/GTe8VgR+4ValCU1X/5hKerftEIesW1BlvujeHjqnCDiZSBlF9iKSydNwa?=
 =?us-ascii?Q?GXLB+kq7dqJUn5s8vKp/huJrYHw6kFT1E3zdmSc61PoZblgwJvSiXMUNV4lX?=
 =?us-ascii?Q?TD8XnbrO+eSJfDoin7aqesyRFfp7ETQpxsuClEJtSW4o9afELkhAUqCa3pq6?=
 =?us-ascii?Q?eCaABMwE1OLlwJbGGa+EXMN94zA5bwZsjbOHfvirF85wlAYOAdYZllqax8dI?=
 =?us-ascii?Q?BYBfkAAloZKHJNKzb8sJ5S4FubjxKVgVLWAZ2uuVtB3mwmwPEJ63wDbA14/l?=
 =?us-ascii?Q?SLFjhCwVVeeLuM9rItPdlq7KbvrOD29kHc42FoLbhd2NHspoeRkPbRmwrSt1?=
 =?us-ascii?Q?KUJ9eS+3Uzk4y6hrL5E7oLaM2icEfuU94tSc+kqmbTzq+fRkGzLtm1HUxjR+?=
 =?us-ascii?Q?x3aiMJ3AoqmU1baqCdtB4saKSGZGvVRgZui6C+O+MraqG9xH2Fu/EJwRdxZx?=
 =?us-ascii?Q?1lfJXCVWmbUaWJ526xqGZik44Y2DYq2NtOZIp3wJrxiaIcjX4w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TWwOjewqqLD6C01CuIPs30g8sg/+ViXUMKYnCrZm8BvykQr57Lg9jhbiXqoF?=
 =?us-ascii?Q?3kSE8j9PwnLkGpNeCyc/lpc4tiMPkPuEx5TJBgZjyd8a2UZMTBTBpn39lpE7?=
 =?us-ascii?Q?RUKtcduf3zX+AizpCl0ixsiExmN1aJkcFZBUwyhl0L8QWw1SaoUWPD+0hd1Q?=
 =?us-ascii?Q?at5oVFax2jGK6v6OW1xeoVL7Yhmgj/FkjijWLMofp+ZQ2WIEqBhznNEw5pjk?=
 =?us-ascii?Q?roURWg1OPh721Hit7UjnW6baxT/j7PDBxJRxI0fNXJnrdBRYv1Fn5U9BoYq1?=
 =?us-ascii?Q?TjjD4gS7jm819OF9ApPhrP2aLFfvucdh8bYma/85otbO/7Avu0X/yKolYcht?=
 =?us-ascii?Q?y5lo6plogMIf3bNsEHJ9dGhNMU4A0stvSRKqEH7FrSmYVRkbVZ2zC8TpmHl/?=
 =?us-ascii?Q?yFRYl0NR2kI4NhvGb2LBW9EtlImeTyXmJo6gFZVjib7j+vPhBnkgBH2FXGmC?=
 =?us-ascii?Q?cnu+c1brv1AqMWPTxtXd2tKJXcq+gKyh+pT0c15oRyHRec2rZT+s9DcvChdI?=
 =?us-ascii?Q?RfQOO41HMIy6xiGe4ThH46AElwVoSTty2OvCCvzTwflsQdP3gFa8KWUmvbuK?=
 =?us-ascii?Q?nVy+PAQxdn+zWjpNGtKaWgBpX4sE5WGIv5Xjey2OB+11oF4gZWaEo+tBhlI+?=
 =?us-ascii?Q?X8ciYB0SrGbrrlAcr0xbTERpa1hyOSdyVV40JnHMjK0tgXbGi5Tif8L5DxON?=
 =?us-ascii?Q?dUJErVFv7fZQVfiD63Oc0LIcXXVjSJMxkNvsGVSuNlHlRXyLtJgYNzRSSjGX?=
 =?us-ascii?Q?ChyW2mrwVZ+Hn4vlkvlNtoy1EBpAHCs2tkkiQtgoHNjbYR4r9RT1yowzPXLT?=
 =?us-ascii?Q?PwBn+j2Kr+Quz4jTdOVVEgzB8yxo6VBfQ6ox80WLmLyBq6Y3tRRD9pnTNeWk?=
 =?us-ascii?Q?xKglUuwO10NVNwDMVd9M/qarRvN62890EV6FI+IcuwAruTPRcMDpLaVu49Ob?=
 =?us-ascii?Q?X3DYDvMyN6djY5A/OtKIpht89ksoHzIK9I8fewDIh3THko8EpK9Mdd1P4VCG?=
 =?us-ascii?Q?TWdNwbK9PzrWvwksR0+9rXlrPeMA+f0pQC0n7DpT0O7/XQSEmnx2r/VJ9Kt2?=
 =?us-ascii?Q?q0XzYj13PptTRIs30F8PRojz9tjcplvQxLG9zJPDZ9jKcVJ2RrIKj41XRRNS?=
 =?us-ascii?Q?73bfv+wrcyNQWoptJztufcjPiqHej0js17tlVO89Izvv+dh0yZWrBOAWQ5EF?=
 =?us-ascii?Q?mO4htCFr8O3u0KxzXmGIWYyp4fIwE5QEaOs6dsNuQihb+B8yvZ3Ao9m8LZoa?=
 =?us-ascii?Q?ftfQVSgQjyEheAHNkFexomNNgORkldsUYX/oQmYrEBAFiXAn6KzsOxdvs0in?=
 =?us-ascii?Q?27SzS8P6w6UYmfpFzEV9Jyp3CIxHZn5s8yHd2hJHSEdAWhnieUoV2Kch/HBk?=
 =?us-ascii?Q?mceeaeR1OQSXIxqpAPyFqtqG1Y4pT34HI34dZg7gKBHJlffg3Aly9L7x8x1c?=
 =?us-ascii?Q?WFtdYMtIWJ31uhj9UHOg0tpRir63jE8KQk1IPq+ovJLrQTPhEmR5Vzpi127W?=
 =?us-ascii?Q?k9KZ2/9yLvMqQmcqtYMn/Ae1etWOKq/PppEX7EEjgBlvfW6GJjAg3ieGHI0j?=
 =?us-ascii?Q?oaX/63I/otNFCMg38m/+1Duc3iMj7G5El5LXTUHi0/bA66DMwvx5J1ARwfSD?=
 =?us-ascii?Q?0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16d5e2bb-9170-4258-e123-08dcb062fdd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 06:43:59.0937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VV2TXWdQtoeFKK50U3ZpExntXCi3vNElzPt0jBJYoc0R30avYzu6p/i4VqtjNCbCqqR7b9j3ddaGvL/eP1D+EOifuC9yM6YFey7qI+hcyFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4631
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Monday, July 29, 2024 11:03 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915/bios: remove stale and useless comments
>=20
> The comments do not add any value. Remove.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
LGTM.
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Thanks,
Vandita
>  drivers/gpu/drm/i915/display/intel_bios.c | 8 --------
>  1 file changed, 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index 02443462bec3..460e83f0d5a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1692,14 +1692,6 @@ parse_mipi_config(struct drm_i915_private *i915,
>  	/* Initialize this to undefined indicating no generic MIPI support */
>  	panel->vbt.dsi.panel_id =3D MIPI_DSI_UNDEFINED_PANEL_ID;
>=20
> -	/* Block #40 is already parsed and panel_fixed_mode is
> -	 * stored in i915->lfp_vbt_mode
> -	 * resuse this when needed
> -	 */
> -
> -	/* Parse #52 for panel index used from panel_type already
> -	 * parsed
> -	 */
>  	start =3D bdb_find_section(i915, BDB_MIPI_CONFIG);
>  	if (!start) {
>  		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
> --
> 2.39.2

