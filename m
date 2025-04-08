Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A662A7F8EF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 11:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E89F710E61D;
	Tue,  8 Apr 2025 09:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mYobyTWx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510DB10E61D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Apr 2025 09:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744103100; x=1775639100;
 h=from:to:subject:date:message-id:references:in-reply-to:
 reply-to:content-transfer-encoding:mime-version;
 bh=YajIucBg+Ec6tLvDRc96jket59WL7M8udtb5gXTA3eg=;
 b=mYobyTWxrPQnc9OD5G76Gt7lCOxNkUO3ZGGfiyzZrOBvZJ4yA2tqY5zm
 RjW4R+BYFVtNuhurAeA/Cxq8kQqcpEjVQE2DSPhEIjL8PjcTuSLAeFR/V
 2ZEilG8aRs49EGvl0UmeXhQPWBJteCSkJNwixnVztdWH9bSt7hIY+osmY
 Ad+OSJ72jnhWkdRln2m87UejKP3O+o94KaQwle7GLIHstAB6ElIWR2PbK
 gF7gqZvKO/xobT1OMSRHHYZkDznBUbM7srVw3m2797EZH6PuBZAqIJmAf
 X9WppbljBFLklbQVC/TjvNKK8NWcwT+yNwsOP+XNtSg4bSlQCPNyklrVk Q==;
X-CSE-ConnectionGUID: Eq5q0WiAS4eav79MQLJy2w==
X-CSE-MsgGUID: U50N3M5KRVeMOT1GfX2V8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="55707936"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="55707936"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 02:05:00 -0700
X-CSE-ConnectionGUID: KmvIKXeeShiGa6qr6kkALg==
X-CSE-MsgGUID: t0R+YCAsQCa70gAZLoPlmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="151395554"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 02:04:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 02:04:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 02:04:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 02:04:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SXrRrpk0lwb+L0NNmmilY3ESFbBIaP8TZFkUn3yOOnFC3juvgAFDO0GRVOJqnXKygZstPtkm2RH3NQ6rqUgbEiRhza8AScPvOTBa0v1jqTMg39b+/O7X10hq8aZEC6XM1LEHEssMbD7ZyqvyuYUoopVLZv1eGcveVdBFbaAjvbwhkfN31qrMtyzdjWQlPoilM+BnXRpzvaFnDYyEnFu6BX0+TLqAJm3+KVjJzQaSH89BfI1JuNomWlIJdGUk/eV2oz+QiZOju5AIZgKWKOmwgktml2RmeIaFHTaVSNSUh6dO7fMz60kQS+Um2qAnFjeb7oSLBMXXuGDt7vhNAvJFzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=27Kq8FRvMrCawpeHGhz9GswbM6lmrVoJclunHJ8SQFA=;
 b=tXm9YEL45UnE+/hHz2SNxDWkFjmg07oRpb7UpHrWJVdpGqRUl89h+LWHPG9kdp9I9q7uR3EJxSqpQAJR/MiyyH7ckNghOoXaUbbCeh9DvOexDtJuiJetCzOvS4PH6nmk7xJdy+/rrm0ioQrtx3xAAI1voRFVol+vHTv9LCyy7mbeoHqzTr18VBt8G5a4G1Muz4Y+yN6CTn/hm0zWN8cAJCkElC1smQSWNp0NQ5BpcSILLsM2o5oSLu1QtkkT8m3gmpNXaeS6rnIxzpJMQ3nAlI/wfIKicvJLFLZu4sZ/jTmHy9TxOud7jX4PzVX3cKVdEF/DBoDFeCwEqzbQWkip7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by MW4PR11MB8266.namprd11.prod.outlook.com (2603:10b6:303:1e3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.28; Tue, 8 Apr
 2025 09:04:55 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::a97:3283:cf7:d746%3]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 09:04:55 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 0/2] drm/i915/dsi: couple of fixing
