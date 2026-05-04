Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHuzOgct+GnVrAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:22:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E9E4B87C0
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A1E10E0FD;
	Mon,  4 May 2026 05:22:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFlQC3IS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5CE10E0FD;
 Mon,  4 May 2026 05:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777872132; x=1809408132;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mGDlHkC4WOTQy6P0dkkHx9LEV+o2TybUXeEKmmNXafk=;
 b=VFlQC3IS6FgZsovEVDfULIojw+bEBPt7INl5eyquKOYpHOCRi7m6ZtS4
 mGauyKfEAI2EL5EmNny6B6a6g70AGmiuaD9Zf+Kl0L72xidlmns3h+f2O
 +QqvF2KgK1Q/pjGIMy/RSkHzlFtdv37b+tjOW7KHcb7YpDeHUVuo+9YmS
 MPOyyLkYiWuMfpHNuRLcxNFSh/KtOyYfb+dLKKe41jT9H6tEqvHHYIvM2
 biIv6Uqg9Gyp0khmk0We7rH3A6VEZttUk+fKIGhTbTzeUuON9lddEl858
 Pl+n+TQo4/mSyFlIidYlum0vLpYOaItZaO2fAaftbBGSCj6qVT9vDG2U4 w==;
X-CSE-ConnectionGUID: faGLB6slRz26X1lUYH1kLA==
X-CSE-MsgGUID: 4WMDskjrR0uxlFPJmjvgTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="78751743"
X-IronPort-AV: E=Sophos;i="6.23,214,1770624000"; d="scan'208";a="78751743"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:22:11 -0700
X-CSE-ConnectionGUID: lwjl8H2mSzyFGNEWonKRJg==
X-CSE-MsgGUID: 4x5DQ4djREaip+wmKMZEvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,214,1770624000"; d="scan'208";a="230817595"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:22:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:22:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 3 May 2026 22:22:10 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:22:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UIxr4pnhTIQneYMw3dvaMQ1wto7iRoAGEw9//19EHoOju2o1Mi7dJFxdIJwLehZLel3hBmv2cHhOzfMDWaJ7ZZYsBgDCViiUNgdWC9WeShyEGDtUhm1rkhF4ZKVV7Jq0HkFm7mK1mdVF5ZbeQJqmD3sFNOhwzcl1Ci922jHR8VV/MinpVz1cCSc4BBfr+5ZdiLljiivM65wnpCM2lm0nSPhKbNAzIRlZYGKB3rcItYMxuPKkyFXJkH0OuNX79MTBUo7YIud8/Hx9a1aobLwDKtEs95M/wuXKdcKV0LCXVKfZFTrNxGffo7wrb8/zdGmIz67HbVQEgOzGomAaZ5saFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r8UWpSyzHuSf8knLwKFz79d7QYxs5td3A2hYBITlIWE=;
 b=hM4q5VAtBeHLZrf8JviKQRDm+Gbwt2c7tXyKHC7Gb5Cp92WLSOqkuV4lrrurbrTK5snqazkRvQEnPl6B5I4UZFwg88l3XVYguOM75DWzRnTNExMzmECw2baI7H0woUuIJ/E+976qMaonb9n7kZUdPdYXzBiW39PwLLmcIen5N+SsEfyq2BAnaMu6ze26Ks9poHCfYWIS4RQ3bRhQ18bem81Csp2ZJA5GW7ppMs/lLGKwG/4psPsGlc/4VzuH4fyUPw1dE+nuj7x0lFHEB4wwVkb8Soi6E9rB9dgi3faM2RZc+bNg08iH1avkvKkm5qRm0AVIYbjQ5fWpAt0ftGCWJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6068.namprd11.prod.outlook.com
 (2603:10b6:8:64::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 05:22:08 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 05:22:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/5] drm/i915/intel_sdvo: Check fixed_mode->clock against
 max_dotclock in mode_valid
Thread-Topic: [PATCH 1/5] drm/i915/intel_sdvo: Check fixed_mode->clock against
 max_dotclock in mode_valid
