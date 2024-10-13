Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B5899BA2C
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2024 17:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EA610E382;
	Sun, 13 Oct 2024 15:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VDN0SKoa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDDF10E37D;
 Sun, 13 Oct 2024 15:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728834421; x=1760370421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z9+YH1icmetYO+gmBBfXxFIQZmY/ZeJ5Jf2C3bq6rUk=;
 b=VDN0SKoame++YI/wMHPacSpNUm7AaYKQIYZ+ocMFpjsd+AzYJPW/ctCK
 0UJ/FywmWTQCP5ARmLjNrqhLw756OBkZbA1zwLuSnNTbhk1fQezLEVLhC
 SxKYpf0Ja+NjnaEuVi5/G30ZStr6qxqX726KQo/oHEjCZRYOWC0HumyHE
 xJ9tVxmfHz6K9reGbExDRknav7Uj2LdIadXSXbJQAvQC1pJHtMhkU1Bt9
 iz5u8lEs6zLr2mq+yu0Grzvu+qQSXrS45+mjgVThWVDt7bDtfJbmEf6/V
 hj7GA7MwWJCp86wEA1l7owqrkclpY3gHxQ92sNfJMIYiCX2/i5qn5IInD A==;
X-CSE-ConnectionGUID: K5EI/6NiSgmUMDQtsgOldg==
X-CSE-MsgGUID: F9xUH0OFTyGdekO3gdJ7iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="28267258"
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="28267258"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 08:47:01 -0700
X-CSE-ConnectionGUID: flrQaeuKT5OI1Uf4ldz8aQ==
X-CSE-MsgGUID: +g84QqDJSqSBKk+KSI8HDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="114799309"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2024 08:47:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 08:47:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 13 Oct 2024 08:47:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 13 Oct 2024 08:46:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g5E1uRPz0UXyrzIqjbF2oytJD1kAqJhsvU6pReBUHpomdsDMFIauedE28ls9deDnuMVwaU75YDEHcrt+KgGyXRSQpxGdum2E8iIiaksSRmxPuDKN4Bq/ZgLvOcyrrbMhkgiG1HqJ9wo6GuspASjthUa1pP0+VUnk96sDEP5a2t6IcLRKZdfRyaNoLOHKf5u9RJ/buY6Hf4vaPATT7NUkx27g0ZacfqbgyCOWD8tvC4oL/qdXKH1RAbze/Gv5A83qF8bnISgFoJs39R/MSMKGXUQ33eF0vlYk32v6pm5e9tojdE+JjHXjdhD+Ya+AOYee1ATvHv96FOw8ZPj8R+a8rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qlScVydh6TahULQNTqPggwYg9TrXnxiIE/tXs68W+FY=;
 b=iWKa7QW0LJfpgADijV9t/dOUp8XEvgor51fJiTAJ8hZrPsMYpgh4I5pjpOGoxGbJ+qTIs9svyJOjAiUq3E0jwm4W+pR/qD2S6bgVduakSEmXPYYoLv2CCR0audocomqkSoLB5gjBWKYaqzxuAV87SpTyl3bYxWnwV61XB7UeFHSNB9/23/naK9Xw4Mh3s2/zRJ/helmMGjbp5f4tluYxwnPW12q0S9zpCV6zrOtvc/glYKY+4jwJINwx9akACdVCoq9bUiO6s2DeSALd1X41QNhYt22iE0lKd0EHXlUoICFX0Kj1D8uEKeF+vZDniw85cQhUwn5Px7u9i4aIHtEF0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB7683.namprd11.prod.outlook.com (2603:10b6:8:df::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.20; Sun, 13 Oct
 2024 15:46:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Sun, 13 Oct 2024
 15:46:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Thread-Topic: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Thread-Index: AQHbFYDlSpys4nSFckKfntHjFD/+4LKE4sOQ
Date: Sun, 13 Oct 2024 15:46:57 +0000
Message-ID: <SN7PR11MB675050291C57CDC3B4CB5189E37B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241003104343.984060-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB7683:EE_
x-ms-office365-filtering-correlation-id: 4b80cdcd-f7e3-4268-3afe-08dceb9e4515
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/m0anfwbTzlpxCCj2DjDb/Hyg80RIIs9Evm4Enrw01V8Ed5/ItchrP/9R8iE?=
 =?us-ascii?Q?ykTi0vmOfblc7herUkpdoeerv/oblUZCEuWgrFOtvPwONK9Gj/GxHPuU3iOR?=
 =?us-ascii?Q?Y3fCPwppE0WUdPEfRKGTW7zHIYELLiTAyuzuroHE1zd4DopauMNCCMI/IFRM?=
 =?us-ascii?Q?TsqMsL2Xxp2PS2accj36VqkFWY5y4GHH9eqM4FQyKPVXKAeiiHnJYa3w9HwK?=
 =?us-ascii?Q?2C8jTRajBE2uYsAGqpPFpzEBtlh/NybncSZzimzQLbxpsLhr4Dt7INEYT76L?=
 =?us-ascii?Q?qwW8tlamdAbdIT+JHSYMEIHT/bVM5W90I41D2Bov+yItyPs9lS4OVx0ZpXiR?=
 =?us-ascii?Q?HthUolMiVYwv86BSmoY+TZPxUA5Q0tHqBLSnhASSta38k0xHQqrxfbVqKatx?=
 =?us-ascii?Q?cAou24I6m94weBCRF7QwVRRITZXJzdF+Bfdqvas/J6RPr8Hdn/9Ymc9PIuPs?=
 =?us-ascii?Q?Ck8NOZ0ElU6alLez5lnFXxC+S2eeitiGoYYuTwY2XLg3xKkUsVmLfAi53o09?=
 =?us-ascii?Q?7jn8VwXj2e5dQ5oiSFRZC482cGnY3p8lPJZCHFxla6hpD/2bJrbg0yqdosN5?=
 =?us-ascii?Q?pLXk7hWLP3fPixb+Of/fAAKR30ag7E+5cZ+2foeuCzcYYRcU8ghFntcg0/Yf?=
 =?us-ascii?Q?QYi+BewsAXVRelEaT7xyiIroJg3pk9TeBcJ4JH+5Ryk8hJFURZMt8TZvv5aS?=
 =?us-ascii?Q?YbASqmxCOo5Inkru+M1JEwvKov4yg0aGrrw1LAe3Z71u1atp+fjhVMzNwMZc?=
 =?us-ascii?Q?1tBSsnTFvvbIz/qjcpJKr1vTCEwEelvZ4rbmllRQUtAR1EqmzyQ2aWxXcPSB?=
 =?us-ascii?Q?3/QXxSO7Pcrt/kTBuhGVcsq2Ejp1Ox6mMGF/qUV14T8aAvN4eewFU2kSEoZs?=
 =?us-ascii?Q?qgDdtvMz9ekioOOb6OLW8ypDiO/S9kt7c+R9Zvx6iHoaTooDuofM3T+DmLDx?=
 =?us-ascii?Q?DncTWfXr3VA95GXtlumKcaDir5UZLeu2PkT/AhsM1TQ0ohkUFxv7vxK4ydAa?=
 =?us-ascii?Q?V7U3gkMaolX/E0/6/PVaHUArsM8N5h/stG8fU+z9cS4Wqy4mnMjicIWcqXky?=
 =?us-ascii?Q?yJ4ojoGw3aCZvBM5tRZGnw5HjnUgGUL0U06RL9vFlP1L74c9k9+kgGhp+lAq?=
 =?us-ascii?Q?NSEawaAGIbGON7ofN5+UZntl8ry5QPgpuLtbJIVbdSbydR8OzygqWPxW7erd?=
 =?us-ascii?Q?cqGENixwiHrJVmdM6eTiSofTFFhezf9vPYrxXPyIW7O3f2GqZ+TNsEGeRp8Q?=
 =?us-ascii?Q?862pUEuoNB0WvMorsVcSe9Yx0Mkf6Dk/gp0XPNrVIENqimjZY4n+oGrOWDOr?=
 =?us-ascii?Q?y4TVIPAsAS431PW3ePPI+woP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+RcTDZJ/H5yyKlxoyggXmaYVdLzKcVQyel4tnp3Fx9RNYXsvxDeqeAhRm+Cv?=
 =?us-ascii?Q?8n8/Om4VVEBv/l2+q+tRdHr/Ns4rmOl5mES6Q8+CejzNiswY8W76efwoS73s?=
 =?us-ascii?Q?Lp3kdqI2WTJjcbxScgB+IW5TxsLg/n8HW8OYaJ9YFwlcDxxrwxWF96IgD5F4?=
 =?us-ascii?Q?m6PCwCv2m288dgvkoxh/dgZdy8gquUA6f7qJtc9Pb+flImcdon3Z7s1EZ/Fk?=
 =?us-ascii?Q?Oc6+tKohXNRdRt/fQFrzoeYtJfrWKfG9vaw5dtPFVHpegtN0FVT4GHGGyYOX?=
 =?us-ascii?Q?z56B8q73p59nFB4xiczeQq5JM5cDIq1Ilvyi5xkqnscxW+8XQhbIuKbWwDYt?=
 =?us-ascii?Q?AdUK8MMPCuA75Yi/VDFhIVg9elB58tJ9ge/w2RjXLlSOEwxgRSE8bgpItePG?=
 =?us-ascii?Q?EVImwEbQ/2eNpM9VoyR3g7Px0NbggSxEJD2Nftb0FfAGwjP5DbScrYuKWTYa?=
 =?us-ascii?Q?YnDmJYfjphOLjrpQfC0pflBClnFGnWfNwZc3/TKWfJv2l1xKAeRwK0SU5SI4?=
 =?us-ascii?Q?ms1jHAZm1owefTNrvqyGHohhlyNqBb9B2GWB5pTlL56rVqN0MRvjhuBBbq4e?=
 =?us-ascii?Q?c6BrfAH6RXVX4TLHmlC7xQbOnUHsUwIaTSxC7acm09cpe0VIZfr3oIchRl0M?=
 =?us-ascii?Q?keQWv0qdrUkw6KAYvBk5i3Cm+wYSF4a/C0PNW1rsos1ubaHqNaUd2GEUPh60?=
 =?us-ascii?Q?X5fg65n604qzLyNneab6pE+ceycb4QvcFRpQAxwVbVE6FWPXSCiD8UpDXdz5?=
 =?us-ascii?Q?wu88BfR49wfSiuWTl078SOT7XCHp721EwqZq3LWBsuNZ+d5478ULKB78ZDPI?=
 =?us-ascii?Q?go/1NixS73EHBMUb5HiZ/Ou2GilSwSPuYRIkxhSmiHQX4MhWGVsWh9QKzFk9?=
 =?us-ascii?Q?guTis56dg+hpQSQ4RGl2Zt1180m/Zl7i3A5soxd6sEp4AG6fwdKuhNNR5e4o?=
 =?us-ascii?Q?d+lBDJt1coo+2RxzW7u2t6ov3XnCzMLJjBDcqVwucp8jzrZ2D4N8LrhbD8QX?=
 =?us-ascii?Q?HYP00w68HVMbm2qSnr9aGPwTZxD6+r6juFK9RRetLU61s59OCxlKlJg3oVIR?=
 =?us-ascii?Q?Y4KyR62F+m2KT2aNdOcIf+qPwPnQtEn9OO7Jge5XUQgiq8LC6kDbuPZvxnAy?=
 =?us-ascii?Q?ImfvhbcffqCDcY6FRoVDZ1cJ0b3q4dlVGCZVVTbTL6hv6zdEc/aGqApxHaL1?=
 =?us-ascii?Q?Ny+0/hBDVMUFdRepS8zstbrtyomJesH8FX9SxbpC7Hs1/g9OQ6MyZPANUwp4?=
 =?us-ascii?Q?f0nufK1D9W47XVfgisyGZSVTfxg4usU3JPP9QieG0vMFEssolmta75Tw2ipF?=
 =?us-ascii?Q?uU8U2S6cpE6eD/Q/Sz1B6GvJ/0xtUAudU0YFRUXqrSCM9qWXsNCYeViu32zl?=
 =?us-ascii?Q?KHNuBhGJ2ghr0ueO2l2bYLd8t7p4Is8MFoXy59EUEu9h3bzqGvPb+nbeo+Z3?=
 =?us-ascii?Q?7O50OAc13z8YcFcHbeweRLmcQLOhXLuMrH9J8ypoIONBbVvE6x+fYvzGRgb5?=
 =?us-ascii?Q?vyht91UMt43pxpP2lPSzjrEiDXEF8A5/g9RLfgXzbiNKqu/SnCNo3OLiurWr?=
 =?us-ascii?Q?DvrfJoE00l3BguZc6aTtgN++XN+pmPj7+m2K4Cvt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b80cdcd-f7e3-4268-3afe-08dceb9e4515
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2024 15:46:57.5968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hoScdflUsQ6pK879WcHQ8OyY0b1rcpnZ1gGUyt+E0vOLG6SOQ3EQgn+MjUlXfQYyTC99BT5g2niLfxwM+EVCXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7683
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 3, 2024 4:14 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH 7/7] drm/i915/dp: Set the DSC link limits
> intel_dp_compute_config_link_bpp_limits
>=20
> The helper intel_dp_compute_config_link_bpp_limits is the correct place t=
o
> set the DSC link limits. Move the code to this function and remove the
> #TODO item.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 64 +++++++++++++------------
> drivers/gpu/drm/i915/display/intel_dp.h |  4 +-
>  2 files changed, 35 insertions(+), 33 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 02009ae03840..bfc31b3af864 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1958,7 +1958,7 @@ static int dsc_compute_link_config(struct intel_dp
> *intel_dp,
>=20
>  static
>  u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct
> intel_connector *connector,
> -					    struct intel_crtc_state
> *pipe_config,
> +					    const struct intel_crtc_state
> *pipe_config,
>  					    int bpc)
>  {
>  	u16 max_bppx16 =3D drm_edp_dsc_sink_output_bpp(connector-
> >dp.dsc_dpcd);
> @@ -1983,7 +1983,7 @@ u16
> intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector
> *connec
>  	return 0;
>  }
>=20
> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config)
> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state
> +*pipe_config)
>  {
>  	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
>  	switch (pipe_config->output_format) {
> @@ -2001,7 +2001,7 @@ int
> intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config)  }
>=20
>  int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> -					 struct intel_crtc_state *pipe_config,
> +					 const struct intel_crtc_state
> *pipe_config,
>  					 int bpc)
>  {
>  	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
> @@ -2130,21 +2130,16 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,  {
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int dsc_min_bpp;
> +	int dsc_max_bpp;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
>=20
> -	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
> -	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> -	dsc_min_bpp =3D max(dsc_min_bpp, fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16));
> +	dsc_min_bpp =3D fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
>=20
> -	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> -								pipe_config,
> -								pipe_bpp /
> 3);
> -	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
> +	dsc_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
> +							   pipe_config,
> +							   pipe_bpp / 3);
>=20
>  	dsc_joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(i915,
> adjusted_mode->clock,
>=20
> 	adjusted_mode->hdisplay,
> @@ -2255,8 +2250,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	int pipe_bpp, forced_bpp;
> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int dsc_min_bpp;
> +	int dsc_max_bpp;
>=20
>  	forced_bpp =3D intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
>=20
> @@ -2276,16 +2271,12 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	pipe_config->port_clock =3D limits->max_rate;
>  	pipe_config->lane_count =3D limits->max_lane_count;
>=20
> -	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
> -	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> -	dsc_min_bpp =3D max(dsc_min_bpp, fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16));
> +	dsc_min_bpp =3D fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
> +
> +	dsc_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
> +							   pipe_config,
> +							   pipe_bpp / 3);
>=20
> -	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> -								pipe_config,
> -								pipe_bpp /
> 3);
> -	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
>  	dsc_max_bpp =3D min(dsc_max_bpp, fxp_q4_to_int(limits-
> >link.max_bpp_x16));
>=20
>  	/* Compressed BPP should be less than the Input DSC bpp */ @@ -
> 2428,6 +2419,7 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>  		&crtc_state->hw.adjusted_mode;
>  	const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)-
> >base;
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
>  	int max_link_bpp_x16;
>=20
>  	max_link_bpp_x16 =3D min(crtc_state->max_link_bpp_x16, @@ -
> 2441,12 +2433,22 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>=20
>  		limits->link.min_bpp_x16 =3D fxp_q4_from_int(limits-
> >pipe.min_bpp);
>  	} else {
> -		/*
> -		 * TODO: set the DSC link limits already here, atm these are
> -		 * initialized only later in
> intel_edp_dsc_compute_pipe_bpp() /
> -		 * intel_dp_dsc_compute_pipe_bpp()
> -		 */
> -		limits->link.min_bpp_x16 =3D 0;
> +		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> +		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +
> +		dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> +		dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
> +		dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> +		limits->link.min_bpp_x16 =3D fxp_q4_from_int(dsc_min_bpp);
> +
> +		dsc_src_max_bpp =3D
> dsc_src_max_compressed_bpp(intel_dp);
> +		dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> +
> 	crtc_state,
> +									limits-
> >pipe.max_bpp / 3);
> +		dsc_max_bpp =3D dsc_sink_max_bpp ?
> +			      min(dsc_sink_max_bpp, dsc_src_max_bpp) :
> dsc_src_max_bpp;
> +
> +		max_link_bpp_x16 =3D min(max_link_bpp_x16,
> +fxp_q4_from_int(dsc_max_bpp));
>  	}
>=20
>  	limits->link.max_bpp_x16 =3D max_link_bpp_x16; diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 8bd0bb4ec0e1..d4ca00ba49b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -145,9 +145,9 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct
> drm_i915_private *i915,
>  					enum intel_output_format
> output_format,
>  					u32 pipe_bpp,
>  					u32 timeslots);
> -int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state
> *pipe_config);
> +int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state
> +*pipe_config);
>  int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector
> *connector,
> -					 struct intel_crtc_state *pipe_config,
> +					 const struct intel_crtc_state
> *pipe_config,
>  					 int bpc);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> --
> 2.45.2

