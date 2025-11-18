Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2ABC672D9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 04:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF20C10E182;
	Tue, 18 Nov 2025 03:43:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n52lNFOU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF77910E149;
 Tue, 18 Nov 2025 03:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763437430; x=1794973430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q1NJlFLG9RoXBeQfgwVMRHjQB7rPFlfAbn2e8TX/mJg=;
 b=n52lNFOUlbjL15xF6HSreGJYShLX7+/SKDUoGsTtBSitZkk+AJibGhtZ
 wgeIfJnq7hupt9rY1AceWjb27+LQho0J+Lp8kJc8Kxhnk4PQmkYnOwdTc
 8v5dkbvvdKND6AyPqYJOFTYAGM9mr9UsRDeR2i5qG9+Q2faJV4o56GtZ+
 dFiRbNURBnVM8zhCUIMjKJSxlK6qw6UHIcrbOdXvcT3VVtZdIORhS9Gyr
 Mcnaz5kWLBIG+i+3YrNmKDUfeDJZPgeeQAR4CmcmKCsRs45D8yDD1WrbK
 H97j/Bg6xtenCe34HML+fywqF5j2+4SNUum06VhnQOUPTnDODMzGdD33n A==;
X-CSE-ConnectionGUID: CkHtiDtgQs2YIKJxgpy9eA==
X-CSE-MsgGUID: kVXluJu8S62IxDhtEb3fdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76051804"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="76051804"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 19:43:49 -0800
X-CSE-ConnectionGUID: J7IZS8xSTmeEA2qNFu8VLQ==
X-CSE-MsgGUID: tFcIh/kYR+CziFzi3LhUvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="195103733"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 19:43:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 19:43:48 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 19:43:48 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 19:43:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G+g/UV1X2B945Dz6ndnishQy4u8aqbTc1i+7cyjr8MxxSqWk8NLXlvMUyTpCsz+/iOCS/TRXDHrGYbqIa9sLfsutqJn9b8vNL7MtNmltwja0KwU++jjJImGMsmWdR1FH/6zSvPqHxZ7CPnMb63cTIBOETOer+05l9swV0ahP7mTFAJEEV1LXkgqwf02gnpv4cqPg0Y2alKVN+PdG0h88w9szwuEqbpHW0aJ8L51dKKeJkecqFjT4VAHsonCa/axUIOoQk5D0as7ehnplYG3nxOuUlmf/CDIs1N4f5BUm/JCpWJ23lnVCovPsqZt2+pRMV/diPYefnqv1WnTT7qk4bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4GzLs4JIzs+zDSoc/6/3B5ZQc8mn3SDIfGhA/O8nEvY=;
 b=WeaeYPsvKO9Y6kJuR+e6mt7q+BaA91HAYDhCEsEbsARzAxYX+CiqBkLtpCyvMzA9k1+iZ0UPtvCh0vIWo0cQC4njrmKgT6wgUMWhY7y4s951pN2SuzAjRboza9K6IFj3lKdrf62lshFA+9MMKz528XjbIId73Kt28r+pRdtrPJBx7XapV2ZbIkEGv0y97CYK18IQOcCYh24qN31lEVK4mP6nip2ROihX25Ft4AfMkIOZ3O+JDd25Mjp7bQrvK58JCQiPR+OG8DWB0eOHMjN4jbwQsAGHMClpA6zOvWHpKnqn0bKR0ohj5myzVGhdqPZdtif6xZLbA+iDz8e04gWtOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CH2PR11MB8836.namprd11.prod.outlook.com (2603:10b6:610:283::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Tue, 18 Nov
 2025 03:43:45 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 03:43:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 05/32] drm/i915/cx0: Track the C20 PHY VDR state in the
 PLL state
Thread-Topic: [PATCH v2 05/32] drm/i915/cx0: Track the C20 PHY VDR state in
 the PLL state
