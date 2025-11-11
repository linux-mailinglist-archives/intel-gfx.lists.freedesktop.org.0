Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7116C4B8CE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:37:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0596110E4DD;
	Tue, 11 Nov 2025 05:36:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KW9Iz8IH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BC510E4DA;
 Tue, 11 Nov 2025 05:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762839416; x=1794375416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H0zXFLV1q1KCacCVx0C7U5CyF6rKwvQuedWcZzN3ODc=;
 b=KW9Iz8IHdXl6ZdYkUIq4lLgaUeNKFy5SPsMMdkRklle8u653xQyZrasW
 fWfPLOuNlESFtvcz/Qz2KhnVwcSPymJ1vKaxRxY8ApvZFv1MtiHq7nsGu
 /RJWxEd4woEUgGqPrN2BSd/zLkxe9w8NH07ADJgtzUc8zIa4Lr8JbNizl
 3fTJOqbT/BxEAn2WiMWTLQok+MOlrAbu6DFogkNxeRcOuS0Va2tdIskU1
 n4F7CtXWMBX4r0V/YXWWUUdRemB33cpoBjIgYO2V5MjCz58WsR+iKO1Nt
 OiCKACm4Ke5OZFM2mDSZhEuMhnWkxQl9fE8GBFWysRUVXMj3TSwtKJrNY A==;
