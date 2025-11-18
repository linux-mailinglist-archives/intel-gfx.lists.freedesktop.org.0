Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F3EC6731E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 04:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E0110E190;
	Tue, 18 Nov 2025 03:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PzYo9BOX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7DA10E190;
 Tue, 18 Nov 2025 03:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763438177; x=1794974177;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GqmMCXIthYjJW2JgxyxyEOn//Ide+YdwtYaV9jwJVxU=;
 b=PzYo9BOXj+bZXlIs/yQWLHMKsoEmpib9LJi2X6OCFig2RBOlbEugSep1
 s55gXVBpnSHzvSEaojcVaqWDrFwoqZgXp/BfIPlBRtnau17LvSt3gK6m+
 OH6Ydwqzd2FUUPYdSUr97JD4HMYJy6XaKabyZowsR+8Zs4cifnFft2YYX
 ChT/CKG+JZICR1CciacVGwChNo6VRyDz8uSMshWk4tVhiO8xMb5JBTvsf
 NDSfWcAa7UqmEvF/5sseFlysWdZZtWY6V5P+rEm9kfJzLym9SBMEtHf2F
 4wK6nlJ6baCGbfHR3s9aV1qQR0aqV1cuyfVSfdWeLI1O+SufgWIT9rYMY g==;
X-CSE-ConnectionGUID: Yf6KxK+WR+qI5W8hsfMjtw==
X-CSE-MsgGUID: DrJDYZTLTYSvhgpYxhZCUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="64452856"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="64452856"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 19:56:08 -0800
X-CSE-ConnectionGUID: CTcZFii0R1C8vgTMVQfi3A==
X-CSE-MsgGUID: KowFRwn7SlGJ2xGPzaf/Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="189930346"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 19:56:07 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 19:56:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 19:56:06 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 19:56:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eQoQCu0Yjk4zKzdjWdPySRYETtOfkIqiSZ5zfTVaCFrcdlrsYbzCsRnuSGKsdotaq90LfEcIt3ltb84/Kf1I20JAnajvx1V2jCxwiivBQKFIaUKoEEtmpkH2fIeLDu49+eyigZqNiaXuOrYYHTF/+JmUN7BIW4owROIS2FZHzDrCmJ4O2YsLVPuF3jwHI/tttcDFU5wrP4WwUkPdwzki4qBhimu9RONh1i8lOgr9MpNkEeF2N9i2oE919GV3tDlJCZOKG+mG2zgp/ZiEZRFR7HYIjxOIHxZknkDVWnWy9q/gRhspiyeJjDZfCC1HpFfdSwx39MTf9n7huU7FdI3HAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKRG8tMcrZ4QFuXz3Ncfr80KldluZAUY8taUMgZ8HCQ=;
 b=bIVcrbIkqjAP9Hzq0/adDMUX4WeqLCmrwi5m9IkN5zrDPViwZAqRZGnnzHNrNbXCpLzQUWwwMhEvTFnRLDIP81lJuYkMXpSW6MuJVKmDFtbLI5qCBjSDEYEXRlXoPtbrAC0ubRKmPq0wFDYbd0SRlbWcNaqjGV7sephmBMzFqMCUfN8MHzr5zEQbCfL2S8CSOXeoEFpoVh8XYhjWqcvIbiIvHtUorhLKJxCuPcWskAhvb0QV20a41ujTPea4ULxLnB80kVqrwdqURPmh3PHPPyQOqOPJSY6p7qMqomB/9dETNvi15FkAq+ZDnBP/UbkeapI4yNQ+qzgnvXs0yoEv8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7135.namprd11.prod.outlook.com
 (2603:10b6:930:61::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 03:56:03 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 03:56:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 16/32] drm/i915/cx0: Add PLL information for MTL+
