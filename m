Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD2DC4B9CA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 07:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9AB910E4E7;
	Tue, 11 Nov 2025 06:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J0ueQ277";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C3C10E4E2;
 Tue, 11 Nov 2025 06:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762841341; x=1794377341;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=29bJZ4VqHhlMZHogrLZl9/DLO2c8VH3DOy7AOxz9YOQ=;
 b=J0ueQ2778s+6S8c3f3u1HB5gtNnsu8uuoBGCkAqSUSkHEn5w9jEbgfLn
 WUdz5sIDi1hLcTD91C+L0QdnRgL9RuR+dSWvpYquBH2KlOgdQTvUbzYoU
 SM9X8/5S4pHwxc89J7wt1EVydSv08GT3tr954K/Ebkqy//rjWfzDEsE5C
 g6fb2GgTMuTPzVMFrHxStgdF938a8coUrhuTQgZ+mfYFQcAXHuNefeoT0
 pbfX9sz48gBwYOe3/InnSo+48hAIMtswTwgNN1pzJMtWVeeJs6eFNdbhX
 8aApfmBFUfpu7leuLxM7E+ZgGkHFQFSQSHB0EwCT3aAvp8RQU89bjFxv1 w==;
X-CSE-ConnectionGUID: ZJsKK7yWQUqBom64uPDhbw==
X-CSE-MsgGUID: H8EehUOpTVCiUC+3+8EXwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76002834"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="76002834"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:08:44 -0800
X-CSE-ConnectionGUID: xSNjjPo3QOmMSXbNXHk10g==
X-CSE-MsgGUID: A4xBQ45VTjO7SEpA0fcfKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188138620"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:08:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:08:43 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 22:08:43 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:08:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GMCJcM5uzZ1yiI6HSZ5DyMljJFRIrP/ELXETlFOfvunEeGXeP0aohg4zTuYZEFhGM9Wg33uscGFtpEl0hMCK6rp5RjjPcCyEGxvfbmu8MmPXpuT8lQPpqY3ZD5QqTjtS1YDeJYrecLcS0RNGjuFWXTelQHGk9PUYwQNz29jHDct+Zuh0eITx9ngjgVUQOGyTBDunTfAp/UDpoXgG3e2A6xGN7/NphD7nRwN7aGe7JMfoApsOTZEPGDrOwLsU/6uCZDcIYvbD13D7Dx2z0EisTy8GyZVK6rx5GTeIcrKWfnmq+uFWre9AEeoiKI6+gctN9WN5p1dnFdplrjWS4yquSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNSCypBAXHI2/XFnkrkUkgLxgwSHvUXF1S+uisL9cYo=;
 b=Q+MEr1OEOvWGYazgz5RLJM+rHr6gVeQs78LEAjqzZcfjd4GqbW91xCiRAObROLJtlPTcU2Co7PZvxe6Ca2JiTjbkanmRxFV+wkrlLWaR0kG3cdzc6wAX0bGT2FtcW9k2lBp6/QkZFTcAyXChJggwzksgb88k1w9GzX5fQXjN7q1PTTvlQaXS7iIzZQCAbUksOr47SUF6k8PsvhUNe+ZyHF/3qxOUgUi8xuWU63yMY9PUVEvcWKnEfFOs7NEX+TWBtb0lQfqoEDUxAmJwr3L0D2/yLl92JAEpaEtvVYGH72FfU4g3X8G0BD6s+ZOHJR0FF2T4mO5pg62dHBsG1PD5tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 06:08:41 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 06:08:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 11/32] drm/i915/display: Determine Cx0 PLL DP mode from PLL
 state
Thread-Topic: [CI 11/32] drm/i915/display: Determine Cx0 PLL DP mode from PLL
 state
