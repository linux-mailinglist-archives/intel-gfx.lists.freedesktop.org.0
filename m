Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qWv4HvI/Mmr1xQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 08:34:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D290E696DF4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 08:34:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lxSZL6l9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B29E10E940;
	Wed, 17 Jun 2026 06:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB0010E940;
 Wed, 17 Jun 2026 06:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781678063; x=1813214063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3RG0Tt3D9SWWdTeWZmePxQBe7JFbx66T6rhOLCYyjZs=;
 b=lxSZL6l9Nddcatc18zB995lZi0dtnzw7303l5uD8K+iI7GjJKP20hx8z
 iqrDxhm43wY7veMCqlq+XAJoUDgBtbd9y/R16VpY1oLPn/FSeheQ+JxmK
 xzUWVYdoUEf6rRtg34zB2Nn4/3OaZYRaCfmlkeo5G8kCLBLGvW+SaoCgO
 W908I0FZVkhHR7rF4O42V+We0eKZUxlwtMV2IXvY5l8sGwX3mBgWmJp00
 ocDw9A1usM9qUlFv4ywuOF6ejGlFd3O+gLiunlwxI4QA4Y2HqDHIokSeU
 lakHzmoZEbYhv1iFBtDVASqZlw4QUGPfkn8aDl0LHRbL2znE3jInOAQid Q==;
X-CSE-ConnectionGUID: mOYssnVsSTevexIynTQrKQ==
X-CSE-MsgGUID: CwIzvhn7TOaLZz5Ccoh3Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82520838"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82520838"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 23:34:23 -0700
X-CSE-ConnectionGUID: N+1OygrqRcCxMWW20270Wg==
X-CSE-MsgGUID: EjyNeqjXQxiWuyhHdDaZeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="243824551"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 23:34:23 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 23:34:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 23:34:22 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.0) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 23:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JOi1oMmiRWD2RPWSiK4kupEcA3bbL30TI8N1gHHn8AXljKxN8zgUHjAfLMimpuNGGL+ZB+vysVGFNXd0UsVox4IarCxUMVplGt+3UpnXgis0k7SyOJIKNmMqWiQ3MgBORDBTVHlTUMM6DYnIrAEn8oir/Fgxtd3P7Vc33lAOBVgPJOQl+jB8ucXw7b1X7yp2V/cqJjz/7WbV8k/mMQbtHI1yjLn6ZUBvm/cw5GEWG80Vj4yoTq9EJL3GfNrRqs/ZX/yL03mTNS1QXmYiT/26qPUQBV74a1GevlFlIQrHqE3ND+e18FeWj62kC/WFEIdvHBG0Wpo9sQGn/0K+JP/M2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IPfvIw0eEgmY7u3+wvLy6IH8WhDQ+g7UWx/8CutwAYA=;
 b=vbfFxDOF6QwmWBoorfisEcUFlZXo0PV2T2zZpSV1YTgc4v0a3McAQGABxTBQ/5SHVQqB5Dys87BuiyCCi6Wmzny62uxPfA4mDbOa9CcYbq0oleBzrDr+NH0/bMvaDv0Uy5dQmd2mJeEKYOa7otDH+Yj8voKjjrHbhgBnJB+7gLzPu6yRsXOodvaH3ZLrxn3L7WeZJfSZ0EZYtcdnKcP+wHdVfcniKgoNxm04dcBCSowbHLYmKoS1x80zacbOxbmY/kKjvKWDQQEr+QTSSm3paI8Q+xrL3UuhOxQ3D1xrkNtcJHDn6mr0Q0B6mddkCnbBCzqkyUIPI/UCOV9nsfoEOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6342.namprd11.prod.outlook.com (2603:10b6:930:3d::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.11; Wed, 17 Jun 2026 06:34:15 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 06:34:14 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 03/16] drm/i915/display: Use FIELD_PREP() for DC state
 enable bits
Thread-Topic: [PATCH v6 03/16] drm/i915/display: Use FIELD_PREP() for DC state
 enable bits
