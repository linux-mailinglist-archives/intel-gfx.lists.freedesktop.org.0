Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VfKeLPDDJ2ob1wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 09:42:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C088A65D548
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 09:42:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MZI5TsV+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9D810E139;
	Tue,  9 Jun 2026 07:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AEB710E139;
 Tue,  9 Jun 2026 07:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780990956; x=1812526956;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ubvb/K19ouJQq7T7NMd77/WKQkf1/tbfT12coSX8mDE=;
 b=MZI5TsV+2GirJi50BHBdZNxWwefmQnBSm/aSwEdCipQw5p9gXQbDSOkS
 G2YFifxHVlILQpaWH3P9i6Q8rJD0WzlyW0yTBT2WbauHT2p8d0k6uRo9Y
 Qp3zhrf/SGShFbMMoLp7f6N0SyUQO7uARahyUsusAidMcijJOK3iV0VcU
 gs4nobW4FqkOYvOWOhUlB8h/O02dNTRV3QmD8s9K/DiOmdOjCn3c7rrpD
 L1Y7+jvklFUvlLyT1ZRfFjjPXJmGJfd6czSmmVA7abnObEF0jjT9Xmfy9
 jn64QyrEmTHny0N5FUrSCZO6fY2UTOzcb98Vd3UfdwMQsE5Y09LuafVYH A==;
