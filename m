Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEGSAJBQymmb7QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:29:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3F1359455
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 12:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D330910E549;
	Mon, 30 Mar 2026 10:29:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PrPDdbnF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB71A10E0D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2026 10:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774866573; x=1806402573;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=YN01nXskf4IvUUrBip0S9cZaLecJdTg64/6XBvd4y14=;
 b=PrPDdbnFKCMeuqYPiadKd4HaXBdHbLJ044OwfTC23fNTlIFWTDZZFfP+
 7jawZrjc32jL6Se7wBmTNPyINfuAmE+MYQNVW70DrYSyTa79LqiELDErA
 lU1TVwtGFKQGE6yweTpmjSV7gKkcR843nRr64GmyD++Exkk7eJUkM1aYC
 b9uTI64+BHglrr28sHGnOMpeAOC1oxuQalbVgtashvcKoasDlPKZRcbok
 RAdNcZ/N810xhfiVhlruN6dRbmcsPngnCduMR7xhyW8Ks29FvXFOtkhan
 PbMdghgYgbwGAte10EX2WlvNTmnEMHun/1oPJckf1JrB8wC8cJyUkm8/O Q==;
X-CSE-ConnectionGUID: Kgppx9XkTw+hCnSV1G6cKA==
X-CSE-MsgGUID: vB99g6CFSACkPOcFBNDTTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75743561"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="75743561"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:29:32 -0700
X-CSE-ConnectionGUID: k0KLeceQQjyKILEy+zFdfg==
X-CSE-MsgGUID: Gu0A0e6hSPWgnJaaPAdhwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="249220113"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 03:29:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:29:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 03:29:27 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.34)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 03:29:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aLwOE9rU3SDhEHpKFyeczB3oX/qA8El8PcVQG1MIc7s/lBTSB6ywyoe7pGlNqxemJHimPztjmm8485qfaJSoYTkdvja426Oc3jymKrsG7WF+hY5Rh2tsHf5ddibDPxm0vmQ7lxfjn3HWC7uWoScGpH+dasombyHDugxaU7Rg/09bKDE2RII7onlYIiG92mvVf8T2ub40IF4PJIaT1gz5Ivg7BhgJfHVbP5LxVqUZc0mCPE973hnxB7W/or8UJrpan+QeIscYPL3cM2ybKREgcfkOTnO0QNUY2eNX42CmWGuiR9XteBtEL1r8jGb3lM6fqT23GfHq4fcOedGEEVkUQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fiietvauQGpRNRuaKFTJ+WshFbVCJ3AQg4FclNQvjoM=;
 b=TPgMjijcou1rDElHUEvzCn7FTXPwCQOaxn4QIsiDByvxCIFApujuEPnPujvawO3vYGLdFGOD9puH76DER8zZn4mLiU4IC8zIMfrvIk0xekL52RFg2zIf0A39yg7PgzYwVBuE0ivqSYnMGtx+xKx/EyPbkk/qS+qQJRv3VPA5aXthLgXyrLfeCJhs7Gy50hVsUb6UT+YQfr388pVQcJ/83ff39jJuz39FrQdgBipP4wf1GzMDRkcEyMxMMk13CjKMCsPysMQvHRt1IcZKebMe4LDxHuAwEix+P0n6FGVkRDQjOpRbbeER7qj3hkIJ49Z0DZCEjUyH0lUjo2wxlSwlAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 10:29:24 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.014; Mon, 30 Mar 2026
 10:29:24 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v2 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Mon, 30 Mar 2026 10:29:14 +0000
