Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B10B9AF90B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 07:00:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59E610E27B;
	Fri, 25 Oct 2024 05:00:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kCGWlv5e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7E110E272;
 Fri, 25 Oct 2024 05:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729832438; x=1761368438;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PAGXXmohIeiGYkaM+dIAU+jfMSx4VQhsSJULhrHRuPs=;
 b=kCGWlv5eQ1EtCbHmwTxxYkgXUZ2ff75HY4CMc9HgxZIb8neb9nhOpUpw
 P6DAPiH21XaeQBm2phsiWS8nfAhG6TrHC6Zr5XV+aKrJQ/UzWP/+JyPs8
 lOznuuv1n6ev23IcpGvbkq3klY6StOxHU8Ej3sCEXyasrHVaJ+oEU7kXN
 V1eT9WnctwxerVPaGwI4v8M63Hq0Hi8Whn277FX8PYAW8QjFkG6bgcCsl
 t+mvAHjIqQzQLndioxh6cln4ypN8Qx1p8hBjooEzlfQpUlnroxSvYxkyj
 JgayMTj3SirWyLYKuc38NXIirj+d/iyx96e4AwFYeVlWIqnSL3YSz6V7c Q==;
X-CSE-ConnectionGUID: Dqs5KJwQTVmTsERoUok1Jw==
X-CSE-MsgGUID: jUDyKL11SEW6jRnxMNaB5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29392456"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="29392456"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 22:00:38 -0700
X-CSE-ConnectionGUID: VsvkWScjS1q78wkWBncyjg==
X-CSE-MsgGUID: HWtaB/45QwiOm/6EmbviPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="81122860"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 22:00:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 22:00:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 22:00:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 22:00:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r6uNTQBAkpnSqHIN1bHpoOWyp/EVjlzb4iRVLTedXy5nd4UOUrubrG18xNis+HygFfkyVOCY5VOwEzEu5PCEKYTOR3LZPHDcjjerv1jdTeL2QjwRG0tW/M6rMm58WXJcL/DyeNADDh9xMSfmwhNk5YIA7XL+wBEYztDSe+2+ca61eIMo+UylX67mYyU+bRYBLsCSWBf2Up3Airwp8f0WkYiFYXWa0ntzjlM3sSbGEc/UYpsBauF47ntMTr5LS00t+pJ1sqI6AkWn3+XVYdTR3vemf/a35U2hkky2eFUhZ0s0d1pCHfHdTqQmxOVfcJ9JFR582EOIu2/kPLsat0ZKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e3yGQPbXpD1wn+Y3pExsfaDRR+brLDuChrztJRWVXM4=;
 b=YXPyir0AD/ZsNmdKPOHU6j6ZGE7kaS0kw7Kq7uoqum7kGaedPl0k7fo8izSEsxd0pAeXQdrhfeeqHZsJUv3FmR/me4WJXW3bv7x4lqb5oY/tFfYaM8rvkbuEcKNX1Eyx/uymtpGRPhEBGJmTn9wLJygIMFsEY+MjkUnWw18eui7Go2ikABhbrLz+aIYJLJ5OekuuNr0TK9Pz/zZWkPKOIGYIeXbqRBx2NI7ZoNjSI6cMnFKDChLAClwTVu7CmYhxpE/I9qnH/DsgIAu3Sk675KJTbAKU9yl7++z3NPK8a5N35RPVGbbxoIkLza+Uu2x+9RbQyLyLR105YR0nr/kplQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB5921.namprd11.prod.outlook.com (2603:10b6:806:22a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 05:00:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.8069.027; Fri, 25 Oct 2024
 05:00:30 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 03/11] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