X-CSE-ConnectionGUID: ASq1fzMxT5WHmb1kKJbdjQ==
X-CSE-MsgGUID: N6j4QdN7TJyTFMjzC582CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81808536"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="81808536"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 00:42:36 -0700
X-CSE-ConnectionGUID: koQRoXa0RrCPAydw6+526Q==
X-CSE-MsgGUID: M5lbEfA5QaSRw59Zx4GlEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="244637664"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 00:42:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 00:42:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 00:42:35 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.47) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 00:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q2zUum6/8D9m3Vj+JAu7rUQsuf6BBMLIllzw+Du8e8wHxdzZJGMVWd5g9E+2z66y55OXBAmhAYTV04LcAzxNvfbrC+cn6vmoxGlGCbR9szeDUGqSHpP6AduurTP7e2rY0UhwUrIA7JDczDSbP4Gjrv2A1ug5MMn0bli9RoEJHVZ18viyhw35Gp+Iv+lTPGZvX1gfNAGBGowbXUZxx148cIrzwSFFMQLnpM5nmuCjJ/xU6UQzOeJjwLF+OKluMkbeHrJlNP/pN/GMlvMq5Vwb9oiKa5f+SnfF5Kbi8kYxM1ABUwfEcav+4TknM6ZBt2sF0h/atJoMaNHfsiw+0+j3pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1JRBJQ1lHjgIpHxuIAsI78hA8AuvjWKnzlnW+BwWr/E=;
 b=NFlmDR2loBRHeH/3ko4uMC3YiVx6tQU5eJnaUvNoY3nZwDYdbULKhjYNkxT2i0bz5htipodQezn4g4xYhVtQKhNO6LNkD1HZi0w8oWqy/MmzJCD3596nXs+DQKAq9JJ4V/WRxIjFbfo0w7crM7u/rFmL3EbrOZ1F1YQCq4fYSvU84N6Xgf1lNRMjZvD8NZrW8WS8c5zu+6h5I3sKgX60YDHQ7RXUSlSL8X1hcAWZ3AhOrI0LPn5Du7UWG/fIuftH4CWdiz37WPacKGJOeYZLgXBtN6KpTJN7f80Gr7pMQYrySBMIR3RHBPOzvJe20zPmRby85Db0MUORDTlLZ5usOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by CY5PR11MB6439.namprd11.prod.outlook.com
 (2603:10b6:930:34::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 07:42:32 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 07:42:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pM00uchb4Aykuwo01m9aBgorY113gg
Date: Tue, 9 Jun 2026 07:42:32 +0000
Message-ID: <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
In-Reply-To: <20260608132505.1849158-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|CY5PR11MB6439:EE_
x-ms-office365-filtering-correlation-id: 79d090b2-5807-4f7e-c7a4-08dec5faaa3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: 7wgVcac77apBOcAyIWKHzqtdjYGNElEdUeYIOQ9Eo2Ok61ayWzXdMslESoH+In0rdT29o6xZy5F6MRNEDFoGF6Sq+sIjBI5i0NGllfdB8wsfY/I02RG21F+5V4CkEYJfLUBg3XOa7fMuuQBedP1sURPs2u5I4xxQ2Ye3uT8sO8f0Bd1DiQ3WM44uSCJjimRXNbKXZYJIbwiSUgqml/eDLXoptMhhOjLMFlckSlKst6GBmXw1wrxQW0/Is6wzh+EN0VL3XCvjU6TUgntJlJe3Mrg/qsA72y9++3X9hFUwPV8M3YMx4WuSnq/AdsC2yamUJR85e1BLxjFcnkDV9FEr6kQOGZEjDWHpLht3GTaS6SBWC5fDfzx1qI8tf13bffiq9IcPaIIKEmZScmyh+OcIExRXsZsoXCdfg0m2K8Y00nZJzFh3NY2dHAUhHbbTGIFrti6Xt9Rk0sE+yacJG0igE3nqWVeKht1+OVATx0lZJGlpPDjAfl08qiPiBlQDkT0wZ0viSHm3Lr+rhL7YXkSaPUF+M/FtnqrsH03mtUByQzXtAuo9BMIOvRaiEbq2tSUHQC7EYLpDCEaqKLSe/b2XC+0zVLa2/57zHIFeP8V0EOnNVnbOM4Nc5EIddT6/54SOKHUpob+5N3xGcjGCA3uodoBCHzyWoO/fF8kSPPvdJ9o7BBl8CHFHztbC9gwHvLHX7FVhITIAYVaKF3FY9oQXfmUeDu4sLFrN+gMz/nV5sX5nsw+kuwuHc6WB451vm0fV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MqGu5x8UBZwDPNV+vRPNYOffBvFmpSNEXcEwbVBteTd87ZNlIihgKTMsJp6O?=
 =?us-ascii?Q?FyY3NJhN39YPFZw5b7wyBuHIYLr07m+/NH7iivol7uo7UmMGTySANsxa+2C3?=
 =?us-ascii?Q?u0ZS6P0ZqEmy9DfaUiTUZMX2XTMzAWknINRnywTBAHCrxifpD/uCOP83cXNo?=
 =?us-ascii?Q?wIw0i4bwZvZiPDmC+99vFt6QNmcd6bhn4ob5JlWrgPEYkE43JK+xJeUwkG7O?=
 =?us-ascii?Q?UTYqOmJ2iHub4HSxu9RcVJV31cO7ulUt0nTvTbQEiVLFdtA2jm5UrH8ML8j4?=
 =?us-ascii?Q?R7EEUX5OoTPXbaSns9QTREEL7K6uCQr+7oGPHSRGC4iPQ/kyLcj697c4DNE8?=
 =?us-ascii?Q?EIMRaSFSFpvt2cpfWuzl4/9Sw9jMzREOEPRWMZqN3BuA6t/3uaUOmr1twD4+?=
 =?us-ascii?Q?G4SOcMwWlpFI/IG+4vDid8jnd82kjs++gaJA8IS6AoJY1dW38QaHNHom6T8W?=
 =?us-ascii?Q?n1ffBSwwSetzqJ9wRnonBDMB1fyir8ibdti1bQgXj6ksR4efm7RMVc//gVrX?=
 =?us-ascii?Q?KUrTNjr4qWhaBcX/mUVmHAMHW2wd9LVlgo0b9y8hNXXYnqYF0hO5SnkV3sFD?=
 =?us-ascii?Q?koBxsl6fRtjuRVfXbRKQ8fT/hd6GLS4VqjQmB/JD1P0eeKJ+HQG7yRMzUxBp?=
 =?us-ascii?Q?rWP+SU2UXvbWZM7FppLNuzqdcAn5j2WedN4jzBMNFyGXQlW+pSse65CA3SSW?=
 =?us-ascii?Q?fmwbRbG5NNZzwn6BLL45tTn/QmQ0VuhoaYCghZT7+2WKL1nG+KVN8jANsjLb?=
 =?us-ascii?Q?ENzsNl30+u+fGMLcWcPUPhjy0RUUsb/3KZsKEqJSBXUQwDtfBLW5Xjv8aeeb?=
 =?us-ascii?Q?3TgrIfrosTP71Ee7x9XlT03jwPHiCHU9NXrCH7eZtcDyR2noFgGuDxLbRIQC?=
 =?us-ascii?Q?smhgewFbQHnV5sqyKYAPVRn9CpOc1HBHMp04UGbAUoKmB4zNgOyHALiK/tOA?=
 =?us-ascii?Q?qimr3l6YS1O5A6DT/fL5RULUX82rXzj+y62izk3UN459ar3D4BUxCzBf6oBG?=
 =?us-ascii?Q?qsY1FeFhxrPO3Dy8OxDpXkGWtAbPOpmc6mH/SkB2SEeEOseRgyTSlv3T3cS2?=
 =?us-ascii?Q?Au5UOQwDbZ3EW0yPgQCZQ88trN1NAi2Sa8GrYDVhG8e5R9/5dLtM+JEF8i97?=
 =?us-ascii?Q?AN/tsBr+EI760kvTnOa6bpdvnTKznKvhK/0KUR/EQ0oFizrRX6PsbwfT8x2Q?=
 =?us-ascii?Q?EBeeUQB/83RKoswiKi71IJREYUF9SkwCYmhncG8FVs0ED1uXrbqmzycd5pMu?=
 =?us-ascii?Q?Jxvkse5y4xbxPx5FMNcRX6qbM0LwOyeJZ8tn5qcq5dPmcbTKMgiM5k/e7Bxw?=
 =?us-ascii?Q?ggklkiFzvpYeJI9teVjjO0VNRqM7S74IG3UNZMy1T1TPmYZ5zEYn3smFmbqx?=
 =?us-ascii?Q?hcovGLhpembkAg2OB72UBVSHCqhuzY1O0/IiDx7WAswsSfG/DaSOLLGEiqRW?=
 =?us-ascii?Q?hsGj5d4ETy7eJ6h407fA0+AOrDC8oUs61Lu05JGoKc/sh/GO3VmkmJOuJUTo?=
 =?us-ascii?Q?7fmMLw10yHbdmmfuQUW0arwrhLJgkmwnT4IVMK4ymvjZrA/QZ/04JovxZaPY?=
 =?us-ascii?Q?TO/vR1oOACehoviCXX6WieZSUX0vgZVTYKizDEOhCkzWBLzAUW9XJIhiliKz?=
 =?us-ascii?Q?JCxazyLdEKez+PkzjjUOG4ZQ3KItg+g2BMPZgFGl9uoXL9kqUOd0xD3v6IV3?=
 =?us-ascii?Q?E7hmaWjWCQXwcJuSacHkk//eeFBlFgckw2ZKT5PRPEG3jCYIpMuXPG3VniGy?=
 =?us-ascii?Q?X0MqkqVAxw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZR8290cpqY4YFKsb0kynsfXUP/wBksp9OcKpU+E1AGqu1JeZuDQ2n7DJVwBPoNx3JENApK8zeXc8gviFxR9aH5HSlosu7SHG8nWNcof0TTB64ozrf3hqzfrs2hElzIwjAiz5s6cvV9siDrVhxKG2R7VIci2/rcIhiKkhW3shmcQ6lxwqob9gP/UStbAqlT85XafSxaaw95Y48qOXn0dLWjHlrqMsTTpQuaNSggx77VBmCmB1yofZ1gY8Sw7bNfH51rGqUOuKsKu3MHrLEEn2zIqgyz0yH4LcJfoIotP+xN7iWVvXCoLIZuk+JtoE4aA9c5xWm7/kZoYOBlEPteoNbg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d090b2-5807-4f7e-c7a4-08dec5faaa3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 07:42:32.1621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t9o1KL2M9qFDvx4cwVFyVmk8c//zxl6HRdbZsnglCU0xtcrDPXG+g71XoicvPBcJ4UdvAVEyhVYLJS59xc3MZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6439
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C088A65D548

> Subject: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compar=
e
> on LT PHY
>=20
> LT PHY PLL readout is only partially reliable, and the LT PHY code alread=
y
> documents that only a subset of the state can be read back reliably after
> power gating.
>=20
> The generic pipe-state verification compares dpll_hw_state as part of
> intel_pipe_config_compare(), which can trigger false-positive "pipe state
> doesn't match!" warnings on LT PHY platforms. DPLL-specific verification
> already exists via intel_dpll_state_verify().
>=20
> Skip the generic dpll_hw_state pipe-state compare on LT PHY platforms and
> rely on the dedicated DPLL verification path instead.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 2fa10f858279..85ad2bc4963d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5374,8 +5374,12 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	if (display->dpll.mgr)
>  		PIPE_CONF_CHECK_P(intel_dpll);
>=20
> -	/* FIXME convert everything over the dpll_mgr */
> -	if (display->dpll.mgr || HAS_GMCH(display))
> +	/*
> +	 * LT PHY PLL readout is only partially reliable and the PLL state
> +	 * is already verified via intel_dpll_state_verify(). Avoid false
> +	 * positives from the generic pipe state comparison.
> +	 */
> +	if ((display->dpll.mgr || HAS_GMCH(display)) &&
> !HAS_LT_PHY(display))
>  		PIPE_CONF_CHECK_PLL(dpll_hw_state);

intel_lt_phy_pll_compare_hw_state only checks the reliable state hence we d=
on't want to add this here config 0 and config 2 are expected to be reliabl=
e

Regards,
Suraj Kandpal

>=20
>  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> --
> 2.43.0