Message-ID: <20260330102916.1158786-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0078.eurprd04.prod.outlook.com
 (2603:10a6:10:232::23) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB7720:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d00f9e6-1f47-4cf8-871e-08de8e473682
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 9eOnZiOEDxqPnUWEz8Ef/9r/fT2uIBTka2FOA87LNuzn62+mcHyfU8VyHvI1F5SaGhvTGgjJ9pOrrWW3RIWYEray88uSviX1pt9HR7LWxsQk6OBtUm+j7N9zM0si5GmxLhGIFfbqZHFNd4SLamgoGtIcgXmhS6w7gNDbQh87+mQz8n2kULctKRsvtpou5jy6bHq/DuHiZjfRY3FMBLinxrUP1bcQUphB6RzM583bYsjwL64w/kYT7sNj+u1trHBmBrHeKuhOEqjao8IXk4zeuIGOr/+h0elgxefC9uXocqoOdvWGmMhPkm9xmx5nDly9C1ydqPkK7z0t4k7WzFVAjXhhaCX9VB4201xZqGsQWq03HZHrl/X9Zu/p+lmEa6tfePP2jSdQMNRrKbWiUpjSj0rUd+8wNs0YzTElzTiM/nzN9pCw7BlYUBzLC6R+61T6ZvMec6flZYQXzvBxhUY9HiVMH+2qmv2TfSsJyzE0lL+rs/lZcsOBHhINlQgJfIYRnwH79c0w4YZx9ixkQfE8EpZNRdCaT/XfATjnxOr+Olwm95nK4z9FHN/TflW2bZbRjxmdYPnp1oaTzBK6cEQsSs5fhIzZsps9lvto3YC6XD5VyBbm8/L0pYrsKvo2fHzfdf1pSDtrDOljlLqvVX8qEDQoBd1rf60ZD4qUsy7kQtHxX88GRK7XCkEp42OxVwwJFEOtCCQpRIWZBY9QV2Q5DeIYszyW5ettjbjR9zPXh5s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WPrcl2JRGLwSytxbLwHenGqm3SGGPgeLIY/IsoB9rMQPBVVb6YfsvmfCr3v2?=
 =?us-ascii?Q?IKqlfKtSg7PoxAE/JW8ChxSP/7FA50Rt7R5C4YZhzIS8Ej5Hteoa1rEgHJGj?=
 =?us-ascii?Q?HkLpFkZE9DUNpzpAzR9iU6lVLWQE1nogfAckaOPSRiwJJtyX2qi+KXXTT5Kw?=
 =?us-ascii?Q?MqdnL+MiKZEPlud02p8GUCffhi6oLhOVQD42hTwGAqUUzov+eABbyPd/wjc5?=
 =?us-ascii?Q?/LmarFUxKqzzr4XCmqiI0X2hh1wG2ERP6yEbBpi0L3oLYQUBQG+L+dokyGCx?=
 =?us-ascii?Q?vfHof4kQQtuH3Pdwm+6Fo5uLAzYSO0xcwmTcIaRTuX/ldDDiSz8W0HcnrAu4?=
 =?us-ascii?Q?eNn+bUzsXSITG8dvZxNnuNP682cyLhPM8YtXq+7gknWfuBhAKCrmDXqvIzNJ?=
 =?us-ascii?Q?CATzGtjuOZpbbwC9pVn2M/kciyI5wK5Ody/Z5yR4PDhFeq3xX52ENeWzUJYa?=
 =?us-ascii?Q?QwPOxDO+w02+bAYX9FxNSnbqBYHdPnGxzZWGuPn1bPmZ6tR2rzsD0J90jVxF?=
 =?us-ascii?Q?0Su3zo/PRFfO4v2aWgW/gbqvJl3QTySuznhAoDizCxEmSxP6QxMgDJ6vzbHl?=
 =?us-ascii?Q?q9k10i0hXy4AcS5mvK5FxaXPrOLRUzgdoPrPIWl5hQSd2xcIm7OzSyD40b/f?=
 =?us-ascii?Q?ATgSJ+1dQ3LcUkN667uFkb+VyDvoBVh8KuyI7XTN6OOVzdSEATSmol5eaE27?=
 =?us-ascii?Q?v/9TBzPvwA1R8wbOCZ7zhSgrFuTlVwmeqsRfRFutAEE8lk9IgSfCHn/zr0R0?=
 =?us-ascii?Q?AIpW6Y+F4x6QBr9yivkhIW7nVdQWl3fJNuGjvrkDRejSaKZk28ZWc/tRKILO?=
 =?us-ascii?Q?CxHFFtAd8Ejag6VJFqaxQNVQaUHWyHmLN8dIaZtn5EeelgqKT6if5PGfAprN?=
 =?us-ascii?Q?hWPlxZ/Mm5g/lvVWEIkATcNibOARW9sCkzaw1rfl4MjQugN6tRxje2VYA6T7?=
 =?us-ascii?Q?Ojw/wnJOtjNcNBbd3th/fLCCUxvZbXN8YxxpkwBRqxl57yfJL4bm+5BUr/At?=
 =?us-ascii?Q?T9GbHMXLmVrGDvYN5YMUCqiY2gBNgmd6NlhPegQITWEVb2lnvs/L3rkVkASo?=
 =?us-ascii?Q?WeY9aUvKpCN/JJDGBvLnsrUxJPflVIXZzICebiLtsuZc7Z56p8Ps4LP0qNJT?=
 =?us-ascii?Q?NGqtpMQN9SBbpIg0HELDpPzMAXYB6wchrGccxLCBjeMpWWK7BMKa/BgSRWav?=
 =?us-ascii?Q?9n/CiNH/A6fWctBEvuwL9BCmKvupYMz7qBqj2dhNY7iJXKPmlVLImcw1uIRw?=
 =?us-ascii?Q?Oqjaxs7RABqqbThU8ZRXT/jH1OIjJHg5IuSImlflZ2as7DJkTEaVsKfbCZml?=
 =?us-ascii?Q?6u/zUzjLi3f66Nd4F3VandLmGhYf+NAG8gZaN/ElVo6vW2G7K0LqYbSDJN38?=
 =?us-ascii?Q?yyOmMLi9/R3rCZYybqebYpGFUP9H8WZS68XgsPLczmpaFQ8759Vo0YiSQMCZ?=
 =?us-ascii?Q?e6xD836tekn3VLqludHXl8d/7mwse/8p1A7oTM5fuXd3M+LU8Uy2Zdfc5ZN2?=
 =?us-ascii?Q?7VylKSfOKSnGcNGKbF0yVyjqMRu4lHQeeYCT+KtWaNx3V7wM9eazjnCF4VC5?=
 =?us-ascii?Q?UUQ47QVCuzVXJIhI9FElKI8mOhMS2Op6zkmObhvF71SFWE27Yma9eFc5Lbhv?=
 =?us-ascii?Q?r8PGPhvhAkM0rZl8aKx4z2t1Y7UXDl21EuWF5SYeCVi/ZBZW1BgylqHIFAJe?=
 =?us-ascii?Q?fmYPInHCf7qveQHQoslru/EQaxHrXN97+j441sdRUbtrHkh9zP0NGeQ0Hxyf?=
 =?us-ascii?Q?aYnMqUsNg5+Te8QU4V1Gl4u1Pyj6N/M=3D?=
