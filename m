Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC8FC6735D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD8D10E1AD;
	Tue, 18 Nov 2025 04:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lofNGwTt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B863410E1AD;
 Tue, 18 Nov 2025 04:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763438633; x=1794974633;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KvUsz98t39Sqm8WvTaURISExeWc5PGsODalptjGLNX0=;
 b=lofNGwTtmbICcHwblvjL7WjWUTNdOdrFDGteSeWSSviD8dJYzAgpZP5q
 /O3mZJfWiC0hNW3fuQvfJ/Mlm6I++2GJaj/Bg5xR9WCztXF8bkZ8P/HSN
 LTyVyVoE5KhxmuPEPVjbK5Sz4Oynp08yIntp1QBm9gxR5GJjbRGEwyx2y
 yDjAhOY8BqtMR7ltoaS2ivXSvii7mJa0mfub998T3MopwIWYzLlwGu9mw
 OmCO/u4Ipz6nPrG883Rja5YUxK/QmTyWMM7scO4TuL6dH/DEZNM+AucJd
 H8pdgkxwiXJyOK2/96YXpIn0Ni1+ZTLALaAA3vB+/Oyi+fphJsCMG8Ejz w==;
X-CSE-ConnectionGUID: HE7Q40laR7W67wioa1ptyQ==
X-CSE-MsgGUID: ymV4qfi0TPWgBzn3nfeCUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="83079234"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="83079234"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:03:52 -0800
X-CSE-ConnectionGUID: nO5KWFa2QDatI7tsknxQxw==
X-CSE-MsgGUID: FMFv/D4ZSzuNOrqn6ErsSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="190875142"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:03:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:03:51 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:03:51 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:03:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yrz8q9VLRWHxJoLhfdj+I9alBTPTcsamGBU0c6WlF6CxPTNxN34D8lK2gM9Z3bcOX4Fof2gbjFb4OqOgI+t2/p6vj6L6S1dKdbnNRDtgDgm6doQtMiNh/ZsafYESUBt8R6a4DulGGBj9ZNNH9Iec6aNYMVhRscq/85K9xvmkhAmdS+y0z+vwiLOA1d6EMkvSuumTGP7/JgJKCTnvOKUdwzBNQeD4JLRHl6AH0jcawCYAbuuzmizI9U/+YrTb3+R0eL0WPKrJvMGJrChU8FxZJenJZxFEgcPxni6s3XTI2PnYnAa+PisL/+GbWavaa4I97w9S3Z5r/GN6Lb9dPSZFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hu1+hX5B83IaWQ2we+lAr99ArL7Ckc5J7YPvgGKjMKk=;
 b=I3pLFNjPqdLofq1GqPDDrbZwSgUwUNdupxm1ihi2HHrFxh7ObZ+Bv7nQcpZOp+YECUdJ7cLQDPO9JC17AxKJ1fryiTO3M5hOrkOliCVDRiukz1zm/u569boGLx8S4sA7RF11e4IF6xcqtblohWRwdVw3str0pjylZ3u2lnAh8/XxZns2h3DgBBQ0cE0Ni+CfDAl8ODH8mQxjUM7IxJyTOwFsyXCoXEKLHwRJbIlOStdkqW/8z+tmljkxAnhwW/2aEeqHiT+7YlzX/0EgKsMWzwg5g0wne9S30qjl1FyTrRrxANO3hE0Fn/JTMCVXcgANgQwgCouK1N9Id792hdVKJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7135.namprd11.prod.outlook.com
 (2603:10b6:930:61::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 04:03:49 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:03:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 18/32] drm/i915/cx0: Compute plls for MTL+ platform