Thread-Topic: [PATCH v2 16/32] drm/i915/cx0: Add PLL information for MTL+
Thread-Index: AQHcV7j5ZDi8TbuTG0qw4wQJijDUVLT3zlJg
Date: Tue, 18 Nov 2025 03:56:03 +0000
Message-ID: <DM3PPF208195D8D669173B1590759C11725E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-17-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-17-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7135:EE_
x-ms-office365-filtering-correlation-id: cda3e8c3-43ce-4492-ff42-08de265664f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?hy7ZXDMW7S6Xfj8yymKlXu2anGAXnGx/QA6t4H1oNBnWSHi9/RhkE9Wp5r8B?=
 =?us-ascii?Q?olvf1C/mQX/pUy4IkMj64Jj/IesPtaZT3XhmCKHejd1qBlq3bRzSyMj/T/Uu?=
 =?us-ascii?Q?eUGPTKmjuAdX52EMVDtrKbtsWap9sUcT/YbmhWKjNtlf8q+/ysdTnyGT9QtO?=
 =?us-ascii?Q?jZAZeoZarYfPFBnxv0KhC78vYYTdfUnnvvWfesAJKsqJvx8xJ7/tGfYr/jrP?=
 =?us-ascii?Q?zCIrOXJkJhsr4OZTj49wt3Qhlys8v+BUHYgxTfcDNUZNBhqXS/3DUo3Wy8Zi?=
 =?us-ascii?Q?BHMKAkOQjiRTHLvrLv/JxAhxmxTRvr2DsV4KGewhz8x6lEzBtoupLRvVxz6q?=
 =?us-ascii?Q?Oxi1ngNKTSDr6P0GkekX/hwKBUvFApLjofb3wtRe5dHERwA14MNik0LZ+W4X?=
 =?us-ascii?Q?Xmn6fY9JDBlSgZrLTUCJWmQ/rS7HvIhhAvXmw1GjldDj5mHBFt3QkWbZRzsV?=
 =?us-ascii?Q?G5Pb1n51drkmnf4uHHi+mXWKAxRoneEg/1yakcgBRSvk1HUsusZJLqISc9Ah?=
 =?us-ascii?Q?BdjO12gTTsO2WpZhqOu66SX7BelTUiI5diMgpkkF/d3OAD0rrWn7a1a1iDK1?=
 =?us-ascii?Q?m8YVnZ72zr+0TgA/ihqHa6Rc4O7ohlGDiSMxa/jI1hTaN17ah+6juRIrO6AE?=
 =?us-ascii?Q?qBPwVQwkKDnbTnBkFjf4jbr4r96bG8IVPHXnGphUc1A9XVVSF0L6pHJTIXty?=
 =?us-ascii?Q?HfdaicVEWWPLduspkLLGtTRJtpiS1lshQctXlhXMHWCBTNiBnhmxytMzsZtW?=
 =?us-ascii?Q?aIwaOaOsRCYyxrfEE218bJgm68Rrea3DP+u3ng0rFmr2HAOobtiO2DIbOoRh?=
 =?us-ascii?Q?llKk5lV1VE7Ku5RkVr1jR7gfeBW8IS99K3yEin1fZEzKaENHHLGOBSCv5nDd?=
 =?us-ascii?Q?9jWRAH0ZgK56orr7JETObWjFTxNJY+Aj1+utqUKOP12bwdmb9aG9lm3BNMFV?=
 =?us-ascii?Q?444AFE6uUIeizHl/SFcnCpk/pPUPqj7wxA3BjGnO4pdvoNYqFxT8eBfcVGk5?=
 =?us-ascii?Q?Fe6HUp30PXI8nNhN+p35+aMj9/vaMv7AEXlMoi2gV7NSBf8HeMRyYWl8D6y4?=
 =?us-ascii?Q?pPjbulkvoG98KgkBlJWIrwIyJTvchDXjCRUuhsf+rA/y1ERL2JKXgW4CJNJY?=
 =?us-ascii?Q?Y1q+rpEIdWPI+yOfXzVTdp80yl5cNO1jjnF6zFOin/GErwc47yS1i4cEtgzC?=
 =?us-ascii?Q?LvisY/IGdpAacYk4smAvHfYc5akunzMEKRm34WQ3U3Hp+8QXmxLeq0PmGazT?=
 =?us-ascii?Q?hmU9OCOWk89VtKphk5S2qm9WuJ+pj2rizgxoofJGLzklhfQ3xIaq/395tyPt?=
 =?us-ascii?Q?4WRCNwqK5pmiwJatH0Mte3J+uSmCKiOY1ZbsArRoJohGyYJraqiqZ5IyYZK4?=
 =?us-ascii?Q?AtXPwpEwcfF4P7qWhhCAcfrArxq0GWGU0O0oW1Fa7b2E/n1pjsHunIpowiim?=
 =?us-ascii?Q?ZgfDH60kPEzzYWOXz4kwuLR67m7dfDENFB6mlDSQbHZWzyK7WSmwym/Fh/KO?=
 =?us-ascii?Q?iXFcaHWvePk88/YAZfm0tk6uWN6iMV8IbYnV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ni0Rhjft1HwiGf0hp8Qq+uuUq1S1H23wpV2DlX0s8LJefPWXvuuWaNCYuifK?=
 =?us-ascii?Q?k3xBdX+ynZ9nipfWmCXS0tn2IgEfjApZ3o0PLMzcsKkVduEkME1gSxTM2792?=
 =?us-ascii?Q?RBTKPpHRXu/L0QVU1uTBqTmLp/MAN2gY4f7ioChwTXHSHXaQ8VjiiD1adeA9?=
 =?us-ascii?Q?5edCeDAqWasoytuZeBKfKrRfHLdpzoYTTQ8ph8Q1xrykOtGWJsngv4PrXN3B?=
 =?us-ascii?Q?0SR/Peh1tONC+E1HYmjcpGjfBJU/RSaCT+hxY+3Ia0CRqjTT/i4/vhE8iuQH?=
 =?us-ascii?Q?Xk96kpp0KJUJcEqriN/P5i8H5bLYmU5rTPI0DkapnbGeG6PhGbgaw44R4Tb7?=
 =?us-ascii?Q?3k0cx13dyXD4g/CG+/Uw4YWCScIi2cLN2Dm7iQsVn4eksepNYqW+XZ/YGfYw?=
 =?us-ascii?Q?HmZ6NUInp9r1+KtNlYy/XXHo75XkhIciHs0578HyFanpA66VaFK7IXgKsoI+?=
 =?us-ascii?Q?Tjv+jQgJW9JEKbcYDNUPQh2rsx5S2n87AMWvnsrHh0YW+nM8QE0BF/rTwFlS?=
 =?us-ascii?Q?I8SKq3QUy1iT8q3ZUo/whZTMOftif9VjGls+/UiR90wFIqjaRRN7XGy1zSwe?=
 =?us-ascii?Q?TuOD1cxV5+E9qdd0dC25IuVKeGu4sJtrdYoApKFyTw6SL6qW4PO3CeK1rNaN?=
 =?us-ascii?Q?xr70rVNh9H2P6EOdBoRKHYoXnylLCFI9yw41RYOzbRA4yFycdwp3Ft0fLZMF?=
 =?us-ascii?Q?TuY3Eop6yUmy+1vlMBOzrUuPVCRWedrxVYLu5sn57yPz2sNRHI6LBrIgiOOJ?=
 =?us-ascii?Q?y2GQFMM8fbW769F6raCKZRbGplN9xwxRUJhlIH8o5bZp4Xa/MuoE5swyhwfN?=
 =?us-ascii?Q?dHiP+7kQCLAuc/LORAuFwN4rFSrBuXx+w0RjJ+1rtGmCvKKm/gGIhKyC/+r9?=
 =?us-ascii?Q?JdZLYpYPfTY3E4IYu5y+cboGDCLvOjbXMax4QMvXTsqp5BrKozzacishqjUP?=
 =?us-ascii?Q?AkmxshddtAjQ84qYwfeoKOoFvj4mADnBptjuqsbOXSFi0jf8I2H2/I4yfPEI?=
 =?us-ascii?Q?nWA0xrus1GRR1ay29xH47SykM50/ak9Vlz3K1Q+WrHWB7LDOBa8WvHhrHEXt?=
 =?us-ascii?Q?8BG3YTEhTT1Lq7obmI4TZ3mFYwRq1bkFTlC+ko2CMRIt9u9bYuuvEFKGsenK?=
 =?us-ascii?Q?Wx3UQokBLmi2CIzLdrRr2x38Fdi2WzKB+EB2LfOZQr3CEW8ohuFsVM7A8ciG?=
 =?us-ascii?Q?zrXiqgR+vhK5nqxvGYN22v9A2U8wVrhFfCL1CKMVz1bAe1fwysJ3sxsqC8uQ?=
 =?us-ascii?Q?7oajrlr9DJSie5+l5kYzYkAqCkzd7maqV/uj6viOgW2Y/xEDlHAKNPVgthf3?=
 =?us-ascii?Q?4K7eJoH2SWZCSWxqnUK3pcNNJPoU6JWUurQ2xopUriCn/5J0xn4jkFRW7bWW?=
 =?us-ascii?Q?XbV8O8x9tsNKSsFxIW9KC0/l1eaxY5KaT27zA2TnEAV8J6gUmyGIT3ULSk3q?=
 =?us-ascii?Q?cdYYvdzER58gkNc/2SArduRlTwUwHWmNgI3pZUBG1Hvsbqsz4ZqC/+uyDnV8?=
 =?us-ascii?Q?YaLHrqhyQ7XitCierZMRm2HYXcz1+IFgMkb2tXOSUjeEhm5X38+Nk3UM01jG?=
 =?us-ascii?Q?4QJMI9anuhb6ClgXm/0WQz2UoSOHylZvAsED6303?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cda3e8c3-43ce-4492-ff42-08de265664f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 03:56:03.5462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JZz2pInbPLaXGAlJIr+aLt2QOvOZ/++PVMcmAWjnQkdf42veu1vJiKLsaM4xlIL5u/bzMicAlymKZ4GfIpMXsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

