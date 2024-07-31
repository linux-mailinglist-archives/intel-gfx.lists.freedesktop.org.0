Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E14942799
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 09:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7500010E344;
	Wed, 31 Jul 2024 07:14:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQoBDFp4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680E610E344
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722410073; x=1753946073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JHaRjpr1YxI4xsSNO422SxruUT+LlyJ5BOKP7OSTcSM=;
 b=JQoBDFp4xL3ulcE+n6tSYrIl+UAd+EvbneOfUTmuoZD2ayOVgiYF0TP9
 RGZ3I2FjRDkpOTtr1YAIz722GPna692u+w43mS7Ycv5nUM93u0Whdcx8s
 xugd2h0JW6iLAl6x5kJtjMWShvBGv8CE70TMC9bvydK78Ugl/FhkZE3+K
 Cao4X/3po6afFwTKOsLoZmPSbKRtqev2s7dozVqL0r9avO9OZ+gp0U5mG
 foWkt/28dyUllHhBWFK5YCzKBQODjZ18koziH16/9D6Yp2Z/BGIqHnL/3
 lhF21mC+uqmItdvhrxOcrRjSxvNKs+0ofYV59mXHbMEYUnnRUHl/JmUUx w==;
X-CSE-ConnectionGUID: s6A/PdrpQ76Sm0ZGe4D6wA==
X-CSE-MsgGUID: fjFU9sWUR9mrIgfcURq7SA==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="45687440"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="45687440"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 00:14:33 -0700
X-CSE-ConnectionGUID: 2TeRK3oJQLiAfPy8kDDtbg==
X-CSE-MsgGUID: fER9ByQET3ug+BsHyFTgAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="55396363"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 00:14:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 00:14:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 00:14:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 00:14:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WK6mAv9OjAfWg3cCx+Ou5KEzvZMMxiX7V5dyqDrmkk/mcJWQhE9C6N8QzByPQQxr8LiIE1+aDGhcA1sQN0zdcwqkQ/tPebZKm3HrW73f9vO40dB3QI0FFqgW9W26KrL2mIphfpVZXzM8GA4ttpfbnhDFEaNNlhkKBzfDNPmroxnFTAUKYaBSNhtRo4dKODBWDiKglENaG2WangPycSWXbECulPoTp4wIW9fZrC6OL1u/Rs/iJMu7MVdwDNWHgzM9c3Ni9NYYYyv83rDryaAvud2OTV61H4r0mBiFkg0+qECjmG9GwxQul6yvD2TWMsF36n3UZuuUA+QXtpKgHE+2Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M3VXVQu+PePiltLBmBqPj/qr02jvs56k6FuKD8+564o=;
 b=sc8upcYFJ9kQKlzOsPgqmR1mdJh7Pg07X46if36ZkR58dulpdEI/xqCeG9tsmo7cDUBOYIRpUuQlk/UpOdLmBIXe6+fjaljV/z0smfz4RZzlFbS9MJbzprTfIPYa3m852+GqByGbI6WTj8CmRTh9G4G4e6LLbvnSM4mcHlIBKTJQrmiF9ixRBns1mwelVriWLcYWW/cqjdWxFkOhuDrLSqzHK/EVfRWqAtX0DkBeWF8KxtnErB3Hj8VVBKiWNd9EgmxTiU20rJ1EpUaJfkwfQGrEJyXHNBo+F4E2alcxHPldRRYeWEpQSK+wu3h2IcL6FIgHyVZYqf2XXEdspThGmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by SA1PR11MB8350.namprd11.prod.outlook.com (2603:10b6:806:387::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 31 Jul
 2024 07:14:29 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 07:14:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 05/12] drm/i915: Add some essential functionality for
 joiners
Thread-Topic: [PATCH 05/12] drm/i915: Add some essential functionality for
 joiners