Thread-Topic: [PATCH v2 18/32] drm/i915/cx0: Compute plls for MTL+ platform
Thread-Index: AQHcV7FGPnKTWDx7P0OKqOAQH/LevrT30SCA
Date: Tue, 18 Nov 2025 04:03:48 +0000
Message-ID: <DM3PPF208195D8DAA31D78D2F2BF45AE496E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-19-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-19-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7135:EE_
x-ms-office365-filtering-correlation-id: 8699c17c-ba42-455f-e4d6-08de26577a2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?vfsuYxXjJ+f+yt86oEojTcSxioJpRHGyPwdJnvu0LxnuBYFFQEEToRbS/8D/?=
 =?us-ascii?Q?sVc65mnoD6On2fNuWXgPkbD+e9SrDHjHvr4N6bNHDKHsoaEHR5ygTRFQcT2R?=
 =?us-ascii?Q?fl7sn2LlLdsf4bmfEhGu8oE7hV9HxsFrgbK5Hu4DCwckLL4akah2eUb/IiY5?=
 =?us-ascii?Q?A7yaucCOrh9iGyKMpaobN6AoOcgxSIUvwPVtcaKXWIiXi6S4HoZnTNdfJr0P?=
 =?us-ascii?Q?ARDxECrw0PBtuz8tRA74LgGa89H+7q0D+f+r1j8hkgur+YnPGb7WWaKUd+Ez?=
 =?us-ascii?Q?5AUWshvjUlFveGP7G8AbonsCM0rsPAkxFkCmLFWDr2VCsgh9pgU7WgrFI53A?=
 =?us-ascii?Q?JJrscZhKf8qztfBTKDmcMWiEToLIwzRPZPrfDMufvuecIzT9W3VwyoHMp0Zk?=
 =?us-ascii?Q?abFpbP8tVIjwf9qkRYYHXHDegVXTg5/7VyaH9zLJzyFsRqza3xqVRHXUJX93?=
 =?us-ascii?Q?AMIunit3C7+KuU2JvPpHc28GykUfVR7yYhwwGO79M2nJ7HwE+KbVB9OQmhaW?=
 =?us-ascii?Q?4AdfSbja69dVw1/dImY5+0putak8/Af0bZ4QR+hMH0BmVzEAu5GmkiT4bdFD?=
 =?us-ascii?Q?DR/0po1236SM9NLEQ4AHuyzYDNFykLju0YNLiY7mIBzJ8wpYXnMU7IdG+o+N?=
 =?us-ascii?Q?PTuKpDSlNXDy2nwI9E5uZn7Dc9IHp0S2+OAsckSnBWsbQXng2UbhnMEWT69X?=
 =?us-ascii?Q?86VS+U8KiBdsOs3pxhDXT1HZw84M7qXUcL/I0Fqon9GuUQigK2KomgqVAfPc?=
 =?us-ascii?Q?U0Q38zk7uNqmGz2M+IgvrkLm3Azn+6OIflie7+AOjtepMQ4oH5cWZ+bxq21E?=
 =?us-ascii?Q?19UXzawnRzasGo6eUsclb5kD5sSMiCKrN9+u71ZVO+bRuMGJad2ZlFNxGe/i?=
 =?us-ascii?Q?vlaT3KAgSvKLkqRcHjNZrLrIYAeE5f1P1/qk2JNp5Y9jyL7dpsrxJtE2foCW?=
 =?us-ascii?Q?MK7o2ADvP72G07XdF8aVbP1pktu5goaocQcf1CkVRpvtSsQLOIWRIhY/dEJI?=
 =?us-ascii?Q?f9gF1QG5i1O9W7qrWDtN+7TWE7VL6XAtXwdE5Kiyx7EkAJ4UAaeH9ZlV4ZX3?=
 =?us-ascii?Q?iF7Z2eFfzu0nuK6Dh6e0PPQSjIpE845G9VuvFyFpPMTem4eSx3bblCaxbrG5?=
 =?us-ascii?Q?qqvWA2a3u7hUo3cj4hk3evc/byQcW+9NCPLvas7Q1SUgg6hNnx0bwxjJnHmT?=
 =?us-ascii?Q?I1mQ3HRUpwPiWDoEqqeMpufHxGRgDpihNLknIEaF+jSo2XYLf/zCY/fJEN7h?=
 =?us-ascii?Q?0tqj8No/fAixyUVwDZ+j8Z35BSiazxUBiW4tBKJAldCLEx3Njsk2SkIniBtr?=
 =?us-ascii?Q?9DCeCoZ4gCjXCbn0BCmtUH6ye+N9MPRfWOYUbF69Tev4CXuIZPlmb2dsBi/R?=
 =?us-ascii?Q?9wKGzTGXOtFr9xBiiIwEDe0PaWiUwqSds6zzC7NieEWSkzDSOm/RA/YCS+Wo?=
 =?us-ascii?Q?fkZJvlfzj4a2z7Lymny9CWbI8zeYWXwT3tRpVnsMc2jPsiLe8EDYFsDSfrs9?=
 =?us-ascii?Q?OOo4DTwY5ZeqdhRz/2fqqJaHlErdtJ2EkQdN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GK7r136H0pP9gyTUT1JqfxvWsYUk+KLg4D+Nm0ma17bzeuSs//JlKW9gvMHz?=
 =?us-ascii?Q?lZgS5eL82QklWkSPxQ93Wz6+I/5tk87uDHiDYv2JQ3XlQo3v6Q+lDUMOU/7i?=
 =?us-ascii?Q?qN+fzKEF8hO5tVz0rdsXT7yj1xzgPwFd7meYXj74MgUAPRolE2WtV7ujCcYk?=
 =?us-ascii?Q?8DeEXJprc1XXiBIpkYpe1c3ZBjAQxpK2GxxTlA/ArVAa42/aTHplCznkXemp?=
 =?us-ascii?Q?d5Sj5lhE8nYwixP921bYm23dZ+3YpemXQKntVu7U1d6Z2O7yq55aeTB0gM5s?=
 =?us-ascii?Q?HryRXNK/tWP2grCYm8GsRniTTv9OEgnqcQyzguF87yFyiiMwwfT0ctLf6Nae?=
 =?us-ascii?Q?ZXBbyQJcl6ASqaY+Vr6YlR/qmLda0ziXmz/hmDBSQGvs0elmGOUDq9cCUQuz?=
 =?us-ascii?Q?MwwZyifdI6AMQbZOUlyGKWlSPiuQbbzFEjGgHNz1NmU7Yv4mZZcCw8TM4COa?=
 =?us-ascii?Q?uIIoNKmG1/+qFUYVJyBWpU+k3u68vfGF4CR9VfXMvyV61YhCXgrRRgPQ7YLh?=
 =?us-ascii?Q?aZPE30yEYBtEDcSH5Ji2a7Iym5urKAovuh03iIeksD6iVuRGKdzitcxYjcq6?=
 =?us-ascii?Q?/Jy/8pcvkofh514+Tnw2RTnI68M0GOhVEAys95evlnDqkh0AarIhfZRXwBab?=
 =?us-ascii?Q?dEcwjfyfqTsXSjz/Gxv7Qvw2yblq29qZL6QlrjVsRsF4yniKIGTZC1P0XMUc?=
 =?us-ascii?Q?hE1CVLDJSNgRGokkwT/TSb6E9+shO5CdvqjneZlbtPEga5V9FxRSB6Ud1TE3?=
 =?us-ascii?Q?wDBS+XhantvqEQmlPU9qiMQCl3Uv07JVH8ili77QPbK+TLOBAgIiY2W2ZvUs?=
 =?us-ascii?Q?Pqe3drd50HpGrjXGoix4WRn72xAEt6XMsA8ebhDcV5KwLWwFTDp/V5MNRMr8?=
 =?us-ascii?Q?mFWtDnq/9fLYn1an2bs8EG00hg/L0EsC9UGoTnvQTkjvlCfAcZzZxp6tZmQ4?=
 =?us-ascii?Q?ZZLsYILla2yVhIH2w5gWOZoC311t8/8aifwO2qjRe2ldO7zbQ6j31veplr68?=
 =?us-ascii?Q?O029IomtGMl1u9VP4GCGeBfMSgxPfgek5DB5ZuF5q0Ey+5KQ8XA/sx37hajY?=
 =?us-ascii?Q?JYRSDLOryNVCfv7U7+zfyp1xSirKKwnYkV+4qaGLfSMF6tOCu0uA0M/6nKix?=
 =?us-ascii?Q?12IvefqWrLaV8m8W0lCXd5kseN1le4NqEde87Lx2WkR3pc7oUBT9KEM0wVXJ?=
 =?us-ascii?Q?gPxFCAONwVb44nco9MS86DX/+IRC0ssOb2q5gXduS3EHSrLXQArGy6x6zVmO?=
 =?us-ascii?Q?JcYltA+aUTOsa+y/LboNJweihHa7hX93XjGsowIUyDs39geFjTkFhjcoRAFN?=
 =?us-ascii?Q?ousR5pi1GotELEqLut+haeAzdIXicXKhozVU4rBqORgI6Ok3jKVfiSfoye0l?=
 =?us-ascii?Q?01hnZRkiaCySH6ufqAHpXhCXU8GtDrYXf9KuP95x3XzBco4Ol7MNPYFPfBND?=
 =?us-ascii?Q?D03KYKDOtRbeaz6LasWF7lzTfeh2SYs0JdNIBFs06QOq4XzSKoJbz5JLsMjE?=
 =?us-ascii?Q?dmaILXzCHQnt1Hf2UWA5ZdbMFz/emUHQ+r48NaFEQO4+p23Fj2p3pXdaGc1q?=
 =?us-ascii?Q?5PE+ucmLDLspZV5peAlZgYMsbl0vTocD+pOUKFBO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8699c17c-ba42-455f-e4d6-08de26577a2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:03:48.6733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lDhdEZH09h7MdnJFFKWgCslKQWSq75VsGVQOPyyB/z5PkhTwhAbxfcmk2vOw3jezdRBSIWYS0HthNc6HfDpl6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