Thread-Topic: [PATCH v4 03/11] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
Thread-Index: AQHbJmSIIxaUsg1Dok2QMza5fF8+S7KW6IyA
Date: Fri, 25 Oct 2024 05:00:30 +0000
Message-ID: <IA0PR11MB7307EEDB0807E3AA4B0E6184BA4F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-4-clinton.a.taylor@intel.com>
In-Reply-To: <20241024223114.785209-4-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB5921:EE_
x-ms-office365-filtering-correlation-id: efb7086f-04e8-409b-18ce-08dcf4b1f2fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?cckZ5Wk/SSaX4t2TSN2vho0clNiHQM1nZJRVmOJedcrn/JONI2eVP+GX8Ky9?=
 =?us-ascii?Q?1AEfZelraigjKJAfJ+4cU7sdFAvQh5WdlaiqQMlF8FcxMkS3KbgUMWzM4OOc?=
 =?us-ascii?Q?2407bA9fN+dc1x3BEMaeDrusLWzsBmOEH8XTMhMnJvuj7HoplX15Lj4SStGA?=
 =?us-ascii?Q?kiwDPZQAR92dhrr73N+U3b3ucOeTALQtvE3lbx1UwRiHRzbOIWySNN5ZJV9e?=
 =?us-ascii?Q?7K5hnC1651LXFCXApOvJjvZdxlPArBlfT1raT1KbA+H3aR9f/KaIYiu8NsQf?=
 =?us-ascii?Q?8BMTUeM/b3DfERkY35OE9yYv7chBDQo8Pw5z0Ibcg2v/aHwFy2VOj9J9pdiL?=
 =?us-ascii?Q?8ntnRSuBbeWS+IYhsFoYH+yvZlo//SSjzTdUJ7tSx3hCj0dklhQLAOYzGKRJ?=
 =?us-ascii?Q?qNjP1DK3RdSBQtD+WWOQuIDItPDsYZBSkYx45b9QmHK5h1OLiKYZWcsw/rl1?=
 =?us-ascii?Q?0/3bnz7asdr1uxlcROkRpIyhR4R8HG6OXNw3wa6LaFPnWJW6F5FN43CMlsBf?=
 =?us-ascii?Q?K/KkoEPqNW7378oFr0E8uW9O5p9Wkix/IujBFEqpU35yHJQmK/1v2UpVUQvt?=
 =?us-ascii?Q?iSyzlM6+DWfFrUeGahFTdeYMtGc95nXycho/s2DcbJMUDwIeKkdgWaEb/+w/?=
 =?us-ascii?Q?6yKXaiD1XgHZm3n2afMOKdTV836N/YuhQSZMAObfOwrdonyQgvFaAXFu8iK2?=
 =?us-ascii?Q?L/ZafcHs9FRrGGb+N3ZGR7UjzDEprFqjOxh6HFym1bKerUZldxkf8KIaNrpT?=
 =?us-ascii?Q?OqX525H//GGZHSUjoMQXQy9f2SgViOrir6tkiFDL5QYfMSSB8qxsSP9e/YUq?=
 =?us-ascii?Q?DaWoFW0OiPmAceADUMQEKP4HxBsZSTkrw+vRhI5zOnrIWZWtprrXSEYhDrx0?=
 =?us-ascii?Q?W/+cMIGC+KzHnEDWkZ1VdAcBzc+qzzFQrZueylEuDe9ETe6NfjCjaTLX5IgO?=
 =?us-ascii?Q?4KxXihsLgdwqtvJr03cbb5T0DXrl1ZLguU/Qm+ItD/jgEJC0gVKaAxaC4GWV?=
 =?us-ascii?Q?ufqlAGUXCUBhOHu9QWYwqWel9c0DIukELJPqhlrVaizvSdNMxilpIj85YxBU?=
 =?us-ascii?Q?h2w9SEUsrfjjCkWzWSmXj44UzDbvG8tYfQI77gWgC9BhkTLFdVUnPGznOnTl?=
 =?us-ascii?Q?oLX/ivD+Jlhw4IWLk4au8RsbLrML3yGB99Kz/PFdXw7DvC71UrL8mPi9a2tO?=
 =?us-ascii?Q?gDeQ0m38NAtKc2kl84zHN1QqxADWyOZl18Nw86NywPI6vLAI1T7nIQ+Xc3IZ?=
 =?us-ascii?Q?TnkG9UTrcQGqph1bIcN3MZ38x4hNZp4yqsFChHoNSdWVW0qO4ZuVU+PSavCO?=
 =?us-ascii?Q?MVWxnPeGemg+99D6TbYw/LgQ6Ieb+ujWNODRz6owvNsTcpI2LReNjkhK8p1N?=
 =?us-ascii?Q?1BzPXYA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4qtvttCQPiOktV+137lnv0yM26zMTbEajHgxtOOj04mK2UrSkjUhsXAwyrGq?=
 =?us-ascii?Q?Ac/p355baJC8MD7vFb2dRfrr31TKkuT7U/OX3X/6BFOl9ET6im6zvayfM195?=
 =?us-ascii?Q?TEqez43RIryJGimx9CVtHgBhVdfC2Pn1l3vZwZW5nXWSFL477oRJH3W2znX/?=
 =?us-ascii?Q?GJ27M688AF1mTLb6EK0nAx3Ogc7UF64U4DEWcG/FRQNH2F4Rk6dDFipQceOm?=
 =?us-ascii?Q?ZMapnJrqOq1YsDWNOVuoUymh3dKiCig43dSYG26OGzNAj9B7RhJU1SJkNRkr?=
 =?us-ascii?Q?qctPX6l1Dpj4uPTHXBKXEsMcXa791dj5XkN1x1EC8qhQQ+EGWYHRnl4IRiUg?=
 =?us-ascii?Q?1Z08U+rkfHoKh0wTDfjiHvQ4QRKtpWpUQ1pJEtrInjVOpi1VmRd26enhnkN4?=
 =?us-ascii?Q?1t/QpcNgfWTw18rb530J6AmSu9iZd3wVYYvHrnh2SD4JOt9h/Gs8XD2LHnAh?=
 =?us-ascii?Q?IAIV1gNYhjnKopTMxTU/60VrsQIOR+jV1Dky0mWSFGX4mo5Sy0OIU5L1NSqL?=
 =?us-ascii?Q?NIi3rN/ZXnDn+gPd5t9bgjHGJlLW1ma0IY5UmjD5Ulq2DXXvtsdGeIgGe4Tj?=
 =?us-ascii?Q?YheUCX2+h/yhKXHTv0GA4DxdpU6JxCvr8hMjK1IRL0WdRPnZyYFm8bUO00n0?=
 =?us-ascii?Q?52CH5Pc0Jx6DVtCwaiihwiEgTDMaVt6VYRO2DCaMp0ieyWyEW1W46z6BEhOU?=
 =?us-ascii?Q?gTj2QbKcBC7HFUu1kAcGKvEm6jKq6ZrTV9EHltH5HMczsYL3od6Oqg8c71MA?=
 =?us-ascii?Q?a03NaeZ8E7ZMhFvYUNyLmWuSJh8w28CWBX+eZAGe4Tsa2J60Ds8voux4yF3T?=
 =?us-ascii?Q?TJgtB1rHwpOtW3eYY/v5OQw2F0lCKVgVrDMGV9zCcwguCDs8fGsJMiOlluum?=
 =?us-ascii?Q?uB/23LRg7KtjwgMtSHgDiKXLB2AqKtF0XMGh2vMVxpAFCzA/pBXZ7x6t1pAm?=
 =?us-ascii?Q?zDy80RjHyAFL4C250qQLjFW2+zmWJ4/JXAe6i0mTFQ0JHKwtOypVwTPHazsj?=
 =?us-ascii?Q?LjMFmp9KNngPdI49nBQ7fQErQw4MzSGTzsAm7lFjKn6VBdjhhic/tFB6OJeW?=
 =?us-ascii?Q?pOQXpnB6GZg8a2RUaa8VRTlqQS0h1ELJDwA4cS8a9OgLB1ir8Rt/ST3bsAf8?=
 =?us-ascii?Q?L8plAXiRRDLqCwr2g1vFxAEGMWwu4/qV7+5Sy1jk9wAZgYiSFEkjjTWJcZdr?=
 =?us-ascii?Q?5z/35OFJRTiKyWL3Poo7VBkR2MZwYiTcPC2w+ceUuDp01SJ4CnYIAlf4CY3g?=
 =?us-ascii?Q?SogJYPormewYyw5SF2PDlJVXnoVrimcjTQhCwxyaiDuIrTsKgBD9LPEY5Zj0?=
 =?us-ascii?Q?jrIK1Csa1eXKcb04IuNQR50KRXGi+dszzY5/n9cZ2khGz8QSrrfPH7UER3zC?=
 =?us-ascii?Q?AsVEvwJRFzPOfpExk8MvI8zu7XIRMEzuXnD+FMOkuDY6An8tcnWwxHmQ06+R?=
 =?us-ascii?Q?sIBLa7VBIdKzxF88lmMr0iZ+1xLdfJGNBWrnMWy7abHm21zg/QnguhWcs3G1?=
 =?us-ascii?Q?6z+3rDNYvhfDDzEf9AVCo+py7XkDQBd9fWoq5IcQk5UFUenF9B4Rl3JT6M2M?=
 =?us-ascii?Q?sWF8ZOodEYB6DB+SZsA4fcPF7JwuRVCHLVo3zc/F5E75lo2UB0KEIuhm6eKu?=
 =?us-ascii?Q?tcUonfPav20p2CHpxl0gM6NdOjL3Kvr4eG/B0uudg9vk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efb7086f-04e8-409b-18ce-08dcf4b1f2fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 05:00:30.2807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x5wL+6UaqACQZfCqfXd2kYjw0sN47O/+QNdT4T0GhscNbB2C4xZ8q3iKmgLESsVHWGK0d8qJRsmD7td4AafcxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5921
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Cl=
int
> Taylor
> Sent: Friday, October 25, 2024 4:01 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v4 03/11] drm/i915/xe3lpd: Add check to see if edp over t=
ype c
> is allowed
>=20
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Read PICA register to see if edp over type C is possible and then add the
> appropriate tables for it.
>=20
> --v2
> -remove bool from intel_encoder have it in runtime_info [Jani] -initializ=
e the
> bool in runtime_info init [Jani] -dont abbreviate the bool [Jani]
>=20
> --v3
> -Remove useless display version check [Jani] -change the warn on conditio=
n
> [Jani] -no need for a different function for edp type c check [Jani] -don=
t add
> register in i915_reg [Jani]
>=20
> Bspec: 68846
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
Looks good to me
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  drivers/gpu/drm/i915/display/intel_cx0_phy.c        | 3 +++
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h   | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
> drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c             | 7 ++++---
>  5 files changed, 16 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8bd5a4d1b735..d05daa7a2b03 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2257,9 +2257,12 @@ intel_c20_pll_tables_get(struct intel_crtc_state
> *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>=20
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> +			if (DISPLAY_RUNTIME_INFO(display)-
> >edp_typec_support)
> +				return xe3lpd_c20_dp_edp_tables;
>  			if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1))
>  				return xe2hpd_c20_edp_tables;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..e8ebb12155a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -363,4 +363,7 @@
>  #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
>  #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>=20
> +#define PICA_PHY_CONFIG_CONTROL		_MMIO(0x16FE68)
> +#define   EDP_ON_TYPEC			REG_BIT(31)
> +
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index aa22189e3853..949838308ec9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -9,6 +9,7 @@
>=20
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "intel_cx0_phy_regs.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_device.h"
> @@ -1685,6 +1686,10 @@ static void
> __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  		}
>  	}
>=20
> +	if (DISPLAY_VER(i915) >=3D 30)
> +		display_runtime->edp_typec_support =3D
> +			intel_de_read(display, PICA_PHY_CONFIG_CONTROL) &
> EDP_ON_TYPEC;
> +
>  	display_runtime->rawclk_freq =3D intel_read_rawclk(display);
>  	drm_dbg_kms(&i915->drm, "rawclk rate: %d kHz\n", display_runtime-
> >rawclk_freq);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 071a36b51f79..410f8b33a8a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -232,6 +232,7 @@ struct intel_display_runtime_info {
>  	bool has_hdcp;
>  	bool has_dmc;
>  	bool has_dsc;
> +	bool edp_typec_support;
>  };
>=20
>  struct intel_display_device_info {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7e29619ba040..9f015b530289 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6441,10 +6441,11 @@ intel_dp_init_connector(struct intel_digital_port
> *dig_port,
>=20
>  	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
>  		/*
> -		 * Currently we don't support eDP on TypeC ports, although in
> -		 * theory it could work on TypeC legacy ports.
> +		 * Currently we don't support eDP on TypeC ports for
> DISPLAY_VER < 30,
> +		 * although in theory it could work on TypeC legacy ports.
>  		 */
> -		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder));
> +		drm_WARN_ON(dev, intel_encoder_is_tc(intel_encoder) &&
> +			    DISPLAY_VER(dev_priv) < 30);
>  		type =3D DRM_MODE_CONNECTOR_eDP;
>  		intel_encoder->type =3D INTEL_OUTPUT_EDP;
>=20
> --
> 2.25.1

