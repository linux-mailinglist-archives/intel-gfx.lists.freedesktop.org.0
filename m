Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOy0KucXHWrFVgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:25:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 009C8619A50
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B17310E725;
	Mon,  1 Jun 2026 05:25:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SKd/LTVl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C296610E721;
 Mon,  1 Jun 2026 05:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780291554; x=1811827554;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6yNKA0QXpGAU0k6+fKM1HuDwKrQuEun+euM+G8D0Too=;
 b=SKd/LTVl+0ws+vyX5OR6LuGq75EVPykBlA23xOHegKqq3O2O6mSrxOry
 jMoRhJ9BuvUwAAp1YBl4gMqs1IHlMaM4b4Guxb3P2SdyyFOKujjIq/9Ms
 cJidKyaAtJIInJbfAFLg5tB/OA8BoA1sXZSa6UtOTr7loxSn65FIZIK3w
 wIe9FaoyGYo6AetGEH+mpUkhZpDhF9hxlKLU7q6QtVrQ4k4vHy5NHgS5N
 Y1I/N//GaW8ICkSYP5YC47yNj7tFGlfwyt9LkFe/JDcAvlIZeBk+n0kIu
 3uWQkFUKcW5bTw8fDShJTf7mj4k7xXnwtawPaL1WK45SkE+NcDhnbjhl+ Q==;
X-CSE-ConnectionGUID: jovJqz8oTzStvdpnxp//lg==
X-CSE-MsgGUID: 20AVWY18RPywnYgHmYH7WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80892366"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="80892366"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:25:54 -0700
X-CSE-ConnectionGUID: eht9ynujTqKvsqP+z3HgaQ==
X-CSE-MsgGUID: PBwjEXUPTP6d5b9n+1EK1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="267345172"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:25:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:25:54 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 22:25:53 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:25:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OPuet+zEGx8e9MGmfIhM75lU+LvGxen81SVW23n06WZWC62iadFft7zHqinLglROfhG5RXPQ9J9eG3MbuIN3pw9+uHN5fjZMdW/NzmkmI7vGfrwmnUpzODmN9OYQ/GzLJnIkSvQeuPntafWDve0fAK+OYtkfSf2cHktpCRRNGnIbcQUThrBhBOZXU9AP1uqYJTTdwUaGkg0PcTbqZZ7zhGiPfjryZVNZGq/V3BLdJPU3hHhCH/wmU3Fz5xhBUTlZDMKzrRX+dT+0GaotG1SECuqLOSj70fSzBGJUCymp9aQYAvGOEjKk90wCLqJah1V7LWzSeEw9shUduSTa4HJHuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oo7Y3mwNg92TENETF+xqcFgnemQBtH5/rnbvrWkoc/Y=;
 b=dWThwtO1xuGRCrLvsracAteLfO9LTbqjml0jPd+f7eWdjNW5d4Ka014zVb5rEjQ5c+LZiYKV6Ipbq/oZZSgI3gsaNAw+duC8uhSw4iSvA8k32PFvZFn6+iHirRlklC/GqHuruK3MdOpGD3o5vV0FYzTzH1VZShI6lCWXBSG5Y86sBmRg7oTgaw9JJA8854xoO4TWJViSdfXMIa0j3ca+3CkkltYpTfBbwCfloIvN0tPA6XEGl2morr4cu0RmbjhsQyqXEDaTr2saVhaiVtZ92cqKsLcN7tj0v2Hl0XR1AZt4dmf5XDp02ZApcCKVqXoiMhOT+HvOSWFpNDb8cOixdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.16; Mon, 1 Jun 2026 05:25:49 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 05:25:49 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v4 02/13] drm/i915/display: Switch DC3CO enable from
 standalone bit to DC level encoding
Thread-Topic: [PATCH v4 02/13] drm/i915/display: Switch DC3CO enable from
 standalone bit to DC level encoding
