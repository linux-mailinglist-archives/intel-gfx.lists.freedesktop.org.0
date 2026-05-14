Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGsWNh4+BmqmggIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 23:26:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432F25470A7
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 23:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7015E10E00D;
	Thu, 14 May 2026 21:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DfO6Sa2h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CEF310E00D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2026 21:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778794011; x=1810330011;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MUtypysFI+0okDJ6yWuZJh9CCFCzNauwJaVT8F+I360=;
 b=DfO6Sa2hL8WeX6okJAPAmuL9U9maVBs4c32GtGOk9CzUPrnnvqAtJ/fR
 q77iHcWiUk5maISNszUyDgoQTiiHFVnUl4wHvFAIrgtS5HLySyN4ugL/d
 wqs4QHiFvkvvvE9cFpEM3tGaqDvD2zvM/IZJiJgbxtR5DfmKxaEd5VzTF
 Zpo8yG9fahZh9SNRwAJCnlSQAJIpPcYeHcR1lClvVY8m8Q24RIL+/wiNi
 AXuWfJko83T3TrzS/4cjAuZArIGvVZCR09hF96o792+e97FJMM36Xk+JO
 tVT/0dxJFXqwCQGEBA3+DGJxDYbpldj+GCuftcEmTwU2qJoaJOV2eBS72 A==;
