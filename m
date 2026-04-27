Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNNyCO1S72llAQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:13:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C05472513
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 14:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3EE310E6FB;
	Mon, 27 Apr 2026 12:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JItjmKXp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E894710E6FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 12:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777292010; x=1808828010;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=uCDGSWpt5eYLQYYQQWpLR3anxbfUdmYIcZMxDQWV+fI=;
 b=JItjmKXptw47sRO3Ad2mYe8Mg6zRvRmUPzo5HsOIO/A4Ed2mUM5DHep2
 2D9Ct5joZSPaT7TUNGdDJdqqFQjPN+gfi+tOjwMTe/m3XPItudb5Cd3bv
 cy09Gup8trG0leCzVcfktd7I/1udYR2re1tmmO35lLBrFp3QfAlsd57xm
 JR2+0S8yPSZQ0Gu0j2mB6yZRBb++9GVCUN2S0jWHXcqBZW0CE69Nekp61
 DK9MmUuTMnCay80oigqp+ZYTc3GLiArbSjQfkwbnUOeLlWlQ2sNDj1kN2
 6jmK9Rmcl6zFAwp+vj43F5FdCsmrljYER+QS+KIgXR01OJUUJ6FTjQG2N g==;
X-CSE-ConnectionGUID: l16FtY8lTTmH+776d3NQvw==
X-CSE-MsgGUID: RYtFOsQsR72QGGbXI3JSdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="77202885"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="77202885"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:13:30 -0700
X-CSE-ConnectionGUID: 65SjRZkvRzeleLMS32LQmg==
X-CSE-MsgGUID: J6tpu/IOQYSWUQND8QYxxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="227094465"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 05:13:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 05:13:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 05:13:28 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 05:13:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j9buf48JPQ+8GgiJ4dyRw0pz59ENvUl42mryVd1xu5OtIaxXJxRlqmj93/Tx6J0BdZm6IoNh28hSVDCzFGKO3RfsxyjIlZToNZu3LTLdGjBP+pjfePdE0Zf6FMrHGN/1WAGviYL4nx04AvIoIuQIwBH5e/2heTbGQArjY3FlIjrdp2yJU6sONuiwNJvXKEsdbxQys32PajYDhA6XPU3Rmh7h3qto6Uci7LaMlb7zywBXQqU9MPIHZtRa7nuIXHQ0+TdBiJtvOZA4R/dbcu/x+4g39SkseEYNOKewwqBRsMj5yQ2SbIHGfhX38XGF2Q3tGlSPOZKmG4Fy/BmyEQ+k/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DkFF2gq7gWcJAmcPwyo2N5eWqRib6bz8/yvnucTe7yM=;
 b=dkkSk3zFVsBle77YBI4I3CMFLRiabAbbuBlanRO3PpSoPmzUytQUzNJnvR16FzNhanHQMv6pBzjXZz5s7kdtCIQoypL3JDvygDFIuLfzsZT5vZ8zUVk68nQW88mX8iaUBh3yWaFfL6Ywjah+fos8CNFldIlPiwIQ8MhsiB5/KvPvLD7uJ1/NtrwaFu/m/J6rk2HBDqway2jGshQdjnEbvuGMocEzSJiQIxwG2etKgci5ztIkCBYnhToT49Hks6mACtqaUsjdKF38ZblO7IdYWm4ZNGhrWWXktC8x9+fkSr2D/nVJ9kuEFrlSCN8r6vZwh1SAO91AnABJqxPNWRCtvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ0PR11MB6742.namprd11.prod.outlook.com (2603:10b6:a03:47b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 12:13:20 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Mon, 27 Apr 2026
 12:13:19 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>
Subject: [PATCH] drm/i915: replace fetch_and_zero() with kernel xchg()
Date: Mon, 27 Apr 2026 14:13:11 +0200
Message-ID: <75ba7e77fe28617f027ae49a620df8b580cd1000.1777291964.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.53.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DBBPR09CA0032.eurprd09.prod.outlook.com
 (2603:10a6:10:d4::20) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ0PR11MB6742:EE_
X-MS-Office365-Filtering-Correlation-Id: db84ca6b-16ef-485c-8d2c-08dea4565e2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|20046099003; 
X-Microsoft-Antispam-Message-Info: sIRvsvNS1b3Zgf5Vin9Vbw7q58WYS/oYOWBo04GFe8xRUsKqGc1qWWS4lizQbU3wcGMq+if4y956iBODwh5V/g02d/iXMdG8w3Z2EzOydqhKzmnWEtALDPZMYX/xHgS0kDUbngfejVxT9WUMjqWTCCFzNX+333zy6aHHJmHgGKA8gkBKSkXRnoH7Vy3Q5Swl63c8tNvWw2jECMSpT7tBnoIGWDM/w6XJaltDbxjVx1qU2qoYFDnscQa82OV84DHQEIwgQbCKnP/1Y4q/cfHKPmUfKrXlyjv1aFAyyHX502/dWA7hjE8BQddp86MG2pGKHvbqJmOBlAxEHNF1xy7LfA22GOZrs++Gw5u2BqritsDPBDiNhL39/i7poJfxRnf47LoV/MGFW7b+l5vMtkn2686iLKbGatUfcKZ42Qt8Q10oQTfX17mnPoWWHxCh3H53xAxB//enGrYgT/XdMBe7ZTzh3sy7C71bE5u8cW/YXh7uhm9u2Ykg2+OCjYgFU3R4/T0QfpdpqSzkKGlG6RpiNJuGmWK+UaGGMC/jx8ZmYfzwtL714GcJgCxUr8Nn+uaXtRqgpmcFk9oAeFuW1dXyN6ru8i4mVhW2Bzi94+fIhOyCzFpsqN4zkLcVzfOJszZkNcQ1iB30n+/d86UAp537sN5yvJo0OUbcl4N8n/zSAw5imdPbdy31Ge/keDjlioJCPSNO0bktkvcqu4vv9Xk4ZOefba8hKMeaSCkjIf5nXTc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(20046099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8N3RIA23g01LiU9GkhmoWM4TNxusc7v5dQLN3JdA3BA+NU2fwQ1KQaXEl3ra?=
 =?us-ascii?Q?miiAOzwUAh2Tin6otQSOJ9E2a8i6W7ZxOQaTO7OaefmYWdKZ4845H3JmaEu3?=
 =?us-ascii?Q?QYIeaMkpaxhpBpL4J6jjWcEf2qezctzKGqymyLGbcK4QbZiA8kxiDGyY5R8w?=
 =?us-ascii?Q?ZjxRr/xJWeEb6aKodwzItrVRKwfqgWotciijH8bv1XvIhCcwcMFHL8LxdeP0?=
 =?us-ascii?Q?IAeGRHGxSMd3a7ZiwqAZiMoibO3GgPSqbhKnZu4xSgeE0HHzT1cEpEoIZZmn?=
 =?us-ascii?Q?sC1pkpgtihn2ku7LrdMb1ElQhEjdJDh7TzTta+rKRSwnH63yij16KReQJ+Zv?=
 =?us-ascii?Q?SzqQEzTSTDf1Rb8pYuU+L1k1BXeOiJKtXs0msQIy/MCseCmGa4KjaMpS0oMH?=
 =?us-ascii?Q?fWwzJJ8nD9C4/1L2KOc0OySS3spt5BXkB/jbaIgv+XrLDj0Djd7PTkyBUxGf?=
 =?us-ascii?Q?2h/1soOzyICxJofvaWHbJqBOyPrK+1Id+VjGQBBU6cMkJIfIG+SK2AJwPzji?=
 =?us-ascii?Q?NeLAkkBHDwndQ9YQr4XBWvA2r+E42csNOrbuQ6n5m8Dr45ARkDLdZ0xZ0ERe?=
 =?us-ascii?Q?ws5NUwmJ8y44wvURnmnM0Gl5Rmo6Rl5rEyzofo9bfPDom0Xlc/F38ArRZuPI?=
 =?us-ascii?Q?qW55UqoZJdKI2RAa2S41HX9h1QA+1GFisF2k2kBVu2iS953JxYdMVyLKIn6B?=
 =?us-ascii?Q?6cCZPzGcxVPBmdrKEXoeyXrLzMOsv2HHPfzj5VFf/Wz9k2oF2l/DOt8y1KX5?=
 =?us-ascii?Q?J9yEdGF6JoMANgzfrdH/lrlM31r9iRrwf16c/5y/504yrn55ZbwvPDdXocQ6?=
 =?us-ascii?Q?GqmrLUiRmCy/UG7gk6R7ZxX5MnFUwzkUl+vRpclXJPEsmenmrS2TSHExpOAx?=
 =?us-ascii?Q?P9q+75DYtSv1sPRwkZ5Zsy8pA03ysAPPJtMW57Zq+C2t2egQP0L9u2wRU7At?=
 =?us-ascii?Q?3sGN0tYHNTogB+PhawvBIe0VEUU+88PFxp5WTa94OCRrGQfuobEJjvnB4XJb?=
 =?us-ascii?Q?XF6a2Y7cNgmcj+oRviSYjNfzzk0DzQxPV/xTQBJ11QWVkcO+2Qv22wxSZdhR?=
 =?us-ascii?Q?j8q72mPsRMctL9DJeJASLjmnDI3MVJCGQniGxZU27fYNQT2bCs3q+iGkX/HQ?=
 =?us-ascii?Q?MpVJ//Tam2LuwjgGw1YswSyLY9AFhCEHFtlBOJMphb4fxQfcGn5JcYXp8YNd?=
 =?us-ascii?Q?scJi4loIkQMq1qlXTGoVSwUEdbkgFZmQBubHmfUy2zUsVfxYGtmNy7Dy06hq?=
 =?us-ascii?Q?QR2Zh1VMs+rNOZerLlF201XhIYsdywoCC0Sepg1kiCxbAsORn+yfgWQTihYe?=
 =?us-ascii?Q?6MKNaR/6rZ/rz9NbS81YDU4r4YFfrr76SagqMpG562WKenLWK8EfB7ynGLRQ?=
 =?us-ascii?Q?3OHd5m7p6w4KgFxqqL+SfRV+joR1bIs0kKHMt0WFEX4pYlkCFIhjCUxGy8Gh?=
 =?us-ascii?Q?qbY+7iBK9s4wOn4J8FvV18uVDvI1MHigoEFVGTx3vXJWgl1zyHVsCQ2SRKiD?=
 =?us-ascii?Q?S5hbkZwgdlM8A/BrjnCa5Zgd7W9y7iuUrboq3tGNAw/Jp9uev4YeBXoG1Q9w?=
 =?us-ascii?Q?6u8mB9bjCztgHpwaSSlA8Gj9o/4UbCJPoPEhFTL/SjbJYLYhYN1x+tZXDCDS?=
 =?us-ascii?Q?jcIix4mi1EkqXlaPI2ls5KiDsCh7RiKe40KG3eyLjIf4Bdv2YPLKFB4mefyE?=
 =?us-ascii?Q?/hGiU31pnONZDzqSDAQmeKbukLZ7F2qalShXLg3jipZmKFfpdtSwQorQnRhP?=
 =?us-ascii?Q?xNb6LT4IM5kwTpi1BEPcVrs2FjohYoE=3D?=
X-Exchange-RoutingPolicyChecked: Ahmvjrmzp8vKNc62XDS5gEJ4eF+172gUNKKkf8jalBEoeEMpNYv4k0C6Y9W+hl5y2fHwQ6tticOISGzhoMBC8T1WI9yH/eAB7CEW1/dRD53ZiMtvsbw0kjzHyH7mpERbia1PQCOBXBhW7ZutPRHz7pmYagxQHBkMqxuJ6u0qhRVYyPmPwn+yYcSo9IIP7f19feBLVAW2G1qDz5gKrDYV4+R156a8NSeI7t4SwvfeU7RRT9l12lpA3ln9oC39MQ3d+qxvrzZztTQOJhKKEOZlW1AXDLc8+xI17NMXlBpoXZH2GGpfiF/JBMKu7vXJRV33Fijr0BxHzVJA9LDlf+7XVg==
X-MS-Exchange-CrossTenant-Network-Message-Id: db84ca6b-16ef-485c-8d2c-08dea4565e2f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 12:13:19.4365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F0XQOvTDbJCOdGYfwKHjRStt3yRY/0VbHvBwQFNutT+ywuCp+kOTLRmuVXkpYtAmOIXz6Sy3ykrIiPil9MDWvjzvIMxdIDXgNK19r1PG1Zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6742
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
X-Rspamd-Queue-Id: 52C05472513
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

The i915 local fetch_and_zero() macro is a non-atomic
fetch-and-zero operation defined in i915_utils.h and duplicated in
display/intel_display_utils.h. Its functionality is equivalent to the
kernel-provided xchg().

Replace fetch_and_zero() with the kernel provided xchg(), and
remove the now unused macro definitions from both i915_utils.h and
display/intel_display_utils.h.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
 .../drm/i915/display/intel_display_power.c    | 22 +++++++++----------
 .../drm/i915/display/intel_display_reset.c    |  2 +-
 .../drm/i915/display/intel_display_utils.h    |  5 -----
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  4 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 12 +++++-----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  4 ++--
 .../drm/i915/gem/selftests/i915_gem_context.c |  4 ++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gsc.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  4 ++--
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  6 ++---
 drivers/gpu/drm/i915/gt/intel_migrate.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 drivers/gpu/drm/i915/gt/selftest_context.c    |  2 +-
 .../drm/i915/gt/selftest_ring_submission.c    |  2 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c  |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  2 +-
 drivers/gpu/drm/i915/gvt/kvmgt.c              |  2 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |  4 ++--
 drivers/gpu/drm/i915/i915_drm_client.c        |  2 +-
 drivers/gpu/drm/i915/i915_fb_pin.c            |  6 ++---
 drivers/gpu/drm/i915/i915_overlay.c           |  2 +-
 drivers/gpu/drm/i915/i915_perf.c              |  2 +-
 drivers/gpu/drm/i915/i915_query.c             |  2 +-
 drivers/gpu/drm/i915/i915_request.c           |  4 ++--
 drivers/gpu/drm/i915/i915_utils.h             |  5 -----
 drivers/gpu/drm/i915/i915_vma.c               |  2 +-
 drivers/gpu/drm/i915/intel_memory_region.c    |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  2 +-
 45 files changed, 77 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index afbaa0465842..cb56d38c7188 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1419,7 +1419,7 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		struct ref_tracker *wakeref;
 
-		wakeref = fetch_and_zero(&intel_dsi->io_wakeref[port]);
+		wakeref = xchg(&intel_dsi->io_wakeref[port], NULL);
 		intel_display_power_put(display,
 					port == PORT_A ?
 					POWER_DOMAIN_PORT_DDI_IO_A :
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2681940a5cfe..1227472e077c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1004,7 +1004,7 @@ main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
 		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
 	struct ref_tracker *wf;
 
-	wf = fetch_and_zero(&dig_port->aux_wakeref);
+	wf = xchg(&dig_port->aux_wakeref, NULL);
 	if (!wf)
 		return;
 
@@ -3174,7 +3174,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	intel_pps_vdd_on(intel_dp);
 	intel_pps_off(intel_dp);
 
-	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
+	wakeref = xchg(&dig_port->ddi_io_wakeref, NULL);
 
 	if (wakeref)
 		intel_display_power_put(display,
@@ -3210,7 +3210,7 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	if (DISPLAY_VER(display) >= 12)
 		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
-	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
+	wakeref = xchg(&dig_port->ddi_io_wakeref, NULL);
 	if (wakeref)
 		intel_display_power_put(display,
 					dig_port->ddi_io_power_domain,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 674a4ece6d0f..34b40a6bed5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7594,8 +7594,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 *
 		 * FIXME get rid of this funny new->old swapping
 		 */
-		old_crtc_state->dsb_color = fetch_and_zero(&new_crtc_state->dsb_color);
-		old_crtc_state->dsb_commit = fetch_and_zero(&new_crtc_state->dsb_commit);
+		old_crtc_state->dsb_color = xchg(&new_crtc_state->dsb_color, NULL);
+		old_crtc_state->dsb_commit = xchg(&new_crtc_state->dsb_commit, NULL);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 80ecf373fb19..43f35daa65b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -509,7 +509,7 @@ intel_display_power_grab_async_put_ref(struct intel_display *display,
 
 	cancel_async_put_work(power_domains, false);
 	intel_display_rpm_put_raw(display,
-				  fetch_and_zero(&power_domains->async_put_wakeref));
+				  xchg(&power_domains->async_put_wakeref, NULL));
 out_verify:
 	verify_async_put_domains_state(power_domains);
 
@@ -688,7 +688,7 @@ intel_display_power_put_async_work(struct work_struct *work)
 	 * Bail out if all the domain refs pending to be released were grabbed
 	 * by subsequent gets or a flush_work.
 	 */
-	old_work_wakeref = fetch_and_zero(&power_domains->async_put_wakeref);
+	old_work_wakeref = xchg(&power_domains->async_put_wakeref, NULL);
 	if (!old_work_wakeref)
 		goto out_verify;
 
@@ -709,7 +709,7 @@ intel_display_power_put_async_work(struct work_struct *work)
 		bitmap_zero(power_domains->async_put_domains[1].bits,
 			    POWER_DOMAIN_NUM);
 		queue_async_put_domains_work(power_domains,
-					     fetch_and_zero(&new_work_wakeref),
+					     xchg(&new_work_wakeref, NULL),
 					     power_domains->async_put_next_delay);
 		power_domains->async_put_next_delay = 0;
 	}
@@ -768,7 +768,7 @@ void __intel_display_power_put_async(struct intel_display *display,
 	} else {
 		set_bit(domain, power_domains->async_put_domains[0].bits);
 		queue_async_put_domains_work(power_domains,
-					     fetch_and_zero(&work_wakeref),
+					     xchg(&work_wakeref, NULL),
 					     delay_ms);
 	}
 
@@ -803,7 +803,7 @@ void intel_display_power_flush_work(struct intel_display *display)
 
 	mutex_lock(&power_domains->lock);
 
-	work_wakeref = fetch_and_zero(&power_domains->async_put_wakeref);
+	work_wakeref = xchg(&power_domains->async_put_wakeref, NULL);
 	if (!work_wakeref)
 		goto out_verify;
 
@@ -931,7 +931,7 @@ intel_display_power_put_mask_in_set(struct intel_display *display,
 		struct ref_tracker *__maybe_unused wf = INTEL_WAKEREF_DEF;
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
+		wf = xchg(&power_domain_set->wakerefs[domain], NULL);
 #endif
 		intel_display_power_put(display, domain, wf);
 		clear_bit(domain, power_domain_set->mask.bits);
@@ -1998,12 +1998,12 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume)
 void intel_power_domains_driver_remove(struct intel_display *display)
 {
 	struct ref_tracker *wakeref __maybe_unused =
-		fetch_and_zero(&display->power.domains.init_wakeref);
+		xchg(&display->power.domains.init_wakeref, NULL);
 
 	/* Remove the refcount we took to keep power well support disabled. */
 	if (!display->params.disable_power_well)
 		intel_display_power_put(display, POWER_DOMAIN_INIT,
-					fetch_and_zero(&display->power.domains.disable_wakeref));
+					xchg(&display->power.domains.disable_wakeref, NULL));
 
 	intel_display_power_flush_work_sync(display);
 
@@ -2059,7 +2059,7 @@ void intel_power_domains_sanitize_state(struct intel_display *display)
 void intel_power_domains_enable(struct intel_display *display)
 {
 	struct ref_tracker *wakeref __maybe_unused =
-		fetch_and_zero(&display->power.domains.init_wakeref);
+		xchg(&display->power.domains.init_wakeref, NULL);
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 	intel_power_domains_verify_state(display);
@@ -2098,7 +2098,7 @@ void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct ref_tracker *wakeref __maybe_unused =
-		fetch_and_zero(&power_domains->init_wakeref);
+		xchg(&power_domains->init_wakeref, NULL);
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 
@@ -2122,7 +2122,7 @@ void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 	 */
 	if (!display->params.disable_power_well)
 		intel_display_power_put(display, POWER_DOMAIN_INIT,
-					fetch_and_zero(&display->power.domains.disable_wakeref));
+					xchg(&display->power.domains.disable_wakeref, NULL));
 
 	intel_display_power_flush_work(display);
 	intel_power_domains_verify_state(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index fb3ac52a0acf..e10f85985ae7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -79,7 +79,7 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
 	struct drm_atomic_state *state;
 	int ret;
 
-	state = fetch_and_zero(&display->restore.modeset_state);
+	state = xchg(&display->restore.modeset_state, NULL);
 	if (!state)
 		goto unlock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers/gpu/drm/i915/display/intel_display_utils.h
index affa3179f52c..55e9b7ed3738 100644
--- a/drivers/gpu/drm/i915/display/intel_display_utils.h
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
@@ -12,11 +12,6 @@ struct intel_display;
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
 
-#define fetch_and_zero(ptr) ({						\
-	typeof(*ptr) __T = *(ptr);					\
-	*(ptr) = (typeof(*ptr))0;					\
-	__T;								\
-})
 
 #define KHz(x) (1000 * (x))
 #define MHz(x) KHz(1000 * (x))
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0df4f42ba3e3..a1eab309eca1 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1335,7 +1335,7 @@ static void intel_dmc_runtime_pm_get(struct intel_display *display)
 static void intel_dmc_runtime_pm_put(struct intel_display *display)
 {
 	struct ref_tracker *wakeref __maybe_unused =
-		fetch_and_zero(&display->dmc.wakeref);
+		xchg(&display->dmc.wakeref, NULL);
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 2d799af73bb7..fb54477f83d6 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -863,7 +863,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 
 	intel_display_power_put(display,
 				intel_aux_power_domain(dig_port),
-				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
+				xchg(&intel_dp->pps.vdd_wakeref, NULL));
 }
 
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
@@ -1065,7 +1065,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 	/* We got a reference when we enabled the VDD. */
 	intel_display_power_put(display,
 				intel_aux_power_domain(dig_port),
-				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
+				xchg(&intel_dp->pps.vdd_wakeref, NULL));
 }
 
 void intel_pps_off(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index a21dd4e3fe4c..2e3bc8c57114 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -717,7 +717,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 out_release_phy:
 	icl_tc_phy_take_ownership(tc, false);
 out_unblock_tc_cold:
-	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+	tc_cold_unblock(tc, xchg(&tc->lock_wakeref, NULL));
 
 	return false;
 }
@@ -734,7 +734,7 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 		icl_tc_phy_take_ownership(tc, false);
 		fallthrough;
 	case TC_PORT_TBT_ALT:
-		tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+		tc_cold_unblock(tc, xchg(&tc->lock_wakeref, NULL));
 		break;
 	default:
 		MISSING_CASE(tc->mode);
@@ -948,7 +948,7 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 	return true;
 
 out_unblock_tc_cold:
-	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+	tc_cold_unblock(tc, xchg(&tc->lock_wakeref, NULL));
 out_release_phy:
 	adlp_tc_phy_take_ownership(tc, false);
 out_put_port_power:
@@ -966,7 +966,7 @@ static void adlp_tc_phy_disconnect(struct intel_tc_port *tc)
 
 	port_wakeref = intel_display_power_get(display, port_power_domain);
 
-	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+	tc_cold_unblock(tc, xchg(&tc->lock_wakeref, NULL));
 
 	switch (tc->mode) {
 	case TC_PORT_LEGACY:
@@ -1220,7 +1220,7 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 	xelpdp_tc_phy_wait_for_tcss_power(tc, false);
 
 out_unblock_tccold:
-	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+	tc_cold_unblock(tc, xchg(&tc->lock_wakeref, NULL));
 
 	return false;
 }
@@ -1234,7 +1234,7 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
 		xelpdp_tc_phy_enable_tcss_power(tc, false);
 		fallthrough;
 	case TC_PORT_TBT_ALT:
-		tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+		tc_cold_unblock(tc, xchg(&tc->lock_wakeref, NULL));
 		break;
 	default:
 		MISSING_CASE(tc->mode);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index df35bdb755e4..83c419f8a664 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -217,7 +217,7 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
 
 	assert_object_held_shared(obj);
 
-	pages = fetch_and_zero(&obj->mm.pages);
+	pages = xchg(&obj->mm.pages, NULL);
 	if (IS_ERR_OR_NULL(pages))
 		return pages;
 
@@ -636,7 +636,7 @@ void __i915_gem_object_release_map(struct drm_i915_gem_object *obj)
 	 * Furthermore, since this is an unsafe operation reserved only
 	 * for construction time manipulation, we ignore locking prudence.
 	 */
-	unmap_object(obj, page_mask_bits(fetch_and_zero(&obj->mm.mapping)));
+	unmap_object(obj, page_mask_bits(xchg(&obj->mm.mapping, NULL)));
 
 	i915_gem_object_unpin_map(obj);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 1cfdcf5c1118..7c86ddca9902 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -706,7 +706,7 @@ static void
 i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct drm_mm_node *stolen = fetch_and_zero(&obj->stolen);
+	struct drm_mm_node *stolen = xchg(&obj->stolen, NULL);
 
 	GEM_BUG_ON(!stolen);
 	__i915_gem_stolen_remove_node(i915, stolen);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index de70517b4ef2..81cb693f773c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -444,7 +444,7 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
 		 */
 		shmem_truncate_range(file_inode(i915_tt->filp),
 				     0, (loff_t)-1);
-		fput(fetch_and_zero(&i915_tt->filp));
+		fput(xchg(&i915_tt->filp, NULL));
 	}
 
 	obj->write_domain = 0;