Thread-Index: AQHc2KUUPXQb3HgErEuaAv3fOPZRebX9Wn4A
Date: Mon, 4 May 2026 05:22:08 +0000
Message-ID: <DM3PPF208195D8D5CDA7426804FC02C9C76E3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260430131220.3891497-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6068:EE_
x-ms-office365-filtering-correlation-id: 634b808f-1d60-4ede-a393-08dea99d1657
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: /QkEDwzBrZO8C8qJy0HWP0ckmPID1ExknLBrAv974liuAj37sjsQN1PWer5Cw4zZXXxYpADVyBO2mcTOo6kZgvMfAtbS0C7DGTKOVfJ1OVgfAnX/HjvJLAKVP8iQnOpA8t+bjXYU7mKVfti4rHe93Ilehxz9tQUjmbAO8A8sgU8DV9x/fN7bGDBx+/EqPuMY5jFBClCg9MTF3VMcTlOKuKqj9ak6hkNgXMxJCfGem/LhLOJAYT+MX/nZzO3KmIc8Mh8RLXyblUTMVvFxk2xKWVF7GXCfBx/plCPRyHJaB2B7C/PsdBh60BY8bwMvRtTFhGX4iZ7BL2iSN/dzWv7tsG8EthXaSG9HubIKhScABE+XEyxiNZB/hTGc73uOqN0i7a+AfZU5IBItqOVPUXgtLA1As6ICncreOL+6/qjM2FwdFuL5CkyG/NooNOLmpU22tOsAT1EvHkTRu+qLyzAxdM/+aIjyVLbFZkgcL+lnQrbAHFZU1nT5zJ8/SM9bCAIkvmrRNf+www0fy4WuBt92gEijoOeHmyxNzZ3afdz9f3VaGQtj8as7v/PAwcJqyk8gADE8CQ+GzkOomH6zA9/EIuUGF+CJxn275IYis6rk06clP1SVf0yiI2pWsURRo6pSei1lCUirP7Nkg1jLw/8y/fQ+dmUMdO/Oz/hwlI5JqWyJgA6jTSkuQMmqKwBeFNqPeFrPSl3lypY1LVLaLvwtJsU0yWNco7W85vk6fm9BhrrsSYiqBisX2MwuUaAIzP3s
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rlvQWAV+om6vSru64gUlke/aLhH7UriA5TO5GRS/SuirUWrwQe7Jk0dc2PBH?=
 =?us-ascii?Q?g4g8mm8T+Bg7vkI6d5R8mXT0qSWoK+xyHaTMr5B8AjhtpzIbD5E0hxPaJI79?=
 =?us-ascii?Q?ICJQhNMCgKTGQUPX+rDiYEHMGdLHVrepeCZlgPYSsUwlrxE41paLjNKRU4Ht?=
 =?us-ascii?Q?r6Z36RhTgOhq0BkluLdfFonjIsSaekmpCXEuyksUK62inDtJ23PblJ6eq/ZR?=
 =?us-ascii?Q?tzW3slZo2rm4k0HxO52rSU90gVC2Y/YE6Kp4LYBEUg0B/rCiShq3Eov+Jy6Q?=
 =?us-ascii?Q?/qkoK7pnZQUacdgyRFt1xwSErUyx+JB3/22uLKJwf5bh3aXH3huZNtqqz2wW?=
 =?us-ascii?Q?3T9KIMkOcPwPQ6IiKRKLtVb32NrOq8PRfrHEOELGUsJ38Ut3Pg5PxBG89del?=
 =?us-ascii?Q?iS4umODbXkvqKGU9oATem8uVURwJh+f2PmqtH4NrnQRK+lreBwJEuj53gVKL?=
 =?us-ascii?Q?V3u8BeCSYiomz45+hZuVYuqdf+BC/EbEf5yXEgbmD/vpVFfy8U2vEwPGt2cU?=
 =?us-ascii?Q?TJwnibRuVcjUIg6LLKDHDcKO/gZooZCrANxqBJWhMt6b5XXRApeOcRcIMJcA?=
 =?us-ascii?Q?5/4oS4JjE0JI/oooQUw24Ftaj9Dn5by60zXZr4cAIOU3jyZZtqmYY6ReQjaA?=
 =?us-ascii?Q?Db0wb3B8/Vh+OcqMI2hfuzkobdmwDUeJ+Q73QfFdTE5skNIn7X7+gvBxc4wm?=
 =?us-ascii?Q?EnBEnzZQ+WFwEM+WZNcUN5J1FyNAO8adC/fsFzuMnNAt7iseHHMpzHozvIMt?=
 =?us-ascii?Q?DVpeE8ZCnqiChyVHXfjn3qSch6HkBwUwRjw3cq2Dvi0wXg76LSO983x3F5DA?=
 =?us-ascii?Q?fXB8NUrzgVCrKwGU8c+Frl26+wkBTIOeOTnwEHv6sj9DWKqcllOQDJFseWQU?=
 =?us-ascii?Q?erWRrYhTNjtOMFW5QReTmaeKG3441yGb1OyfDGSx3ITRRLe0llrrvQCgPCS7?=
 =?us-ascii?Q?Nzswe5rvyu+v16+iISPUTCEEWMun3HECcfKC7KYLGb9vbCW/RMbxSq9CRDG1?=
 =?us-ascii?Q?vv/H+nuRyQZITFP8SieXisfCT1wKeJq6VN0iO418ExTy0IgvwNXCIVLnGJmK?=
 =?us-ascii?Q?X8o2yKI4dMFM9zWUVlvPwCLOJkAQEYDt6TybP5LCUtwzusYDggYbgN5hbNyj?=
 =?us-ascii?Q?W/aLgjb68lgzFDwHqKaboK8j1edPEtR6tmngcbT0FC1CFaVDc/2c5DE1KNtn?=
 =?us-ascii?Q?EBt7iqZ7EEBd71eZEsVsGFqazeUgZ3hr1V+87zISfYd/nr4wjX3U5mIl3iUh?=
 =?us-ascii?Q?+3o9gW5tEoaFPhwlzEdI0J2tVK2mxz1IIDIWQ89VT2v6ULjiGohNgUEWDblP?=
 =?us-ascii?Q?rBZAnvQ9uAxqlZU1o6wiiCw8ODclKZ9Jx6ustAF0TQgu+A+TSJDz5Mhpjjbj?=
 =?us-ascii?Q?EqqpdZSC3/OExNP3rfQMqIFiGokHE2tlOXjv1n3gqHwv6Kwikb8K8AYC5Do7?=
 =?us-ascii?Q?evP0YWRjsizpV41KDphLY+CmPKteOYvWoenR7ZG3cpBdHVq1qLibmCsoimcQ?=
 =?us-ascii?Q?/aOUTTSLiU/rvkIuG/rcYhzfp/BzZFSIaGY3ZOB8z+/qARcdE91fSYzQMoa/?=
 =?us-ascii?Q?EjbeddolJ2KIcHIVv4cnqb5wV3CYhaz9uoSS2pc5O4rpuO8ApUlUdgPTWQfF?=
 =?us-ascii?Q?9RLWS/gxj49EgJdkfR+lyMdJ3gdO6K5B/sxvBXCpsyGytGmrJuuC5v0n8t9h?=
 =?us-ascii?Q?A6shvD7gc5J1/vUHVNr0kBRWtX5jPMQW3WKI6MaQe3Yyu9dF6C7aQIlEk0P8?=
 =?us-ascii?Q?Hgwz+0yA9g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Z9V4T5gL8Pci54RBQUWQb36AHYAb9zQKM06Rqneeuco5yuGZ5LhmHtVAmbm6Fnrei532CHEZQOdOOPR/Co2p5a8MJBPARqoqFmtzF8oOtogC12ekqHfDw05SbcQp7gyy8+N2mWyB8WjO0+Aiq4VbyPv+jF7wI/fNptXLjmYPLdajabuU88xBUycz6Yiq7383gBJ+7DlHktziZpR9vf0jH9Vf9D4OTF6/UgI8AZ2qT7auMb6PbdStDJPEifJXnvKxhaOTnI4/jjH800PNerAo68lvNJX6aMpLgGOTaYq3xf4y++O3HG2aaeJAKPv9hA4b5ZUmpSmYZvphv7NDyf7HKg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 634b808f-1d60-4ede-a393-08dea99d1657
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 05:22:08.2488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7y7OzlZG2gcXdt1Fxa3IEM+iqv8ij3+V3mcoJTHrJ5ZBQgZJm7KzXRXeu/dR0xHYiNtAMZr0xE+OrUJGkR+V+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
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
X-Rspamd-Queue-Id: 44E9E4B87C0
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]


> Subject: [PATCH 1/5] drm/i915/intel_sdvo: Check fixed_mode->clock against
> max_dotclock in mode_valid
>=20
> For LVDS SDVO, mode validation checks the requested mode against the pipe
> max dotclock, but does not validate the selected fixed mode clock.
>=20
> After intel_panel_mode_valid(), get the fixed mode and validate its clock
> against the max dotclock.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 2e1af9e869de..e7aaa5b203fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1967,10 +1967,16 @@ intel_sdvo_mode_valid(struct drm_connector
> *connector,
>=20
>  	if (IS_LVDS(intel_sdvo_connector)) {
>  		enum drm_mode_status status;
> +		const struct drm_display_mode *fixed_mode;
>=20
>  		status =3D intel_panel_mode_valid(&intel_sdvo_connector-
> >base, mode);
>  		if (status !=3D MODE_OK)
>  			return status;
> +
> +		fixed_mode =3D
> intel_panel_fixed_mode(&intel_sdvo_connector->base,
> +mode);
> +
> +		if (fixed_mode && fixed_mode->clock > max_dotclk)
> +			return MODE_CLOCK_HIGH;
>  	}
>=20
>  	return MODE_OK;
> --
> 2.45.2

