Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7RsRC9QEsWmypwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:59:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDC625C9D3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D3310E31A;
	Wed, 11 Mar 2026 05:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E7uYszgi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5683510E31A;
 Wed, 11 Mar 2026 05:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773208785; x=1804744785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GFV6dtlrmE+7vIo3IKQKV0WXl6GEFbnBQj5hsyxSneE=;
 b=E7uYszgiIjQUZpOC9OXGQcYAOsAQCvJsl47ozJgGg2nVT6MLatyJD3Jg
 yPtyjBx09edQU4w3RpQjpQ31MbGv9741Qcuql4OkZ9gtDoBkjjNOGDeMs
 uJWc0WFPW8xZ3wvwjEckNYf0TmmHspYF4r/tn2ErPFrEnQW446bqG5aUk
 kXBCpkPAm2ovnp57vySGE3bnMRHeLkD8PXf8VjEMonlq7vihxfuE2k9M5
 4jc17ngY2RwTPQbKtt5HuodlEnGT7JjaqKmAyWa2EdIG1YxUA0OFPSj+U
 ZX0TT0BX/GNmwIv/GTfChiM1rPoxvVih4e4wYFN7r+Wz81+j4VBwDWm+R g==;
X-CSE-ConnectionGUID: /4r0qUMdSAiL5pFwHLtxQA==
X-CSE-MsgGUID: HNuq072oR0W7ky9RTUR8Tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="61841844"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="61841844"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:59:44 -0700
X-CSE-ConnectionGUID: IOF7I1jJST+39MiWrF6BxQ==
X-CSE-MsgGUID: fZT3O9JsTWOBcfC00F14TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224526726"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:59:43 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:59:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 22:59:42 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.13) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:59:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c2s6Nu4nBdADOwxhu444NjH/KagVthpCi+2JoBcoafdfCY0vb5IZo0CX5mqXyLOOXn/CI5pdnSyrx3PvuhtKZ/nvmQ2iF0GVTWCYFQeg5kVBk0NEjGXff1GHiCkHowRkZ2azPPml4gNaLLl/jhuruumvly2QXNm6BOmCm11RE8j3X4ZGIws59SBc0VoJv4E3p4BY6JnTtOB6y3Lo4iCln6yu9fPaeybRJblrIUEUEwdPiDehdddSZfxZJhw5L21FHSR5J7YqivIak9seetXHdNhAxWN3WjqrwiRwELfT6HyneC6EtRKRP7Ahq+mivMz32LkpcWJgFYqIT1nqngLgzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZhD1EI2wDf5boucEvqCnbMgrr/6+Z14SOea4x10UtTg=;
 b=EAb92//uIdJJExUCQw0H8caYD2CXYiBil5xSz84ejMe2O3GXFa2Q0Ttq1lMp9/O6RqCcizV8Xl0YLU6Lx/D101IuWGeGk6OVmrHDEaf5jo0wQQZPrDRJngU8AKe8ISUeg5G0gS7Erm68+4Zz2A33cU9DFzNRBrcHRbfyxZQB/BYu7j+hhCAFX/PQmIr5wOLlRoLXhc1WAHe4A7QcVTNrN6lZxm/8TikXI1W4H8n8PJsS25wabhSzSQ1lJ39jEBjwO7ALX6CauyFb/mtmFVPvHXPkxB10lrI2KPpox9ng9y+m8fjI64/UeV9LlFFs5GYlGd/7D9DRwbSZi8CowlhZvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4896.namprd11.prod.outlook.com
 (2603:10b6:a03:2dd::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 05:59:41 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 05:59:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Topic: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Index: AQHcq9pTl68o39H6gESwH+uFQhX4OLWozWZwgAATNVA=
Date: Wed, 11 Mar 2026 05:59:40 +0000
Message-ID: <DM3PPF208195D8DA28F91EA07828AC2610AE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-19-mika.kahola@intel.com>
 <DM3PPF208195D8D181A8242316BE048F2DBE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D181A8242316BE048F2DBE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4896:EE_
x-ms-office365-filtering-correlation-id: e5657f5d-f04f-4f3a-a7f4-08de7f3362b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: RlH05NtCmqAglt0tUTkapldAM19W9pd2qFAiXCZZIn5vLg/dL7WRgIHh//YIPQAAW+eKvMk1mrEsjQr8YtoPmKvjtt4cM4JH8KR4Ef/SBNVejD9/qN5CbFj5gmtHvuT6jdElmFqDc82qdS4Zspi2KVUUh74fApM+DMMm6lEP3aJgQkw18TB2bJZoQT3/MHq0yC2UTLcMqPUQhK+D4ZIBQuPn26pal6N9rRPtM0jfDv6cuFTYnsyopw41L/qKsBp/zpJ6DFapt1QZP8wFFKvKUMwAJMhMIdU7Q9eryRjofwVvfAf1H42u6meY3oCTb+46igjw1MhYxOAjAFrVDGPIcteqKG7AZp5AavQ202v+0VF2E/2PUptGxIey1HnrqcN0d5sDXpjApNQ4ffEDIkzF2eCRMRZ+PmGRgFNlsKqJRRR2Eh9c1eO83boPkM6hKT0IvkuvRqCo8PrnpcwJEmRxEv50KkDAUdQyJqOGyFvPh+LCLXUZPpvIkIQXQFYboGnk/ZORlKbOZTb6OSkd9pLjUnibGec9fPyjWt9v7M4wDVb7UPMmBVdQ73NlKf14mCwGlk4wdfzER0usEPHHAelaBLfZ8GXNYx4ChfYcm12z/X4B9xzkpBTY/s0VvHgY8ximAxlaZbUy+0pleWiBGABp1WDswZxsy3tTAQSmoVH2hz2EPhb+sjzKp53HsraOpPf58ivJqIKnJfhE+ehcvQSia5V2Z76LmHLTAZngv5GoEOw4G/wxqKfUWUL5O8nTEDlrX7eFBfYIbFxurBoPpv8cw878Utd90cxmwYi0dBWOqs4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VzMbRQzr2mzJ/joLWNt+emV1nzbwSRXvL49VnuMzA4GEwMVCHaCYxu5YNT2j?=
 =?us-ascii?Q?qgRMpGuyiAMnkusVQGL3pLXi4zlm8SPC5NCNGQhR9oESTQFljQqMmpX5EiAP?=
 =?us-ascii?Q?fN9nqb/d5stWSzb10+qa4W/0hVWstAMOMjp8VddiCc8HTorPnMTmg0kko+e0?=
 =?us-ascii?Q?BDxQNSWxEsngZcpChjB8VQ+C80oqtC0UIlInOZWGxgicM5QSUXqlel1pcQkN?=
 =?us-ascii?Q?jvzrHYXQOxgPvW0gALUl4QT7FQux0PYDRJRFzkNyI55LEQfa+Jwrr3uFp1A/?=
 =?us-ascii?Q?e7dO/IMhptyC7AodA2oWVE6Z01kNg7kB16h/K9N1QfjIQlq+piORanNneZP6?=
 =?us-ascii?Q?U73n5HR7g5UIl4uSL6S5Nkxmfv0Y1mu82+X/aReosJDBsIFmls6WS+7APpcK?=
 =?us-ascii?Q?8fB7B2KychtSFTeSjBcqVB1ecVqpxXkX/2ReEdIsNna16cbJMi2ooAUra49l?=
 =?us-ascii?Q?9HDdhzsORZ3zkQujMaNpT9246lRd7q4JgBkxCGhTYR5VZY9zkY7Ut/ZMUKVL?=
 =?us-ascii?Q?j/0gkHaOU6wg5+XgniUQIu0Fti3f7GYa670PWk3IG1GiW2uK3YPqzwpXmlpz?=
 =?us-ascii?Q?Uomnm9JxuNAtQqTihqmecpR4JC064AJKdvyn8FEmZpTopnQcnbsfJ2TyVG6/?=
 =?us-ascii?Q?9Vd7mTRYkzayQQGMMDa4DnSh0FHtQtIdEsaN+KgEFrrgaHkKtuEpCWPNQf0z?=
 =?us-ascii?Q?GQjPT29h/vLqGXjmO329hifhIT/tCER3HZARWccbVTKeLpSoLnld5Fg94tuS?=
 =?us-ascii?Q?Cx9M0Lbtb0d/bEO5KH2EOzKT7GyP1TOKZv9FvoonI2Onq6l3NUbBXlFn2qfJ?=
 =?us-ascii?Q?kP9/0CXyfadyDTMLu/R6RlV6FSWVK5ueN7rB5x5jPt2+y5FO7A3NS3odut+y?=
 =?us-ascii?Q?2ZaPBD+o0uNfWZPo7TF6+ppydmrOT+qkghTKbZkYHoMIOn+QKEQHr2rJKQD4?=
 =?us-ascii?Q?4mjtJv53UsGoDgjZV2KUbrMeKKXufJB9HCAIc6nygdGRJBWwaDOtC/n5S1cS?=
 =?us-ascii?Q?upuzU4Rg+yM5L+mMHPNw4F6iNmmmgmoVlQQ4S2Kkt7Apwk8+cJd8tr0sRuTq?=
 =?us-ascii?Q?BG8KteRf1/Bzym+SM9psxg3rHtA4h9g9cfOLCu23L/cFvOdJZTC8+t+ejUZo?=
 =?us-ascii?Q?fB3H9w4JbOxKFfHPFw0q8HOLCx6tSL1SYwBptWL5AQsIFwMuzpw/NxgP7/7n?=
 =?us-ascii?Q?tqaepPheYXoTQPrv4BVsTxfLtpRFynvqFJZl8ucGnTpMwrIK7wUgMWrT2oNC?=
 =?us-ascii?Q?LXtx5oMrL00CpKmoBmqNiIyML9/T+sS7dCLihcZ5slpzNFoMwQk/l1giNGCM?=
 =?us-ascii?Q?F0DqPlMH0CKuCPccaZ97Lb2aC8n+q9XMHBrdGTQX9UzU6HzF/L77SL3bpX6/?=
 =?us-ascii?Q?DN1gTfga2aAe0t43FXZrdCSUeCkPD/zSxnS5GupYGSaLIS9qH1CeyHqytsE+?=
 =?us-ascii?Q?jpHdpyTsA1hcF6IGANNnmtBBNWeOhqod0t0D2ku9NWJolRR243jfehFaELoy?=
 =?us-ascii?Q?QH14nkEyZuIUd7xYkcQUEyUsbn/KCsWiMIYM0fq+qHqEzHfNiJo5//GNfF7I?=
 =?us-ascii?Q?JTgxkaFqaVXaMhT42Ez6bmpwAn1/WofJTV11mQDyodgbLd9kjf+oBd/pfBfl?=
 =?us-ascii?Q?RNSgWReezkuDm2yuaXqaEUcSqBp2R27bOEC8UJigtJLdbKIATsrtlY31bC20?=
 =?us-ascii?Q?BDN1orxmvY144KyYJM3MR+8C1pCXdjvUpkFN56T73nhzMz3yO7jbotr8kWAN?=
 =?us-ascii?Q?OrzYT+f3vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fAEPEikWQHWaWxqMbeZKjpJ5vGr7HdI0nk186fqu9cX3052hLDxVbqZWveveal+xL5C9Th/2tEx447v847LjDmSoLvBsMiT3SkW+xeLS6HfKGSZq+LupVTNUKPHuuO3FzR1cT7NHvcaO3+Qt8Jche2Brf6Whme+z9zmH83qjtm3GsGWoTFMvGxGhHqJ182qfNJ1QJys6nuglEq6DrxpNEOzaZT3YgfA/oeJPeGXPvzerRS3kYY/t40PcdcDXh7WWXyh7Re/SjPA9eY3vXWK24c9LmhwdOl/JCoBrOemxDTNyTk5POJPXaRX2im9Tka9VZxxfaNLtlaoC0qyAAdhbJw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5657f5d-f04f-4f3a-a7f4-08de7f3362b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 05:59:40.8925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G05AjFYecQ8HAicDeU6eLx/aIMYlOgCNUJtQVR9OPvZ/qiYtFphYfl6UfZXMstvQd1EtDLAOBzNQzsTthQpi1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
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
X-Rspamd-Queue-Id: 7DDC625C9D3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: RE: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on
> DDI
>=20
> > Subject: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on
> > DDI
> >
> > Disable PLL clock on DDI by moving part of the PLL disabling sequence
> > into a DDI clock disabling function.
> >
>=20
> Commit message needs to be something like "Add new pll_disable_clock
> functions so that they can be hooked up to dpll->disable.
> This is just a wrapper over the exitisting intel_xe3plpd_pll_disable to m=
ake it
> compatible With dpll->disable function"
>=20
>=20
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 ++++++++++++
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 11 +++++++++++
> >  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  1 +
> >  4 files changed, 25 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 51403d09c477..191ae7cf81fb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -5299,7 +5299,7 @@ void intel_ddi_init(struct intel_display
> > *display,
> >
> >  	if (HAS_LT_PHY(display)) {
> >  		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
> > -		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
> > +		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
> >  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> >  		encoder->get_config =3D xe3plpd_ddi_get_config;
> >  	} else if (DISPLAY_VER(display) >=3D 14) { diff --git
> > a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 54c7a255b3a5..28c560417409 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -4607,8 +4607,20 @@ static void xe3plpd_pll_enable(struct
> > intel_display *display,
> >  	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state);  }
> >
> > +static void xe3plpd_pll_disable(struct intel_display *display,
> > +				struct intel_dpll *pll)
> > +{
> > +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> > +
> > +	if (drm_WARN_ON(display->drm, !encoder))
> > +		return;
> > +
> > +	intel_xe3plpd_pll_disable(encoder);
> > +}
> > +
> >  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
> >  	.enable =3D xe3plpd_pll_enable,
> > +	.disable =3D xe3plpd_pll_disable,
> >  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
> >  	.get_freq =3D xe3plpd_pll_get_freq,
> >  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index 6bc32d1734a7..3230d2e28d9c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -2309,6 +2309,17 @@ void intel_xe3plpd_pll_disable(struct
> > intel_encoder *encoder)
> >  		intel_mtl_tbt_pll_disable_clock(encoder);
> >  	else
> >  		intel_lt_phy_pll_disable(encoder);
> > +}
> > +
> > +void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder) {
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > +
> > +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> > +		intel_mtl_tbt_pll_disable_clock(encoder);
>=20
> This is already called inside intel_mtl_tbt_pll_disable clock.
> Is there any specific reason to add a wrapper around this other than nami=
ng if
> not You can drop this wrapper and proceed without the below change
> -		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
> +		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
>=20
> Regards,
> Suraj Kandpal
>=20
> > +	else
> > +		/* TODO: remove when PLL mgr is in place. */
> > +		intel_xe3plpd_pll_disable(encoder);
> >
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > index 9188ce980119..3838e9326773 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > @@ -49,5 +49,6 @@ void intel_xe3plpd_pll_disable(struct intel_encoder
> > *encoder);  void intel_lt_phy_verify_plls(struct intel_display
> > *display);  void intel_xe3plpd_pll_enable_clock(struct intel_encoder
> *encoder,
> >  				    const struct intel_crtc_state *crtc_state);
> > +void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder);

Also rearrange in ASCIIBETICAL order

Regards,
Suraj Kandpal

> >
> >  #endif /* __INTEL_LT_PHY_H__ */
> > --
> > 2.43.0

