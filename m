Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BF7B2A023
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 13:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A86810E42C;
	Mon, 18 Aug 2025 11:16:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cKVm2ySJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A13AA10E1D7;
 Mon, 18 Aug 2025 11:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755515782; x=1787051782;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ScHc4qeEbMcVVOvgvFH+T0RUaGxaTXotU7W5PWQz2g=;
 b=cKVm2ySJteGlndIbh7HCjSzfoSp2T06JDVGtWux86rP+WCImacCPbcX4
 UuBydp1wt2qqCU0AtdCTwxvm8dkM615Lm7RlHLSYTTZKQvntlArBSYg+y
 2St1r5xj6U7Z+57huIAJA7dihDWiGaUBgrADFJVMWMTJN9x3qtQP52IAq
 7mIGphf2zlZwsOorMU5q01hBPRDlaL9eknL3ygZEV2f530Ztq4/kdAz6S
 Ekf+KnHJ2wB+ysg/0vbQWg3dWDVeoBwkrWQRFdGNuMKT4wUbd2GCMJZWG
 o8TxhEeqgcrx0NL2r4bsXv2JDpzvifwceBUOQNniUrlQluDMnt8AMu4XR A==;
X-CSE-ConnectionGUID: nLIoGKy2TTWLS+wBIBhCaw==
X-CSE-MsgGUID: qtKJf5BUTXydhgq853qKQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="57691411"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="57691411"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 04:16:21 -0700
X-CSE-ConnectionGUID: 1oX/VCH/SMGBQIPtLVTYqQ==
X-CSE-MsgGUID: tBlZsHD/Rk6kuoqhiZCGQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="204713672"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 04:16:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 04:16:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 04:16:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 04:16:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cbbQ8z6dT6gvKkzYIY5giNprXKx+i+X0Su545BGyQTSQncj3Ei0+kWYwnnk0movPEpfiP/qPVRSaVNN//Fnq5k4q1/+VTJGHvCkgUP/ir+WThTTCm0PON6pF2VLxq0MT3UUI7PYMwAGcWpHGSV9fZendIMaQNjpya56koG2sgcZyF8jvNAeap/23uOWPB1VtZlN/vOcz9BMEtH6b1+9qvyVO+K5o8HTMGl6UuLCjP1Z/L1P+phMORVuO91Qf8pXN0ShCu6iWLsGtbv3J0x3Y3twYu3JUArlU+tacOwmXZZyVAfDvMs9x0pvOFD0NMcXO/I4kOtyER87iBhtcrXF0Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jOdhL3wQ7RoK/r4jP18JfPcqm2DX3jIAENzEivfvTk=;
 b=tjrttnwJ3AmMw8jtuciFzGDxJLBfQHm9mkZ9Wn778UylrYuUu4NX6l7RnAGswyM2pSXXXPoz1Kpd8UMR64FMK+25Qzzy/i2nsxdCVWsdiMX9Ngr831rCaj1SwQ/J1+A6CZ0eADeNTgtOtESS0hBQaWZG1UQPv29wXe/XhgE4F30in51w0h1fFULqTTSSEv2Ham9zQFDHcGzfEVmvCnNWxbL4n34wuuDjA82huPl6ObiunaX9W464X7p+Vz4ybTKIgPzPMOK3MwRzKjF+OiopTpuXYWIeuXs1vVdOaAgyi5zE1ZvSmsEBghz9QNKsH8inVNSF0kIhQ/Pow91bdH2BHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS7PR11MB6199.namprd11.prod.outlook.com (2603:10b6:8:99::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.24; Mon, 18 Aug 2025 11:16:17 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 11:16:17 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
Thread-Topic: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
Thread-Index: AQHcEBVDk0ydt8ywUEuAxU2ziAhPvbRoQswQ
Date: Mon, 18 Aug 2025 11:16:17 +0000
Message-ID: <IA1PR11MB63481F43832280DB7A0B8605B231A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
 <20250818073128.2319762-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250818073128.2319762-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS7PR11MB6199:EE_
x-ms-office365-filtering-correlation-id: 56b5f670-888e-4240-a67d-08ddde48a6a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?o2tB38OcCyt4QiHlgY14P4yOI0UEkYpio7xR3MrKNBArvb3AG/WUhB8HMqPM?=
 =?us-ascii?Q?y2ZGHx6XeBaRLIsQwdfEoOztkBJr/voO4uk7CzrtadxPPAZ9hQxd5hms01tu?=
 =?us-ascii?Q?MlVWYupgpqF/7r+o9qmlqGWWXRfWCimIaJ3hyBsaegCCLft5zggQ1R6g626n?=
 =?us-ascii?Q?Pjqjsqe1mc5UZtKXM1ue0qqZjF0rORXQqFi+5kOTyMhTuQq9akZBJi61hujS?=
 =?us-ascii?Q?Oe6aRP1DkmsA/DJjrLvbULF5wg16qJnsY4lo9aAewU4hsmKAtkHOpxiGzPZ9?=
 =?us-ascii?Q?pUf8WfdqIimk6u/Rxjbh/VOpKHNWBbvuKqAGfPICs2oI+EQlaHRMFRG/WlZt?=
 =?us-ascii?Q?CrdQhNiRsYss879N39Z8dvaeLUvTKPqCO12BGvsznxC8MgYkbmVCLc3T/Nav?=
 =?us-ascii?Q?zeAw6DS/Th4vXPlwUUWIeIq1H4NZ6Ssij5bejt80XD6PFLZKM9DDpii1KjV2?=
 =?us-ascii?Q?5QXSJIGugXDQ7mrs2QVpONR2fIdSnZS0fa/L+TlVcot6I69y5ahJsGo9NzEW?=
 =?us-ascii?Q?C9LjJGqF0nnlTTG5ADgReBA+t8heFS8xSHwlqGBO/HZNBZwsf4zNVGt8qCBd?=
 =?us-ascii?Q?XqmkGA0Sm6qfNcSC9z5kYFfAF+6e6Mv49hTtn/y4VfzpreXo7cHMOn58mEp3?=
 =?us-ascii?Q?9AGO2D9C4Clw/6HmlvhrH0tCtSsRJb9XT/hb3e03Y5z4ms2p0YILRrgfcuon?=
 =?us-ascii?Q?mKCf1tPEjMncZZRAmRSkk8KHU8THo9BKxh5G8laV0EOioeDgeXGoGcrWWy5R?=
 =?us-ascii?Q?Q1AMHD1GgwRtq9TCGPUQYzrzxSUszlmFKazgT/5yVs9F4ubFrJk1v0pnp31b?=
 =?us-ascii?Q?M4d0MgrZzQK2IoGrpJ+syspHwFhKNtjfeaigZPDkwN5JBTzuXk14opQOG8qx?=
 =?us-ascii?Q?Ft7J1cxg3SfXyt1QNMM01ZtCw273Pp/Dggz7v8mAxZA8jDwtsFWPbZEXX02F?=
 =?us-ascii?Q?/pTBDjaLyHgx9Sy/K5cTwJKCZRdbvHrdReJddTyBcE+F5Etlw7udOwHp82ts?=
 =?us-ascii?Q?ftcPa7ckMSWgi1jKpgSD3gl94YaCL/Xl4lkWXRADTgxMeEW5X++TuMS3Lmfq?=
 =?us-ascii?Q?6SUAgROUAfflYqu2O3W2+SCA3ljL3RT6Spt4bdvpFGBQ46koJ0CTYHL5t/oV?=
 =?us-ascii?Q?VyJ9+4MhIZz6UToLLpNj4+V7n0BrQAkA4YkWbMdwUGayHG7aAjUNjhPZOAYK?=
 =?us-ascii?Q?7hu21Bwzbz0GFxxa1TaPrl4LwsgjuquEMNwk2CJBieMsEYBd2R51f0xDzW30?=
 =?us-ascii?Q?AK9AQs+9K5wKRY8O3CVAxvWytkyR3AIic/MtKaqMMyt4l74PtQKsJNOhjh4/?=
 =?us-ascii?Q?hlhf/NSkdSdE7HOLx7W0LpKwf6saXEZSxbeMKB5vpuv/697oa+Ea22kx50PA?=
 =?us-ascii?Q?CMLAkDM7h74t+qD0NnQcYw9dysreO5m1BMVeGReCD/C3oLIRjcWBNw3SNj/D?=
 =?us-ascii?Q?KvsHplqHzH5HrlfCqLhFZ6jmj79Dt5UHpy8qOsjUxD+ok04jxSRYfMHI0zbF?=
 =?us-ascii?Q?+ejyIu5Y4xYG+8U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1MAsiF5taJOpfJxEoh+Q0V8C+mAS/OdkIByQhHs9tsCPiy7gmQit5WvFtZPp?=
 =?us-ascii?Q?mh+mFvE3EIScDkc2J0hT8pALFThnCnIYOnvoT8NkEcaQtRzj4kXxFm5xi9j1?=
 =?us-ascii?Q?xqe1W2RRHp+WdSFr3eZQZ82NY0ZI3Zfb42wYk3BGI0Z0O2yUP4b7I5I0aNy6?=
 =?us-ascii?Q?P/kwXP/OVhYRPpb5edqlPkhD8dsbZSvK4HJuvD6jNjlxpRPw+XSiCNw8cmtH?=
 =?us-ascii?Q?Sa1wm1DkTgueC7FiFgnFrXUlIe0ynlmiAzp+MUiC/1hPuCJaSMx3M0eHzg68?=
 =?us-ascii?Q?Fz5qzZrvjvXwihl0bORgf1ump7RcAGxLRxNI7VxGpYXSuegGqNdxruuJPmqb?=
 =?us-ascii?Q?oQt/wBR5+M1h02zUzn9VdiV4yfc0cdWhNCIZ5/zzlMFoAUo15T5PsAefFGMm?=
 =?us-ascii?Q?wUWvzP/uArZ5ib58IarFYXC+g7ofeu+p1AO3Bgg5JcLktREoTDOHTlzI9WvQ?=
 =?us-ascii?Q?4X8YWf36BToJoT2Dfw4W/hpbIyRvnxdGT5uNcokqZf7Xf5x0aMS97eQ1/Ww6?=
 =?us-ascii?Q?f5gRMw1O4dkvO3qV4GAuyPeIb39uFIvK4KPkYq9epnql1MbpQEmU0+DtLJj9?=
 =?us-ascii?Q?af+3tzg/MkoxhL2Ic5Tqq2hQBvhEv3Sqi7m7ajGXtFDhVkzPXPubCNqPVICb?=
 =?us-ascii?Q?i0p1uFlX2A6z7XXTqxpadAl/74NNMIZ/rBA/SJHERN2Mu7UI5oj0CAdKuhlx?=
 =?us-ascii?Q?VhCfKNahH0/umUq0gWJucVooyqHDGX6gMy1+A8FqbNMWbC0kM2XaWmRPvPN2?=
 =?us-ascii?Q?HBJApDAdp/LSHjOwnpTW6WFP0LL3Job/rkV5fKszgr26lGV9SPmSVbcq4FaW?=
 =?us-ascii?Q?3spXFMo5RhWCKHUGkdtmzTv2F9a9SO8pLwwkZXLEdQ8/B0neraPbUYu7D/he?=
 =?us-ascii?Q?drkXuYDdSEh5dKht/s2G1xuzZx2X8evBwfVF3iR8LgLEcdW5G7xp+6QT0zlC?=
 =?us-ascii?Q?6wo3RudCgxCu7k8yAT3r7+ew2frlGabjq9kkcQ4ZCZRKzD9VPw0Nbd7cQ+x6?=
 =?us-ascii?Q?7FJcd2LwcTWns7SxDQJNJgMwP2idk/RPw8MNI2AjklTwG2WUne0FzrB0wkdj?=
 =?us-ascii?Q?5BYcab1qNHMdJ2iYlxtTW2kT0BLovbqlfx0nGbzXFtTaLupE0mfqkKUy1oHU?=
 =?us-ascii?Q?qoI2W1DLvsX8yfkqd3RMI1kLsR09aW3RCe/dG+Vv24KQAUjMDoOfeRLYIdr4?=
 =?us-ascii?Q?54YncmFwupQtOOohbhDdn/9f7reNQ5GGrdEn745pyGaqMUAbS7pj813jtihg?=
 =?us-ascii?Q?FqRhDdyyszAY9Jwsu24cuRCXOZavR5M8iE4pZgGPdDzs/chyAj2qCbGh9Jc/?=
 =?us-ascii?Q?W9Q6PovQ756so7cw5Pa8leLpuu4q71K8jjJd0rMwiELUwQh/6elapK0PhSWW?=
 =?us-ascii?Q?H33UBdRUolnsTMgTlMjCLdx193eS4bbhE3iI/ipVlwLPwPWNhxI8yDC5+C2q?=
 =?us-ascii?Q?OFyZzV2cUBbOoWAOT/EF9/V2TrhqdHMfOMMUMxE5Hwn3IpRvHie8ixiUmSQV?=
 =?us-ascii?Q?HvKYyEDKS6qRNCW+lw8LGPVPC4Ee18Za6jexdgcpj3iXHLSbwTckWXXElINj?=
 =?us-ascii?Q?qP34hvOjsjGIc9kBcLuqhvbN58Otmta4ClyQQkgP0E3dkqde724OYQyrNTI1?=
 =?us-ascii?Q?nqHaFZ8Id3jd8uYJh5fe4XKZ73IxbfwKAqyocJg3Naiipd+pmilg77P26Vup?=
 =?us-ascii?Q?awnt7IGuhDVhgAUkk4+YTBchANM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56b5f670-888e-4240-a67d-08ddde48a6a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2025 11:16:17.0952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zUQnUnLGQiIBcQquGotYqnToq1B1ez20YvcVzt7e9qTLXNj31YRS3DBnHJBpr6uP75+dUB8oYkNdpPSxqv5u4bjXWSVPStrgDkuUPXhDXuey4zB5GkSPzIXISP+OrE1u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6199
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 18 August 2025 13:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 08/12] drm/i915/display: Add guardband check for feature
> latencies
>=20
> Add a check during atomic crtc check phase to ensure the programmed VRR
> guardband is sufficient to cover latencies introduced by enabled features=
 such as