Thread-Index: AQHa2Or0NHvHhVCtzka4ibix4o3M9bIQXkrA
Date: Wed, 31 Jul 2024 07:14:29 +0000
Message-ID: <MW4PR11MB6761DA81F669B25F97F2AFF5E3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|SA1PR11MB8350:EE_
x-ms-office365-filtering-correlation-id: 738cc223-6e61-4c5f-ce8c-08dcb1306b44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?8cKC3r7kEQP97CMaA6kLBdaPAWI0RdIu10erJQqa0kSNoZOthUV8hP6W+J6x?=
 =?us-ascii?Q?HK7h9R0MbnfMJG6DoWs+lQWGKjfV6X0KR6Ai2ClCHRcphjYmk4YbH6F+ryc4?=
 =?us-ascii?Q?F3fRbx5saEi77ohpUtZMtm4u8qp57knGMy/jRi3BnxHubiOHaskYpzTgIYFx?=
 =?us-ascii?Q?pRVCH1RarsXiS2HQ8wGYfgg2RWuFQK6XPrB4UoPjiHHscrpibLPRCZwCzUPA?=
 =?us-ascii?Q?63vmZJCLzwbOcMFCCgtX9hftQCKvbn3U9/34Xy9iUsDRE47wgmjiEkrUq9sk?=
 =?us-ascii?Q?O8NUDPKTtBhtgIVLIf/RJRuztU7oMHGsdY9cdtrmwb+NHMqRWU+VH6akTbz7?=
 =?us-ascii?Q?sepfF0nid2V6k/jUR9UmLFxZy94Rwrd3jPUEuLAPeQ0r9kKlqUYjf75Upr+h?=
 =?us-ascii?Q?xmEKtoMiH21NBlzH102jis0f9SaB01CQX7PV05CTU8pwteiEnxIb9oDqpI+z?=
 =?us-ascii?Q?H7UO2FWvRIiA4D6SKTrjhp4kd5+FCDMZVVWiOJ7vO2duYjeGWR3HyH9BN2+E?=
 =?us-ascii?Q?JfNM+HPt9QFxC3o61EnodDlatDHL1fpT11ZqpRgyfBFWPbrquDa7gsA2DZLQ?=
 =?us-ascii?Q?jriMeZGtHdI9c5TSl4Uh4T1nYqAxQXObn1gwYaE+CmRG8vLiKgYAJrlMGspd?=
 =?us-ascii?Q?d2ax5IZ4aYJbyVPjwE/YJAucdVGjb46BnwVJL71Lo3LlACGBLOY4+itbyT1L?=
 =?us-ascii?Q?fILFMVo8/VZih8Ta4pBC9mtzGTj8qAnVUcjzKoGGFbz/TyH5DweqW4h1zxRT?=
 =?us-ascii?Q?SrI2Bhir/BK/GGx8QDAzbWLtO3ecUnW0Zw5RlXjE7KyXZnB7vamJAgG7UsXs?=
 =?us-ascii?Q?fePFmqcQyKDjZyRlvBzAJ2eHHGVvqU8OlRQj1YViITNHkFXrpbAdQN44qhy8?=
 =?us-ascii?Q?u/LkxPvCdKWSU6d3ouGES6iQSLuR8X1023P5vw+G5OzAQlydnhnhPDgFc5yP?=
 =?us-ascii?Q?lRSUDpyUABQE5rSMlnzrQpV5Lsw53w2ZRKQjirSWYjD26ki5OZjejgn0xLBR?=
 =?us-ascii?Q?JKSjklvJmXnTDjDLRYQHdRDiuDim+vPkrytckOD+l0byMngWrE31ntGGtzrA?=
 =?us-ascii?Q?SThku0fy6JV2/0rnSU5vtrNHj2XmOsGGiWDkvEYzDYHcmbtAZ/o/Ko4xTRaV?=
 =?us-ascii?Q?72CaCeGmHrxO84hWYHroQWsWqPpUQz/zFUEKyPI4xbxt+aznSXoSXoY+eCNT?=
 =?us-ascii?Q?xOwQX5vHRRPAhRPqGKlGMt81v6RzX3XRnwj6AQHANYRoBAx3fTOG0DaaDh6B?=
 =?us-ascii?Q?KqtVtBB2OvPNkmGCu/FyDdz0x5hbkCINcnWalc8EwdfQ9uOa0cnQWv8sNVBq?=
 =?us-ascii?Q?DZxpun6LwoPfRnlqGGwnbtbvLLD3OuUa8kuBzsfbwkSHC41VtCMfHnkBek0q?=
 =?us-ascii?Q?18uwkDOYjWJVdzOBYYGQ0vIAwzKGqWNa6Prz146Exx5LeGkJlA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?akX/jauLV+v0Ne9QEA11/l+L4MB1EE8w5vJZYTN2GyOymxNqhQhcrSGw4esC?=
 =?us-ascii?Q?LMAVbW2QaElUFP2wid3VGJzf+IJJ065431rt9ZOEMDNLkwpFfZCmLo1EvfHX?=
 =?us-ascii?Q?t4kHiNqgLm0sgHxQ3ddm0lxFJ8ay+TVpEeLRmvRAhQMx8x1TkICu80aMb9Gm?=
 =?us-ascii?Q?4L6QhClw9DX1Jo2bXH1YDUnxamS5XdA7fLDsYjOwt2uASTGE4Si0KJdHzwE/?=
 =?us-ascii?Q?FlCI7x+cGsF6LhOc00CzVA/H51BdxU8zck88L38HAEmRIc/smdhQazLJOERf?=
 =?us-ascii?Q?OO0Zv2px2RN2pE5AfJWosOldCSiapdhypNSlprbl1dvmJveqcgwJ9XzT23XE?=
 =?us-ascii?Q?IsOiitwsMHXCWdlNvHVCayBgyIiELr5sPPFweSYszy/ydGxnuOH8OaEVQhwh?=
 =?us-ascii?Q?IUbMBwspKpd/OwpK/WajEXZ1c7SJ6Ev9Hg1KuZge2S7KRIOOBOXm3sz46S++?=
 =?us-ascii?Q?TbgFUOOhMemYMBtML6QzAWWPfz6B7oA2QcPuzk/UmDi6ZPjmlsfLur3VLioc?=
 =?us-ascii?Q?+gkRuuK3XbYfjtpKTzvL9EzKBgnQZvW5NNULGdxYdj0d7UHUkjZPcWpuxi1b?=
 =?us-ascii?Q?uR634VWcAWZtSErb82N4zVcVRDv2+4qMb38UBTNctHMsFp48rKLp5clTxvub?=
 =?us-ascii?Q?jdFbgDvBIqaIQgznK7apcIRm8DNcIM4hiHwNWAx5fh6gGrwzh1r2lpZhn1S/?=
 =?us-ascii?Q?Lh8Ae21dWmkinufnIpxYsAOXYSYJou9He8DemaoFNoDtSvezCQgkq4A1aBwU?=
 =?us-ascii?Q?vS5sQtayND/NwWj4VFuxT5XyOvw5glvt/5/B8ydcgn0uu0UsVpMhCUmfLVYM?=
 =?us-ascii?Q?FrFByD8t/Yus9lpqIDiLCE86Psg8huDruqoqN0qWQb705vMvJFw8BpBv0fLn?=
 =?us-ascii?Q?OOzsdJZ93J4CTuqr/1C1zFJRB9WpUlTbpQHdtpE/ZT26HoTCLIYmqmNBP6XC?=
 =?us-ascii?Q?6JiyXGP8CHgvzi1tQuDSRvIRUXm7jSXNykvkOSVTuzRPUOUBKT+vvLVl8UE4?=
 =?us-ascii?Q?g4PTyS2wcD81iJ0fq6rk2s8MbEgqm/b/J9/JcqM12XjJD7KKQ/zI5mN/B0yr?=
 =?us-ascii?Q?rRsuXzetM2WXqtIr/7hQT4eu6WEle0vQnFxX1ygtH7BNCJ605cNsbu5DSLpe?=
 =?us-ascii?Q?EXQvsLrvz2nJfaxCyePe+MwlWkQ6wxSLOwKr9mK81PMQF45U1kLZDPl2Wqu0?=
 =?us-ascii?Q?6thYdEFhefRa0rjS/h9mICyd4zgwx8PWhay8b5kcnfuG5EJC7t0W7bdN4HR5?=
 =?us-ascii?Q?uvv9UTL/01XeaGW+kr/TFXg/b22daIITo/7DtWj0QiqIQfP4DLt831nxl8Nh?=
 =?us-ascii?Q?5w6iOex1NTFNwI9oC9YABz0nHw4zO3buEpYdk1wRhNAKyP/WlD1FJlctK94d?=
 =?us-ascii?Q?DO3eVZMNo9uWQ+wmdOzRXitDbHbZJ4B0S+Gb0gKAldXOzofSRulFiDCjuC7M?=
 =?us-ascii?Q?uSJiMdqu7saYdKWAoQoXIZ3gFbMj6UrudSwk2j0UkE4OSSAkxhlcgefnCjRB?=
 =?us-ascii?Q?9QHfJqC8l9ylI38ysc0No3w4HC+Hg+rOm89d2rChfzPD0b7MfSI2vBtQcWVA?=
 =?us-ascii?Q?yHq2w7aWJFpY3gXgDlSvm9Z/jMtjlIXOdadcAIKe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 738cc223-6e61-4c5f-ce8c-08dcb1306b44
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 07:14:29.5530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EX/VNy+sTDF8MUlAFuBB+ppb3YCpLE1iGnqZTu3C/8lzb2yZDCd8+4xf+cWPeCtOw4PUEkeQ/GdyGlSBWvioUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8350
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
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 05/12] drm/i915: Add some essential functionality for joi=
ners
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> In most of the cases we now try to avoid mentioning things like "bigjoine=
r" or
> "ultrajoiner" trying to unify the API and refer mostly to all this functi=
onality as
> "joiner".
> In majority cases that should be way to go.
> However in some cases we still need to distinguish between bigjoiner prim=
aries
> and secondaries(such as DSC register programming).
>=20
> Create correspondent helper functions and start using them, in order be
> prepared for adding ultrajoiner functionality.
>=20
> v2: Fixed checkpatch warnings (Ankit)