X-CSE-ConnectionGUID: 6AqzqsRwQ7e0nuO5QNNu2Q==
X-CSE-MsgGUID: UHDSlxbnQOm2z9QnNSCfYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75510005"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="75510005"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:36:56 -0800
X-CSE-ConnectionGUID: GuRggajpT/ytL7YoT2EqvA==
X-CSE-MsgGUID: 9XnfU4sPTlGsCC3GgnucZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188835729"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:36:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:36:55 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:36:55 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.39) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:36:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lfFY6cOSxglEF16RtmdcJzov2bmxaYYYDuXdkgMNKYJ+W2XsubrYkYrohiCdGsVY4V9lHvKF6+Y45hxhiOZYvtlH5uTh/FuEooh12YfQ/oMvvTjvrYtvFc/H468QzfOJNPVKzsKAnBFFH/u3ufm0NE99FHiBx0f0sdMmF62aYO3AEzknvKrely806z17G9Vgk5Ft3KyR4br+uugB+Ksor2DF2En7eDvIV3sYyTQSaRzsd/VVgdMszZmj9yx0M8E82SwEbDfPg8AF/HTrJMYUbijaD6bN/t396lsErNvYD4NMd49I+LHfp3s1Vs+aTFADXeR1cQTN9u2sarSwajbBjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TWT1E5rLAUtXzPgCCa+fQaellekkTTL/lXfBvzJ9Sgc=;
 b=FddRwOn0GoGCVJZb/LaRqZNQH14dKfp0N5+Tf751+aAk1K0x5nQzF0Zu2webhDadBWyzn+uUkaLuC1OraiP9xdmw3KpLQqhM+wtojEJTCcEj57woECPBrWGEsingSvBsiCh3jJLT7MZ++T941+HAEkuqrNjmzIXMxh21kuSvhdZOsIc1Lw6LmGa9kCvXjwbB1Hg+k9pURdgWJerRzK/IDouicdw5n4br3CfM9Z9E6dzHy9y4tnSxngHkO04MXHQ19SOYygsV8CotDJJ7oagE0QgTrhq5Yzfz00qp0ryO4SjUcs94WYHN6vhdGjJmEQqbWjattsGwrS754ED3Zmok8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB6672.namprd11.prod.outlook.com (2603:10b6:a03:44c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:36:48 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:36:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state
 from tables
Thread-Topic: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state
 from tables
Thread-Index: AQHcSllSd3u+CaopsUC0PpPAn8rR6rTtBCYA
Date: Tue, 11 Nov 2025 05:36:47 +0000
Message-ID: <IA3PR11MB8937ECCB2E66ADCDDCCA33CDE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-5-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-5-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB6672:EE_
x-ms-office365-filtering-correlation-id: 693dfbdb-81e3-4962-834d-08de20e44eae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?NOr2uv2aldijMwqamAb7umK6mnkmfC1KUX/iaKsrEosgaQDBxX/ahhKoW4nb?=
 =?us-ascii?Q?6KBQfXEPz/QakD/ALWGB2hFRPGs0BvCOCnl5qMsd8OHrtQBEnodO2WffXddf?=
 =?us-ascii?Q?72haheu0pjakI09kGZZE/Trfp3s3tfDW6uzoqJ0k/FDQ5AnpJ23CgvIZdiA6?=
 =?us-ascii?Q?Ynd1wA4CpT6/DbIJbaN5Zvptnynh/kRwNq3KnAV/puZPGstzsclbrL23cFFs?=
 =?us-ascii?Q?6c1kPhBOCpCIZvLMHaqYGBICODzuUt7dLOQGwiVSJX9iWi0CLzzmu+Q/b0G2?=
 =?us-ascii?Q?wZALXvv3m54vDmnj5EEoBNY+pay6h+lOLraYndevIOubt7CalWDlPqyXzlCl?=
 =?us-ascii?Q?Ionpq6t4LCbaOzflXtpJ/5e3Wnqkzl66euUYcMHjaS/f/IF+FpzdXUgxU0eE?=
 =?us-ascii?Q?hCj9Lf/jlzXlKlZQjqGSbUgWpDYlf8IZwrzinCnDpZ60N6Gx8ovV2JLVQTt4?=
 =?us-ascii?Q?G9IscmdzktMxCMekxWKmtwvM0iyCGeDD4dRPzlbuHGqn6GIi3WQLORAPs9vO?=
 =?us-ascii?Q?3Ebj8VEPfndWWJOy4dlqbFdnn+Bo5paNpBMrrwdP7oSpfQ9CBdYrExhXetn2?=
 =?us-ascii?Q?W7BWyoSflN2Tih1+B8UAWh3LzBGOAjQwnD2I2D0HX135JWjw2W8GMTBmJbbb?=
 =?us-ascii?Q?5SG+vtVGk8V3A3R3tw5c0ujjxKRpJ04ZSntdm0NrNVwe4FXEOttAzIY5bpy5?=
 =?us-ascii?Q?xNzfUdihiD0z7840ZWhlUCXnYaKXG9oIRp+ebADpHA8RBbTHnd18xbsTunXQ?=
 =?us-ascii?Q?K57DrHWoNI6Dh40LF9RQV+U0nvs4nm7LQatVW8Mr9oluOGnF//81xVn63vZK?=
 =?us-ascii?Q?JUBHsUDKWew9eprC2QPBKo5RvdEUqQsnjaNkufYCh94r7/oKPNN28v3MAtGZ?=
 =?us-ascii?Q?ecO6kUI06EVJECt1ZlYxm3+A5XLLa0UdlJ/wM1AWDS/olUyViC+i5fCBdlUH?=
 =?us-ascii?Q?IEzNxDVo8lJLhzolfFPXtQamhSmZTwUE7I2leOY8NZuT7nBjMto1yRv40At+?=
 =?us-ascii?Q?PeAG7Tj6SKrMqkLn4ntDJe4RE6UbKCIFwbhClgG6GDh9JVZuGHm6uEGGT9fM?=
 =?us-ascii?Q?TjsUTqqYnPvjSo2hbxylI+IEIzY1sNcYnob10a/2QR7NUrkhBz4lhlTegT1r?=
 =?us-ascii?Q?q6US2HWxgJbqa00r/arZbHXJac2KC6eUUteWjC/xwPCpwfBDLwMuVqGoU+UZ?=
 =?us-ascii?Q?xp2LfWRcRySz2jX1tC+NGM0lsu1K6ShIvV880w7QbennE543NVupEH0jOBrk?=
 =?us-ascii?Q?8iiWufH8fTxgRjyAYhEhFVQmmDwGOQeDG9GviKj0KRocuAHkN4tkHuRqN+OR?=
 =?us-ascii?Q?FBDi7mVfNAkmt8frxv/F91w/A7ov+IOv6w/8Q5aegNfbG1UCD8M2eN3TJSDd?=
 =?us-ascii?Q?jJ4s2HGuA39cHiOEOdmdQvSfW9pI9S5ru7/7XnbTyymus3pyCLyeVXoxH7l1?=
 =?us-ascii?Q?Pg7bQ1TbkrsvtUxZSGrXklH8Y7KowfdVzJHHzUvvygHkKeIVMWQnGqslSklh?=
 =?us-ascii?Q?rpsAXvEuPO3M70fKwOzVyAiJxyEFk3WMke9c?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EPC9Vj8d+R42D3gFbkNpRKJh1f+5qp+gjNyA4+JicPMT9giyJ++0U/6mZO5E?=
 =?us-ascii?Q?fQjHq9CQFZn6sjyRJPrbHJ6cb2bCz+0f3da9wBVasFgSPnADzwGW1Icfmtfj?=
 =?us-ascii?Q?KGgGezT/uTZgfrzftWxVOkgfsLyvXlb3i2NLpZ8mQ0VRh/13xf0eqgknHdNA?=
 =?us-ascii?Q?ch8Ewwt06Akd0fS67Z3Fp2bVPlivkH2+oZ7SM3o9UvScRmK8dzl/Ivf+iwf9?=
 =?us-ascii?Q?nblUflfS28TBcAeigP3a3DB04s0pN2TuRd6OplOMsJ4Xzmg/OcZhazMmtpU9?=
 =?us-ascii?Q?AmXQfRy6bS+hTlI4fi0kKWDPfKpIJxG7PU/nQn9CsUvQgF7V7hZhdc1hgnJQ?=
 =?us-ascii?Q?LtMHE4IsXO45AuJYu+h/m8YKANRsgI9CT6GmTGeTAraJmmfX/BEB+wGS1JNl?=
 =?us-ascii?Q?rV3touhCASZ2q8irUaLwmog7u33iCbZjUZSyY/1Am7VL0mmkWsZc7eucnkYI?=
 =?us-ascii?Q?gnC121L4+fEZ6xk6R73jtgS8r+1Ip3lOIZNXZhIK5vpbTiqHYiICMe4mIis0?=
 =?us-ascii?Q?mKHqLf0Ks8C6e0te4QWGKHg1WmHLfu5iC2bj0FM2mYnhYMJ4mFj1Kc7GDXKe?=
 =?us-ascii?Q?rckK3I3Ssl+sxWT8kit/58AMkl/kP7vluNCc6/PPRrSEz5FHR8pbG05UaqRb?=
 =?us-ascii?Q?KvaMPUU0WS+UZ7/dfUDFjNQR2DvQfC6kaOLgw9zK44dSsrhRrtZWkwew6Oze?=
 =?us-ascii?Q?qbfLcSW9wuJo+gTNDrU7ZL8YHGlq/b0bNb94DNZ/expZzqoxAJY6jU21VM17?=
 =?us-ascii?Q?aknnBiQffa8W4u7/vuYJHo+X0WaZDnr9RZGTja8amP5mY9pSKVPM3XFtxEXH?=
 =?us-ascii?Q?DoKfUlwBQXaZc2kbyDrGLW4XHiaoSSzgNzajUtsZUXXXai35rkGLmq1BZE4F?=
 =?us-ascii?Q?YS5gdp3p2MKHFMM5YJjI6qw8YwQHMPtPG0uHOGHP2uHoyR8OnF5aaErfLJcg?=
 =?us-ascii?Q?44KnyW1fOhVCEMy9QIxpgHxDN37LWOKVzfWWQF650oT2so44D1pjI3AYlzcx?=
 =?us-ascii?Q?NEdfuTxousZQxHoDFpr/V+TWEmCbMDhxpizFmWfd8HBjFTropkRkdd7c2gCm?=
 =?us-ascii?Q?yNE99C29jjNPeBhngTJgwArgEfXLwo30ISEiTHiNfVq/RroE4kzEsx2+vON5?=
 =?us-ascii?Q?fEwkZfVz41GSl1cF2hlPMNJcEFOtBTbpCR8PBc5uEHvlG8v0rWu3JD52e3Jt?=
 =?us-ascii?Q?hE4GEJ9zMFMJEuz6bCNUvJc1oM2lxM1pMKY7p0tUniLcGZIa6xFHA4SG6Ted?=
 =?us-ascii?Q?bPqGDwx9bRXFi4j3xu2v9XeFp61l6puRS5RU6QHxlFxnJFQrnGUKpA6pjpIv?=
 =?us-ascii?Q?WhFj2wm7vBCFsdrRsBk7s9PsiVSX+SKJ9dJnOtM8hJwjlP8WmQknpsHeeCMU?=
 =?us-ascii?Q?uamFbi9gauRzNP1/pnIuACVWxwgxeg7SjiSy8UW275GJEVgCwm12zoD2MVKm?=
 =?us-ascii?Q?jlPFHMB2R/zCGFnQRo4mKSJW352luRPXkSgMQolibdIewYCNPLuFdFYk6LFB?=
 =?us-ascii?Q?N9JGwLBrkeg2+syP4trlpba+hNeLlZtTujCYHSQP95/P///qvR74ZCyGIcgG?=
 =?us-ascii?Q?Eufi9iwb9uSIRzSMYhhCc0ArQVbpXJE+Z8TPcBYi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 693dfbdb-81e3-4962-834d-08de20e44eae
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:36:47.7298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aMz4DTfhUQkC0BhHW5DedtCK5e/+xLdrG1T7EaZqZt+R3LV2SC132T9V26IK864RYFk/pH7XFFrnoV33uGiuVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6672
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

> Subject: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state =
from
> tables
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> A follow up change adds a computation for the C20 PLL VDR state, which is
> common to both the HDMI algorithmic and DP/HDMI table based method.
> To prepare for that streamline the code. The C10 counterpart would benefi=
t
> from the same change, leave that for later adding a TODO comment.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 68 ++++++++++++++------
>  1 file changed, 47 insertions(+), 21 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index dd4cf335f3ae..0dd367457f93 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2077,6 +2077,10 @@ static void intel_c10pll_update_pll(struct
> intel_encoder *encoder,
>  		pll_state->c10.pll[i] =3D 0;
>  }
>=20
> +/*
> + * TODO: Convert the following align with intel_c20pll_find_table() and
> + * intel_c20pll_calc_state_from_table().

* " following to align with..."

> + */
>  static int intel_c10pll_calc_state_from_table(struct intel_encoder *enco=
der,
>  					      const struct intel_c10pll_state *
> const *tables,
>  					      bool is_dp, int port_clock,
> @@ -2330,7 +2334,7 @@ static int
> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)  }
>=20
>  static const struct intel_c20pll_state * const * -intel_c20_pll_tables_g=
et(struct
> intel_crtc_state *crtc_state,
> +intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -
> 2358,35 +2362,57 @@ intel_c20_pll_tables_get(struct intel_crtc_state
> *crtc_state,
>  	return NULL;
>  }
>=20
> -static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> -				   struct intel_encoder *encoder)
> +static const struct intel_c20pll_state * intel_c20_pll_find_table(const
> +struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
>  {
>  	const struct intel_c20pll_state * const *tables;
>  	int i;
>=20
> -	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
> -
> -	/* try computed C20 HDMI tables before using consolidated tables */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		if (intel_c20_compute_hdmi_tmds_pll(crtc_state) =3D=3D 0)
> -			return 0;
> -	}
> -
>  	tables =3D intel_c20_pll_tables_get(crtc_state, encoder);
>  	if (!tables)
> +		return NULL;
> +
> +	for (i =3D 0; tables[i]; i++)
> +		if (crtc_state->port_clock =3D=3D tables[i]->clock)
> +			return tables[i];
> +
> +	return NULL;
> +}
> +
> +static int intel_c20pll_calc_state_from_table(struct intel_crtc_state
> *crtc_state,
> +					      struct intel_encoder *encoder) {
> +	const struct intel_c20pll_state *table;
> +
> +	table =3D intel_c20_pll_find_table(crtc_state, encoder);
> +	if (!table)
>  		return -EINVAL;
>=20
> -	for (i =3D 0; tables[i]; i++) {
> -		if (crtc_state->port_clock =3D=3D tables[i]->clock) {
> -			crtc_state->dpll_hw_state.cx0pll.c20 =3D *tables[i];
> -			intel_cx0pll_update_ssc(encoder,
> -						&crtc_state-
> >dpll_hw_state.cx0pll,
> -
> 	intel_crtc_has_dp_encoder(crtc_state));
> -			return 0;
> -		}
> -	}
> +	crtc_state->dpll_hw_state.cx0pll.c20 =3D *table;
>=20
> -	return -EINVAL;
> +	intel_cx0pll_update_ssc(encoder, &crtc_state->dpll_hw_state.cx0pll,
> +				intel_crtc_has_dp_encoder(crtc_state));
> +
> +	return 0;
> +}
> +
> +static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> +				   struct intel_encoder *encoder)
> +{
> +	int err =3D -ENOENT;
> +
> +	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
> +
> +	/* try computed C20 HDMI tables before using consolidated tables */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		/* TODO: Update SSC state for HDMI as well */
> +		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
> +
> +	if (err)
> +		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);


So this is something I have been meaning to fix we should really be using t=
he HDMI tables already defined
Computing them ourselves, that should be reserved for only when we do not h=
ave any HDMI table for the said port clock available.
Also if we use the computed tables directly that means we never end up usin=
g the defined tables.

SO the flow here should be

err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);

if (err && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)))
	err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);

something like this.

Regards,
Suraj Kandpal
=20
> +
> +	return err;
>  }
>=20
>  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> --
> 2.34.1