Thread-Index: AQHcSlaJWa1uImT/rkSSV9Yk/+xj3bTtDUsQ
Date: Tue, 11 Nov 2025 06:08:34 +0000
Message-ID: <IA3PR11MB893752DEB841A09898BEB562E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-12-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-12-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB5103:EE_
x-ms-office365-filtering-correlation-id: 579c108f-f8ce-46d4-7c79-08de20e8bf37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?zTkrxbAmoS4y8YpAnPhw5GO1IIhN4bLj9Pf0ISuVhtp38sjd08N3uaZDMzw6?=
 =?us-ascii?Q?XfLdTiEatRp+gF4XlYvA4NU1MkM46nxOn4wel14ZOx2bfRy1zH99H0Tg821z?=
 =?us-ascii?Q?NLpBm0OkW928ESsyTvZ4gVooAGMym1CLE0HN2v/l5z7Evn9K68ojectQr/r5?=
 =?us-ascii?Q?z/eK3FIh/ZjnfzkrnK0cffav4sXGUBQbyIxI5F72RMhqrRg6aEPH31fO+nLN?=
 =?us-ascii?Q?t7GCiefdKpyURBwMDX6LqBAeVMYp/pJDgfW/q+SOsUeL8ilija48ZUDyVE5g?=
 =?us-ascii?Q?2bvpPiiWoCQx9MypSKb8f+LEj+2cyj1HleHajLqk2jBKHlVU8GQB4tBp8Wgv?=
 =?us-ascii?Q?PDmJMIldJt3YGWbHRd3qIWz+Ou8QPi4I0VGk9ZoUkaz/fD+8D6w9c0j2UySn?=
 =?us-ascii?Q?+B/edWjM30sOiqRhg7nrkRTI/hbuK9IiXR3+SESCwVPXXtafz7RyoIlvq8g8?=
 =?us-ascii?Q?8eO3LILuTnzBN0bub5+8WE23U+wwWVd+bPAGhe3vD530ks19l7fVKMcm/f5v?=
 =?us-ascii?Q?YFwzvbcrCSJpNdduhWvUy2yccnT7mhOhJJWlpFU0vFvX8j1ivbTVUAqRvC2t?=
 =?us-ascii?Q?8YFLCUgrta0gHyI0tAKYGhOCxI1TT/eAfzRtMra4niLfi509tY5nEwDOwpXJ?=
 =?us-ascii?Q?pu2AM+fwdlDGi/1CCCeZAA4NxUVF1Csq5Si4PkuV8wI5QwbLFsX/rYxoEQK1?=
 =?us-ascii?Q?ztq8jG9acBSTQYjNCD02fbys1KPMTgfoyxItQ6/RUCqerW8s1NWd+BHiloFw?=
 =?us-ascii?Q?sDwKRfsGRy5R9H6ZuzFYRP4EJTNP8yXo21hufzo4flC2rabpEw2S+6iMBRM7?=
 =?us-ascii?Q?94lFY5ocEeWbe90i1fjAzLeern+OfhgpLO80MfeJLMNPvkpz910oEVG3h5aa?=
 =?us-ascii?Q?O4qLaeaKBYzs2d6VoWyQFBHlGn+JJ/BO09dTM5JhtnTAl7u7pT4Vk2ThekEZ?=
 =?us-ascii?Q?I6iTnX8VanPeHyWy0veNb/q2Tsb3ChxSMaz5MunHF5KAqr1wosdieVVTw++t?=
 =?us-ascii?Q?RYzJdQhYglOymOa6KNX0ENhYJVHj2vhiBMQytetx+mD6iENO2C1uhrh8SdpU?=
 =?us-ascii?Q?K72IvUgRJqX/jwd3TMTSNRVu3Ntpit6LbQlzsnfZFE/BXjmS+Kb49rtbUzsF?=
 =?us-ascii?Q?aScsNAvVpsXOuQww7hvTzRgyuu/q1PTHJ8EH7Cca4FHNtyWN6mYH+R6DhrSz?=
 =?us-ascii?Q?PV80L9Df7qnI1pkqyKTpIW3ObSPW+/R8JSDarctIL9ARlMdu8m6dW0grO+fq?=
 =?us-ascii?Q?E9tw+6pALgBxIT8uICT9DpryUQbUnof0Tyrhl2DJOAB+BmVrFA8umSiH1b4O?=
 =?us-ascii?Q?nmpTT6WvyDhYGn9VZ53xNXb3Pgc6Y+thuomUK3VaRv3XO32CAc4FffLeprK6?=
 =?us-ascii?Q?uOzjxO8HEGkgFLg3diP3yStwPgo4Jv4HdM/EJE3Z9FHfnI5BnNCnqwImgO6s?=
 =?us-ascii?Q?yKOuo96iX7E1brMSsw6mRb/OSS9f/1OZ/EkcViagW/dRe/6/akl9O67mVKq6?=
 =?us-ascii?Q?22ovXFVquX+iHPoynKi1fldxn/Quk2VmO6xL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ubRU0bIrCJP8muLguNu8TN2/yaDcH31FGZGi8Sf3cln/Owv7cbxqWxZ/JHLR?=
 =?us-ascii?Q?ERTcuOfdCMdmeMg8PdKTVUik4Fk0LBpYYC0sHbusPzlU6hmiM930WbhVcxtb?=
 =?us-ascii?Q?d4tYDwEmPzde0uAKSVDeQHiaNBOI30jrvAt4HfUy9zIazMgdQcRMtoWrhsBy?=
 =?us-ascii?Q?BkFahb4fQBpyoSTmAdXCpGnZtde8b2dYW823Cc/wLve2W6fhdNigPDRFt0qP?=
 =?us-ascii?Q?j1vJBDpm/vKj9Zm/9/gAaCl65O/rD6/Ao8jBvaYr2fM8mPhmcw0/S2x1rLpc?=
 =?us-ascii?Q?8ed0Kd4qDvJ+mYrwhMPik7cgXwUuHSGHhHK5QB3zIGJwwGvSNeJfp3Y5aY5p?=
 =?us-ascii?Q?A25gWQqkUDT3jluy77R5AAQhkXWLRMIHcyKFT66aWnXRnq0emVDbyTuw/qtP?=
 =?us-ascii?Q?ZYAxLu+Iw12rdq9B0AtDvTheFQJzmaa4uhQfmtBMF+CjKXCnyVM6yqFatMLI?=
 =?us-ascii?Q?Wk37ZBSS3+hWELCXjgUVjT01Jd9q2wmSN926Oxabp9rprqmNN7HsJfQR14FJ?=
 =?us-ascii?Q?dnEttxLtXDuwmTC+LQiWE2n+G28jVwv42BV9d1lQH6dxhygqY5XlWdHFVjzH?=
 =?us-ascii?Q?P19sXnJ498nPJNzhIjXKcbL0kxtNizEbTUwPgzzz2pf7wj6wTosBiIhrwW8I?=
 =?us-ascii?Q?njcKz/xMHSV8F3mMNfM5DGUpuMInVk2zYW4qDlDFMzLkvC2R4KzR6DQz2xYv?=
 =?us-ascii?Q?icW0Mcxkvq0HlBs3XpnegcoEEIAKWfHWvZYFVUdNNtHsrynThG7YqrX6C1bt?=
 =?us-ascii?Q?+J9KCgQS6/SuAXwz5Q3W69HmHSBHFzd2gIu41TwAjpsfFnDz+dLkiUtLS2AU?=
 =?us-ascii?Q?6sT2NaJzjxUg6tpY/upGftNV9dRnaIZIOppOywpALmip+3LHrLA/Ts5sPGe2?=
 =?us-ascii?Q?uo/W5AolD7MgNoLe7UHLR+G+eZVIwKymuUCz6bbyW3fwKkPtgk4fQVWKnNbE?=
 =?us-ascii?Q?A4NIXP4U5+cEAf/WRPIUUt3R1ag1bQZJN4ZCicNLHpfaxJ6xT/Wcc1iWjVho?=
 =?us-ascii?Q?6Z6FpHql/3OiQOP/cDYGMVUQILpw08xVfpZQrhRdC30fncXuWfTv50mljbJ8?=
 =?us-ascii?Q?rvKP/0+8QWfZTZ3Q9ROBrFcGoMP0/YXCGdDEOzaZVqXWEF1lScPX9H1X1aej?=
 =?us-ascii?Q?CJFR8qheVzpKzsG/kkDobTsLASUKJLwUJWP1TV8yCiEOk4nA9sxBzROYI1qH?=
 =?us-ascii?Q?C21vXTnvFgIsXTiXVUoHxBR8+WY4VjvCcyNdAgLKUdo8MO6Id6a4X4WXX7Ft?=
 =?us-ascii?Q?hafidXFbX80AdPg5sLGwW22f/D05+3lMyoKR+1yeaNBppzeNG+XRPo9RHVjJ?=
 =?us-ascii?Q?1/QEoGIQQF1VNbHiRpxfQFMeP6ovYWDnZ0mLKs/r0CUTVnV6BRf/I8nUp4rZ?=
 =?us-ascii?Q?/Hsz3XaZft5mauoKkO4PCUNS16XO9NoGZSv8Z124N03nNCI+eLmHFulsrC9j?=
 =?us-ascii?Q?exl68LeT7Q+vH5PlhP3NGVStcggtL+P2NDVBP3ABzjuzBwZzoz67JqJEaG77?=
 =?us-ascii?Q?SmvrmdecZT7sCkZsOfksyytD6ZQfRoLHCGfx1WpE3dgECF0G80ZJt5KTRfQH?=
 =?us-ascii?Q?Q64qPsvMOQEjvv/+QjVSHStUdc4lS6disPiY+KZW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 579c108f-f8ce-46d4-7c79-08de20e8bf37
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 06:08:34.5423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8jJIZGCKFzmM/zVYh9/cn1exyo5lyjz7PofHSIiXHo9xYefe13SLDZnclm1JvgkrW4t/x077GZmM6ShOZrhDMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5103
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