Use imperatives

>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
> drivers/gpu/drm/i915/display/intel_display.c  | 75 ++++++++++++++++---
> drivers/gpu/drm/i915/display/intel_display.h  |  8 +-
>  .../drm/i915/display/intel_modeset_verify.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +-
>  5 files changed, 76 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index e979786aa5cf..9862d0339e6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -724,7 +724,7 @@ int intel_plane_atomic_check(struct intel_atomic_stat=
e
> *state,
>=20
>  	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
>  		struct intel_crtc *primary_crtc =3D
> -			intel_primary_crtc(new_crtc_state);
> +			intel_joiner_primary_crtc(new_crtc_state);
>  		struct intel_plane *primary_crtc_plane =3D
>  			intel_crtc_get_plane(primary_crtc, plane->id);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 26e4b0c2e9f7..38e7c6811bf3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -252,6 +252,68 @@ static enum pipe joiner_primary_pipe(const struct
> intel_crtc_state *crtc_state)
>  	return ffs(crtc_state->joiner_pipes) - 1;  }
>=20
> +int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state) {
> +	return hweight8(crtc_state->joiner_pipes);
> +}

This function is the same as one introduced in patch 2 its being added back=
 in patch 5
> +
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state
> +*crtc_state) {
> +	return intel_joiner_num_pipes(crtc_state) =3D=3D 4; }
> +
> +static bool intel_is_joiner(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_joiner_num_pipes(crtc_state) > 1; }
> +

