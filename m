Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cG0HNN5o+GkSuQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:37:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 428F14BB0E5
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816F810E3C9;
	Mon,  4 May 2026 09:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLWg6oGx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDAE10E3C9;
 Mon,  4 May 2026 09:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777887451; x=1809423451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BRG/OMABzhzGtGkSLncj/qTeBk6Y9PUbNIlgMW0B1BU=;
 b=iLWg6oGx5a+6wb63k8kEPcdoBWi0tpWHaA0OFwa19npbbkOTi9Wt9/x+
 vd8qic+kiFu83vKsOyuRuk6kqpX0CLFzriL5u2sMr1GwVrbkD6B1IxGbY
 NJCZfH9uv34R3e0wUFSn0qpUHFHZD0Ca8bgJXa7hC8aG/dTxHn0E9NDF4
 IGYTGacDRIGNPGN0nSjzh5zzM0zcqo141EZj0TN5kO5S7WV8CrFnU30/I
 d6J+zrVaSoylnDKrHw5sCxPNGck94raxV6f9mCjDyIg80xK66PPqd+hp6
 UJ+/Fq6sYa/vIQcnqxd/YTozkQjsBHAmm6jGNlXuQjbz6VFV07KmOuE3K g==;
X-CSE-ConnectionGUID: L/aI4RBZS3aMZnPjUh31wA==
X-CSE-MsgGUID: 8DjybtqzQKCN/xyrtEWJCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="89845124"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="89845124"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:37:31 -0700
X-CSE-ConnectionGUID: EAJsn/EDRmebknkyXv3ORw==
X-CSE-MsgGUID: uolXXmvfRtCSgiCy/Ggwww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="239441985"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:37:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 02:37:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 02:37:30 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.49)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 02:37:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YmKqJ6akJ0lY+CQU7HRMiW03IaZWZxFbFWLVqf/SGQbTDxQojIz+xvmlhOK1ZOtthR4rRvWY932Gc0u6fmSPLd5r0OGIG3BStzccBezfTpXJEaSxKIJIW7sLuj+Vs2sENQObba0yYYMLZDUQfe4bKbO9bWH/KK0q8RQa54bKBmiGDdjp1VRehdgFmK8NvERuAxwVWk/a8FSOlpkaQUuEJKa59FjAg7iSFrZ2xU4Bj5xVIlV7xjfTH1OEW+bso+UEvB7TKOa6FC20QKygqS6yPotZxj7Zk3IdTvdccuqLzM1t39vT5pqu+wq0DCKjf81ckGQNuFf79Jhue5kXMxuWZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qALjdkDPXZrZgL8zRQOV3CmZofIfao3IW0iGSre1yBY=;
 b=Anbl47WR8hUu+uACgZcWECB2Eu2WpqFtJIyiqTCDxyHDWY0++gSLxI/eoI4nme4czN/+sFwZDFq8SpOJLacpNkHg0fuJGKgLmdDciJ8EvDHKQi4apRRK6Y7fUoa57loR2t4tQNGVhs+ZFnBsPoYyZ6xRCQWiOwxvwbs04Ulqx0LazJfbxEAMTyLCgIeXLR00iuItCeecv1rtHXNdv4n4RyoL6QimLmqbiFBtsQb4bzgQhAy9LNoJ2VdnBqVo5lUPbmAgi0tqI17qXJlRqmQnCuWsCv8j6+nlpGZvl13Y+3mE4Uy01+lZ9Xl0LFEfpKAL14rcdHfeigo4YiY4J5bkpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7044.namprd11.prod.outlook.com
 (2603:10b6:806:29b::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 09:37:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 09:37:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 5/5] drm/i915/dp: Drop call to intel_panel_fixed_mode()
 from compute_config
Thread-Topic: [PATCH 5/5] drm/i915/dp: Drop call to intel_panel_fixed_mode()
 from compute_config