> Subject: [PATCH v2 16/32] drm/i915/cx0: Add PLL information for MTL+
>=20
> Start bringing MTL+ platforms as part of PLL framework.
> The work is started by adding PLL information and related function hooks.

Reframe like so
"Bring MTL+ platforms as part of PLL framework.
To do this add PLL information and related function hooks"

Commit messages need to be more like commands.

>=20
> BSpec: 55726

Needs to be a trailer right above Signed-off-by
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> v2: Revise commit message and add BSpec ID (Suraj)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 8c345e1bdd94..23f22c495ec7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4305,6 +4305,25 @@ static const struct intel_dpll_mgr adlp_pll_mgr =
=3D {
>  	.compare_hw_state =3D icl_compare_hw_state,  };
>=20
> +static const struct intel_dpll_funcs mtl_pll_funcs =3D { };
> +
> +static const struct dpll_info mtl_plls[] =3D {
> +	{ .name =3D "DPLL 0", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_DP=
LL0, },
> +	{ .name =3D "DPLL 1", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_DP=
LL1, },
> +	/* TODO: Add TBT PLL */
> +	{ .name =3D "TC PLL 1", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL1,
> },
> +	{ .name =3D "TC PLL 2", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL2,
> },
> +	{ .name =3D "TC PLL 3", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL3,
> },
> +	{ .name =3D "TC PLL 4", .funcs =3D &mtl_pll_funcs, .id =3D DPLL_ID_ICL_=
MGPLL4,
> },
> +	{}
> +};
> +
> +__maybe_unused
> +static const struct intel_dpll_mgr mtl_pll_mgr =3D {
> +	.dpll_info =3D mtl_plls,
> +};
> +
>  /**
>   * intel_dpll_init - Initialize DPLLs
>   * @display: intel_display device
> --
> 2.34.1

