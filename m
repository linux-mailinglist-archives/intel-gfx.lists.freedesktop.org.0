Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0D7759D1E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 20:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52EF910E116;
	Wed, 19 Jul 2023 18:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A655510E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 18:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689790396; x=1721326396;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xHrThtT85k6Pj4es2YaNlvbHleTYxzfOQdBpQuK2r+Y=;
 b=RIn/ywQJdSIRn9nkdqOJQKUyvVOvpZwy64QjYnibO42FOAAB5Ia4S7NG
 VwT0T5ZRzcoIX/kqn878+uIInzFuPo1A+97/bRg79z7L/MKDk6GrdVxbE
 Yp/D/ukZIoHd3IBk2RXL1DYpmEU/aPBYPXQCcQWTkU3WGs0gTh+0LpIPW
 QcW3v5iJzrKyu9uWC8MpqzPJD3lk6UJUybKyDqAVK1EKlfctUke70S2eu
 wY4tMdeSHdVT5yWoT3rakonTgf1n9IaYqfQBD3alBCG4cCc3laBtmx3K9
 fJjKs4HL3mH6aKzWYLgrWbWs+JJext8ZPjZQUuZHMzHcyCQg9/+jnIqq+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="432728110"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="432728110"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 11:13:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="867568837"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2023 11:13:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 11:13:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 11:13:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 11:13:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 11:13:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mGg7RTk2iyDZ87k0D2czI2gOYfceIhH5OdjBqwSWh/PWA+fXB8FlLf40JBgnuidXt5CHV2jo/6rAS0bui8u/HSYB8RZitgK4RPBuTJtY/hT/4fTETW6RzKEbyKgsXRYzYYnfF/3igxgOMzcFt+T6WhSiftyaMyVVdgH9+HBKYJSyjYV79nlFCI8l5dxwEhMplQ/WWX0FrIXkv1xF/SihsbFn9LMccZSB0Aq32FOxo8Ph191dq/EsWUChtC0hC8Thk7PzqI93nksry5113+VmNC7gBugB4wVuJQDPUrJHDNonR4bv7u1WZZkjDUy8FbosyaJx5A4qZ6fSBBbmhAVXpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7e09ep6zQ5vHTlrH5THu4nVxIjug5r9qpwsm3dPUi5s=;
 b=Z6H8MX5tDRkX7FXn6zuCXRSR5ZEfkQMHgTfu4f9IAXv46y2uAwEPg/YV3B2H1x/ulkGBIdj+l8GZIYWKea1nYmMPK86nW3fpOhOPVEmo6fmsbxJxsMIGm514zQAGdkDGsHBSVD5JZ/jvZ80E8cAYW/mgQdgLCQogiNVdZz9ocGzVxwBt0ycT/iGWzyO72WQpzbqpr9iQHREJiZ62qsd/cpnnYxs9tJkzpt8o5JXr0/ixRmUObYQ4/jNAeJ5CrdRp+t+5PIbU30l2DacpEAG+tPv3ITKcYDOrlxyP3QOEH7chTJQuuWQ5N0Tmyk/w5jHCPwr1msYGoUozdrKSnM0+TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6030.namprd11.prod.outlook.com (2603:10b6:510:1d1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Wed, 19 Jul
 2023 18:13:10 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::c8a4:674d:d74a:3502]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::c8a4:674d:d74a:3502%4]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 18:13:09 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/8] drm/i915/mtl: Eliminate subplatforms