Thread-Index: AQHcV7K2Kn5NolJioUqmJBOff4ZkVLT3y3LA
Date: Tue, 18 Nov 2025 03:43:40 +0000
Message-ID: <IA3PR11MB8937E0D6AC3B56CC3B310858E3D6A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-6-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-6-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CH2PR11MB8836:EE_
x-ms-office365-filtering-correlation-id: 67dad33e-bd48-47b3-a63b-08de2654a9d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Y/cSmajov59FoPTY1UHb66hfyKkJGZfnsQsl5cWOirOOpKOfSmMH/paTh3To?=
 =?us-ascii?Q?s8arAoMKUS0PbWBzpfDnWbDhVxutQlPQkE0xs/1u5frEPyLC6dfVacN0m1sA?=
 =?us-ascii?Q?3X6BwTsmrH9rqCyeMeHjkcmYdyF7caXtnV5p4dyqhnIbo/w4wBRW9ebnMxIU?=
 =?us-ascii?Q?HHzclU9dIx4GN4oGgMODad7McEW6mVNwqSucx6/8nsGheCjxoihDc3zYSrdP?=
 =?us-ascii?Q?VSqIi3IzsPpO4dmKR6YWTlqbFLbnpv0S9CMOKdpWWjFuVTQBPP3pvaNkFDmz?=
 =?us-ascii?Q?mKHyRH22FC4WgXA0w1qYe4WLBQT0D3FgRnSqKfPN0AEq/ZUXddGQAsq8IuSj?=
 =?us-ascii?Q?/dv2BvA5mYg19tJKKL07vIqqRFe4FTIx5Jdf/uM5nK8w36sHajHRcHzPSVBI?=
 =?us-ascii?Q?m3o7UwEesbtTym46bDNXlqTv+UlSflC9ykoyTETp4xTcVBkv92KtCuwQd3qZ?=
 =?us-ascii?Q?U+xFUEJAkxzvXDUQCjl2BVkWs5xMheILIshz+vgLSvofwRU0JdCCIejO7xLF?=
 =?us-ascii?Q?rlT1GGIlcvtICjGth72IjOcuIPLVdFLnezEU7HdDn8sqbCkEAzeN47lNUu7h?=
 =?us-ascii?Q?xD7AWHN/e8N2pzGOv8x47GpSs6Yu0XL4KxIQX4uR1JkinWpSt+pHyBJs4F79?=
 =?us-ascii?Q?CiqejgBOVrBu7xT1TppqKXYrXaiGzcHfScPcD4JGNSpB5wCUNwhCn7psKjbx?=
 =?us-ascii?Q?Gjb/AM+HRfGJy6L2bhQVkp4VdQBUyGcoS7p2Aiv14VrIqtvYkhh5quqDfI3I?=
 =?us-ascii?Q?BdDk4tzeJE7NdHBU40hgvJKf4MdSZqi9ZSS+/ntFlUi5xUREr4WLru0y1z46?=
 =?us-ascii?Q?aR46ibzYAsa83y7AGuiIk7NGg2/u8FxyY+cuJhSz6gltAOlzGrE2V+8qJgD1?=
 =?us-ascii?Q?Ogkfs9ZZaIFyxVAuIjJEY8waFvdDzAUO9f5dwij/uZoqDIqHAtFoRtWzp+fn?=
 =?us-ascii?Q?Lk6PDeuHNqXqHxU+G9PBCkkX48H0GOsZuU8p+tkMKArro9qEbYe8qFexR4Xc?=
 =?us-ascii?Q?tGOjB1iJlHqkX1WmJqHGdGUVNJoftx1QFvdCQKSwqcaxY0gGxNOD2mcbf+4j?=
 =?us-ascii?Q?3RjBDJGAZyKsQR7xYEXK92Vy3xkcltc4K0S2WszuviDwjfmdYJZFcbM+jS3V?=
 =?us-ascii?Q?n2UnNW3zdkI9fJUy+Yfi8wbwPA3ehDYGwSKS8QVH3zjFtKSUM3qTTIbN7Pqo?=
 =?us-ascii?Q?DhRhMc10JaQo1CLuNTdeUa6XRLreWhq9CKoMVI0U5oi2QsKRAM6sz/e9Dfb0?=
 =?us-ascii?Q?mxn8qvbUxSyH9OFKso6esaGegC8QVCmqgkLrTVsZ+9FvXAsnsAR/fVI99Ikk?=
 =?us-ascii?Q?Vkwm8mpFVazc0zStzU90Pi4sAxCeg6xUPvrOcVwNo5yKkh4I+SzDqnF54YZ+?=
 =?us-ascii?Q?UyAJjBtnrZAPrpgUUAoHB7sFPmWIsfZtzjU678tiB1MI0InkwEgqk1CfmG/P?=
 =?us-ascii?Q?sPNxen+J0i/Q4rdy25F/3qTVEjUaCYxJITFZJkVUkRQDhznSIZGRye/JiK27?=
 =?us-ascii?Q?acVlKcMBcytQATpqyb+qmGy7t1Iy5eFkGqqv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?84rElXdQTaa6uZHXL6IJxpjGXmILpktX4s+Hq5xMgNxjFfC1RE6fv/MfA6dT?=
 =?us-ascii?Q?241Bo37fj0nCBgstg3h2WANw2vZlzawZgy1y0gNtqEARu+8zyl8dV7K0NpEW?=
 =?us-ascii?Q?iFYSCFhq1MQJskXqA0f5X2upWXvIuYQeg/L6Uii0prUAjThBObqBCNLpQInp?=
 =?us-ascii?Q?C1v01J1iTy7oVALF6X7U5Fv1Zmrwpfv5mPTwD95fyjy9agK/w3phXRX95Oga?=
 =?us-ascii?Q?53omIHpB9r027t08Q9gQEaJXc+nV8aZ3Cz1Tgbmc0kmaePBV9ZU5PimR466T?=
 =?us-ascii?Q?Y9mPSlxRCCjZwxhFPs6EKxBK3iOyi0DTHG+LimX//I5s6qOO7AVJVk946G4n?=
 =?us-ascii?Q?sPtM5fUAOgaqiTgHpFL/FmpNcIRdPCYONBKJVWhDqDCyMGYmWWA/9BQ+w5gg?=
 =?us-ascii?Q?zRSIQqvI4/x08rXXroNRZkyJPCTD+tmoTVXwsOA3af7Dxyl03TvbXAx9A/n5?=
 =?us-ascii?Q?xkvYH41nF4WjEhnnzgjwntvuZz3E1PtsSwVt+osBH93NC5S/qItNmMuY3LaB?=
 =?us-ascii?Q?vK/JCe8TCr6VERZzfw8DKKVed9uAKZ8fdhF9VWmK3ky6EVfmLlSTh2rLmva6?=
 =?us-ascii?Q?a9cyuzWtPVo/z3Cn1/41qztFKR1EouHKA+mmLWb1Y9wOkowj11aJwnXlDWWU?=
 =?us-ascii?Q?UBVKGWt50NE2iVltyjgdh1NOJlt0GQqsjXB1N3z697rPtum0cj61xhfykCSg?=
 =?us-ascii?Q?/fZDYNA6M9Xis0mnbTHnuxBgXJA50ZdtmXbfdht8BAy/3E/r4xJOdWBLDvVG?=
 =?us-ascii?Q?+nX1P/1RSTLaeQu9aSW4iRLCZEPSRnjbDsrJMvlmkRKgI2SconyK45pZc0L2?=
 =?us-ascii?Q?8NsuPpZEK0F0oSoqmIRZDNxXExh+WdHn9jZe2tFqv1vsf/X6Al37qOhUnUx6?=
 =?us-ascii?Q?/aLrjJ0Da539ON9Iyck3LcBb8pOvY5D50WLKotpeRjVQdODiQn9Z2m2f389K?=
 =?us-ascii?Q?l+493FkN5abmeoEo444H8HUhJZ1Fj43JroCtC+G9sPyv6ginbRC6WP5+LeNm?=
 =?us-ascii?Q?eugpRc2b+5p81jJLHh/8beOQNImAJr2dIVQVZS+chWh4RPhNMEZeZLoeL5rH?=
 =?us-ascii?Q?/stbIjw0F5Th3wexpLi/88ZLqmW2YeymDvMItjbjMyYY+o6Vr/7IET52A43O?=
 =?us-ascii?Q?aQXWEPicxciCgN4vVFeoc5rW1AarmTKaPL6QAIcj0j6kovZeDtrkIuL96dHl?=
 =?us-ascii?Q?OWsIr9UFrr0wOv4hsEGLbkzhKJT7dE1wB/1LzEdUqO2ebLMdKZIOMlEP/gJl?=
 =?us-ascii?Q?aomhm4Pt0iu/5qZCuL5h/0tXWSgN97eYYLEQJ0+IcZy6A8/Kes+8rzlFec8h?=
 =?us-ascii?Q?jIoD4SLJc0xdMXcdy/3lK+JimHXsVqjeBjuDX3iS7LjvK2hjqUIwQxWk+qIq?=
 =?us-ascii?Q?DdedI06oEfbFFrvXhudHMqM9PPN6Ze0yk5cTPJGyw7oa/MYTaVWURey9GiKO?=
 =?us-ascii?Q?h9xdvDbiF4Oryewd7iYRYi5DNg9xvQ/32oCcPPY6KN53S6/RHbSv7+J0fnnl?=
 =?us-ascii?Q?A+WPTiwAMhwwr6mR8NFBwVpi77IBoPt+D1+VCfOPARi9FWAOa9q7zc/qhlBv?=
 =?us-ascii?Q?DRbuo5RJdYc0Qi03kD2cONVNBlUGHrLEk5QRIoWf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67dad33e-bd48-47b3-a63b-08de2654a9d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 03:43:40.1532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ImuIwj1Y0jbZA0C5hXA6/2jd38XwjPMWJMSTWMc14nqGc0O/yPCLeGcQhdzodcGDu3rCq4Sv+/8NkJMN6kGytg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8836
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