Enums have been defined for no of pipe joiner lets use those and this is ex=
actly why I wanted Ultra Joiner enum declared earlier to avoid comparison w=
ith direct numbers.

> +static u8 bigjoiner_primary_pipes(const struct intel_crtc_state
> +*crtc_state) {
> +	int lsb =3D ffs(crtc_state->joiner_pipes) - 1;
> +	int msb =3D fls(crtc_state->joiner_pipes) - 1;
> +	int i;
> +	u8 bigjoiner_primary_mask =3D 0;
> +
> +	for (i =3D lsb; i < msb; i +=3D 4) {
> +		/*
> +		 * Regardless of how joiner_pipes mask is set, currently
> +		 * we always assume, that primary pipe bit goes before
> secondary
> +		 * pipe bit. So in each set of 2 bits, least significant bit is
> +		 * bigjoiner primary pipe and most significant bit is secondary
> pipe.
> +		 */
> +		bigjoiner_primary_mask |=3D
> +			((BIT(0) | BIT(2)) << i) & crtc_state->joiner_pipes;
> +	}
> +
> +	return bigjoiner_primary_mask;
> +}
> +
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (!intel_is_joiner(crtc_state))
> +		return false;
> +
> +	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
> +}
> +
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state
> +*crtc_state) {
> +	if (!intel_is_joiner(crtc_state))
> +		return false;
> +
> +	return !intel_crtc_is_bigjoiner_primary(crtc_state);
> +}
> +
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_crtc_is_ultrajoiner(crtc_state) &&
> +		(crtc->pipe =3D=3D joiner_primary_pipe(crtc_state)); }
> +
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc=
_state)  {
>  	if (crtc_state->joiner_pipes)
> @@ -276,11 +338,6 @@ bool intel_crtc_is_joiner_primary(const struct
> intel_crtc_state *crtc_state)
>  		crtc->pipe =3D=3D joiner_primary_pipe(crtc_state);  }
>=20
> -int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state) -{
> -	return hweight8(crtc_state->joiner_pipes);
> -}
> -
>  u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state=
)  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -288,7 +345,7 @@ u8 intel_crtc_joined_pipe_mask(const struct
> intel_crtc_state *crtc_state)
>  	return BIT(crtc->pipe) | crtc_state->joiner_pipes;  }
>=20
> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crt=
c_state)
> +struct intel_crtc *intel_joiner_primary_crtc(const struct
> +intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>=20
> @@ -808,7 +865,7 @@ intel_get_crtc_new_encoder(const struct
> intel_atomic_state *state,
>  	int num_encoders =3D 0;
>  	int i;
>=20
> -	primary_crtc =3D intel_primary_crtc(crtc_state);
> +	primary_crtc =3D intel_joiner_primary_crtc(crtc_state);
>=20
>  	for_each_new_connector_in_state(&state->base, connector,
> connector_state, i) {
>  		if (connector_state->crtc !=3D &primary_crtc->base) @@ -4527,7
> +4584,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state
> *state,  {
>  	struct intel_crtc_state *secondary_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, secondary_crtc);
> -	struct intel_crtc *primary_crtc =3D
> intel_primary_crtc(secondary_crtc_state);
> +	struct intel_crtc *primary_crtc =3D
> +intel_joiner_primary_crtc(secondary_crtc_state);
>  	const struct intel_crtc_state *primary_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, primary_crtc);
>=20
> @@ -4547,7 +4604,7 @@ copy_joiner_crtc_state_modeset(struct
> intel_atomic_state *state,  {
>  	struct intel_crtc_state *secondary_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, secondary_crtc);
> -	struct intel_crtc *primary_crtc =3D
> intel_primary_crtc(secondary_crtc_state);
> +	struct intel_crtc *primary_crtc =3D
> +intel_joiner_primary_crtc(secondary_crtc_state);
>  	const struct intel_crtc_state *primary_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, primary_crtc);
>  	struct intel_crtc_state *saved_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index bf665f947b97..35e68e4cc712 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -424,10 +424,14 @@ enum phy intel_port_to_phy(struct
> drm_i915_private *i915, enum port port);  bool
> is_trans_port_sync_mode(const struct intel_crtc_state *state);  bool
> is_trans_port_sync_master(const struct intel_crtc_state *state);
>  u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state=
); -bool
> intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)=
;  bool
> intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state
> +*crtc_state); bool intel_crtc_is_bigjoiner_primary(const struct
> +intel_crtc_state *crtc_state); bool
> +intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state
> +*crtc_state); bool intel_crtc_is_ultrajoiner(const struct
> +intel_crtc_state *crtc_state); bool
> +intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state
> +*crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc=
_state); -
> struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc=
_state);
> +struct intel_crtc *intel_joiner_primary_crtc(const struct
> +intel_crtc_state *crtc_state);

