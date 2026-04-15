Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OfDE/wF32lLNwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 05:29:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A97EF3FFFCF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 05:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E46D110E02E;
	Wed, 15 Apr 2026 03:28:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8USf/Sb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD8D10E02E;
 Wed, 15 Apr 2026 03:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776223736; x=1807759736;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u2nfU62J/flZOgt1w/OIjuLhc3PdisGPMbAq4yjTDaA=;
 b=g8USf/Sb8jSrPFN0b4d+YQFYW/EmOSu4TksNuZx5KKkE9kyJJvrUU45i
 Ao899dUGwdzEWg+Pk32LB01Ndm39eFbFdBelLRGxVwPQANy/y4bx91vug
 ZTrYLHa7AUrqTZJw4k3XOCA0t9qbUpP91jOFGJ2ogtYGSlcIjlQDZfTbr
 JKSLDoScYsgbt7xx2eErN4N7bcJ/MuUboI0AJ4AVC5N2ndiNB363AE9qF
 Kf1LH9dWp3a7pTm3Kf5osksnKlRHp1++hO7Hk6MTGtjCbvunaobwQwGs9
 MolVm7Tx5AOrgRBDDOqfvg3Qw56DIyzD4+6GfUwbJa7yJUCV9VNO1q/4p w==;
X-CSE-ConnectionGUID: 04TCXAw9QhyWaoVQau+t2w==
X-CSE-MsgGUID: YY+xfgdRT1WdAZzCYvOKiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77216532"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77216532"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 20:28:56 -0700
X-CSE-ConnectionGUID: AimgVu1pQZCLpX1K4Q+Blg==
X-CSE-MsgGUID: rRYlKCFKTjC76bQUdsj/EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227638341"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 20:28:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 20:28:54 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 20:28:54 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.57) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 20:28:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HZK5MSAvyhbZqXIBNWmQlk553JNpaWz6oKdqWzoDP4oHFl41nTqT4Wqhjxak0yh5qZPSsdEw5yoLmZtwHTADBc2FnfMeMftvMxAcF8PLLDqZdzw7bSJVs2Pc3boWKpdvHeEJMhqGf0lEZrLrPHzFrPM+Y4kPsW0EWzg4EIkOVJW/xWMJuQw9/zT+pg32y7TGItpgFwO5fITXPG2FCkXOch72ld2lL2MYn7YTvqlq8UVch9kwGYbms8cjOMsQexnSyMTyuuv8qK6naRuIyJNAcoPeaZFLy/uGp0ObNRniZABqyhEBIIzTAAIORPw4N9QhOX31XesH6xXh5vI1cHsAsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggp9kaDSpPBrpAgeLVTZv1bSYuUsAsSms2giy+Z+LJY=;
 b=YUvd0jqNXoKkp1LvHgZR1AYEg0Da4qtBv9wyxDCYcuhCC+OOYpcl1ZIC2Tw2gXPensMuKQOdhJpBKYNFKB6yEAXsIqEyClqqkmh/bhAv3hRP5v17PeRXQrDVOq/VRQrC7NvvzRetc3BcaRZ+onTk2fQkbnNWoui8FEilPGuaIDLm9OXlGn+6azwxkscVPK19Gi5ZHIhjRyCAA21kO3nsOIgKBNpQOJAObA5WNobYPrQZH+31FBneEeF4WP1Su5pXqiHoXDErU2OjVrpdImyMexhgVdfoyJiXZlfn/rgFX0WEt4kchYFBt5cu/lja5DMxuO20WMUtfmhG96nVlDvsAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DSWPR11MB9713.namprd11.prod.outlook.com
 (2603:10b6:8:356::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 03:28:46 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Wed, 15 Apr 2026
 03:28:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Deak, Imre" <imre.deak@intel.com>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v2] drm/i915/dp: Fix VSC dynamic range signaling for RGB
 formats
Thread-Topic: [PATCH v2] drm/i915/dp: Fix VSC dynamic range signaling for RGB
 formats
Thread-Index: AQHcyy7zb+hYYoOTtkeshXsbzjUubrXfeQ1Q
Date: Wed, 15 Apr 2026 03:28:46 +0000
Message-ID: <DM3PPF208195D8D8CE9BC056673D12AE8BAE3222@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260413095407.1426322-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260413095407.1426322-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DSWPR11MB9713:EE_
x-ms-office365-filtering-correlation-id: 60ac7204-2dba-4d85-6303-08de9a9f1a34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: xj/kdhvlldqFtAEwoTodI7ljtLbTtImUwnixMPvqSJOOhbF47LFhmuEhCtiAvH5e9PqA4mXL8L+wtjv1C586H6Q9KrcjQmhPybIWoi6GuEUa3Tydhe9xPVHrHFmoChjbYNktujrw3HObWtx9Bga9GobajuNnKVM5Rg6U9N3DqYJ6N/p5H0mIgTvb2Ddeh0hI8DmNfPZ92fGsvzAJwy1vNEy46OXWjThHSOeHYx9DvmcYlD4XvLzrZw5RirfWk5BrSEnaQM8zFIT11B0xLUraIyeo4ePHY81fTn2XOjE9u2PBwq8pvGnbaqrrQeNl+vbPQ4osRy297Ao1BiXjor107tc5CpFM39TZGlHis0/yB7HHEvIXGTHsDlHNU/b0WhtI6UtAWEh6zRfQuvYx8n2WKDmyg95aNkeAEiUqLGkYTLGsA0e/71erqTMFM72WWIEjMnZi8Ql1SAPTbk4zDy2RYIJNjqdIstP5jEVuJSRZJl2QFlQJwWE50uUXrlxSRVZVWAzyOkvosQEbpiQquKkdokLDLwcqDXr4LXkFr35OkdsNWs2p88F5vmo4ILq1rhNN6I52fuGpEIQ/6sEBjz8H0zK3cgIlzt9rcgvGBSJVYm1yL6btWW8IvvKuc0chZz82Gqkv4q3IQ/j9/DiqC6sNzrRoANT4YYIJt/vH4xjKW6lvy6RClH7KC/WfrZBKeIPDuZWBUsKTNEEgg79VFftnkNg3BvE+Xpf9xmF+M3wXUjZV8+/J3FmgqK7ZMuagxH62
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KNbytWuh4X51JrzL21gEfwYVmDuwDFbsW8ug0y5ba6yi3NSpKkC3YD8wImgq?=
 =?us-ascii?Q?VqFrbttIsk/E4YbS4M9x8BwA8UlgdWbtOlOdqeIdswdT9UiT9gRT2Kro+Gp1?=
 =?us-ascii?Q?Z5cZuEkzgw5YsZvEU6dqBKuE4EVrglqL06fUd+61I8x6eS7Pe8xoD9adD2iw?=
 =?us-ascii?Q?Z+0fBLP9fR5DVsP0DiX8ih2/nqfrlTP2DnBBNDo43p/oFHtE42RccGIEw04M?=
 =?us-ascii?Q?uJy4DWmJVgHhAL1EI7sNWotV/h1bC2Gp+MosEGiMtFgOdFSmTYlDrrX/v4iS?=
 =?us-ascii?Q?3oPy49KUWZ9s/y/A26w9xtFvtDDncoObg1jZOOEdU8AD551cOKpm/rXrkOGB?=
 =?us-ascii?Q?k1KUEKa+gEJ+6nVO/Lhay47p0wAXgHWNPO1bJoQZl4N6DRvc/p+pS/dvM5A3?=
 =?us-ascii?Q?TtMCd5OxgM0cIFktGidtKmnAaFNxUesdsVS/BiNydVe3N718wQZr+3wuJiGa?=
 =?us-ascii?Q?l15JsT71CO7WEeCJ6EjTab2jmY39gdR2XL6VM0bvU7pnadVfReBY7TYLMUkb?=
 =?us-ascii?Q?02c1fvqnc2NNEcnlkfrvDSzLycW9mC4BHHU3IqebkspQmttcMo8fPJjsT22e?=
 =?us-ascii?Q?M9BLQMMU1b/lZj8ktjKJ7jKuon2iHXGAdTtMYRQvPSbSdNFPr8ehem69vTXe?=
 =?us-ascii?Q?/foHGuUG9sfbhAhhhisHxgirK2sSqSDWpkIYM4stv5aJivACApFvbPL/OjyF?=
 =?us-ascii?Q?AVOe6xnbhKhSsU6AGlbznbS9p0GCjYbx3q/8Y9xcILuO4y80JWx6+aGdk1kh?=
 =?us-ascii?Q?JwGU8w9Pdu604+xoiHwnUzd5iJhGid8k8hPjHZWP3DBq98gMzy5FpAcMSyi9?=
 =?us-ascii?Q?f/fTxBN4IrKkcY9TVIecRdbQSI+mNGUN1jP1vlB+05OiRU2x9gg4BCZLGy32?=
 =?us-ascii?Q?Xm9pzBpZyJyqzdTZ+2hphllbwEzRUGJy/qG6R2iM1Wb77pFARlQIzo9vb5+k?=
 =?us-ascii?Q?DlkxR0ddo1d2Pgx8jkwB+wSUHiyt4L7rwNttHjvZ3TYDDvAOH3X+ft05ghPP?=
 =?us-ascii?Q?txpwQZSZerB8b54sAyYsP7txseDdt1gaxzY4sq7dVM1vlTWiSRA9EI6IbIur?=
 =?us-ascii?Q?CH8Ie/j2Zq12B1jVhhjzYBlg7n7EfLn+DiVLPpaBTMNkRl92BLZxhEHT4x65?=
 =?us-ascii?Q?K4Aq4z2YyHQqm+jpBx23yNmwkp1nl/MMP4c6XpcEJCKXCrb79ibERfhDkFBz?=
 =?us-ascii?Q?B80vKYyX81iAF8N3FJHdQk3RAmO57EhwHqvcMgrp4xi8gRJRR0CB083Fdm5s?=
 =?us-ascii?Q?JnJlkgO1L/N1dIR7MrFfuDudNNmO1QvKfNwbNJWCFb6Jlfu+JGegCLlqLJd3?=
 =?us-ascii?Q?cNw+ZtznuJsksTsRGhbS1oNNkwMAsch8Pill9K4rLw/Lbk5DbIskYfyvgqNS?=
 =?us-ascii?Q?6KpMfgtQGhSpRtXKSvnV4gCTfaN0TkjJXzKZZZJ3rno8+njSL7Hrit1DQK02?=
 =?us-ascii?Q?hzl/e5xy38iDyTnX/6d0CJseC0rewFSuOVDdswBHUQJ6jTIwvwqpp4TN7ciP?=
 =?us-ascii?Q?Ojry9vc36Y8akz/f3B3yx9LqzsEMrco27DSRIzEPGhM13ICKRPG61SBZxEP7?=
 =?us-ascii?Q?HccldqPXiIvu/oNN+6JSjfNmAfnZrqD6gTKJp1o1RIgfEIJvSOgQWgSc1EVn?=
 =?us-ascii?Q?sTa7HVO7lHwnxqoeKENYakWBXxSmYQ2ckOGa7SokQB6LFUtkqYRl9gJylSZ9?=
 =?us-ascii?Q?p/+Xw1gAZ14+sqFdJDm8+OVWSVESxz92ovkNWg0JJFhD+7t1fat18HhwtsQq?=
 =?us-ascii?Q?jPg2KhrRrg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RIDM3AR3AoPYVy5Xd5SqnwU4VAnpxgZzJvwn1pN0wjv2bCvBqa74VobBexSUP//cm2+ziVpaA9YIMAEuQOPuBbPgo+m/Km0th73MKHuP3maL6La7ZGNfHCfXZ8QbA6MeH/R6FAlT7BmPMOwUTJNkKMXfIvMYnRgNjwZfDb/AsWxxRB5550P4TmsC0IjdDoTc33uutltUtlMliCUNfHsl6TRO/GjcPTEk8zwcBePOrwUz0jOBqL0dxZIiKpUpOr/isgNh6QFaTfm59mrJyG48gI8Vatk+pyu5MB9dY/pyR9iemkMdhUHd5OgBNPgqcMAGuQB85TI2Yc/MHsR5yPwEuA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60ac7204-2dba-4d85-6303-08de9a9f1a34
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2026 03:28:46.3262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zXhQjQCyHrlSO9VrZTxWUW5kpl4QBRyowRPclEm448snMSxvCt/C0X1jahcENlAwTlsTOBI1GGNHmRqZAU6hCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9713
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A97EF3FFFCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v2] drm/i915/dp: Fix VSC dynamic range signaling for RGB
> formats
>=20
> For RGB, set dynamic_range to CTA or VESA based on crtc_state-
> >limited_color_range so sinks apply correct quantization. YCbCr remains
> limited (CTA) range.
> (DP v1.4, Table 5-1)
>=20
> v2:
> - Added Reported-by and Tested-by tags
>=20
> Cc: stable@vger.kernel.org #v5.8+
> Reported-by: DeepChirp <DeepChirp@outlook.com>
> Tested-by: DeepChirp <DeepChirp@outlook.com>
> Fixes: 9799c4c3b76e ("drm/i915/dp: Add compute routine for DP VSC SDP")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15874
> Assisted-by: GitHub Copilot (GPT-5.4)
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index b8b6d62fb275..2b6283b4dec6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3127,8 +3127,12 @@ static void
> intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
>  	drm_WARN_ON(display->drm,
>  		    vsc->bpc =3D=3D 6 && vsc->pixelformat !=3D
> DP_PIXELFORMAT_RGB);
>=20
> -	/* all YCbCr are always limited range */

Nit: Since YCbCr are always limited range we can keep the comment no need t=
o remove it, may fix it up *All
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> -	vsc->dynamic_range =3D DP_DYNAMIC_RANGE_CTA;
> +	if (vsc->pixelformat =3D=3D DP_PIXELFORMAT_RGB)
> +		vsc->dynamic_range =3D crtc_state->limited_color_range ?
> +			DP_DYNAMIC_RANGE_CTA :
> DP_DYNAMIC_RANGE_VESA;
> +	else
> +		vsc->dynamic_range =3D DP_DYNAMIC_RANGE_CTA;
> +
>  	vsc->content_type =3D DP_CONTENT_TYPE_NOT_DEFINED;  }
>=20
> --
> 2.25.1