@@ -916,7 +916,7 @@ static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
 	 */
 
 	if (obj->mm.rsgt)
-		i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
+		i915_refct_sgt_put(xchg(&obj->mm.rsgt, NULL));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 9d405098f9e7..979722756aeb 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -625,7 +625,7 @@ static void throttle_release(struct i915_request **q, int count)
 		if (IS_ERR_OR_NULL(q[i]))
 			continue;
 
-		i915_request_put(fetch_and_zero(&q[i]));
+		i915_request_put(xchg(&q[i], NULL));
 	}
 }
 
@@ -1083,7 +1083,7 @@ __sseu_prepare(const char *name,
 err_fini:
 	igt_spinner_fini(*spin);
 err_free:
-	kfree(fetch_and_zero(spin));
+	kfree(xchg(spin, NULL));
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index c0fd349a4600..49f9f7242bc4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1026,7 +1026,7 @@ static void cleanup_status_page(struct intel_engine_cs *engine)
 	/* Prevent writes into HWSP after returning the page to the system */
 	intel_engine_set_hwsp_writemask(engine, ~0u);
 
-	vma = fetch_and_zero(&engine->status_page.vma);
+	vma = xchg(&engine->status_page.vma, NULL);
 	if (!vma)
 		return;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 1359fc9cb88e..8951e2d69be8 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3203,7 +3203,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		RB_CLEAR_NODE(rb);
 
 		spin_lock(&ve->base.sched_engine->lock);
-		rq = fetch_and_zero(&ve->request);
+		rq = xchg(&ve->request, NULL);
 		if (rq) {
 			if (i915_request_mark_eio(rq)) {
 				rq->engine = engine;
@@ -3609,7 +3609,7 @@ static void rcu_virtual_context_destroy(struct work_struct *wrk)
 
 		spin_lock_irq(&ve->base.sched_engine->lock);
 
-		old = fetch_and_zero(&ve->request);
+		old = xchg(&ve->request, NULL);
 		if (old) {
 			GEM_BUG_ON(!__i915_request_is_complete(old));
 			__i915_request_submit(old);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 64ca5bbc53c6..26ab52b3fa15 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1048,7 +1048,7 @@ static void fini_aliasing_ppgtt(struct i915_ggtt *ggtt)
 {
 	struct i915_ppgtt *ppgtt;
 
-	ppgtt = fetch_and_zero(&ggtt->alias);
+	ppgtt = xchg(&ggtt->alias, NULL);
 	if (!ppgtt)
 		return;
 
@@ -1648,7 +1648,7 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm, bool all_evicted)
 				   was_bound);
 
 		if (obj) { /* only used during resume => exclusive access */
-			write_domain_objs |= fetch_and_zero(&obj->write_domain);
+			write_domain_objs |= xchg(&obj->write_domain, 0);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 050d909fb4f8..89660993ae07 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -71,7 +71,7 @@ gsc_ext_om_alloc(struct intel_gsc *gsc, struct intel_gsc_intf *intf, size_t size
 
 static void gsc_ext_om_destroy(struct intel_gsc_intf *intf)
 {
-	struct drm_i915_gem_object *obj = fetch_and_zero(&intf->gem_obj);
+	struct drm_i915_gem_object *obj = xchg(&intf->gem_obj, NULL);
 
 	if (!obj)
 		return;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 5c7f862f7100..fad0a5b672a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -749,7 +749,7 @@ int intel_gt_init(struct intel_gt *gt)
 	intel_uc_fini(&gt->uc);
 err_engines:
 	intel_engines_release(gt);
-	i915_vm_put(fetch_and_zero(&gt->vm));
+	i915_vm_put(xchg(&gt->vm, NULL));
 err_pm:
 	intel_gt_pm_fini(gt);
 	intel_gt_fini_scratch(gt);
@@ -820,7 +820,7 @@ void intel_gt_driver_release(struct intel_gt *gt)
 {
 	struct i915_address_space *vm;
 
-	vm = fetch_and_zero(&gt->vm);
+	vm = xchg(&gt->vm, NULL);
 	if (vm) /* FIXME being called twice on error paths :( */
 		i915_vm_put(vm);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c7f59d60fac6..09031b337aa7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -104,7 +104,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 static int __gt_park(struct intel_wakeref *wf)
 {
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
-	intel_wakeref_t wakeref = fetch_and_zero(&gt->awake);
+	intel_wakeref_t wakeref = xchg(&gt->awake, NULL);
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_display *display = i915->display;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 147d22907960..a296cd937203 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1121,7 +1121,7 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
 static struct intel_timeline *
 pinned_timeline(struct intel_context *ce, struct intel_engine_cs *engine)
 {
-	struct intel_timeline *tl = fetch_and_zero(&ce->timeline);
+	struct intel_timeline *tl = xchg(&ce->timeline, NULL);
 
 	return intel_timeline_create_from_engine(engine, page_unmask_bits(tl));
 }
@@ -1241,8 +1241,8 @@ void lrc_fini(struct intel_context *ce)
 	if (!ce->state)
 		return;
 
-	intel_ring_put(fetch_and_zero(&ce->ring));
-	i915_vma_put(fetch_and_zero(&ce->state));
+	intel_ring_put(xchg(&ce->ring, NULL));
+	i915_vma_put(xchg(&ce->state, NULL));
 }
 
 void lrc_destroy(struct kref *kref)
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index aff5aca591e6..8b2224035eb1 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -1152,7 +1152,7 @@ void intel_migrate_fini(struct intel_migrate *m)
 {
 	struct intel_context *ce;
 
-	ce = fetch_and_zero(&m->context);
+	ce = xchg(&m->context, NULL);
 	if (!ce)
 		return;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index e91e5cdca26c..fbfd671db5a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -733,7 +733,7 @@ void intel_rc6_fini(struct intel_rc6 *rc6)
 	if (IS_METEORLAKE(rc6_to_i915(rc6)) && rc6->bios_state_captured)
 		intel_uncore_write_fw(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
 
-	pctx = fetch_and_zero(&rc6->pctx);
+	pctx = xchg(&rc6->pctx, NULL);
 	if (pctx)
 		i915_gem_object_put(pctx);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index a33b19c04737..b99ad7acdacf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1828,7 +1828,7 @@ static void rps_work(struct work_struct *work)
 	u32 pm_iir = 0;
 
 	spin_lock_irq(gt->irq_lock);
-	pm_iir = fetch_and_zero(&rps->pm_iir) & rps->pm_events;
+	pm_iir = xchg(&rps->pm_iir, 0) & rps->pm_events;
 	client_boost = atomic_read(&rps->num_waiters);
 	spin_unlock_irq(gt->irq_lock);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index ab76703f6e8b..24e4cb4fdd48 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -174,7 +174,7 @@ static int live_context_size(void *arg)
 		 * active state is sufficient, we are only checking that we
 		 * don't use more than we planned.
 		 */
-		saved = fetch_and_zero(&engine->default_state);
+		saved = xchg(&engine->default_state, NULL);
 
 		/* Overlaps with the execlists redzone */
 		engine->context_size += I915_GTT_PAGE_SIZE;
diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index 600333ae6c8c..0e74bdcf54d5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
@@ -270,7 +270,7 @@ static int live_ctx_switch_wa(void *arg)
 		if (IS_GRAPHICS_VER(gt->i915, 4, 5))
 			continue; /* MI_STORE_DWORD is privileged! */
 
-		saved_wa = fetch_and_zero(&engine->wa_ctx.vma);
+		saved_wa = xchg(&engine->wa_ctx.vma, NULL);
 
 		intel_engine_pm_get(engine);
 		err = __live_ctx_switch_wa(engine);
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 29d860a5c9c8..3bce20fbdc7d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -892,7 +892,7 @@ static int create_watcher(struct hwsp_watcher *w,
 static int check_watcher(struct hwsp_watcher *w, const char *name,
 			 bool (*op)(u32 hwsp, u32 seqno))
 {
-	struct i915_request *rq = fetch_and_zero(&w->rq);
+	struct i915_request *rq = xchg(&w->rq, NULL);
 	u32 offset, end;
 	int err;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
index e7444ebc373e..bff110c747b8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
@@ -388,7 +388,7 @@ void intel_gsc_proxy_fini(struct intel_gsc_uc *gsc)
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
 	struct drm_i915_private *i915 = gt->i915;
 
-	if (fetch_and_zero(&gsc->proxy.component_added))
+	if (xchg(&gsc->proxy.component_added, false))
 		component_del(i915->drm.dev, &i915_gsc_proxy_component_ops);
 
 	proxy_channel_free(gsc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 3d3191deb0ab..26afa6ca14dd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -197,7 +197,7 @@ static int gsc_allocate_and_map_vma(struct intel_gsc_uc *gsc, u32 size)
 
 static void gsc_unmap_and_free_vma(struct intel_gsc_uc *gsc)
 {
-	struct i915_vma *vma = fetch_and_zero(&gsc->local);
+	struct i915_vma *vma = xchg(&gsc->local, NULL);
 
 	if (!vma)
 		return;
@@ -264,7 +264,7 @@ void intel_gsc_uc_fini(struct intel_gsc_uc *gsc)
 	intel_gsc_proxy_fini(gsc);
 
 	if (gsc->ce)
-		intel_engine_destroy_pinned_context(fetch_and_zero(&gsc->ce));
+		intel_engine_destroy_pinned_context(xchg(&gsc->ce, NULL));
 
 	gsc_unmap_and_free_vma(gsc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index bd07c72a66fc..70c21f8587c2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -157,7 +157,7 @@ static void __uc_capture_load_err_log(struct intel_uc *uc)
 
 static void __uc_free_load_err_log(struct intel_uc *uc)
 {
-	struct drm_i915_gem_object *log = fetch_and_zero(&uc->load_err_log);
+	struct drm_i915_gem_object *log = xchg(&uc->load_err_log, NULL);
 
 	if (log)
 		i915_gem_object_put(log);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 7fac97fe30a6..6bf58240ebed 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -1260,7 +1260,7 @@ void intel_uc_fw_cleanup_fetch(struct intel_uc_fw *uc_fw)
 	if (!intel_uc_fw_is_available(uc_fw))
 		return;
 
-	i915_gem_object_put(fetch_and_zero(&uc_fw->obj));
+	i915_gem_object_put(xchg(&uc_fw->obj, NULL));
 
 	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_SELECTED);
 }
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index ec62db5cc367..598ac074e53f 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1787,7 +1787,7 @@ static int init_service_thread(struct intel_gvt *gvt)
  */
 static void intel_gvt_clean_device(struct drm_i915_private *i915)
 {
-	struct intel_gvt *gvt = fetch_and_zero(&i915->gvt);
+	struct intel_gvt *gvt = xchg(&i915->gvt, NULL);
 
 	if (drm_WARN_ON(&i915->drm, !gvt))
 		return;
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 15fdd514ca83..4bc0f81def10 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -836,7 +836,7 @@ static int dispatch_workload(struct intel_vgpu_workload *workload)
 		/* We might still need to add request with
 		 * clean ctx to retire it properly..
 		 */
-		rq = fetch_and_zero(&workload->req);
+		rq = xchg(&workload->req, NULL);
 		i915_request_put(rq);
 	}
 
@@ -1114,7 +1114,7 @@ static void complete_current_workload(struct intel_gvt *gvt, int ring_id)
 				intel_vgpu_trigger_virtual_event(vgpu, event);
 		}
 
-		i915_request_put(fetch_and_zero(&workload->req));
+		i915_request_put(xchg(&workload->req, NULL));
 	}
 
 	gvt_dbg_sched("ring id %d complete workload %p status %d\n",
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 82cbb0528ff1..e493171fca80 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -194,7 +194,7 @@ void i915_drm_client_add_object(struct i915_drm_client *client,
 
 void i915_drm_client_remove_object(struct drm_i915_gem_object *obj)
 {
-	struct i915_drm_client *client = fetch_and_zero(&obj->client);
+	struct i915_drm_client *client = xchg(&obj->client, NULL);
 	unsigned long flags;
 
 	/* Object may not be associated with a client. */
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index b0e121462ca3..f2cee0be8657 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -336,17 +336,17 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 	struct i915_vma *vma;
 
 	if (!intel_fb_uses_dpt(&fb->base)) {
-		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
+		vma = xchg(&old_plane_state->ggtt_vma, NULL);
 		if (vma) {
 			intel_fb_unpin_vma(vma, old_plane_state->fence_id);
 			old_plane_state->fence_id = -1;
 		}
 	} else {
-		vma = fetch_and_zero(&old_plane_state->dpt_vma);
+		vma = xchg(&old_plane_state->dpt_vma, NULL);
 		if (vma)
 			intel_fb_unpin_vma(vma, -1);
 
-		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
+		vma = xchg(&old_plane_state->ggtt_vma, NULL);
 		if (vma)
 			i915_dpt_unpin_from_ggtt(fb->dpt);
 	}
diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i915_overlay.c
index 6de550a17756..10ef28becce7 100644
--- a/drivers/gpu/drm/i915/i915_overlay.c
+++ b/drivers/gpu/drm/i915/i915_overlay.c
@@ -201,7 +201,7 @@ static void i915_overlay_release_old_vma(struct i915_overlay *overlay)
 	struct intel_display *display = i915->display;
 	struct i915_vma *vma;
 
-	vma = fetch_and_zero(&overlay->old_vma);
+	vma = xchg(&overlay->old_vma, NULL);
 	if (drm_WARN_ON(&i915->drm, !vma))
 		return;
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 19b82427aa41..b2d01e5c7d19 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1617,7 +1617,7 @@ static void oa_put_render_ctx_id(struct i915_perf_stream *stream)
 {
 	struct intel_context *ce;
 
-	ce = fetch_and_zero(&stream->pinned_ctx);
+	ce = xchg(&stream->pinned_ctx, NULL);
 	if (ce) {
 		ce->tag = 0; /* recomputed on next submission after parking */
 		intel_context_unpin(ce);
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 0c55fb6e9727..dbddaab88098 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -406,7 +406,7 @@ static int query_perf_config_list(struct drm_i915_private *i915,
 		if (!ids)
 			return -ENOMEM;
 
-		alloc = fetch_and_zero(&n_configs);
+		alloc = xchg(&n_configs, 0);
 
 		ids[n_configs++] = 1ull; /* reserved for test_config */
 		rcu_read_lock();
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index d2c7b1090df0..755de69a33e0 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -118,7 +118,7 @@ static void i915_fence_release(struct dma_fence *fence)
 	GEM_BUG_ON(rq->guc_prio != GUC_PRIO_INIT &&
 		   rq->guc_prio != GUC_PRIO_FINI);
 
-	i915_request_free_capture_list(fetch_and_zero(&rq->capture_list));
+	i915_request_free_capture_list(xchg(&rq->capture_list, NULL));
 	if (rq->batch_res) {
 		i915_vma_resource_put(rq->batch_res);
 		rq->batch_res = NULL;
@@ -1956,7 +1956,7 @@ static void request_wait_wake(struct dma_fence *fence, struct dma_fence_cb *cb)
 {
 	struct request_wait *wait = container_of(cb, typeof(*wait), cb);
 
-	wake_up_process(fetch_and_zero(&wait->tsk));
+	wake_up_process(xchg(&wait->tsk, NULL));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index ecc20e0528f4..4e25dcc0302b 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -45,11 +45,6 @@ struct drm_i915_private;
 	drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
 })
 
-#define fetch_and_zero(ptr) ({						\
-	typeof(*ptr) __T = *(ptr);					\
-	*(ptr) = (typeof(*ptr))0;					\
-	__T;								\
-})
 
 /*
  * check_user_mbz: Check that a user value exists and is zero
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index afc192d9931b..662f9670420c 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -671,7 +671,7 @@ void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned int flags)
 	struct i915_vma *vma;
 	struct drm_i915_gem_object *obj;
 
-	vma = fetch_and_zero(p_vma);
+	vma = xchg(p_vma, NULL);
 	if (!vma)
 		return;
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 35f96ce7822f..dfed12c24af4 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -417,7 +417,7 @@ void intel_memory_regions_driver_release(struct drm_i915_private *i915)
 
 	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
 		struct intel_memory_region *region =
-			fetch_and_zero(&i915->mm.regions[i]);
+			xchg(&i915->mm.regions[i], NULL);
 
 		if (region)
 			intel_memory_region_destroy(region);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 170e83a8c9fc..c425ca781e86 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -660,7 +660,7 @@ void intel_uncore_resume_early(struct intel_uncore *uncore)
 	if (!intel_uncore_has_forcewake(uncore))
 		return;
 
-	restore_forcewake = fetch_and_zero(&uncore->fw_domains_saved);
+	restore_forcewake = xchg(&uncore->fw_domains_saved, 0);
 	forcewake_early_sanitize(uncore, restore_forcewake);
 
 	iosf_mbi_register_pmic_bus_access_notifier(&uncore->pmic_bus_access_nb);
@@ -2138,7 +2138,7 @@ static void fw_domain_fini(struct intel_uncore *uncore,
 
 	GEM_BUG_ON(domain_id >= FW_DOMAIN_ID_COUNT);
 
-	d = fetch_and_zero(&uncore->fw_domain[domain_id]);
+	d = xchg(&uncore->fw_domain[domain_id], NULL);
 	if (!d)
 		return;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 3d7f045f662d..b4e0517a0e22 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -115,7 +115,7 @@ static int create_vcs_context(struct intel_pxp *pxp)
 static void destroy_vcs_context(struct intel_pxp *pxp)
 {
 	if (pxp->ce)
-		intel_engine_destroy_pinned_context(fetch_and_zero(&pxp->ce));
+		intel_engine_destroy_pinned_context(xchg(&pxp->ce, NULL));
 }
 
 static void pxp_init_full(struct intel_pxp *pxp)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 1e63261b620f..875f40e6ac17 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -139,7 +139,7 @@ void intel_pxp_terminate(struct intel_pxp *pxp, bool post_invalidation_needs_res
 static void pxp_terminate_complete(struct intel_pxp *pxp)
 {
 	/* Re-create the arb session after teardown handle complete */
-	if (fetch_and_zero(&pxp->hw_state_invalidated)) {
+	if (xchg(&pxp->hw_state_invalidated, false)) {
 		drm_dbg(&pxp->ctrl_gt->i915->drm, "PXP: creating arb_session after invalidation");
 		pxp_create_arb_session(pxp);
 	}
@@ -155,7 +155,7 @@ static void pxp_session_work(struct work_struct *work)
 	u32 events = 0;
 
 	spin_lock_irq(gt->irq_lock);
-	events = fetch_and_zero(&pxp->session_events);
+	events = xchg(&pxp->session_events, 0);
 	spin_unlock_irq(gt->irq_lock);
 
 	if (!events)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 1784153f0cf8..1e441a9cd54c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -278,7 +278,7 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
 
 static void free_streaming_command(struct intel_pxp *pxp)
 {
-	struct drm_i915_gem_object *obj = fetch_and_zero(&pxp->stream_cmd.obj);
+	struct drm_i915_gem_object *obj = xchg(&pxp->stream_cmd.obj, NULL);
 
 	if (!obj)
 		return;
-- 
2.53.0