> DSC, PSR/PR, scalers, and DP SDPs.
>=20
> Currently, the guardband is programmed to match the vblank length, so exi=
sting
> checks in skl_is_vblank_too_short() are valid. However, upcoming changes =
will
> optimize the guardband independently of vblank, making those checks incor=
rect.
>=20
> Introduce an explicit guardband check to prepare for future updates that =
will
> remove checking against the vblank length and later program an optimized
> guardband.
>=20
> v2: Use new helper for PSR2/Panel Replay latency.
>=20
> v3:
> -Align the name of helper with intel_crtc_atomic_check and rename it to
> intel_crtc_guardband_atomic_check(). (Jani) -Simplify checks in the helpe=
r.
> (Mitul) -Make a separate helper to compute wm0 prefill time. (Mitul)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 143 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
>  3 files changed, 145 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 62ec95a75154..9138cd1d6284 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4227,6 +4227,143 @@ static int hsw_compute_linetime_wm(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> +static int
> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	const struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state)) {
> +		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
> +		return 1;
> +	}
> +
> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> +				   2 * intel_cdclk_logical(cdclk_state)));
> +}
> +
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime) {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u32 dsc_prefill_latency =3D 0;
> +
> +	if (!crtc_state->dsc.compression_enable ||
> +	    !num_scaler_users ||
> +	    num_scaler_users > crtc->num_scalers ||
> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
> +		return dsc_prefill_latency;
> +
> +	for (int i =3D 0; i < num_scaler_users; i++) {
> +		hscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale, 1000) >> 16);
> +	}
> +
> +	dsc_prefill_latency =3D
> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						  chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						  linetime);
> +
> +	return dsc_prefill_latency;
> +}
> +
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime) {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k =3D 0, vscale_k =3D 0;
> +	int scaler_prefill_latency =3D 0;
> +
> +	if (!num_scaler_users)
> +		return scaler_prefill_latency;
> +
> +	if (num_scaler_users > 1) {
> +		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> +		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
> +	}
> +
> +	scaler_prefill_latency =3D
> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						     chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						     linetime);
> +
> +	return scaler_prefill_latency;
> +}
> +
> +static int
> +wm0_prefill_latency(int linetime_us, int max_wm0_lines) {
> +	return 20 + linetime_us * max_wm0_lines; }
> +
> +static int intel_crtc_guardband_atomic_check(struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	int dsc_prefill_time =3D 0;
> +	int scaler_prefill_time;
> +	int wm0_prefill_time;
> +	int pkgc_max_latency;
> +	int psr2_pr_latency;
> +	int min_guardband;
> +	int guardband_us;
> +	int sagv_latency;
> +	int linetime_us;
> +	int sdp_latency;
> +	int pm_delay;
> +
> +	if (!crtc_state->vrr.enable && !intel_vrr_always_use_vrr_tg(display))
> +		return 0;
> +
> +	if (!adjusted_mode->crtc_clock)
> +		return 0;
> +
> +	linetime_us =3D DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
> +				   adjusted_mode->crtc_clock);
> +
> +	pkgc_max_latency =3D skl_watermark_max_latency(display, 1);
> +	sagv_latency =3D display->sagv.block_time_us;
> +
> +	wm0_prefill_time =3D wm0_prefill_latency(linetime_us,
> +skl_max_wm0_lines(crtc_state));
> +
> +	scaler_prefill_time =3D scaler_prefill_latency(crtc_state, linetime_us)=
;
> +
> +	dsc_prefill_time =3D dsc_prefill_latency(crtc_state, linetime_us);
> +
> +	pm_delay =3D crtc_state->framestart_delay +
> +		   max(sagv_latency, pkgc_max_latency) +
> +		   wm0_prefill_time +
> +		   scaler_prefill_time +
> +		   dsc_prefill_time;
> +
> +	psr2_pr_latency =3D
> intel_alpm_compute_max_link_wake_latency(crtc_state, false);
> +	sdp_latency =3D intel_dp_compute_sdp_latency(crtc_state, false);
> +
> +	guardband_us =3D max(sdp_latency, psr2_pr_latency);
> +	guardband_us =3D max(guardband_us, pm_delay);
> +	min_guardband =3D DIV_ROUND_UP(guardband_us, linetime_us);
> +
> +	if (crtc_state->vrr.guardband < min_guardband) {
> +		drm_dbg_kms(display->drm, "vrr.guardband %d < min
> guardband %d\n",
> +			    crtc_state->vrr.guardband, min_guardband);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> @@ -4289,6 +4426,12 @@ static int intel_crtc_atomic_check(struct
> intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>=20
> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
> +		ret =3D intel_crtc_guardband_atomic_check(crtc_state);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	return 0;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index f0213785e9fc..6e9cdf5bc60b 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2249,7 +2249,7 @@ skl_is_vblank_too_short(const struct intel_crtc_sta=
te
> *crtc_state,
>  		adjusted_mode->crtc_vtotal - adjusted_mode-
> >crtc_vblank_start;  }
>=20
> -static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum plane_id plane_id;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h
> b/drivers/gpu/drm/i915/display/skl_watermark.h
> index 62790816f030..8706c2010ebe 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -78,6 +78,7 @@ void intel_dbuf_mbus_post_ddb_update(struct
> intel_atomic_state *state);  void intel_program_dpkgc_latency(struct
> intel_atomic_state *state);
>=20
>  bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state);

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>=20
>  #endif /* __SKL_WATERMARK_H__ */
>=20
> --
> 2.45.2