> Subject: [PATCH v2 18/32] drm/i915/cx0: Compute plls for MTL+ platform
>=20
> To bring MTL+ platform aligned call and calculate PLL state from dpll fra=
mework.
>=20
> v2: Rename mtl_compute_c10phy_dpll() to mtl_compute_non_tc_phy_dpll().
>     The state is computed either for a C10 or on the PTL port B eDP on
>     TypeC PHY case for a C20 PHY PLL. Hence refer to this case as
>     "non_tc_phy" instead of "c10phy".
>=20
>     Rename mtl_compute_c20phy_dplls() to mtl_compute_tc_phy_dplls() for
>     symmetry with mtl_compute_non_tc_phy_dpll().
> v3: Reword commit message (Suraj)
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 23f22c495ec7..20f940110faa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4319,9 +4319,78 @@ static const struct dpll_info mtl_plls[] =3D {
>  	{}
>  };
>=20
> +/*
> + * Compute the state for either a C10 PHY PLL, or in the case of the
> +PTL port B,
> + * eDP on TypeC PHY case for a C20 PHY PLL.

I think you missed to change this to eDP over TypeC

Regards,
Suraj Kandpal

> + */
> +static int mtl_compute_non_tc_phy_dpll(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc,
> +				       struct intel_encoder *encoder) {
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	int ret;
> +
> +	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_sta=
te);
> +	if (ret)
> +		return ret;
> +
> +	/* this is mainly for the fastset check */
> +	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +
> +	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> +							      &port_dpll-
> >hw_state.cx0pll);
> +
> +	return 0;
> +}
> +
> +static int mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc,
> +				    struct intel_encoder *encoder)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll;
> +	int ret;
> +
> +	/* TODO: Add state calculation for TBT PLL */
> +
> +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> +	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_sta=
te);
> +	if (ret)
> +		return ret;
> +
> +	/* this is mainly for the fastset check */
> +	if (old_crtc_state->intel_dpll &&
> +	    old_crtc_state->intel_dpll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
> +		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +	else
> +		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
> +
> +	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> +							      &port_dpll-
> >hw_state.cx0pll);
> +
> +	return 0;
> +}
> +
> +static int mtl_compute_dplls(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc,
> +			     struct intel_encoder *encoder)
> +{
> +	if (intel_encoder_is_tc(encoder))
> +		return mtl_compute_tc_phy_dplls(state, crtc, encoder);
> +	else
> +		return mtl_compute_non_tc_phy_dpll(state, crtc, encoder); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
> +	.compute_dplls =3D mtl_compute_dplls,
>  };
>=20
>  /**
> --
> 2.34.1

