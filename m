Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096BAA5D57F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF7A10E26C;
	Wed, 12 Mar 2025 05:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfR0PF3O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F23110E0B8;
 Wed, 12 Mar 2025 05:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741757012; x=1773293012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uUfQXt58K13ySagzTbyT9finnZ23K+2i2tZYyhZ5zGc=;
 b=CfR0PF3OGZYtsCBJZOCc8jaWj8M7FSnTChI3Zghpei8d+xPHOIP9LulP
 3QGiLgmYIoNIMwoRwrnsixpIpVMHVf3V7XaqIgMflVFs/00PbBB7PgC2z
 FN6ldXrdjo6jS/HW0nzeAbciIGP86CtV5R/I/2SnO35uIQL6jdz8iDp5X
 X79Q8dB/au8T9/EoGAB45btkOZJamxi3zmFCNmm5Zwd7VBVxgAvxOuK71
 UKPHIRRjEHT5bOGcy13560TJdVYicBWvhjpjmjEXW3l0zAIyLU8DEb5M8
 HQeroarRYS4tVOX8Eor3zGcCrSPH/zf4XjcVofFNJINqMw0YBmySffrk8 w==;
X-CSE-ConnectionGUID: epMgbaV0Qj6tDWy/n45bhg==
X-CSE-MsgGUID: KWnDTXdgSI+r97X3yXk6Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="68182869"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="68182869"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:23:31 -0700
X-CSE-ConnectionGUID: yXQcl5WJQTmURH0MeNUqLw==
X-CSE-MsgGUID: 4sQepRFDRWWmIF1abbXLfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120345989"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:23:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 22:23:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 22:23:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:23:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Faz12GGJI9dJQ5PhEl6Zwq3Bx8jHU0cdTpzYKauXgFimtG5oXw69F5PeLTjdQLM5glAbrgGkDgcNvDbMxNKg8sREw+Fy99HWkxGSHUVIFWj3F7QnvERxC11g9JLfF8BahBt6M58L/uGYJpMUEnn3qa5dq9RPAXAIsXqzCDkuoI5xGmDz7KNQ0SKo/7phd90V2ZC4ZsGbbF+7yeKz9Cd6P8//SnTaYSToROv8IRRAGcByZNaZ+q4PJlDicTnMYdf2iwZFTiqge5/q2oY2DBgxvUCvGVfrqG1tJcl3TBnTiwvPOfpGzQ/K7Kej/puf+k/hFcXbLRgxk4yAc5DNTlC+Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0EyGBCPS/Km1ie0jfDEoyB/OL36q5vr7MZ7C3P/cPk=;
 b=Tk2QWYGmVbc4NBwQlxxgfzir9cEzO4RKWFKuE7DCcaG8g/QBts/Ti2p7gYxgBkKbYEhxEFOEIHgUxskspRXcbhZJqOYwNvrod24XsLvfRM9xMvfrys1YzNqztsOc47Np7ofRy/89AYnrkplBk9yDLo0h+ih06ozUxIAM3YC1lwjrehyAoZ2RCBRBnAlCFIWwP6TJbj5GrGqo9+wnmJshPUa5fLaDeJJMyMR82eyvNitfvbNby5ZZkd7obhUacB6S1VV+yiPgdwN9a8POqF+Xm6BqAdcrf1RloEAm06lpAxkLpWQ0ioCj7mH90+zAGIOYYtiniMeA66qPU6Sbyva9mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB8334.namprd11.prod.outlook.com (2603:10b6:208:483::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 05:23:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:23:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 5/9] drm/i915/hotplug: convert hotplug irq handling to
 intel_de_*()
Thread-Topic: [PATCH 5/9] drm/i915/hotplug: convert hotplug irq handling to
 intel_de_*()