> Subject: [PATCH v2 05/32] drm/i915/cx0: Track the C20 PHY VDR state in th=
e
> PLL state
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> The Cx0 PLL enable programming needs to know if the PLL is in DP or HDMI
> mode. The PLL manager framework doesn't pass the CRTC state to the PLL's
> enable hook, so prepare here for the conversion to use the PLL manager fo=
r
> Cx0 PHY PLLs by tracking the DP/HDMI mode in the PLL state.
>=20
> This change has the advantage, that the VDR HW/SW state can be verified
> now.
>=20
> A follow up change will convert the PLL enable function to retrieve the
> DP/HDMI mode parameter from the PLL state.
>=20
> This also allows dropping the is_dp and port clock params from the
> intel_c20_pll_program() function, since it can retrieve these now from th=
e
> PLL state.
>=20
> v2: Fix comment to under same multicomment line (Suraj)
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 119 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   5 +
>  2 files changed, 92 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a1f2272fed14..fd0409565c68 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2357,6 +2357,75 @@ intel_c20_pll_tables_get(const struct
> intel_crtc_state *crtc_state,
>  	return NULL;
>  }
>=20
> +static u8 intel_c20_get_dp_rate(u32 clock); static u8
> +intel_c20_get_hdmi_rate(u32 clock); static int
> +intel_get_c20_custom_width(u32 clock, bool dp);
> +
> +static void intel_c20_calc_vdr_params(struct intel_c20pll_vdr_state *vdr=
,
> bool is_dp,
> +				      int port_clock)
> +{
> +	vdr->custom_width =3D intel_get_c20_custom_width(port_clock,
> is_dp);
> +
> +	vdr->serdes_rate =3D 0;
> +	vdr->hdmi_rate =3D 0;
> +
> +	if (is_dp) {
> +		vdr->serdes_rate =3D PHY_C20_IS_DP |
> +
> PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> +	} else {
> +		if (intel_hdmi_is_frl(port_clock))
> +			vdr->serdes_rate =3D PHY_C20_IS_HDMI_FRL;
> +
> +		vdr->hdmi_rate =3D intel_c20_get_hdmi_rate(port_clock);
> +	}
> +}
> +
> +#define PHY_C20_SERDES_RATE_MASK	(PHY_C20_IS_DP |
> PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL)
> +
> +static void intel_c20_readout_vdr_params(struct intel_encoder *encoder,
> +					 struct intel_c20pll_vdr_state *vdr,
> bool *cntx) {
> +	u8 serdes;
> +
> +	serdes =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_CUSTOM_SERDES_RATE);
> +	*cntx =3D serdes & PHY_C20_CONTEXT_TOGGLE;
> +
> +	vdr->custom_width =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_CUSTOM_WIDTH) &
> +			    PHY_C20_CUSTOM_WIDTH_MASK;
> +
> +	vdr->serdes_rate =3D serdes & PHY_C20_SERDES_RATE_MASK;
> +	if (!(vdr->serdes_rate & PHY_C20_IS_DP))
> +		vdr->hdmi_rate =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_HDMI_RATE) &
> +				 PHY_C20_HDMI_RATE_MASK;
> +	else
> +		vdr->hdmi_rate =3D 0;
> +}
> +
> +static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
> +					 const struct intel_c20pll_vdr_state
> *vdr,
> +					 u8 owned_lane_mask)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
> +	drm_WARN_ON(display->drm, vdr->custom_width &
> ~PHY_C20_CUSTOM_WIDTH_MASK);
> +	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_WIDTH,
> +		      PHY_C20_CUSTOM_WIDTH_MASK, vdr->custom_width,
> +		      MB_WRITE_COMMITTED);
> +
> +	drm_WARN_ON(display->drm, vdr->serdes_rate &
> ~PHY_C20_SERDES_RATE_MASK);
> +	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		      PHY_C20_SERDES_RATE_MASK, vdr->serdes_rate,
> +		      MB_WRITE_COMMITTED);
> +
> +	if (vdr->serdes_rate & PHY_C20_IS_DP)
> +		return;
> +
> +	drm_WARN_ON(display->drm, vdr->hdmi_rate &
> ~PHY_C20_HDMI_RATE_MASK);
> +	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES,
> PHY_C20_VDR_HDMI_RATE,
> +		      PHY_C20_HDMI_RATE_MASK, vdr->hdmi_rate,
> +		      MB_WRITE_COMMITTED);
> +}
> +
>  static const struct intel_c20pll_state *  intel_c20_pll_find_table(const=
 struct
> intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
> @@ -2395,19 +2464,26 @@ static int
> intel_c20pll_calc_state_from_table(struct intel_crtc_state *crtc_stat  st=
atic int
> intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>  				   struct intel_encoder *encoder)
>  {
> +	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
>  	int err =3D -ENOENT;
>=20
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
>=20
>  	/* try computed C20 HDMI tables before using consolidated tables
> */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +	if (!is_dp)
>  		/* TODO: Update SSC state for HDMI as well */
>  		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
>=20
>  	if (err)
>  		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);
>=20
> -	return err;
> +	if (err)
> +		return err;
> +
> +	intel_c20_calc_vdr_params(&crtc_state-
> >dpll_hw_state.cx0pll.c20.vdr,
> +				  is_dp, crtc_state->port_clock);
> +
> +	return 0;
>  }
>=20
>  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, @@ -248=
1,8
> +2557,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder
> *encoder,
>=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
> -	/* 1. Read current context selection */
> -	cntx =3D intel_cx0_read(encoder, INTEL_CX0_LANE0,
> PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> +	/* 1. Read VDR params and current context selection */
> +	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
>=20
>  	/* Read Tx configuration */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->tx); i++) { @@ -2657,11 +2733,9
> @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
>=20
>  static void intel_c20_pll_program(struct intel_display *display,
>  				  struct intel_encoder *encoder,
> -				  const struct intel_c20pll_state *pll_state,
> -				  bool is_dp, int port_clock)
> +				  const struct intel_c20pll_state *pll_state)
>  {
>  	u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
> -	u8 serdes;
>  	bool cntx;
>  	int i;
>=20
> @@ -2730,30 +2804,11 @@ static void intel_c20_pll_program(struct
> intel_display *display,
>  		}
>  	}
>=20
> -	/* 4. Program custom width to match the link protocol */
> -	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_WIDTH,
> -		      PHY_C20_CUSTOM_WIDTH_MASK,
> -
> PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(port_clock, is_dp)),
> -		      MB_WRITE_COMMITTED);
> -
> -	/* 5. For DP or 6. For HDMI */
> -	serdes =3D 0;
> -	if (is_dp)
> -		serdes =3D PHY_C20_IS_DP |
> -
> PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> -	else if (intel_hdmi_is_frl(port_clock))
> -		serdes =3D PHY_C20_IS_HDMI_FRL;
> -
> -	intel_cx0_rmw(encoder, owned_lane_mask,
> PHY_C20_VDR_CUSTOM_SERDES_RATE,
> -		      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK |
> PHY_C20_IS_HDMI_FRL,
> -		      serdes,
> -		      MB_WRITE_COMMITTED);
> -
> -	if (!is_dp)
> -		intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES,
> PHY_C20_VDR_HDMI_RATE,
> -			      PHY_C20_HDMI_RATE_MASK,
> -			      intel_c20_get_hdmi_rate(port_clock),
> -			      MB_WRITE_COMMITTED);
> +	/*
> +	 * 4. Program custom width to match the link protocol.
> +	 * 5. For DP or 6. For HDMI
> +	 */
> +	intel_c20_program_vdr_params(encoder, &pll_state->vdr,
> +owned_lane_mask);
>=20
>  	/*
>  	 * 7. Write Vendor specific registers to toggle context setting to load
> @@ -3077,7 +3132,7 @@ static void __intel_cx0pll_enable(struct
> intel_encoder *encoder,
>  	if (intel_encoder_is_c10phy(encoder))
>  		intel_c10_pll_program(display, encoder, &pll_state->c10);
>  	else
> -		intel_c20_pll_program(display, encoder, &pll_state->c20,
> is_dp, port_clock);
> +		intel_c20_pll_program(display, encoder, &pll_state->c20);
>=20
>  	/*
>  	 * 6. Program the enabled and disabled owned PHY lane diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 6183da90b28d..a0238a3e7288 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -255,6 +255,11 @@ struct intel_c20pll_state {
>  		u16 mplla[10];
>  		u16 mpllb[11];
>  	};
> +	struct intel_c20pll_vdr_state {
> +		u8 custom_width;
> +		u8 serdes_rate;
> +		u8 hdmi_rate;
> +	} vdr;
>  };
>=20
>  struct intel_cx0pll_state {
> --
> 2.34.1