Thread-Index: AQHc2KYbUwuqemJIt0uugdg/ddkpTrX9oaKw
Date: Mon, 4 May 2026 09:37:26 +0000
Message-ID: <DM3PPF208195D8DC775DCBCD16452A22588E3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260430131220.3891497-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7044:EE_
x-ms-office365-filtering-correlation-id: 06873059-9272-40b1-edec-08dea9c0c089
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 0w1tlKK0kzkMHKqNuJ1ygG3C8lvIdexHGfy1poIspOQznUAkutJK9apK0MC56XajHWLL3q2Kcl3vF6I6z5EyYKXf+hIdjwB3VKoClMPrQ564qFFg9ANSJcz98/3TfW7Dhu0m0tj29hVGXWrGHKfw0Io/HtGt/9l1uJ2Q76xuwWnhg8I7KCdOQ0Bww4TDquLAIySMG0iBphnwjHfddUII1l7GSPK9VfV2URHpjVHJ+oSykOXD8wSli+nOQM1h3ge21e3/zLEszDPhK861r0DTaX4Ae8mRZTPOa8GcSoxB+NvJnZNn7dcM4wbvt0bCxdWBsEOnlXnYJlv/Q5SSgjlKtvWk4CDmuXyML6GO3jazkm4j5gFcK/pobHv6M8D4yON17C7LH82skOsL3/KvYvInqthZJojoRBtNlW7H5LJRwsieAGevftTH0ilimIdUiKl+aAvf7znmLaAzXdmx3YwsoMBB1OOJxtzZkvJGRurcW5VwiutuiTRawr9B9KdvTf8kLTVJrvdGbms2v1hA1CpWL28LMHKdjCUKMAxQm4Kvdyd3hrUCUwg0AQiflG1utbEl+/VClSXZ+n4V16q1ZTOmbgWd2OpBsR6WkHTeCL5Zbtfq5o5aCau5y8PvZLRo0hd84h+mUtyRl8zpHb7gE6M9kDyWwItU2DQZ7hgsL6rNOW2txpmpmCDmPieJ90ABlC4UzBibVa9vnrvQ3lqidFPwxUYUgQbHEXqa8FxTvD2hbKjzPIkOms5Kr8s5Y+oWBZz1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R2mkbaav1q5QUsLRK0S3A2/cFuLLk8wri9Uss57ysvNsjHrgUxmKYTVm0tEx?=
 =?us-ascii?Q?AbXHMbCG8BjQc+8eIOczyLTO09vz4aFVE1UySFEmqu4RNemBp3HfzUjvLyVv?=
 =?us-ascii?Q?OVKHQFzci0eq9Z+/9hdtmM+tk0uM4ylwHW/BOiiWQF9vYqMrU1/DsWxfi2ya?=
 =?us-ascii?Q?tuCDOZflmva5BPvYlhlBBvqxy/bMzF9wlqS+NwjbefhXE5jG/NROUeneX6R6?=
 =?us-ascii?Q?GygfnbPYpvDFnrTOqFipB3UYNwdKUDwyVlo/oATXvcDyUrP3lWXqyxFpsv3k?=
 =?us-ascii?Q?Ako/olYPQ4lLFeFk7Tgi0UIpoA5jziAo60iWuLTxyD7be0T0wJK8mHzFZE+J?=
 =?us-ascii?Q?likUJle7MSId4lzQq5kM/uJT2JWsbde3Te2iS7DK6pPvCCl96KB8ACio0i99?=
 =?us-ascii?Q?thyM1X2YyH7xT6w+RGF9hLgq+RQLIDWPAmerDD4T2Yx7mAWnaU5BoUmORQxq?=
 =?us-ascii?Q?scwaqFVtGT6vrCWsnEBdq1sH7EaCZxT8nNyQ7Kbuh2I/DmMv/iL1P34T5mNd?=
 =?us-ascii?Q?Ygslik4dzA0nSyr8D0ppkvfFhANGUI+cTwQ+f7jbYEI10Qcff6gQ9tFUtIox?=
 =?us-ascii?Q?LnBcV/FNWJQGeTNO/IxAWD4WomRmFpGSw9wjxoBR9qcCg0tuh1EePugg41xO?=
 =?us-ascii?Q?LAw6YZxK690x2+t5OZ8e9mhJx9fTyc1F6ttuMR3isPjcnR8d9Bgwo+6NZZ3B?=
 =?us-ascii?Q?/lqyIsBgkXKqoqy2I1iE4vwroGEGQGltEXpfdT0COT5wSc4kLm5zs/2IC4Ah?=
 =?us-ascii?Q?ji+1gfdovc6zXrZc5umNga/EV/STmCAcJKZpRyLcxl/R5VnhOyYLVwEyfENJ?=
 =?us-ascii?Q?xgNpuczQHkwAv5A14ikGazuTb/USm0bUhZMO7tBkVxUy7xstKx8KxKu1H5jQ?=
 =?us-ascii?Q?i9UgXNsDwc7M61hCsiJ8+kUdNAX6EHDlPUyj7TOTAxMoA9P6ww6wW5cVkGuo?=
 =?us-ascii?Q?VQvhiSZtpVbmcnV3gyf1+5MUZ6c4oAnctvxTZ0r+mAT/c16K8VXKNOAiwrMd?=
 =?us-ascii?Q?pAdxlruOtWNWUyC4NT401mEJAK4gUoocMmZr/Gn282iFwL8Y7PZvNF/EKKhf?=
 =?us-ascii?Q?ABe6rccAOdsa6qkvvBEloCfaJPEOKN1EG8wAQ9W3U0d6ZAZPWOKhRcZ1d28m?=
 =?us-ascii?Q?YRWmRHr4DVFWyLei2VHNKchqFnf4FBkYVsRC6u4HWhU6i471UJ+GKAvoBJRb?=
 =?us-ascii?Q?gaqReFg2O/Flz+4dG4bIKpJNfIE/1iLulO5UeUgvkVNBWMcvIyI31odJ+ljm?=
 =?us-ascii?Q?Fw7HdpcmHYHoI980K39gnsNAnwyXfK4kRC4W3wMbEvyPbgbon21qozQvCsFI?=
 =?us-ascii?Q?LHfqDVSumYhyd5viaTCcTzMDi7huZWSI+SurMMvxEZTnk6PgRdpy3qoBwS9m?=
 =?us-ascii?Q?B5sqY4fkWQiFfRVBxEQFFxaoKeubHhASwyrxl2prgrnjEiP7BrfLZcn1hS4K?=
 =?us-ascii?Q?2qOmiv2XHa+T2XYaXPCXpGKC7Nq4QpzqrYV1NMWcogvfU39YqM5XOPhSeyVH?=
 =?us-ascii?Q?LcsSPQ1+vD0H3GIMeMEMS+btOKgZMcp56CI9qp/Yd2rESDwi9WkM8JsBvfCG?=
 =?us-ascii?Q?wPyma/IbKUZgPAFcPLYP6s4MntQN9aUxgnZZ7NwMxSkFHcF7JmKvkZkt7Ug8?=
 =?us-ascii?Q?EX7nFKqHwOgOcwdgSxL1+GG83vECkcRATpmN3aDVQwBzemtxVfsmkcudi0eD?=
 =?us-ascii?Q?cUjIb+8IlM5NV065jJucoc0gwcKNl6VRjklEfMPdzT75DAwrzfA3orVyjO9O?=
 =?us-ascii?Q?6NgRQNh8YQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FG3b9MSZeIwBHRFJVvu8GJo6HAb6pXvCZRPdkX+TyqoUSgSdhtUMFARd3mrGTJpjYu3WY1TtrKwp1uGrOQZLOBg0LGSc8hcC3TaM/p2cPoBLVxNlOZLxP33wZMsmgfd7xf0geiWvb0McK9kAwGN30fJXuGqASLoGE/1mxtOotYvcDofwsGesBbdWf1CawEi270oF0mIRz/3q5I3L+lcJDwzlEbAnS4MYtY4/nWsZRF89IVSHmgNU9clb3ApTPVxFzmJlF2h8OBshnmp/zOqt288Hqsd9W9GGkY0VvLsiPrD0n3PYx56fvxxyvrNnxeguFZT9vJq5p/QXMt9/OqjGsA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06873059-9272-40b1-edec-08dea9c0c089
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 09:37:26.2018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4FMs/C+ft8VR9a6XAJX1Jc+ysQ2fWO7IJHMTNGAsURvcW9mMyE1xQ3+rvXWHrWrOWHTU9xn6FS3skjoePLN5bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7044
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
X-Rspamd-Queue-Id: 428F14BB0E5
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
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