Thread-Index: AQHbkq+o9bW37w00lEueU89Njj7LHLNu+DGA
Date: Wed, 12 Mar 2025 05:23:23 +0000
Message-ID: <DM4PR11MB6360B8442E74AF69F13E8087F4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <95b13318161ecf049bdf72e53235bdba77253541.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <95b13318161ecf049bdf72e53235bdba77253541.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB8334:EE_
x-ms-office365-filtering-correlation-id: 8ec21722-5e8c-46e0-7fe7-08dd612602b5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?e/s9GnwZ5+lzoOeLEGbiiub9pVeiSIAlgXRQ+8y4KLfDwk/MPDcQRFGabsgl?=
 =?us-ascii?Q?07wrCj88RDu7w/D/JFoUkCb9NYPiWTplIGQ8+uL7QxPca/IUNHhlkaKrteZn?=
 =?us-ascii?Q?v6GvZgE4l5xdIGfjXQUOVbJ+xHOv5neQT3A2XAj7mx/jKlAZXR9a1IMdojNT?=
 =?us-ascii?Q?6m8kuzdXqbkE7vy1yepOMYlbJUkc0x+geDuPQeTlN3MPXoVexq+U/K7hKtBK?=
 =?us-ascii?Q?rAzDzUyIiynp3NKLtSW9NUTaj0m8khov+JlmtgdZcswGpcCZcrBsrFwq89z0?=
 =?us-ascii?Q?clGxk379W4VA96W/D5r62hiCP/qp3KE1Z3sXX5X1UIw/hMqnpA9xhwcdtM5y?=
 =?us-ascii?Q?gphgUQs8CvF9lMilssjjPhGy+68Xdvwx1qTgVj/aPS5S2RuOo6zhXG7POJAv?=
 =?us-ascii?Q?qVKnOR5E42HN87Q3sLNWrs1hw+II0H17yi3Xhn4VYKww/IY9DtcOpoi22YyQ?=
 =?us-ascii?Q?0fTs5ygTVmJBq5UQAf6uNfvZSfVPZ5Q7EHxM5/1w1/vABw1dXv45M+faWywn?=
 =?us-ascii?Q?+sUc4g3HOnKOjP/UkN97a9Xcb3tyyTBI+gpXmoMo+KKcpHcMGIV32a9DXAYR?=
 =?us-ascii?Q?4auKmK+OfG/gLCNvbBD2uO/8M0ozpA75HEaxtjf/aoYVjb4Rb64Ty3UFO5qd?=
 =?us-ascii?Q?q/TE3Af7Fp0rehQ0u3yA3zR0K2Obo4/e+X/hYPXyRMiwYxNNU+ESUrCRLgrL?=
 =?us-ascii?Q?cNww0r1espWXA7W2wKJ//iCdueBZ1P4uypxJTQ5Ux+bzIbuvO0yrOqzFwZPT?=
 =?us-ascii?Q?FhMRTrEssD6KKGrtZ0B8hhHUklkypm65BARJ6IzKSm4ijiWuNel49flqSFYp?=
 =?us-ascii?Q?XpEUAqtpTC8NAWMIzCXFYSF2nmGaPrld0G3evXa0oFMtPNvk+GPs0bpTIBxR?=
 =?us-ascii?Q?ZRNAkEKnPBh1LHi5HUahW1K4jQfxIKWhekjbqiz3xp9Yn6QGiOxXOGWj5ch6?=
 =?us-ascii?Q?SDfbA/oWbcwYornAdmg5uW71OYcvOUY9eC3gzaqtML86tGVrcFY3KvUleHOD?=
 =?us-ascii?Q?Qd/Qk2Dz1m2VI+ZsPoeXotLsywNhqnTsHThYbGC0aYl/l15KwSPeZ5Bh+yIR?=
 =?us-ascii?Q?YXaAcmb+r6ktdVsp/e06c0HygflJr6n4ZDxLuKxvEqTPpME/IV6ttLHNy5Mn?=
 =?us-ascii?Q?fO7DsqaagBfcwvXJ9w9g2esgwTQ+k951pPHgHrfjpdelyHLiW8LOex3ChL90?=
 =?us-ascii?Q?e8k/Nph5qTYtNIEQLChqHetTnmO+q+VRwvdjDl7XuwyFGRou4gxCazAVXOBT?=
 =?us-ascii?Q?qzBFIicFOCMR6Sw1nvxw9tHJPTv2CmycR5JpD6vsFGgOrCp2xiikGGr3P48k?=
 =?us-ascii?Q?/WMtA6RBMC/LZRd3t0Nf2qrDTykWYc6PviqSvh1I6mgzb1LkMSn/vKE2Lywn?=
 =?us-ascii?Q?HS/+koQd5LvfdQM4Lfg1gNW0pVVmWZSKET0s3KPYSqd2UzCGouYVvUGF1Fj5?=
 =?us-ascii?Q?1hVxRVNxhd3nWdLYt4yufT7Th06GVlj0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ycINuoT6SCfFXsjP6H53ef7JInkJYrObelg3nAD8oRdIWRr6uA6Z9Ivp80py?=
 =?us-ascii?Q?G0sbjgIC0uQc53WuLWwO1tiAGI0//GnzpwG39QYsus4k1P0iOWzxbafn2KTR?=
 =?us-ascii?Q?+s3B30VmubC8EsQV1PLlRezPo8Pj4pfrGP+fiKwKfMM1x7UyRhyw6hhqfkut?=
 =?us-ascii?Q?jyHLNFgDvBAukWJKnDIh1H73Qrp/01aI5JyGjoYyBb0PEz1/eNHn91QZ9mGZ?=
 =?us-ascii?Q?KDUtyxM+s1NTwIBn5g9jxdeAZS73uRE3h9R6/OkRepm4sz7g4hmMklGivtJ7?=
 =?us-ascii?Q?0ZhZgHkcdEf6qg7BTS/NSv088TZEbpjC+y885QflWDN8zJX7WPxGaT0WSAbZ?=
 =?us-ascii?Q?sZ0Bno/eGdiso0pfQRk17l33LTa+omJg+Bddj2uLobEO90Cv99MC5w5YuA6S?=
 =?us-ascii?Q?AU5/NbyYW0Bq8cfcTJiFmQFpRvGTp8XdO7m9n4a4De2MjY+mdQ9xsydiuPo/?=
 =?us-ascii?Q?thnvGuo8cGAdMNGNVi1Jy7p1orEq65YGKj8m6yvvIa4TDPElBgln/9kyk/Jp?=
 =?us-ascii?Q?B79q/WSMmGWO1rIUBEx9nnpenJQgvL2IqZ0lJQCipJd7wiOY59tbXXzWeB2y?=
 =?us-ascii?Q?F19S6C9UX3G+lBjTaTQtZVWeD67SBVz7oS/WnYfxHhxsN33CAJnSR2lMrDHz?=
 =?us-ascii?Q?eBQmFRDBvk5fALivtuJcXzIbl6ptTgLZDHiON1b6SRTj09esCk4pIG/GOSlK?=
 =?us-ascii?Q?s1AHElk2ohBmF3r0qzTM42W9MKsBsmXpXTUQdUFGtPW+dZdY+G3R6BTYbeUl?=
 =?us-ascii?Q?gqL8qCbN29jbk/6cB3O+kUSXRiXhhDlWN020wRIJ1JqOVNy5ywfgauXARjF+?=
 =?us-ascii?Q?Horkdf7ec2Yq8xjFYfaR2FEiJvP9B5zhcaYLcDxCayMtyirVuVcEZFkO/JBh?=
 =?us-ascii?Q?zObZgeyevsrXoJ2ULy6K77H06nI0gZHLhS1fQMewDa0FVfLOlnJfDiH6AUuN?=
 =?us-ascii?Q?UOm4gxZdihC3WXLD7pHvndDebqIM3jhzWZ6EAmVbf6ulzJHo1jv2tE/CqnaU?=
 =?us-ascii?Q?8NCZabo9DUDvg/iN4W19rMbXK1G4F+hXbjx5F+GGeB7DEaoV6PFq0rSpsDkY?=
 =?us-ascii?Q?6BMz0EtLP5cUciRfhaJeEP5+DMY9em57FAkWHiopL0zxnpVlYQGpJm7x82Uq?=
 =?us-ascii?Q?oBFLvGjKuzh01Lb5qCtZzZ6Err8qBZKErzt9WPpPC9NclbQ6P1tQU7U8EUfU?=
 =?us-ascii?Q?ksNVHYYp/pdLzfXOPSh9NiPLWiTpm8c5/bvJlF/xLMRmjD81YuT6qsb+xtNi?=
 =?us-ascii?Q?KAbxSVbQ42IqOXu/VRHFI0MY6Fmip9eKve6dy/IAbzqupIaoKySEVQcV0BZO?=
 =?us-ascii?Q?soeccuru8m/MY34cWewfbckX0oVYzzHxfjuog2EjWkl6AC4T/AkktYX7B8vl?=
 =?us-ascii?Q?IW3w8W2I79MRAiB2rd2BZrCHDYfaut0/82e2gHqVKobUXXkpimxNQ1zh7s+Q?=
 =?us-ascii?Q?YazGt4zsENP16vByN//8awDmqcNmFv0N55xd+vNOczgNkzVM4sNlBPBfaU7Q?=
 =?us-ascii?Q?ePqcEOug4GELjLLCC4La5KWPsR6E4iPXZkF3FSzM3LCw0bt+CeFUJaWue+kf?=
 =?us-ascii?Q?P7IY0dskZEyNNpohd/xa4VqCpxyxjcb8wf00NyhV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ec21722-5e8c-46e0-7fe7-08dd612602b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:23:23.8375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Kxm64Lvh0z4jR97lknJzG91XM6K4lmEkPApF4nhbm7TfxsB88nQTLv51UAf+ilPrsCdsRKcsNzwKr1hcA5Oag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8334
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
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 5/9] drm/i915/hotplug: convert hotplug irq handling to
> intel_de_*()
>=20
> All the registers handled here are display registers. Switch from
> intel_uncore_*() to intel_de_*() functions.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  | 205 ++++++++++--------
>  1 file changed, 114 insertions(+), 91 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index e6320838df59..f24c65478742 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -183,11 +183,12 @@ static void intel_hpd_init_pins(struct drm_i915_pri=
vate
> *dev_priv)  void i915_hotplug_interrupt_update_locked(struct drm_i915_pri=
vate
> *dev_priv,
>  					  u32 mask, u32 bits)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	lockdep_assert_held(&dev_priv->irq_lock);
>  	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
>=20
> -	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN(dev_priv),
> mask,
> -			 bits);
> +	intel_de_rmw(display, PORT_HOTPLUG_EN(display), mask, bits);
>  }
>=20
>  /**
> @@ -415,6 +416,7 @@ static u32 intel_hpd_hotplug_enables(struct
> drm_i915_private *i915,
>=20
>  u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 hotplug_status =3D 0, hotplug_status_mask;
>  	int i;
>=20
> @@ -435,21 +437,20 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private
> *dev_priv)
>  	 * bits can itself generate a new hotplug interrupt :(
>  	 */
>  	for (i =3D 0; i < 10; i++) {
> -		u32 tmp =3D intel_uncore_read(&dev_priv->uncore,
> -					    PORT_HOTPLUG_STAT(dev_priv)) &
> hotplug_status_mask;
> +		u32 tmp =3D intel_de_read(display,
> +					PORT_HOTPLUG_STAT(display)) &
> hotplug_status_mask;
>=20
>  		if (tmp =3D=3D 0)
>  			return hotplug_status;
>=20
>  		hotplug_status |=3D tmp;
> -		intel_uncore_write(&dev_priv->uncore,
> -				   PORT_HOTPLUG_STAT(dev_priv),
> -				   hotplug_status);
> +		intel_de_write(display, PORT_HOTPLUG_STAT(display),
> +			       hotplug_status);
>  	}
>=20
>  	drm_WARN_ONCE(&dev_priv->drm, 1,
>  		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
> -		      intel_uncore_read(&dev_priv->uncore,
> PORT_HOTPLUG_STAT(dev_priv)));
> +		      intel_de_read(display, PORT_HOTPLUG_STAT(display)));
>=20
>  	return hotplug_status;
>  }
> @@ -492,7 +493,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_trigger)
>  	 * zero. Not acking leads to "The master control interrupt lied (SDE)!"
>  	 * errors.
>  	 */
> -	dig_hotplug_reg =3D intel_uncore_read(&dev_priv->uncore,
> PCH_PORT_HOTPLUG);
> +	dig_hotplug_reg =3D intel_de_read(display, PCH_PORT_HOTPLUG);
>  	if (!hotplug_trigger) {
>  		u32 mask =3D PORTA_HOTPLUG_STATUS_MASK |
>  			PORTD_HOTPLUG_STATUS_MASK |
> @@ -501,7 +502,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_trigger)
>  		dig_hotplug_reg &=3D ~mask;
>  	}
>=20
> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> dig_hotplug_reg);
> +	intel_de_write(display, PCH_PORT_HOTPLUG, dig_hotplug_reg);
>  	if (!hotplug_trigger)
>  		return;
>=20
> @@ -567,7 +568,7 @@ void icp_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>=20
>  		/* Locking due to DSI native GPIO sequences */
>  		spin_lock(&dev_priv->irq_lock);
> -		dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> SHOTPLUG_CTL_DDI, 0, 0);
> +		dig_hotplug_reg =3D intel_de_rmw(display, SHOTPLUG_CTL_DDI, 0,
> 0);
>  		spin_unlock(&dev_priv->irq_lock);
>=20
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask, @@ -
> 579,7 +580,7 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u=
32
> pch_iir)
>  	if (tc_hotplug_trigger) {
>  		u32 dig_hotplug_reg;
>=20
> -		dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> SHOTPLUG_CTL_TC, 0, 0);
> +		dig_hotplug_reg =3D intel_de_rmw(display, SHOTPLUG_CTL_TC, 0,
> 0);
>=20
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   tc_hotplug_trigger, dig_hotplug_reg, @@ -
> 605,7 +606,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u=
32
> pch_iir)
>  	if (hotplug_trigger) {
>  		u32 dig_hotplug_reg;
>=20
> -		dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> PCH_PORT_HOTPLUG, 0, 0);
> +		dig_hotplug_reg =3D intel_de_rmw(display, PCH_PORT_HOTPLUG,
> 0, 0);
>=20
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   hotplug_trigger, dig_hotplug_reg, @@ -616,7
> +617,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch=
_iir)
>  	if (hotplug2_trigger) {
>  		u32 dig_hotplug_reg;
>=20
> -		dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> PCH_PORT_HOTPLUG2, 0, 0);
> +		dig_hotplug_reg =3D intel_de_rmw(display, PCH_PORT_HOTPLUG2,
> 0, 0);
>=20
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   hotplug2_trigger, dig_hotplug_reg, @@ -636,7
> +637,7 @@ void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
>  	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
> -	dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
> +	dig_hotplug_reg =3D intel_de_rmw(display,
> DIGITAL_PORT_HOTPLUG_CNTRL, 0,
> +0);
>=20
>  	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  			   hotplug_trigger, dig_hotplug_reg, @@ -651,7 +652,7
> @@ void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
>  	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
> -	dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> PCH_PORT_HOTPLUG, 0, 0);
> +	dig_hotplug_reg =3D intel_de_rmw(display, PCH_PORT_HOTPLUG, 0, 0);
>=20
>  	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  			   hotplug_trigger, dig_hotplug_reg, @@ -671,7 +672,7
> @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  	if (trigger_tc) {
>  		u32 dig_hotplug_reg;
>=20
> -		dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> GEN11_TC_HOTPLUG_CTL, 0, 0);
> +		dig_hotplug_reg =3D intel_de_rmw(display,
> GEN11_TC_HOTPLUG_CTL, 0, 0);
>=20
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   trigger_tc, dig_hotplug_reg,
> @@ -682,7 +683,7 @@ void gen11_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>  	if (trigger_tbt) {
>  		u32 dig_hotplug_reg;
>=20
> -		dig_hotplug_reg =3D intel_uncore_rmw(&dev_priv->uncore,
> GEN11_TBT_HOTPLUG_CTL, 0, 0);
> +		dig_hotplug_reg =3D intel_de_rmw(display,
> GEN11_TBT_HOTPLUG_CTL, 0, 0);
>=20
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   trigger_tbt, dig_hotplug_reg,
> @@ -741,23 +742,25 @@ static u32 ibx_hotplug_enables(struct intel_encoder
> *encoder)
>=20
>  static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)  =
{
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	/*
>  	 * Enable digital hotplug on the PCH, and configure the DP short pulse
>  	 * duration to 2ms (which is the minimum in the Display Port spec).
>  	 * The pulse duration bits are reserved on LPT+.
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> -			 intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> ibx_hotplug_enables));
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> +		     intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
>  }
>=20
>  static void ibx_hpd_enable_detection(struct intel_encoder *encoder)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
> -			 ibx_hotplug_mask(encoder->hpd_pin),
> -			 ibx_hotplug_enables(encoder));
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> +		     ibx_hotplug_mask(encoder->hpd_pin),
> +		     ibx_hotplug_enables(encoder));
>  }
>=20
>  static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv) @@ -812=
,34
> +815,38 @@ static u32 icp_tc_hotplug_enables(struct intel_encoder *encode=
r)
>=20
>  static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_pri=
v)  {
> -	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
> -			 intel_hpd_hotplug_mask(dev_priv,
> icp_ddi_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> icp_ddi_hotplug_enables));
> +	struct intel_display *display =3D &dev_priv->display;
> +
> +	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
> +		     intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv,
> icp_ddi_hotplug_enables));
>  }
>=20
>  static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder) =
 {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_DDI,
> -			 icp_ddi_hotplug_mask(encoder->hpd_pin),
> -			 icp_ddi_hotplug_enables(encoder));
> +	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
> +		     icp_ddi_hotplug_mask(encoder->hpd_pin),
> +		     icp_ddi_hotplug_enables(encoder));
>  }
>=20
>  static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv=
)  {
> -	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
> -			 intel_hpd_hotplug_mask(dev_priv,
> icp_tc_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> icp_tc_hotplug_enables));
> +	struct intel_display *display =3D &dev_priv->display;
> +
> +	intel_de_rmw(display, SHOTPLUG_CTL_TC,
> +		     intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv,
> icp_tc_hotplug_enables));
>  }
>=20
>  static void icp_tc_hpd_enable_detection(struct intel_encoder *encoder)  =
{
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_TC,
> -			 icp_tc_hotplug_mask(encoder->hpd_pin),
> -			 icp_tc_hotplug_enables(encoder));
> +	intel_de_rmw(display, SHOTPLUG_CTL_TC,
> +		     icp_tc_hotplug_mask(encoder->hpd_pin),
> +		     icp_tc_hotplug_enables(encoder));
>  }
>=20
>  static void icp_hpd_enable_detection(struct intel_encoder *encoder) @@ -=
850,6
> +857,7 @@ static void icp_hpd_enable_detection(struct intel_encoder *enco=
der)
>=20
>  static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> @@ -859,7 +867,7 @@ static void icp_hpd_irq_setup(struct drm_i915_private
> *dev_priv)
>  	 * We reduce the value to 250us to be able to detect SHPD when an
> external display
>  	 * is connected. This is also expected of us as stated in DP1.4a Table =
3-4.
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_250);
> +	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>=20
>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> @@ -889,11 +897,12 @@ static u32 gen11_hotplug_enables(struct
> intel_encoder *encoder)
>=20
>  static void dg1_hpd_invert(struct drm_i915_private *i915)  {
> +	struct intel_display *display =3D &i915->display;
>  	u32 val =3D (INVERT_DDIA_HPD |
>  		   INVERT_DDIB_HPD |
>  		   INVERT_DDIC_HPD |
>  		   INVERT_DDID_HPD);
> -	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
> +	intel_de_rmw(display, SOUTH_CHICKEN1, 0, val);
>  }
>=20
>  static void dg1_hpd_enable_detection(struct intel_encoder *encoder) @@ -
> 912,34 +921,38 @@ static void dg1_hpd_irq_setup(struct drm_i915_private
> *dev_priv)
>=20
>  static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_pr=
iv)  {
> -	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
> -			 intel_hpd_hotplug_mask(dev_priv,
> gen11_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> gen11_hotplug_enables));
> +	struct intel_display *display =3D &dev_priv->display;
> +
> +	intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL,
> +		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv,
> gen11_hotplug_enables));
>  }
>=20
>  static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)=
  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_uncore_rmw(&i915->uncore, GEN11_TC_HOTPLUG_CTL,
> -			 gen11_hotplug_mask(encoder->hpd_pin),
> -			 gen11_hotplug_enables(encoder));
> +	intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL,
> +		     gen11_hotplug_mask(encoder->hpd_pin),
> +		     gen11_hotplug_enables(encoder));
>  }
>=20
>  static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_p=
riv)
> {
> -	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
> -			 intel_hpd_hotplug_mask(dev_priv,
> gen11_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> gen11_hotplug_enables));
> +	struct intel_display *display =3D &dev_priv->display;
> +
> +	intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL,
> +		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv,
> gen11_hotplug_enables));
>  }
>=20
>  static void gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder=
)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_uncore_rmw(&i915->uncore, GEN11_TBT_HOTPLUG_CTL,
> -			 gen11_hotplug_mask(encoder->hpd_pin),
> -			 gen11_hotplug_enables(encoder));
> +	intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL,
> +		     gen11_hotplug_mask(encoder->hpd_pin),
> +		     gen11_hotplug_enables(encoder));
>  }
>=20
>  static void gen11_hpd_enable_detection(struct intel_encoder *encoder) @@=
 -
> 955,14 +968,15 @@ static void gen11_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
>=20
> -	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR,
> hotplug_irqs,
> -			 ~enabled_irqs & hotplug_irqs);
> -	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
> +	intel_de_rmw(display, GEN11_DE_HPD_IMR, hotplug_irqs,
> +		     ~enabled_irqs & hotplug_irqs);
> +	intel_de_posting_read(display, GEN11_DE_HPD_IMR);
>=20
>  	gen11_tc_hpd_detection_setup(dev_priv);
>  	gen11_tbt_hpd_detection_setup(dev_priv);
> @@ -1141,6 +1155,7 @@ static void xelpdp_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)  {
> +	struct intel_display *display =3D &i915->display;
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd=
);
> @@ -1148,7 +1163,7 @@ static void xelpdp_hpd_irq_setup(struct
> drm_i915_private *i915)
>=20
>  	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
>  		     ~enabled_irqs & hotplug_irqs);
> -	intel_uncore_posting_read(&i915->uncore, PICAINTERRUPT_IMR);
> +	intel_de_posting_read(display, PICAINTERRUPT_IMR);
>=20
>  	xelpdp_pica_hpd_detection_setup(i915);
>=20
> @@ -1196,48 +1211,52 @@ static u32 spt_hotplug2_enables(struct
> intel_encoder *encoder)
>=20
>  static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)  =
{
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	/* Display WA #1179 WaHardHangonHotPlug: cnp */
>  	if (HAS_PCH_CNP(dev_priv)) {
> -		intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1,
> CHASSIS_CLK_REQ_DURATION_MASK,
> -				 CHASSIS_CLK_REQ_DURATION(0xf));
> +		intel_de_rmw(display, SOUTH_CHICKEN1,
> CHASSIS_CLK_REQ_DURATION_MASK,
> +			     CHASSIS_CLK_REQ_DURATION(0xf));
>  	}
>=20
>  	/* Enable digital hotplug on the PCH */
> -	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> -			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> spt_hotplug_enables));
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> +		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
>=20
> -	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2,
> -			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> spt_hotplug2_enables));
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG2,
> +		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
> +		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
>  }
>=20
>  static void spt_hpd_enable_detection(struct intel_encoder *encoder)  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>=20
>  	/* Display WA #1179 WaHardHangonHotPlug: cnp */
>  	if (HAS_PCH_CNP(i915)) {
> -		intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1,
> -				 CHASSIS_CLK_REQ_DURATION_MASK,
> -				 CHASSIS_CLK_REQ_DURATION(0xf));
> +		intel_de_rmw(display, SOUTH_CHICKEN1,
> +			     CHASSIS_CLK_REQ_DURATION_MASK,
> +			     CHASSIS_CLK_REQ_DURATION(0xf));
>  	}
>=20
> -	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
> -			 spt_hotplug_mask(encoder->hpd_pin),
> -			 spt_hotplug_enables(encoder));
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> +		     spt_hotplug_mask(encoder->hpd_pin),
> +		     spt_hotplug_enables(encoder));
>=20
> -	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG2,
> -			 spt_hotplug2_mask(encoder->hpd_pin),
> -			 spt_hotplug2_enables(encoder));
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG2,
> +		     spt_hotplug2_mask(encoder->hpd_pin),
> +		     spt_hotplug2_enables(encoder));
>  }
>=20
>  static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
> -		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
> +		intel_de_write(display, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> @@ -1271,23 +1290,25 @@ static u32 ilk_hotplug_enables(struct intel_encod=
er
> *encoder)
>=20
>  static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)  =
{
> +	struct intel_display *display =3D &dev_priv->display;
> +
>  	/*
>  	 * Enable digital hotplug on the CPU, and configure the DP short pulse
>  	 * duration to 2ms (which is the minimum in the Display Port spec)
>  	 * The pulse duration bits are reserved on HSW+.
>  	 */
> -	intel_uncore_rmw(&dev_priv->uncore,
> DIGITAL_PORT_HOTPLUG_CNTRL,
> -			 intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> ilk_hotplug_enables));
> +	intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL,
> +		     intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
>  }
>=20
>  static void ilk_hpd_enable_detection(struct intel_encoder *encoder)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_uncore_rmw(&i915->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
> -			 ilk_hotplug_mask(encoder->hpd_pin),
> -			 ilk_hotplug_enables(encoder));
> +	intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL,
> +		     ilk_hotplug_mask(encoder->hpd_pin),
> +		     ilk_hotplug_enables(encoder));
>=20
>  	ibx_hpd_enable_detection(encoder);
>  }
> @@ -1350,18 +1371,20 @@ static u32 bxt_hotplug_enables(struct intel_encod=
er
> *encoder)
>=20
>  static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)  =
{
> -	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> -			 intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
> -			 intel_hpd_hotplug_enables(dev_priv,
> bxt_hotplug_enables));
> +	struct intel_display *display =3D &dev_priv->display;
> +
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> +		     intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
> +		     intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
>  }
>=20
>  static void bxt_hpd_enable_detection(struct intel_encoder *encoder)  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
> -			 bxt_hotplug_mask(encoder->hpd_pin),
> -			 bxt_hotplug_enables(encoder));
> +	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> +		     bxt_hotplug_mask(encoder->hpd_pin),
> +		     bxt_hotplug_enables(encoder));
>  }
>=20
>  static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> --
> 2.39.5