Thread-Topic: [PATCH 0/2] drm/i915/dsi: couple of fixing
Thread-Index: AQHbpJL5BG7Tw3L5Gkq1hkNRjCq+ALOZfnmQ
Date: Tue, 8 Apr 2025 09:04:55 +0000
Message-ID: <SJ0PR11MB58940EE32DA88AFBB2D8EE49F1B52@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <cover.1743682608.git.jani.nikula@intel.com>
In-Reply-To: <cover.1743682608.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|MW4PR11MB8266:EE_
x-ms-office365-filtering-correlation-id: e8664051-0cc9-465b-8995-08dd767c6e5e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?olxc9R3ZsHfwQ5kAEvcdyd2daXR+embFqtFTZD2r9iuBVEbkdg8sZG21XzNu?=
 =?us-ascii?Q?ykU1lAo43nZUk+br8pEcCSPUYfs3XjQ7xrf/JAfTPdLQpRvyKk/c8/kMweEQ?=
 =?us-ascii?Q?YO5UhjFxwt12tiQqprivULEkf3zSX8yWBXULNngvP2TI/NIVQNYwtbxglCaF?=
 =?us-ascii?Q?y9yAp/lJZIm4H9FAMy8/t49T6xwQNhGuQk/qFM6BkXzmNuBT36PCG/f6VwYS?=
 =?us-ascii?Q?AbyYOo8E6U/uMSeCwhdt0HVnDFSOVP+FlY/egEDey7kVG9cpP3aIgza1jJdf?=
 =?us-ascii?Q?5tR6XfsjniL03b+eXSY0pYaLVgdtG9+fx+KHfJhtPUDqSmMjQNnSYCcgwn7q?=
 =?us-ascii?Q?R+9fFLrVWpeoZZi5fHJgqiXmRAtWN4idwTqHi+xiU+5XJO6DV8CjqStNq5Dj?=
 =?us-ascii?Q?9QoZFL8im8mQxnCBwx+UxNCyOTN8J515vMUVU4sktr0S2cINBulsiTdN+zea?=
 =?us-ascii?Q?nrjV7ekInPMDc5SCVKkikOGXs3DkFg940edxysWFMbATSQPILTrFKcCBqmPJ?=
 =?us-ascii?Q?FJtEG26e/cvT7PMWH8pDFlZSSU9TQVWTYNumja7gRblhruanYq2V5b8C/eTO?=
 =?us-ascii?Q?H6zr0wEIEvLXWhGFmH2krFcz7GYRVreQdb/Wg3XsIPSvtZB4ZUVfInQp0uPN?=
 =?us-ascii?Q?NOmiGh+oMmsTn6db+I2Db5yRB1G1NHge6wCbx7PKTyxcqb9hvVS0MGfs77wr?=
 =?us-ascii?Q?vsonQp3al3xWDsX393pDUNaNkW2SKsPWM36y/r+vvyjY1UgCVuRnKR3JZTuc?=
 =?us-ascii?Q?2TFj34irRLZ0g4Q1JjQIiXatfWTGhjITrdyf/JujusXdRkoGMtxbjjcXg509?=
 =?us-ascii?Q?N/V3yzrrClfBGW8cZJNQQj+DE4Snfp6mFEmk5CumQ+RG4dPcQZOXll9jHVLB?=
 =?us-ascii?Q?OeDDpPZNhA6hwExNApH+T4ItwtM5PfzpW8SvdV+eRysrYn2w8O9zjJ/KuClx?=
 =?us-ascii?Q?Biju1NT1fxClubFAAKGIggpGBtuVQE13tJGPKOIcJ4qMyOOVMJJq5iofrZNE?=
 =?us-ascii?Q?AvIISdFTmgs2UN6Qoq98Z1JPqGiQ/pEVOY13Gf2xw248MASy93iOG1BRKAYX?=
 =?us-ascii?Q?o1b7KMQyZD9Z0kf7GqmFKrz8O+Owm+f+d+ERd1U0O2i6UrWCTB9oC1DVsXAN?=
 =?us-ascii?Q?U5dDn8SipU5VhucJwNBwRezURaIWZHuX1mwuAg7hM3DZKSzJ/0dUMF2L4Ctc?=
 =?us-ascii?Q?98Xg2nBzDmypspMjMFW7CcuTK3Q8CIYDwzvCo9Cs6MB0Zec7NINM7HKHuyYp?=
 =?us-ascii?Q?wXM8M6aPDNbe72H6g3/mRfiKPlvq5yPlaS53ng99VYj71ibGkyQT7EXUB809?=
 =?us-ascii?Q?Jji0sC+Ee11RiSbnClvNIUT6bZ7rmR113dPq23L6ECZjQm7sl5ABHjYdTS20?=
 =?us-ascii?Q?j1f8VWkLweCBoKG8bMOCffDzZR+QXLWi3jPpo4BVqby6yJOsRX+a8E6CJM8l?=
 =?us-ascii?Q?vvRMVKu5t/x9MUZNRKsdQ2ZFdnAh04Ma?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aKiUCAG7pYEsCNT5JnS8WEY4hJJwghvqVyECwWy2g588jb9ihsUTNLLh+DGJ?=
 =?us-ascii?Q?qx/7r8EB6rbnYNpEAzEXMyQuBoW0uEkSPPhSyMuAKqrL57ko3IfPsuGUp1lX?=
 =?us-ascii?Q?8L0hIRRXQwkw4FOZxfxm6TI/Ba9WAS4Eb1H2m80rExHHO2TfClGzcfYsA4cn?=
 =?us-ascii?Q?5Xgboen7Mah6bCMJ/XLB7LiE/sQmrmocZTipllIgON1PQ1p1w62IY66KDscE?=
 =?us-ascii?Q?VWueOYaW3YG+CJ+PUq8ilGN4W259cfgbe+SXOT6QPATXNGa+WRCUsYpPJ9Js?=
 =?us-ascii?Q?N70byH7rhaHpU5mQexqzlmO0Cn59TvJ3Ph8Vx5b5nHESr32bidjMcqQUE54h?=
 =?us-ascii?Q?rwPUEEGnbgSSkn5PRuWIIhPhpSc0P5/Oo39LKpvyvhOkJHwV6g4lOcm9v4yb?=
 =?us-ascii?Q?TZXphyg7/h8x5IMZ7BEMzhwYHwr3I9hCMW6QleiSRrnltBU7ONJ+fNLF4Qbr?=
 =?us-ascii?Q?XrcBkLuRQLyWwQROkbnOVB5iVDcc9e+yNWxxviA+4GOYc3M55tKx3dOtDlE/?=
 =?us-ascii?Q?j02B//znXJqK0SQf8K0yDfzUYD9hT9bp/Yj4kqIrUYMDalggKelnXaCeWJSn?=
 =?us-ascii?Q?AwaNlbE2HoY+Hk6dOBWg13HVHhwA1TMhiCrcHuC3vQTxxieqSfN+zDI2mbbf?=
 =?us-ascii?Q?fefzh0DLHgtLDj1HTnl+Y60AsWvgkKbvwH7c7WwYOFpTjf+IOWJEYhkmD/Jo?=
 =?us-ascii?Q?k8Z1wgDI85Cy/x9h0ov5PdNsKX0BuiYNQ7Iadb1L3yvTJda9MmL9xuQtVkDv?=
 =?us-ascii?Q?jUkUTFwjTamNrWBnkjOCUI3ojUYUEeCOX6cvm9R5rVG92Lgt9tNh0VgbNI4v?=
 =?us-ascii?Q?nrEkB1lg+9i0/NdjslI84aYMfGMC7YNLwR4MOhzZfX05UPUQDuPRf07DJS2H?=
 =?us-ascii?Q?fJ/Nx1Io7Fcqjn+V27YhLJsxrobUQ9ZW+2WnWARJj7yzs+G/1KGKC2dPPpXH?=
 =?us-ascii?Q?tiLeVYhi2gtIfwWv5sdixP/jQZ8BYJG+jjIhDNwqN6eEXnrVWcvmlPFp9cwS?=
 =?us-ascii?Q?Kvp6mfkf9Xhl8mHVTdINPjdgcwD4KH+OqZ4Mf9zI4K8FO7TvyCSOndVR1tmN?=
 =?us-ascii?Q?S2bioxFgjybWjtOAL7muCEuA3SUplVhnGvcofiDDkoouoUG5ay4WpwlRjNEA?=
 =?us-ascii?Q?g/5guVRCR9G+/ejZYvQ5FDiMRv77m4emRFqAo16BPW2GoUNgDtQ9La0slIIw?=
 =?us-ascii?Q?CEzerw6k09+75pTrjmsrKMsnD6IsH1lY1BtCnyNm/rznAVtYmFjN4z66XyVM?=
 =?us-ascii?Q?O+5zL1VCUVmnicj+6M2vu6s6hRZnhhssRneGkonNaN6q99RTjD+ksbdogMfn?=
 =?us-ascii?Q?qeNFLf4mPnWDVuALKCqkT051a8D260aZhfP3m8Q5IohUxhA/U64EmzxtpL1I?=
 =?us-ascii?Q?12C7seU6JCjXkNCNNP44oMc9EWuldbqrClmrcGOhsnxVcdqRHiwtTctyNqzb?=
 =?us-ascii?Q?0C5xrt+n0v4ygUD5gybbEBWCZn1l51QEAKPYOkQ0mWWEWvB97LKFvPzrexP1?=
 =?us-ascii?Q?IJ2/jkLIf8dHEqSDyLSfHbu2VLP/BScGRqyGo7YrgJ84MRcNH8KKoYM2fGrE?=
 =?us-ascii?Q?k9UmpdFx+oRVXirHyK3NOGsUpLBZSyhsjtNGp9i+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8664051-0cc9-465b-8995-08dd767c6e5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 09:04:55.6006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QMQQYaKbcBJ/+w/vyvHAELpLl8gSLkTWRVuVJua4+2oh7SUbnXIukXCfvDfmWn3nj+6NdNgKMWZbjzkmvgKhKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8266
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
Reply-To: "cover.1743682608.git.jani.nikula@intel.com"
 <cover.1743682608.git.jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani

Both patches look good to me after reviewing and testing the
two patches with the hardware. The MIPI DSI panel is working
with the patches. In the test, both clock and data timing have
no change before and after patch.

Please let me know if you have any questions.


Regards
William

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, April 3, 2025 8:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Tseng, William
> <william.tseng@intel.com>
> Subject: [PATCH 0/2] drm/i915/dsi: couple of fixing
>=20
> When I was reviewing [1] these oddities caught my eye.
>=20
> BR,
> Jani.
>=20
> [1] https://lore.kernel.org/r/20250311100626.533888-1-
> william.tseng@intel.com
>=20
> Cc: William Tseng <william.tseng@intel.com>
>=20
> Jani Nikula (2):
>   drm/i915/dsi: separate clock and data lane prepare timing
>   drm/i915/dsi: unify naming and simplify checks for dphy params
>=20
>  drivers/gpu/drm/i915/display/icl_dsi.c | 90 ++++++++------------------
>  1 file changed, 26 insertions(+), 64 deletions(-)
>=20
> --
> 2.39.5