> Subject: [CI 11/32] drm/i915/display: Determine Cx0 PLL DP mode from PLL
> state
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> The Cx0 PLL enable programming needs to know if the PLL is in DP or HDMI
> mode. The PLL manager framework doesn't pass the CRTC state to the PLL's
> enable hook, so prepare here for the conversion to use the PLL manager fo=
r
> Cx0 PHY PLLs by determining the DP/HDMI mode from the PLL state.
>=20
> For C10 PHYs use the fact that the HDMI divider value in the PLL register=
s are
> set if and only if the PLL is in HDMI mode.
>=20
> For C20 PHYs use the DP mode flag programmed to the VDR SERDES register,
> which is set if and only if the PLL is in DP mode.
>=20
> Assert that the above PLL/VDR SERDES register values match the DP/HDMI
> mode being configured already during state computation.
>=20
> This also allows dropping the is_dp param from the
> __intel_cx0pll_enable() function, since it can retrieve this now from the=
 PLL
> state.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 43 ++++++++++++++++----
>  1 file changed, 36 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f6b25291cd18..f1216beb5581 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2090,6 +2090,24 @@ static void intel_c10pll_update_pll(struct
> intel_encoder *encoder,
>  		pll_state->c10.pll[i] =3D 0;
>  }
>=20
> +static bool c10pll_state_is_dp(const struct intel_c10pll_state
> +*pll_state) {
> +	return !REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state-
> >pll[15]); }
> +
> +static bool c20pll_state_is_dp(const struct intel_c20pll_state
> +*pll_state) {
> +	return pll_state->vdr.serdes_rate & PHY_C20_IS_DP; }
> +
> +static bool cx0pll_state_is_dp(const struct intel_cx0pll_state
> +*pll_state) {
> +	if (pll_state->use_c10)
> +		return c10pll_state_is_dp(&pll_state->c10);
> +
> +	return c20pll_state_is_dp(&pll_state->c20);
> +}
> +
>  /*
>   * TODO: Convert the following align with intel_c20pll_find_table() and
>   * intel_c20pll_calc_state_from_table().
> @@ -2099,6 +2117,7 @@ static int intel_c10pll_calc_state_from_table(struc=
t
> intel_encoder *encoder,
>  					      bool is_dp, int port_clock, int
> lane_count,
>  					      struct intel_cx0pll_state *pll_state)
> {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	int i;
>=20
>  	for (i =3D 0; tables[i]; i++) {
> @@ -2110,6 +2129,8 @@ static int intel_c10pll_calc_state_from_table(struc=
t
> intel_encoder *encoder,
>  			pll_state->use_c10 =3D true;
>  			pll_state->lane_count =3D lane_count;
>=20
> +			drm_WARN_ON(display->drm, is_dp !=3D
> +c10pll_state_is_dp(&pll_state->c10));
> +
>  			return 0;
>  		}
>  	}
> @@ -2120,6 +2141,8 @@ static int intel_c10pll_calc_state_from_table(struc=
t
> intel_encoder *encoder,  static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  				   struct intel_encoder *encoder)
>  {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
>  	const struct intel_c10pll_state * const *tables;
>  	int err;
>=20
> @@ -2127,8 +2150,7 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  	if (!tables)
>  		return -EINVAL;
>=20
> -	err =3D intel_c10pll_calc_state_from_table(encoder, tables,
> -
> intel_crtc_has_dp_encoder(crtc_state),
> +	err =3D intel_c10pll_calc_state_from_table(encoder, tables, is_dp,
>  						 crtc_state->port_clock,
> crtc_state->lane_count,
>  						 &crtc_state-
> >dpll_hw_state.cx0pll);
>=20
> @@ -2143,6 +2165,9 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D true;
>  	crtc_state->dpll_hw_state.cx0pll.lane_count =3D crtc_state->lane_count;
>=20
> +	drm_WARN_ON(display->drm,
> +		    is_dp !=3D
> +c10pll_state_is_dp(&crtc_state->dpll_hw_state.cx0pll.c10));
> +
>  	return 0;
>  }
>=20
> @@ -2643,6 +2668,7 @@ static int intel_c20pll_calc_state_from_table(struc=
t
> intel_crtc_state *crtc_stat  static int intel_c20pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  				   struct intel_encoder *encoder)
>  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
>  	int err =3D -ENOENT;
>=20
> @@ -2663,6 +2689,9 @@ static int intel_c20pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  	intel_c20_calc_vdr_params(&crtc_state-
> >dpll_hw_state.cx0pll.c20.vdr,
>  				  is_dp, crtc_state->port_clock);
>=20
> +	drm_WARN_ON(display->drm,
> +		    is_dp !=3D
> +c20pll_state_is_dp(&crtc_state->dpll_hw_state.cx0pll.c20));
> +
>  	return 0;
>  }
>=20
> @@ -2929,10 +2958,11 @@ static void intel_c20_pll_program(struct
> intel_display *display,
>=20
>  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_cx0pll_state
> *pll_state,
> -					 bool is_dp, int port_clock,
> +					 int port_clock,
>  					 bool lane_reversal)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> +	bool is_dp =3D cx0pll_state_is_dp(pll_state);

Wouldn't a simple check of drm_encoder's type tell us if it is dp or not ?

Regards,
Suraj Kandpal

>  	u32 val =3D 0;
>=20
>  	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder-
> >port), @@ -3178,7 +3208,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8
> lane_mask)
>=20
>  static void __intel_cx0pll_enable(struct intel_encoder *encoder,
>  				  const struct intel_cx0pll_state *pll_state,
> -				  bool is_dp, int port_clock)
> +				  int port_clock)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder); @@ -3192,7
> +3222,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encode=
r,
>  	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
>  	 * clock muxes, gating and SSC
>  	 */
> -	intel_program_port_clock_ctl(encoder, pll_state, is_dp, port_clock,
> lane_reversal);
> +	intel_program_port_clock_ctl(encoder, pll_state, port_clock,
> +lane_reversal);
>=20
>  	/* 2. Bring PHY out of reset. */
>  	intel_cx0_phy_lane_reset(encoder, lane_reversal); @@ -3262,7
> +3292,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)  {
>  	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
> -			      intel_crtc_has_dp_encoder(crtc_state),
>  			      crtc_state->port_clock);
>  }
>=20
> @@ -3818,7 +3847,7 @@ void intel_cx0_pll_power_save_wa(struct
> intel_display *display)
>  			    "[ENCODER:%d:%s] Applying power saving
> workaround on disabled PLL\n",
>  			    encoder->base.base.id, encoder->base.name);
>=20
> -		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock);
> +		__intel_cx0pll_enable(encoder, &pll_state, port_clock);
>  		intel_cx0pll_disable(encoder);
>  	}
>  }
> --
> 2.34.1