> Subject: [PATCH 5/5] drm/i915/dp: Drop call to intel_panel_fixed_mode() f=
rom
> compute_config
>=20
> At the moment, in intel_dp_compute_config(), intel_panel_fixed_mode() is
> called to check if the panel has any fixed mode or not. If it is an eDP a=
nd has
> the fixed mode, then intel_panel_compute_config() is called.
>=20
> However, the intel_panel_compute_config already checks if the panel suppo=
rts
> a fixed mode and returns early if it doesn't. This makes the earlier chec=
k in the
> caller redundant.
> Remove this extra check for intel_panel_fixed_mode().
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index eef85598bcd9..c89c7b440188 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3569,12 +3569,10 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  	struct intel_atomic_state *state =3D to_intel_atomic_state(conn_state-
> >state);
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -	const struct drm_display_mode *fixed_mode;
>  	struct intel_connector *connector =3D intel_dp->attached_connector;
>  	int ret =3D 0, link_bpp_x16;
>=20
> -	fixed_mode =3D intel_panel_fixed_mode(connector, adjusted_mode);
> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> +	if (intel_dp_is_edp(intel_dp)) {
>  		ret =3D intel_panel_compute_config(connector, adjusted_mode);
>  		if (ret)
>  			return ret;
> --
> 2.45.2