Thread-Index: AQHc/ax0JbGpguKmgk+ay4eK9TozYLZCSxOA
Date: Wed, 17 Jun 2026 06:34:14 +0000
Message-ID: <DS0PR11MB804942CD312F0A0B31F4985DF9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-4-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-4-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6342:EE_
x-ms-office365-filtering-correlation-id: d13b4bbf-87bb-4d82-6d3a-08decc3a734e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|22082099003|18002099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: S/bUwdTxRiSY9MOiQ3EtkeG96kpRPee0pDPRBhHjkuKmYShHEWrJFQC+6l56u7ortfLWBPCRJJDoErqeEKKVOFLngQiK8tdTT++qrGwfu4OF7wFA6PUNDYODn3FB1G50SOcElcfG+gZgPw0aPgxeo0LgJbvwWSU1Dwaqd4ZHOOpf/7bXJmTHbBMEd9cG7TvdtQ01PVee1wn/mIlJqhJWjbSjnGV//z1Z54t/h3gKZlRPHqh3uLohSUwqgoPxuq4wapF1N5O/LpXsG3IfWHjHV7VGg5Bu2pxLzlKbTX6YA38XUxjfe+UKy+G6aRL+v5dH7weiVZSFdMhR2IGYnNNXMbz09fcwWsJ9foMAXgzXyuhbbV5a6e0z+QfPZmwCyULv/7E7pg/g7G9EKvDVHdZxnYR+g0StXouuFUCvvO39EIBnF0JFHqnhRrxhYWxlAweGnSoNlP4fzVfPpef86NwnenjlUFYuMesE8A2dS57B4dg1WAotuQuYlvMLzdEccW4QPnypzb91ylMXjTlDuk90prt76LYf+S3P1BvvoirMmOVizUb4lRYWdVJeH2N9+pUneeXf1+616mYv343IS1qsw6LZo0Ewf4+LnuZ/CVGKjBalQqbha4ezTmfXlOG0fOnwuDyLMmuEwVjfIQ0D33gNp0MbwXWVj9LFf5Ge6smvpEahhIrkQmVcqypjRGbg6Xi8oiFYytLibolcksLegqfqOPPOXRAAq/yt99gJWMufRzTB4WJqLpQmKNQ8FvUfsQk3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(22082099003)(18002099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4FHOHwMo7P0Xknq+COTfi/r6HvlzCwrPyq95XBL2EPdPeq0BAGHKiiO7dzig?=
 =?us-ascii?Q?KeLw/2F0AlG6Gt/Cs8+adedFhMSZxyGir2m3z7jaw7DL6vYS+kHH2mdQxU/X?=
 =?us-ascii?Q?NhAXj+JDZZoYGgvqwDe8ZELsXjl/0EFQpFu3GgDIjO8PI2fdSlaBvJUFfUZL?=
 =?us-ascii?Q?lnVf4Kzf6RTz4Iyj7LtvEnjkAslGhWqxpY9vGqChIUvoDGlWPm1XqiQHmttI?=
 =?us-ascii?Q?MKBtUn5e7rm0dlgF8ND1TAU6WMjluvOeqCTFK2O+sGiaFxG7FmU+gf2a/XfI?=
 =?us-ascii?Q?BNcjpDm+TuGKvs+LFoQnR4YEZUvQbI3uXKYkoAviCrwv/wGfkzcPOmj5fPXe?=
 =?us-ascii?Q?D6ohF/BtpAN9ealNm90CPtMrCrE2MRsEEn2RIgThxXv/FzxXMWL8pHynj8M1?=
 =?us-ascii?Q?o8ArunVP986ByAZQsgSFNWunhF9FXlV10EiykFyrDet8fg6hCtclBdenuOf5?=
 =?us-ascii?Q?fTujydNQSO3DBkS7anDePswr+fe/sClxIFtjaJvtsha9inGC8XjgRdWdLU79?=
 =?us-ascii?Q?KvsdBgAm7BpDw8/aq+SLPD9tf5nLXzf6/QfYYSBX/HiPO9kXBS5I3Jpw9Uov?=
 =?us-ascii?Q?w8oaYQiOuCa7xHGDtEWI0yKfa8aNINNWm2pxqahTUUjCrAywFA1BrR4G5Fv8?=
 =?us-ascii?Q?cSHgVikRv2D0gGZyy/hW8ucZi1ffQb9FlExifDMXOBFDgr0iYUwVURTV59/6?=
 =?us-ascii?Q?Be3LQYGRE1ptu4j3MwlLcPvZwxYxij0zZorwTof8CuqeoLQ3GVXInOCceCil?=
 =?us-ascii?Q?0FbVx/NrfiVixTZPJ3lI/+jY/ZlEiCelJlRdBJIQlTg0g6g5ij6BcX6NYb2G?=
 =?us-ascii?Q?nayg0RdY9OkzPowmANAGhz7lV6QuN/dhqWM1DBwnjb2wCa9L6ovzNqHc2Ega?=
 =?us-ascii?Q?A3LC9kjHFaBb8IV0sQuF3KRZtSfpTUSpjv4xIb2cpvF4XdiKOrr6eS3KKDMn?=
 =?us-ascii?Q?OEnpFTlzsh+t2nYqFprYffbgeqHpLHd3Sz34NxUDGsVvmjcZt8DXA6owYDso?=
 =?us-ascii?Q?YjGCLDEoqkpPMh2IBcG/9pXO7E33wIctJf4WDdk4Zp3veloFElMpdNqMkx7a?=
 =?us-ascii?Q?09iVxEr2aAkHIzItDaZrDW2DDwNI03GlhtvBMfnGVdp/Byxb6CEUABac22OV?=
 =?us-ascii?Q?8VbOdA2y3zGL4sUAfD2zXHG4ry5oS72Pj03DsIXc0Ry4BJX8fdLS1fBYiDPd?=
 =?us-ascii?Q?cLusW8l+lAmb+kMcqPcaECcMVp6/FSYR72FvSDh1KuPV+bDkD2ZRq/YqNEQ5?=
 =?us-ascii?Q?9LFMtCuzef1yNuaUt1cfYp2ZAj3N4lG7HCDIuARUYnxU6LuWsLsHmdN8tDnO?=
 =?us-ascii?Q?CGmoYrHA9hkLHoMZXDPn9eL8r5iw/iD/hA7/tFSH3IpTxnMkaLn1PKwN5L++?=
 =?us-ascii?Q?r8h0juuB7fNxtpZOKQGSQQj1rCoJJ1ZTHTwzbWBpoo8EyT5cpohJbl/WehV3?=
 =?us-ascii?Q?QTrpOiqzCaXbA2rQbBe+2hngKxTilHoSZkE9csli3D19oMXMpSueBJIJFjOf?=
 =?us-ascii?Q?0gMkpykn3SmsfSKnegh1Y0l7qp00QgGDzO+AczjRiZfT8hXckY4Jl8bwPKd6?=
 =?us-ascii?Q?SPbIDLWVaIf5EvT/cVBolfLH3UjFB+ir9Myehih0Kc9uOP6XcvW+aR3FhK3O?=
 =?us-ascii?Q?P5w6xUTezBOw73kjw3xZrZXIgFLK/uRcgAN17/4nIPk8WGpmfaeEBzSb6URw?=
 =?us-ascii?Q?5WbiHREeu7Qup7YlU0V3++XJGlMzq3tUktPccI6V8rsaa9DEvhgQnxIFK48j?=
 =?us-ascii?Q?wNeENTuIrA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cCzXsQZ/ewYUpAexYuMlrk9xon85bzNwN1oFjm3oRgNg06iZ30vcc1oyyx9a2m/EUdhhczt+VnJE9CYN3CAdpfJ1o50xKL6t+TtM2K+LoSpzJa9CtGna+FzGg0pgKb5rLKl+oBIeyevqqqbXAfN0dMvC+v6lAfsNJH9FpZ6O9UrjXg8aQcH3VAe3UyTYzNzg8NjCH6TDlag3KbfSN97sVI5SA7rprP9+QJbYIMQbSDiB6mtfMv8AQgdnxwJrXkbbdWQwJxqajRnznD0aP1gmhYkSJ6TbbAFvQCsu7EP46EoL/2/T3sKxRN+jnoP8PZqlb6lbUsGz9F/f3g2KM3PG+g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d13b4bbf-87bb-4d82-6d3a-08decc3a734e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 06:34:14.7725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ZKj5B5qutM8sInC+Lkp19pmFFIWYW6cYk4aKi00Uqb+Mdp8hsGk/iRiCfOeAGY0AP9nGwUgFwXIAnY/CZ7A6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6342
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D290E696DF4



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 03/16] drm/i915/display: Use FIELD_PREP() for DC state
> enable bits
>=20
> Replace open-coded shifts with REG_GENMASK() and REG_FIELD_PREP() for
> the DC state enable field.
>=20
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 01f6a88fd1a7..2255d9d31ca4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3075,11 +3075,12 @@ enum skl_power_gate {
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>  #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>  #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
> -#define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
> -#define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> -#define  DC_STATE_EN_UPTO_DC3CO	(3 << 0)
> -#define  DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK   0x3
> +#define  DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK
> 	REG_GENMASK(1, 0)
> +#define  DC_STATE_EN_DISABLE
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK, 0)
> +#define  DC_STATE_EN_UPTO_DC5
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK, 1)
> +#define  DC_STATE_EN_UPTO_DC6
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK, 2)
> +#define  DC_STATE_EN_UPTO_DC3CO
> 	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK, 3)
>=20
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
> --
> 2.43.0