Thread-Index: AQHc7USGqW1V4zqjnEiYMpXHClHzX7YpMWhw
Date: Mon, 1 Jun 2026 05:25:48 +0000
Message-ID: <DS0PR11MB8049279A2DCA01D74EA8A11FF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-3-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526191826.3786009-3-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH8PR11MB7046:EE_
x-ms-office365-filtering-correlation-id: c2cff68b-97c9-470c-832f-08debf9e3d68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|3023799007|56012099006|11063799006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: R/n7nBnCF3rFvzwwwZRRT30CVuj7tvUKPIeUpnDaaQRk8Wt84QZPWCptPRsJVLvtUN2AMRl8vj0qGNvIjFmsXKgikT8Or3fDujiOCBHrrxNTa2tOxhWEFkiNh5baltFoFD5Qs1+8e9q8vTkwRXWuYE3Hq4ou+ECSORBmtVybJjB0aMK9TVRG5/OMdqDNRmGRoMkv7kmMUkex2R3Aw+aKF0TycErZf+Jg4iOxIb3zEev0fTgnqvMJggjad9VRCMIK6IP+P3ubmPbHwYB9+NVHqWLmsSVyUGS/NGhoa+HPFIDVWglPNJ83YkqGE59FSA055NM8l8O8+5iWB8C9aYmwmdw0aaR2i2PsxFvFTnO2O3A6txcE/c2ByEYvbvr1KEDGKDO4YJOwiHPIZ2GDx4UbbgPgAcWUX68M0oG53pkQymEtPfH2tZ4jZdkOMZnW46WNbx2iI9ZmlS68wXayVRjh3I2VOlhKXNqUhyiQ4oKiY/ZLdgVCj08Wnv5WW/cOpEvZHdmmQ0OfYhKmuxkG2PBRl0zfvOv6jbzbiWWx1YPvteFyzKBG+joECyeX+C1PKKe/NNLFoSTRIl7rUVaOq6GWpBXSRMxwtyiji1yXcqu/v+f2KOAGNF3F91KeChOrFVEqc2uksS1kUfY5tWnDtYMl/iaXGO6IRCpwLzabWRGtXSmyuEbY6yVh/ZqIIX4cJkkeNLtEwAkdQ1SmTw3rG/CXn6eRfRrIqbY2tyDfShl4//o0Bj4pc73G4EOw/bvWEmYU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(3023799007)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jf7C5O0EmOku5d6oqzjoWJLDP0Sxw+1MnascMnC+SF4OB4g/V5m+WY8x47vT?=
 =?us-ascii?Q?6TxKVJvz2dwsMTjDcwnHIDnuwpQhi3WAW3qCAQoBKf/RKFwXmKY8ZS8lyGQ9?=
 =?us-ascii?Q?FWsn/L2vUmU4vIN3e5li9YsapWcgoQd78qST/OjPNHVyFvoQ+L1c2MC2wVvz?=
 =?us-ascii?Q?IzXU/VA7vE0Qq8NNGHkqnP0MTXkbI5oaMNJQHv53lfwsVPnxlpJ9JPuQo7Wz?=
 =?us-ascii?Q?iV+P5//1/Zg2bzmFDHrNFX9sog0GjnYn1qSIAKFgbip0zIDZwFt3eeQEPFWj?=
 =?us-ascii?Q?4GfylRzr5/1kSo4e+Y0Srx6mPb2RPsi52rIhPgAf6tEh+3L9AgOlScC9XjUh?=
 =?us-ascii?Q?CgNqbNOcciSvuwM/vDf6f9EEtxKwWo5MjJVzqDJ+lQLQ/+HbPEsWE+8OkbMk?=
 =?us-ascii?Q?SEcmlAD+WuIUrNFdFjrBPzbMFNuqBw7CoElSVSFTCwZAK3pTD6sfG1HyEiEe?=
 =?us-ascii?Q?qLqfHv2sDQT5KlqlgC8Mp202nS0WofO03HOjM8d4Df0EAKXCtomThtVM7zAI?=
 =?us-ascii?Q?/ITAjVCu9h6cTYNncHcN+rI9nq/fKhoZGMknnIQZnwqGCuqU/RyaZALjFM8c?=
 =?us-ascii?Q?m9bR+X2OEGKVroMKBfzvOuocEiS/1nx4AXnn50HN5/HzQCcaw1hTDJvmiuBW?=
 =?us-ascii?Q?ah5QdH/cSiQ4AgirokAVni6frftqurhxbCXkUuZ2gjb188EHESiZqiuD92UM?=
 =?us-ascii?Q?Z3O44j6ogObEiTxoCJOI5t4Mk21v94RZPly87at4ryHReFvHjPlwePblJFib?=
 =?us-ascii?Q?lf0xCIzBwLoKYhLsFiuxPHs+BDF1SGmrzHL680rk39c8Qq5Oi+M2HkGFeELW?=
 =?us-ascii?Q?9SVzSJED8L2nN5wGBscCMb3v5gI/SutlvZSiTwbItmNhoo+CZkzHGBi2TSH5?=
 =?us-ascii?Q?UrO9ExLPPeDLSdCizU4mDEBoTKbVDkWyvODo2LPVvPeIr+oyMud9nyexK/U9?=
 =?us-ascii?Q?/A3PMeupS3SxATVCcka2L44w1QwnEUgkwvgnWAGCtF8FnJyJ3OxsSk7O9mTg?=
 =?us-ascii?Q?0FkBll7AhtcgKN97/saBZW3mdrzUWvezIPwQQN20LqAKWsQ0yIi7XgF0niL2?=
 =?us-ascii?Q?HOaM9aznzgq4WLvtjhHqXGhBkzH8bJIvauO5+V0Jk8S2T1BTPijy4v5UhtA2?=
 =?us-ascii?Q?CgRBAnR9fNaSRYSLufDiiCyDqgVX4MlVdiGJ3h7TF9vW2eG7xIlxRgO+m28U?=
 =?us-ascii?Q?yg7GL7cX8Yz/8lu4vHTsWyVC30t35eOzy9YDfUpy03VyPF2KgkeFUYnLmAk9?=
 =?us-ascii?Q?d0XMQgBNZvMhOL4N79p0hkU0NDSOQcPsNc3lJak2qmqAQJNn4g7buMTA1eFM?=
 =?us-ascii?Q?hoLdztNkWT91Gs0pjUzurcHauiaa11xY3ftZYykxPcwZFT6UwvrPiXxbL72f?=
 =?us-ascii?Q?VqAXDzlR31YcH1/b/BMMOkFlc1F2E/zx07bV0h7aHcKc5FS67gUlGetCdaAH?=
 =?us-ascii?Q?CBBerVGpqLeku90KqVNHiDA7UNtnOYrDg2QThc9nj8vpkgBSjkZ2gkRWfDWo?=
 =?us-ascii?Q?Yuah6OKG6a+0NRLQuD7XPtC216rTUDIMsXyGumV1XA3Lla6mmTMcfgq4KX3k?=
 =?us-ascii?Q?FoR9ixNqmu9vCxWB9Ae0uHE0sPjeRJ8ijOK3gGHFXjYK7+mIo9czw0sNUyy3?=
 =?us-ascii?Q?kP5UDE8MoYHnsyT/MRi8z6cK9qtlcuu3xsJGXn6uYhs6BUftMd3znsu1mxMc?=
 =?us-ascii?Q?Ot108eIcKS0s7vsLDBhd8rAXVJKY8dejn2LiHaCVCTo+nggTf1dPVchX0u+U?=
 =?us-ascii?Q?+jp1lOb/Jg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: k2eJn4ef03zhrE8M1qRsg1fTQLLLoMEXRgsO8Lp0yC1yQtbILKTVunFgdRcQmkE6gDTMGGMjfTEoFk9ZKxaWFggQvMekIqXSil3izecXijiT9UhfF7TV9rAiRmbGAK47LrqZvGz4SxaJoLhkKMFFaiNcvBdxnue3VSeqxD64EtmItDZQicyXcgDVQG40/TQeT91kPb8Y5VjxKwtEOW2M1SvppN7kLjkVjE0bt1zHWrcS6CFJPregQcJPevvvZHORbguLtti874JhxMxgC4AsnRnRVuQ4/3EGOhJUk8bMRgIwt9izqvTjF6Fn6FBWtVP2unQZNS6siN6mW2DI4VrPGQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2cff68b-97c9-470c-832f-08debf9e3d68
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 05:25:48.9012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2qAYGb1NCA3teBb2rXaNiGo46VXmMTgyfSpj5kh3SvZBhjK6k2rtv7NSjwxrJ474mm/V8wKAl1rFh1VFV9DCAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 009C8619A50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, May 27, 2026 12:48 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v4 02/13] drm/i915/display: Switch DC3CO enable from
> standalone bit to DC level encoding
>=20
> On platforms prior to xe3, DC3CO was controlled via a standalone enable b=
it.
> Starting with xe3, DC3CO is encoded as part of the existing
> DC_STATE_EN_UPTO_DC* field.
>=20
> No functional change, as DC3CO is not enabled on platforms prior to xe3.
>=20
> Changes in v2:
> - Update commit header (Uma Shankar)
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 751e6b7d4a29..c70971ffd9f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *displa=
y,
>  	static const u32 states[] =3D {
>  		DC_STATE_EN_UPTO_DC6,
>  		DC_STATE_EN_UPTO_DC5,
> -		DC_STATE_EN_DC3CO,
> +		DC_STATE_EN_UPTO_DC3CO,
>  		DC_STATE_DISABLE,
>  	};
>  	int i;
> @@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct
> intel_display *display, int enable_dc)
>=20
>  	switch (requested_dc) {
>  	case 4:
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC6;
>  		break;
>  	case 3:
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC5;
>  		break;
>  	case 2:
>  		mask |=3D DC_STATE_EN_UPTO_DC6;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 2f0d0a77c1a2..611f784d8a7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -772,7 +772,7 @@ static u32 gen9_dc_mask(struct intel_display
> *display)
>  	mask =3D DC_STATE_EN_UPTO_DC5;
>=20
>  	if (DISPLAY_VER(display) >=3D 12)
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC6
>  					  | DC_STATE_EN_DC9;
>  	else if (DISPLAY_VER(display) =3D=3D 11)
>  		mask |=3D DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
> @@ -1022,7 +1022,7 @@ static void
> bxt_verify_dpio_phy_power_wells(struct intel_display *display)  static bo=
ol
> gen9_dc_off_power_well_enabled(struct intel_display *display,
>  					   struct i915_power_well
> *power_well)  {
> -	return ((intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_DC3CO) =3D=3D 0 &&
> +	return ((intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_UPTO_DC3CO)
> +=3D=3D 0 &&
>  		(intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0);  }

Both DC_STATE_EN_UPTO_DC5_DC6_MASK and DC_STATE_EN_UPTO_DC3CO value is matc=
hing which will impact fine granularity to control DC3co.
Only enabling Dc3co or enabling with DC5/DC6 may be an issue.

Regards,
Animesh=20

>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..680e7dfdcf1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3070,13 +3070,13 @@ enum skl_power_gate {
>  /* GEN9 DC */
>  #define DC_STATE_EN			_MMIO(0x45504)
>  #define  DC_STATE_DISABLE		0
> -#define  DC_STATE_EN_DC3CO		REG_BIT(30)
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>  #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>  #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>  #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
>  #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> +#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
>  #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
>=20
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index b007343721e1..ab4e0e9573df 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -267,7 +267,7 @@ static bool intel_dmc_wl_check_range(struct
> intel_display *display,
>  	 * the DMC and requires a DC exit for proper access.
>  	 */
>  	switch (dc_state) {
> -	case DC_STATE_EN_DC3CO:
> +	case DC_STATE_EN_UPTO_DC3CO:
>  		ranges =3D xe3lpd_dc3co_dmc_ranges;
>  		break;
>  	case DC_STATE_EN_UPTO_DC5:
> --
> 2.43.0