Thread-Index: AQHZumusJqsOOPy76UuBVcx1lS06xq/BZF1w
Date: Wed, 19 Jul 2023 18:13:09 +0000
Message-ID: <IA1PR11MB646729E356EDFB381EB95A3AE339A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-16-matthew.d.roper@intel.com>
In-Reply-To: <20230718222753.1075713-16-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6030:EE_
x-ms-office365-filtering-correlation-id: 585d0b30-982b-4351-8379-08db8883cf11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PMof4Y09qKKuZHdP0Ta5icc2fxFMLlG9+u8R79aLsqqyGeZBvh3d/uSUfGZe88IVzzWb2vpFUOxadfUJChaDYX7zWVMRxKKzSDRxqMg6RSt+wqkjQUj7wNKwXtWsVOl8HNj2fi5rh1pQo26VUYF1Ka0LhhcubjrUzZyOvDGKOztvjsFwt0Jo7pi76cgxBr3rIhJTZPdzDBkiWUMupT1f2I765EhxpTk0w7yKGcTphD9fp51C0iz5aw+YMtC60NA5wcBH4vF8M/pHkvmqitSP/xzAblmfmd1BP0BLdTUZmJOuPvM5KrZuLChf2tvUUdlc+zFgShICmcO0QnOtvlHN90ViK1m1oxmlbqTM4wOdo5fdpPP2CKS4dsBRXnbb0U9rF2B8q8weMGExAYgP9H6VKmPke1o7BdeDgbxVhJwGAGxLvlbuxxxCa0d7XuzaHuM5+hRiDB0SHPU6M/QsRYug2QWlc+bmO8PYbRBLOb7KTxTQ5jlrBH8/pdWHx7ffeHM6OpisApREcFhoIaOVSTPx3xuwL5Ad8pPCe5rCtgqMfHYrv794gd/JDTQsYn5VzWXQ7UYyb1RtNzvhH09CcjZQBJuvwRhOjyH+Wq+hgDlqiIjxop+Yzb0zly5eJR4nqV+P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(376002)(346002)(39860400002)(451199021)(7696005)(41300700001)(66446008)(8676002)(66476007)(66946007)(8936002)(66556008)(2906002)(76116006)(122000001)(86362001)(52536014)(316002)(64756008)(5660300002)(9686003)(38100700002)(186003)(26005)(83380400001)(71200400001)(82960400001)(53546011)(33656002)(6506007)(38070700005)(55016003)(55236004)(110136005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cXjymSkv+WyC8YOpOxJsWouuXSudKoulFghYZNxPE5fRt7jXbVBsES6O+a4Y?=
 =?us-ascii?Q?RD4JdA4T60BHYXYJ+Zghhc0Tg299iWu6+0AW5hdm897vl2WBKDm/0gVDPCQT?=
 =?us-ascii?Q?wSSc5I81L5ITjm+At9H0KST6C36m/43xZ35wYytbnlX0ycvrCz9hmkpg4Zsv?=
 =?us-ascii?Q?QM7Lic/wE8+mGLS44uznji5SevTyDBwHOi0bhjSEe+K5MvpwmCdIrqrGjZ+Y?=
 =?us-ascii?Q?fM505t6Xr4fn1y69IzancwTv70oWt46CryIHPd/TyVsDBcOGVgme3EXEYdkk?=
 =?us-ascii?Q?mVqcK22ksLJxX50C8NohJG5mAHJGORBTZRuvH+SAGfxa7mLGXP0j8oEFL2aB?=
 =?us-ascii?Q?5RqninvGtY0iZPNvNr6FANY54klv7lTtU22KQMnPPFHmuz4zKowYhBte36Dw?=
 =?us-ascii?Q?fflKSKaF7gmKL5marCrEj/QqOVnn+pNnYPUHmsb6WBef3T8lWj3ZKM1DuvAy?=
 =?us-ascii?Q?0HGBxTZYKYtc6ryrN7JwWiXWzfVjvgm4wXu7/TZW4sX0WRw8cxQwQ98WfKom?=
 =?us-ascii?Q?K6Px1DZxz3TF4ovLrewZti/jupSE/LDYTn23f6jgZJuHxKdG7rFwXZKWstsT?=
 =?us-ascii?Q?rK1oWuq/+kO4yd9MKO6p+FeW8aOsaNpjmES0/tYRy+FIEzamsohlegNGbXUD?=
 =?us-ascii?Q?sX+BzU9dJKWC7AM3wUZg2JCJiPFSp/x5F8enGAdoRM5TE+4uf+SvcDpV6cAv?=
 =?us-ascii?Q?q65IOqU5fXgPZZ0/K0IPtZ8xMdlVn2RI7cVbHSj28VEIiJskfQOYYJ/DehQt?=
 =?us-ascii?Q?M0DF/0N7F3YBuQNBUhE6aAgaupEt0WCjlxSgzLRW3ag3q6NO+l6bkXSrRH7d?=
 =?us-ascii?Q?0wNMHSXTp7RCtKA11HcicNwNrF6wXcbRzxJzkzPp6zkV/1IrEiicvSE+EGfb?=
 =?us-ascii?Q?DATa6PaLATT2ScJf+hT2MzLy9VxwIhKxODcFrsLvnoDz12SztboRtCYew1cY?=
 =?us-ascii?Q?kebx9CX9VQoH1/W9jd/UUniL6mBxcheES9lKY8h3sxiXPT895cXwb/+531U+?=
 =?us-ascii?Q?FuYu9e3u6JZq/fP9guB5QqZnQsDLyjRbdThuSL1e7TpgcdOAC6yGGw1LVhOO?=
 =?us-ascii?Q?q4jIsTMJGetDiVtYGtHhoMzTIXH5j75sriq5sMCW2OHArWQd2A3WDHL4N7k4?=
 =?us-ascii?Q?ymssf75JUivD/ta0wV9Q0VOj5cEj1+2Po2slc95i6xt6mHtOmrRHCcQNCc9M?=
 =?us-ascii?Q?jKZ5oR4lC1dBdQxO1tc4ZQEUsCDg8nbluecKA1K7SKrC54juejwRGsDyqL9j?=
 =?us-ascii?Q?EorC8Yp/Y3C7XOdaAq6XCpRTZIqecMCWwCtT+PbdaaKZ7yPbV7RvkGZOq7Sh?=
 =?us-ascii?Q?aOlUvnbp0/dIiV3uux61/BEJXAAnmweHGXHt5B5rsLKsmy6qz1P8fc9V8Qia?=
 =?us-ascii?Q?BhzB9DWSOo4IiupgGQ08XNTXOIUT3Rtx6YgaWuHr0KXxENyaUe2ovOfkfFKe?=
 =?us-ascii?Q?RK5XJgqPPLa36mW2TxBmLvZ/dF6P+VTd84j0aPlr7aDy6h0k4EfW5Ojburbx?=
 =?us-ascii?Q?yBbQYyaKfFGdrQzt9tNwC/qFlwoql7lbSNkIPXDASRsS/9dZx4nE3NofNaED?=
 =?us-ascii?Q?Ue5acR3RvLVTGustmsxN2cx2mF5O01UTYrdK9Uq9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 585d0b30-982b-4351-8379-08db8883cf11
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 18:13:09.8911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qsr+f6zbm2m3Fy1qx2XRpnJ7Bbrldc0cB3YGAHogccnutBhJ816RQqH3iGIefvgDo9ZxqNJg3DOyqbeXm2Of/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6030
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/mtl: Eliminate subplatforms
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, July 19, 2023 3:58 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: [Intel-gfx] [PATCH 6/8] drm/i915/mtl: Eliminate subplatforms
>=20
> Now that we properly match the Xe_LPG IP versions associated with various
> workarounds, there's no longer any need to define separate MTL
> subplatform in the driver.  Nothing in the code is conditional on MTL-M o=
r
> MTL-P base platforms.  Furthermore, I'm not sure the "M" and "P"
> designations are even an accurate representation of which specific platfo=
rms
> would have which IP versions; those were mostly just placeholders from a
> long time ago.  The reality is that the IP version present on a platform =
gets
> read from a fuse register at driver init; we shouldn't be trying to guess=
 which
> IP is present based on PCI ID anymore.
>=20
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          |  4 ----
>  drivers/gpu/drm/i915/intel_device_info.c | 14 --------------
> drivers/gpu/drm/i915/intel_device_info.h |  4 ----
>  include/drm/i915_pciids.h                | 11 +++--------
>  4 files changed, 3 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index cf72c34bca10..67cd9914bf33
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -581,10 +581,6 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,  #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915,
> INTEL_PONTEVECCHIO)  #define IS_METEORLAKE(i915) IS_PLATFORM(i915,
> INTEL_METEORLAKE)
>=20
> -#define IS_METEORLAKE_M(i915) \
> -	IS_SUBPLATFORM(i915, INTEL_METEORLAKE,
> INTEL_SUBPLATFORM_M)
> -#define IS_METEORLAKE_P(i915) \
> -	IS_SUBPLATFORM(i915, INTEL_METEORLAKE,
> INTEL_SUBPLATFORM_P)
>  #define IS_DG2_G10(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
> #define IS_DG2_G11(i915) \ diff --git
> a/drivers/gpu/drm/i915/intel_device_info.c
> b/drivers/gpu/drm/i915/intel_device_info.c
> index ea0ec6174ce5..9dfa680a4c62 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -206,14 +206,6 @@ static const u16 subplatform_g12_ids[] =3D {
>  	INTEL_DG2_G12_IDS(0),
>  };
>=20
> -static const u16 subplatform_m_ids[] =3D {
> -	INTEL_MTL_M_IDS(0),
> -};
> -
> -static const u16 subplatform_p_ids[] =3D {
> -	INTEL_MTL_P_IDS(0),
> -};
> -
>  static bool find_devid(u16 id, const u16 *p, unsigned int num)  {
>  	for (; num; num--, p++) {
> @@ -275,12 +267,6 @@ static void intel_device_info_subplatform_init(struc=
t
> drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_g12_ids,
>  			      ARRAY_SIZE(subplatform_g12_ids))) {
>  		mask =3D BIT(INTEL_SUBPLATFORM_G12);
> -	} else if (find_devid(devid, subplatform_m_ids,
> -			      ARRAY_SIZE(subplatform_m_ids))) {
> -		mask =3D BIT(INTEL_SUBPLATFORM_M);
> -	} else if (find_devid(devid, subplatform_p_ids,
> -			      ARRAY_SIZE(subplatform_p_ids))) {
> -		mask =3D BIT(INTEL_SUBPLATFORM_P);
>  	}
>=20
>  	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK); diff --git
> a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index dbfe6443457b..2ca54417d19b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -129,10 +129,6 @@ enum intel_platform {
>  #define INTEL_SUBPLATFORM_N    1
>  #define INTEL_SUBPLATFORM_RPLU  2
>=20
> -/* MTL */
> -#define INTEL_SUBPLATFORM_M	0
> -#define INTEL_SUBPLATFORM_P	1
> -
>  enum intel_ppgtt_type {
>  	INTEL_PPGTT_NONE =3D I915_GEM_PPGTT_NONE,
>  	INTEL_PPGTT_ALIASING =3D I915_GEM_PPGTT_ALIASING, diff --git
> a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> e1e10dfbb661..38dae757d1a8 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -738,18 +738,13 @@
>  #define INTEL_ATS_M_IDS(info) \
>  	INTEL_ATS_M150_IDS(info), \
>  	INTEL_ATS_M75_IDS(info)
> +
>  /* MTL */
> -#define INTEL_MTL_M_IDS(info) \
> +#define INTEL_MTL_IDS(info) \
>  	INTEL_VGA_DEVICE(0x7D40, info), \
> -	INTEL_VGA_DEVICE(0x7D60, info)
> -
> -#define INTEL_MTL_P_IDS(info) \
>  	INTEL_VGA_DEVICE(0x7D45, info), \
>  	INTEL_VGA_DEVICE(0x7D55, info), \
> +	INTEL_VGA_DEVICE(0x7D60, info), \
>  	INTEL_VGA_DEVICE(0x7DD5, info)
>=20
> -#define INTEL_MTL_IDS(info) \
> -	INTEL_MTL_M_IDS(info), \
> -	INTEL_MTL_P_IDS(info)
> -
>  #endif /* _I915_PCIIDS_H */
> --
> 2.41.0
>=20