I think with all these joiner related functions introduced maybe joiner get=
s it own file
Quite a lot of functions including enable disable sequences including the f=
unctions introduced here can be moved there

Regards,
Suraj Kandpal

>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);  b=
ool
> intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config, diff --git
> a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 3491db5cad31..b53b810c6470 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -193,7 +193,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>  			"transitional active state does not match atomic hw
> state (expected %i, found %i)\n",
>  			sw_crtc_state->hw.active, crtc->active);
>=20
> -	primary_crtc =3D intel_primary_crtc(sw_crtc_state);
> +	primary_crtc =3D intel_joiner_primary_crtc(sw_crtc_state);
>=20
>  	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
>  		enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b9687b7692b8..11058bb37d5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -761,7 +761,7 @@ void intel_uncompressed_joiner_enable(const struct
> intel_crtc_state *crtc_state)
>  	u32 dss_ctl1_val =3D 0;
>=20
>  	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
> -		if (intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
>  			dss_ctl1_val |=3D UNCOMPRESSED_JOINER_SECONDARY;
>  		else
>  			dss_ctl1_val |=3D UNCOMPRESSED_JOINER_PRIMARY;
> @@ -790,7 +790,7 @@ void intel_dsc_enable(const struct intel_crtc_state
> *crtc_state)
>  	}
>  	if (crtc_state->joiner_pipes) {
>  		dss_ctl1_val |=3D BIG_JOINER_ENABLE;
> -		if (!intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>  			dss_ctl1_val |=3D PRIMARY_BIG_JOINER_ENABLE;
>  	}
>  	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder)=
,
> dss_ctl1_val);
> --
> 2.45.2