X-Exchange-RoutingPolicyChecked: mvfkxcUsVbUiUD5YtPxoJZ4OaCV4yTWjyVxAz85OLbxuqsRmv1KLvNGPFSJCMVVN62VdKp4Kn3G9PneieqlNrCEb2p5nSDBrzlobHU74toWi8Iw02mTRy73ShJNKUvfaCqm/1JW73td3MIRBmQKPcrYrnX/w1qeJpH8xEE2b2uZZ6tgsDuT2BX7P44S2imkPbrQ43tI8fcRbHfD5IXoR8wCA/f0HMbPM6kmdfTglkaYvdPT1KPgG0w2MwGo4U5JlVRdElZjraLLnr0ZFTcVAARP9X1ShcX8zjfQ96svC2jrELXmbkV9YsFtLMG6Ed99nADgTofZsq9e1o3S1josDJA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d00f9e6-1f47-4cf8-871e-08de8e473682
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2026 10:29:24.6978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0lL9RIbGAgJDDklC9eayZgIXa2yrNUNZzW967ZrAJYJ69Oj1QQ77PxbtD3ActOpb5lEV4pEuD2Aa/zmzrqvuO7QIKwq62HZSeFJjLGAoOEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7720
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5A3F1359455
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Test-with: 20260330102400.1157658-1-krzysztof.karas@intel.com

Currently, i915 selftests use unknown process's address space to
perform mappings to userspace memory. This is problematic,
because there is no control over lifetime of the memory of such
task, so the test would occasionally borrow memory scheduled for
or in the middle of a cleanup causing SIGBUS errors.

Utilize user-provided PID of running userspace process to
perfofm mapping in a safe environment.

Krzysztof Karas (2):
  drm/i915/selftests: Add userspace PID parameter
  drm/i915/selftests: Prevent userspace mapping invalidation

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 14 +++---
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 43 +++++++++++++++++++
 3 files changed, 50 insertions(+), 8 deletions(-)

-- 
2.43.0