X-CSE-ConnectionGUID: SkI+BR67SLWu96lJ6QnH3w==
X-CSE-MsgGUID: VUHKdwkhTP2sIR7EMkzB4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="102420736"
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="102420736"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 14:26:51 -0700
X-CSE-ConnectionGUID: SPw4OZUoS2eNI/yARcLNWQ==
X-CSE-MsgGUID: i5L3Url5Tqqm5DZi8Vv7hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,235,1770624000"; d="scan'208";a="268844912"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 14:26:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 14:26:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 14:26:50 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.48) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 14:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FSdSPK6FjvEM9ibbidXoxDl5GWjmDxLtmWgsqY95Sq+rrARM02zTyNAAUyNk1ei4MU3JYJINv9pLbhfTSwBTXaL/nhPCHP2xbxsZnicizTxN5r704UCow16NfF24md8cqFRbIAOPTiiSVOLoDB6uOulphj9EnuQPbIzWnrZveD8rP20NsqJrZ1XudrMYyGzp0wm/ZlR2GDFPEIHl429OeLKr5kOAglQ6pZ0uL8X0rTZWRDDAXcEaP+MnWiJsK292+SrierFYm9DB2ak9bts1M5TJPrxhebWrNRtfUpBZdoEnLBpPVrgjrobc2w/rYGMzf3SA7n0NreAm6ugZaaOdgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mScQlvXCPkZ8bDNrAJCLzXqt8RECw1KT+KDRquYw3qA=;
 b=gEnicNtCwiJev3kGuvzArXvsRQfNzHwn/tffVVzTg0HVavIuKmMLDaGeVW/SPiL90woadGZYt0hucgPM3mYUi09tiqHD8CUG0oAnc4e3PmNWBzvI/TYBbMxd+vtm/dHMQIq10Xr35H6WwxgFMHro1AqT3Aspu8HP2D4RAjdUCJOZCSU/eox9+07qetxXgj+Pr2TWhqxGjoJoZaPbrlCbsi1mLeWlxFfWLPll/TzKtf5w/fF14U9HZRTuARI+7X76uzAG++ND4c/sKX3uT6VfmKR26A3gkFyckYI8XpzStAmMjBcXV7hrKOoVKb8jmvd7nXzeItjUFbzFXFGZeOIDDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB8097.namprd11.prod.outlook.com (2603:10b6:208:457::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 21:26:47 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 21:26:47 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915/bw:
 Split bandwidth params
 into platform- and display-IP-specific structs (rev3)
In-Reply-To: <177879100083.73271.381364137513686543@5ab824fced77>
References: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
 <177879100083.73271.381364137513686543@5ab824fced77>
Date: Thu, 14 May 2026 18:26:44 -0300
Message-ID: <87v7cpvg17.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0145.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB8097:EE_
X-MS-Office365-Filtering-Correlation-Id: d44486b5-c323-438d-2a84-08deb1ff8120
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|3023799003|4143699003|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: BCh/ArXSTEIZ6xEglg3zE751SnC2lXyIt+j4VoCuh0RFRsKNRtGHuYUW8fp9mEuNH1PFCaPLCQhAJOb31j1PXBMJrmSU8+e7yily3H8WJPkjR6K0HmKDrAzsWM0y2/Uga+6z1wNgAWnAMQkaNJxq1AonZl+wjqqvhFZmimHELX9+RCb7idQL9mFmzFjTDPHBGaMecxWFtml9ASVCo09lLQ4qZgXFW/R32+8zCkxwmiw+5FWb6NI+jxAlTiKD0nqoYQDMmBBkPYJjhmBFqZgBXO0slXb5yloL0bfL8MFz9I0XPL+b8dhoRl3Cqho7oj3gXsZIbUSE/50g4ZtzaHGfv8RWt7totsR8bG1ub1UKuMO3Vl+ueEn6y0EAgnq2lS1iYnS15gs6Bnj2/3AFngW3FPibOZHCzymGvGhOcug1jXzgBsdWPNcybUaNZEcU+NUBiZEkWCJCG6bwyT56eamxsdo3OJfmSz2S9BLO0mI2lNaQGZv1m+Ru+AThMMA0lFy4fngQtIHC+oqruI/KCfyUw9wmrNZegL0zn1r8+IDIDUTAHuM5yuyx3WqgIJLfcu8rC9YaHmW60kAiQQM2OhEAaa36d8lAhJkoi3kgUD/rHUT6eJspdxCt4Ikx4oKDws7q4mU4arvGePKT8JO53MTVqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(3023799003)(4143699003)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2TpVJZI2Z0nGBqz6wK8k0Aw62BnR0I3DFbPysvwFUjORc4sviL9y1+x0Zf2h?=
 =?us-ascii?Q?latNXQaIQUqmu+6kwfaYrjUahtwA6j38iaofHYEcnDyosq0DmiIP3nsm2eAJ?=
 =?us-ascii?Q?6j2jULCu1GJNca7N1mL1p5HFIzPnsqKXuETPBbsmpoHx6XeSxzUAQEMR7b+p?=
 =?us-ascii?Q?SZF1QqXbjRpHyFrSO6C7+Kd4d1Tyxcfb1BOAqe2wd6cMwNzVXOt5WKRA2wQM?=
 =?us-ascii?Q?rqA7gnmiRcKIBfUOWbAld1CMF95ip1cq/DQLO1Q/W3FdLJy61WMrkO5CBZr5?=
 =?us-ascii?Q?QVkQsuuamiIcgIFUwoPAptNjvOWubTrQIQXE4W5cnkCOg0FxK0g3uv3lmhZt?=
 =?us-ascii?Q?dYkLe5LQcBHZlQL5GEZpS76yvkcMHIans23Rj8XTDFvPERM+Dk+pL0KcqD9M?=
 =?us-ascii?Q?cL+44SI6SBZsa1f2GKYK8bSUy/Cx5YR1nCOozTEtP4FjnEadyjrQ4ScJiN1o?=
 =?us-ascii?Q?Ppib1d75dtCYtDjnBpO8DebFX8R+1+y4i84d3ZxiF481hJBmeu0WxYXDFK9i?=
 =?us-ascii?Q?A+DLGQE3S1SlsbO97fOMdC4cOJLSbUlO3QZTFKTfkU4Drv2/gnzsfdS/XId6?=
 =?us-ascii?Q?slqOrFzl8G+qmLY6nehA5KYemccr7sT8ly/eUTuKAP3Q2SPuhbzHN2+gGPCa?=
 =?us-ascii?Q?mz2gFw9CST9wT+6fD0B0JDUHye8TfVNOmNmt6iJJyLPLW3fC0hsFmRQeZoKH?=
 =?us-ascii?Q?NaadwSuZu9mxMVCeH6y6xHYKE4GkqdD7aQIIs3Uub4SzKbQKiVSj2bi1JUqp?=
 =?us-ascii?Q?bNvm8BGOgcf80NNDqeCdplLMjEBl0aBbTIQEqWdiMWaBT5y/B4G9To65AO/K?=
 =?us-ascii?Q?j1Ha/sXXRqoS7GYFcseKy1Kw6Nsx4Y9Z3BWSOhd8NTxBkeu0Ptp4a46b721M?=
 =?us-ascii?Q?Jx/2Xd5d0hMjxf8ckWQu9QyhmOMVFgAYUlO6P7wIiranJgPs0+3+RtYxn5Y6?=
 =?us-ascii?Q?MisjHdQcScvLiHTjzY194fTLC9phHE7HymlHDpqbBP2BZ1fMq4vW45UFM7a+?=
 =?us-ascii?Q?QKyFgt//0P/O7mR5FgW4tRGm2iHddHkHCC8pZRTq8nxfDU2y3vUnGoFDYIsQ?=
 =?us-ascii?Q?ndf56luxk3HwrxonkRd6LIjLmtmtm6g2KQzCyCf2b95Fi/QMInQ6xi3WWlWl?=
 =?us-ascii?Q?p+UoSwEUoUpSUKB12tmNJ+0LEDB+5v99t02TMpfUXuny3CS41wdYk30X3pLY?=
 =?us-ascii?Q?b1GlnEEFleloIEX917MGT09UxfYp+dah2soJrzkBxgpdbwYtLoOQLvuvKhE1?=
 =?us-ascii?Q?NEj0/IfARqtUXeWa+F9a0dD/RdFVpPitxoIkWNsknzSMqHZXrx2dxv1J2TtV?=
 =?us-ascii?Q?s2atp8TsVKjP6LykVA/o7sOFkNnfYx83nkb9dZ/2T90PVlskmNU4km48lfO6?=
 =?us-ascii?Q?minNdtjugwSJAT73ml6hYMNefkwDatuVmr/Eoc7KE3XHpNKYoc9ZjK0Bz0vO?=
 =?us-ascii?Q?OiaBCU/Wal/ToDyapsF5ZpqT6Vz3XxpSQgyqWogYSLTZ3r74vYNjQ19trQvz?=
 =?us-ascii?Q?F7pA6Knwm02EBbkuuEvQY720z19D25tutB7s9lxt8XZxG+AQ/i+j4Tf5dBgi?=
 =?us-ascii?Q?bOm502js65IuA/IMLGXc7sS/vymohbSrrTeX4TEx/O9u/5AUmmvSg0MU57OF?=
 =?us-ascii?Q?ZfhU3Wo6cLCEYkw4JO0CZgthZ3jcBcofllThEr82jUpvXxSzu6CmnJyzVErY?=
 =?us-ascii?Q?dAkuD53J3RBApf83+PGPPUd5dW+0ER0XywTbq14KQvXNkE1souRC9tX7xu1I?=
 =?us-ascii?Q?cXjWZqZN0g=3D=3D?=
X-Exchange-RoutingPolicyChecked: GUj41kOihFDwJ2wJkiBN8f1QyPQBt7OKAsTN2PIzilfvPbCBv5yg14bL5tb0cYOCWpQKG6A5MKvadHPNaHrrk7WlxN1j/pH63vc2L6MEhQ8FPIBJZNnIVIj6l80wg4z5+0Zj8baCXlEgbe1nwA6YY3wZHz45FUr4XkPSCaeHY4aOYqD5IVn99CoPFo/rq+8qahr2p0kurs+6KF5yZcAiyo8cSN9XV8/V2MUq7A1oxAH8q8aTNK3vyS84r3ldwnQ16ii0j1c9zX9jHtjaSUeVdUcLg9o/gwwEJny+Aqn6kkatTRkI6dZAK4+JdwOG8ZgTlMVKVnAbxWKzcSHOBs10bQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d44486b5-c323-438d-2a84-08deb1ff8120
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 21:26:47.6470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vday2Rgg7+XJ5jAzcLOJ1sJ9/lKltNceGNjavqZ15zIFiQh3vYfLYGFmKMQz2rr9iVj7Ne0FBlyuI+I8k9Pl/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8097
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
X-Rspamd-Queue-Id: 432F25470A7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:mid,intel.com:dkim,01.org:url,i915_module_load:email,emeril.freedesktop.org:email,patchwork.freedesktop.org:url];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Patchwork <patchwork@emeril.freedesktop.org> writes:

> == Series Details ==
>
> Series: drm/i915/bw: Split bandwidth params into platform- and display-IP-specific structs (rev3)
> URL   : https://patchwork.freedesktop.org/series/164567/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_18491 -> Patchwork_164567v3
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_164567v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_164567v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v3/index.html
>
> Participating hosts (42 -> 40)
> ------------------------------
>
>   Missing    (2): bat-dg2-13 fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_164567v3:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_module_load@load:
>     - bat-dg2-9:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18491/bat-dg2-9/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v3/bat-dg2-9/igt@i915_module_load@load.html
>     - bat-dg2-14:         [PASS][3] -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18491/bat-dg2-14/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v3/bat-dg2-14/igt@i915_module_load@load.html
>     - bat-dg2-8:          [PASS][5] -> [ABORT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18491/bat-dg2-8/igt@i915_module_load@load.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164567v3/bat-dg2-8/igt@i915_module_load@load.html

Hm... This shows the warning because DG2 does not use bandwidth
parameters and get_soc_bw_params() rightfully does not cover DG2.

We could just get rid of the warnings in get_soc_bw_params() and
get_display_bw_params() all together.  The idea of the warning was to
serve as an aid to the developer, but I guess tracing the null pointer
dereference back to those functions shouldn't be too hard?

Another idea is to make sure that only the functions that use those
parameters make the call to get_{soc,display}_bw_params(). Jani, I know
you preferred the other way around, but maybe this is a compelling
reason for moving the call to the direct users?

--
Gustavo Sousa
