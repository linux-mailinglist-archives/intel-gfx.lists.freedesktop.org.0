Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJ+EHjiu8GnrXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07278485519
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38DF310EC7E;
	Tue, 28 Apr 2026 12:55:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/fow7Qu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D9310EC77;
 Tue, 28 Apr 2026 12:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380916; x=1808916916;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=WAOPDxtq4kaqrnTPvTbw1XxVS9H5G02zSGs2v7ecTho=;
 b=I/fow7QunoqveeIiyK7DnFWqDE7CrAGRVdm5shW3gA05fBRC3BtrC1Uj
 pFGX8cwYbB86W4ToMq+cvs/Hyp8uRDN6REAYpRhL+pFZqd0JOnboEbAr/
 BQnMk4XMFoPaOp6N6jMGyKNjFzGjHrWepqxR3eZ0i/CwVCfU9j2nWxBW2
 mRddKtFGlr04pNnHHcTkjB4T2VnnjnL1fL2Ou3ir7XZmuvlTQaQIIWeoB
 uXVUMIWEnb5oOwGH5sI2BJkUWSnIxoHCHAXI31+kqNxHYkxQN1Rbkovup
 9u6Qs4q26gzBLYzHRLHcIAyQK1oWYzEMw0Q6vRuiEQq4d8GLNd2ydKjjv w==;
X-CSE-ConnectionGUID: RJZYFqo2TY6cnLX5R0g6Tg==
X-CSE-MsgGUID: M5aRYHomTwOh3lS7L5tzFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203297"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203297"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:15 -0700
X-CSE-ConnectionGUID: f2DYZ9xnTdCD+zF7fo2tfQ==
X-CSE-MsgGUID: QUs/wyvqSr26Cp9CGFVvWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244741"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:12 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.10) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PiHYBhfIAAkbDW6aEYgcgWuWRCgMwoYeyULjfp5KrkMHKNv5jJh2Q+eny218CTHF2f28CfZFC0PZHKZy0qslw0uyIhoC76dp5E3TSoxkiW5lekneuySWUL0/mZ13oueY16RZrmBbAiY+R/++x+C81SwJkCPV4uyYjnUAhmNzemX458zPxnIF155LIbVo3umnDoBkQkU4GRtUaY9dYy2OMf62nt/p8oW0F5jpGiNDiDSqc5SgXO2VrT9qpZ+ERLL9OUnSP1hnGwQqiDjPGMNN93ZO0b48v6YQoWdcdZt2tqPQ8qHfh5e+ofLLUmjN8tiTt0QMwVA8W21JeO09jnWaUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OpvVShsdIlYInkqjhlhcX1qRMSzei684BNmvFCj/Yag=;
 b=J9Ji7cLZR+9RVMIswn6bNmTee2bevaL328ay3esKo3a1IUnWBQioNjStyoFVNFtOz+ZlfYM4TLHwMR8zh8UJB2bELS1s6Rk3SjYcs/LJbL1nFJbGJjRcZfVydbznYF5A5pIxpWPg01RTL/cj/V6Yer+soLjnHXmjayD9Q6xmMEPmqTXmtqqqlJUp8TFqRH8G5F+ed+xsW9Uwi2N4HNRCK/Aq56LftVdbS1lJi4KMKVee508NnQDCc4u8hdKBwYZYOmgkags6HMr5AmOOA/GuqmklzAEnrIEva2zw2NolKmfhDJKg91et9WXxiSTYvDUte6qdQrVAlOseftH538JR1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:55:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 071/108] drm/i915/dp_link_caps: Add helper to get config at
 iterator position
Date: Tue, 28 Apr 2026 15:51:52 +0300
Message-ID: <20260428125233.1664668-72-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 79d7e7eb-6f64-42fa-a0e7-08dea5254d83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: Tt0nGdVI67SN9CDgFcCk7Uwa0ayKKeUbksUjcbcdZMeiv5yaoGF0k0KwCWXnqUrcyInDFOBuKG+DllAtLaj2At5144vcS7+GqengPZM8kq443+jdChFOZ6TJ0PQo9wmPngl7ICHcuODuPJzxcpFy+y+b7RbMKvoPzsGPWxsFcFX6jvVlQBlMezry6TXGfUZIu2vSMvOy/R4AEY4PPw9f64i2stBlcxHmaRJw8fH5P2CgjoJnImSXlMVrdBkUomlJtP1VK4IyGGwc6WSp/mAjImMgjOvm1Zd3t4ML5w2evt6p/x8aXxWVffLL7d3gZdT27vcJDqIQU2SNm3KCWVTfyfWyDdmbizQIBJGJXdTkraQI4JuZ8/7ca9n1svkV8NuVvZRg38iY8BvXd3vyeaGpYQHpYYOK4kevE5ynMyOWlAQo8F+qYg1vTyCifZ25/L+R7UeWH2yr5FfJ9C/bibyUvi1JxHK+x3PXGL9/h0zTuRrKrtHiHe7PKqCpnPmQj6K2qpms33mHIRzVE2xYNG0Nu9o0Mw/5g2NmriGxBqzmLNR2KiNi9CIH85JW52Xxj3M6G/iFBun1mQrtGykRBXLiTTFM92hKHX7IxhUORYBTNSEt81qrz+o6Px04Fk4ko0sa1d4cY8hv2Q116YR9iRfa+EkzVJTMDYZ0IfWg8uK2I74J+EiIOfNdg2y5TIIxkIBUBUfO6Sb+QpCGnwCswg2Ny8um++oWSEJkVLkgGHmI4vU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D7R6Vpr32e+doEfZOqSuRFnsC6jjlrL9FdkeEW52AzdiNvd813WsG3S/TunV?=
 =?us-ascii?Q?WRvNaE9uIgwfp+AZZvFW7jqHgwcOm8A6bVMkAXYibo+QeNTI6O3HgYJ4LFJz?=
 =?us-ascii?Q?TjsL6E5bj3DJfvHjqFE6Mh9YWUZgIVPYtHkkmw4dcQLau7AA74sanEJChwA5?=
 =?us-ascii?Q?4uKO44qk6qFSYwzg2+AftESyqPAOJsh44UjNoTe9gj2E6gQAyc1jA1oNrA/p?=
 =?us-ascii?Q?Cg3P0AqjqLOd2Nt4Nn3ZD1FJw3x/iX2V17dLBRvRPG7sWvFZTe76U8p+NYNB?=
 =?us-ascii?Q?3Pkbp2dVskGpb24HhTcZjoiepSzCWJu59kiCrwFaaYnHyev0ffcI1Y+tds3S?=
 =?us-ascii?Q?4KwU9pi7Jar93edj2YfGG9h/qLaV14/x/Ie2kSgr6028zsMUEWj6khhQXSXy?=
 =?us-ascii?Q?QgkF5ZVGZg+lmg0jeOBbLTI5g+UNzOeO82LViBvOsWA/I6k4blTGT7XzjXq6?=
 =?us-ascii?Q?Wy4TYz6/phB4aAIRteXXvPHE79N7yQtrmHzBK//fYROTp8OzNSsaaFI5rAAM?=
 =?us-ascii?Q?6cFDY1YFLcBW9fNx7pvSi3QvEghuTZexBL2VnXFAwxdXp9Kl9tjJkmxjyHos?=
 =?us-ascii?Q?/e1x6xzcNmHd7Yh1QPCCQHnbyAvYbiXO6e6Wd8dCvwoqNI4u+9Lgb2eVp6HS?=
 =?us-ascii?Q?/3PCbQf3DZ8ZQrm2Aqz647JtNKrGvWO2CD2SzPG7MGksWYpdhe4bxAVecGWA?=
 =?us-ascii?Q?beLhRA3cGdyVYw1erRRYLkgpTwO+J9YGfwEZQEPTkH//5+tTlf41qjgcjPIa?=
 =?us-ascii?Q?qOrrZOz2VuYXjXdE9PHM55HszyBc/3Z3CMJ8gMekD31WGTAuouQHpQUFOdyg?=
 =?us-ascii?Q?8X4HWg9Euw1n+HuHptOz7mUYcuIJJpZmhutrCy1Pr1ELGf2/HpACiyOSxIxQ?=
 =?us-ascii?Q?p1uEZYH/ypAwLo+St+m2wCMIfqqY/qTrE8bV9bzwFxvrce24WD+bYbUaa+2V?=
 =?us-ascii?Q?rJJhHG47PkFbtCiv9Bn/po8WzXR34aM0p6SVfLESwqlpXOcd80UsqSaGjkUS?=
 =?us-ascii?Q?ETFk7OHmE4CRonbHWY9uBGuQ7e56zl0BTzdOvZZpxuSNwHhOfbbP1vPMPn3i?=
 =?us-ascii?Q?XypBg6ZZqAoVKa8ASARLv7hxhpl+NhJUYuW+DmzDksUOVGEUqh7UXGduZ4aP?=
 =?us-ascii?Q?U+R/DjnucIl/Ji+NLACHXf8BZuAqrtIT/bWzuPX5VKqhOIdAXeMBtb3sHzcj?=
 =?us-ascii?Q?BMl9qBPijldcbGLexTYeXe1HX6jCCc/SbGCekW6ZVI1TIEZcQGgMA5efngZv?=
 =?us-ascii?Q?bk0bmg2MOc12TbrykgWtUMhLFS1FuMYkK3K6j+5NpAdR+YxLAPXYkv+D7Aky?=
 =?us-ascii?Q?NOb+6TeCRA2/nJgVCOK0aDs9bU6hf/e1emO6SrtFatq/JP7xTJz54cx9YGos?=
 =?us-ascii?Q?y8tsppvpsefXF5Q98jmCi5BL362nJwyW7OlbH6yNQ4lnXSHPkVQN+c62Cmcv?=
 =?us-ascii?Q?3fNEadikavWCt1Yj1E0I0LR+K5fbwencQczd6aM9P2mVzXon8HZB5xpHWB+L?=
 =?us-ascii?Q?Mv0uYhMNruoiMw2YF/wg5SNQo1IYXrhQDwFTTfaPdzlohFcj/o/tFLs/duh0?=
 =?us-ascii?Q?JlNzfz+ajvoBv4ClUdeGw0Z35N3qc5gpJ9FjUamnX6hxKQV7VWc9s7ywR7YU?=
 =?us-ascii?Q?ng2U3TaLqXgayKk+xs4td8zSzCvSIhAl/990TL2FPe3HBXIRABijpuPFNRlG?=
 =?us-ascii?Q?Z21S/hS/g8VhK4mSVj4crepX9KzCEiJesjBuHnMw4n0wAib7TtDGqNOOMDVG?=
 =?us-ascii?Q?fVN30SD/bA=3D=3D?=
X-Exchange-RoutingPolicyChecked: C+UGVsF6RrjeBe7fGMwmJLmPenRHJJx+2tSMZM7oSxWy5JTG/qkRC1bJNJkMf+nWWFI8HjpypYFEzZ3m6315KrChfVeILlA8XYG80dhH6gDjZcc+F1xwulg2fk6JI1q4SYbFUg8mYqM/lTI8kU/XEtVK5F+0WCTUU2F5EFfkBQAFetL3MU4Jcdyz/9grHYYEWgGQs89AypgZFaC7xoFpfTbr0MlFrnQs4Db2AOSvhlqRyMbts8BmiVUqgPIUDvz7zO/GSex4rg5LOBb5iqOYH5Id2dSQKWCHd5jxmwXFkNdJIz+6b8JdRjz3t5E0rAKix3dLawXiTDfPJ7kqXJtr4Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d7e7eb-6f64-42fa-a0e7-08dea5254d83
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:36.8199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yG9MVaQQcQawXOD8jnNnvAXSr1o+bEQZdJauMl9DP8I1mppteM9IzS+4oJMWqmiCr19LjRCBZD3JgKxODiyZBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: 07278485519
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add a helper to look up a link configuration for a given iteration order
at a given position, returning the canonical index and rate/lane info.
This prepares for iterating over any set of configurations in a
specified order.

This is needed by a follow-up replacing the configuration index based
look up in the fallback code (intel_dp_link_config_get()) with the
helper added here.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 73 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 63 ++++++++++++++++
 2 files changed, 136 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index f17e30e84901b..48b57aea557ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -15,6 +15,7 @@
 
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_link_caps.h"
 
@@ -309,6 +310,46 @@ to_intel_dp_link_config(const struct intel_dp_link_caps_config_table *table,
 	config->lane_count = link_config_idx_to_lane_count(table, config_idx);
 }
 
+static bool
+get_table_config_by_pos(const struct intel_dp_link_caps_config_table *config_table,
+			struct intel_dp_link_caps_config_order config_order,
+			int iter_pos,
+			struct intel_dp_link_config *config, int *config_idx)
+{
+	if (!in_range(iter_pos, 0, config_table->num_configs))
+		goto out_fail;
+
+	switch (config_order.dir) {
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC:
+		break;
+	default:
+		MISSING_CASE(config_order.dir);
+
+		goto out_fail;
+	}
+
+	switch (config_order.key) {
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW:
+		*config_idx = iter_pos;
+
+		break;
+	default:
+		MISSING_CASE(config_order.key);
+
+		goto out_fail;
+	}
+
+	to_intel_dp_link_config(config_table, *config_idx, config);
+
+	return true;
+
+out_fail:
+	*config = INTEL_DP_LINK_CONFIG_NULL;
+	*config_idx = -1;
+
+	return false;
+}
+
 static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 				    u32 disabled_config_mask,
 				    const struct intel_dp_link_config *max_limits,
@@ -370,6 +411,38 @@ u32 intel_dp_link_caps_get_allowed_config_mask(struct intel_dp_link_caps *link_c
 					&link_caps->max_limits, &forced_params);
 }
 
+/**
+ * intel_dp_link_caps_get_config_by_pos - get config at a given iterator position
+ * @link_caps: link capability state
+ * @config_order: iteration order
+ * @iter_pos: position in the @config_order iteration order
+ * @config: returned link configuration
+ * @config_idx: returned config index
+ *
+ * Look up the link config at iterator position @iter_pos in the order
+ * described by @config_order.
+ *
+ * Note that any mapping between @iter_pos and @config_idx is an
+ * implementation detail defined by @config_order and must not be
+ * relied upon. The returned @config_idx always, regardless of
+ * @config_order, uses the canonical configuration index/mask scheme
+ * shared by the link-caps API.
+ *
+ * Return:
+ * - %true  if @iter_pos is valid, storing the configuration in @config and
+ *          its index in @config_idx.
+ * - %false if @iter_pos is out of range, storing %INTEL_DP_LINK_CONFIG_NULL
+ *          in @config and -1 in @config_idx.
+ */
+bool intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
+					  struct intel_dp_link_caps_config_order config_order,
+					  int iter_pos,
+					  struct intel_dp_link_config *config, int *config_idx)
+{
+	return get_table_config_by_pos(&link_caps->config_table, config_order, iter_pos,
+				       config, config_idx);
+}
+
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 7fe0e4a028f26..79cd50db90ba6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -11,6 +11,64 @@ struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
 
+/**
+ * enum intel_dp_link_caps_config_order_key - key used to order configurations
+ * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW:
+ *   Order configurations by bandwidth, then by link rate.
+ * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_NUM:
+ *   Number of ordering keys.
+ *
+ * Selects how a caller wants the configuration table to be ordered,
+ * together with an &enum intel_dp_link_caps_config_order_direction, for
+ * iteration queries.
+ *
+ * See also:
+ *  - &struct intel_dp_link_caps_config_order
+ */
+enum intel_dp_link_caps_config_order_key {
+	INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW,
+
+	INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_NUM
+};
+
+/**
+ * enum intel_dp_link_caps_config_order_direction - iteration direction
+ * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC:
+ *   Iterate in ascending order according to the selected ordering key.
+ * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_NUM:
+ *   Number of ordering directions.
+ *
+ * Selects the direction associated with an
+ * &enum intel_dp_link_caps_config_order_key for iteration queries.
+ *
+ * See also:
+ *  - &struct intel_dp_link_caps_config_order
+ */
+enum intel_dp_link_caps_config_order_direction {
+	INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC,
+
+	INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_NUM
+};
+
+/**
+ * struct intel_dp_link_caps_config_order - configuration ordering
+ * @key:
+ *   Key used to order configurations, see
+ *   &enum intel_dp_link_caps_config_order_key.
+ * @dir:
+ *   Direction of the selected ordering, see
+ *   &enum intel_dp_link_caps_config_order_direction.
+ *
+ * Describes an iteration order for link configurations.
+ *
+ * See also:
+ *  - intel_dp_link_caps_get_config_by_pos()
+ */
+struct intel_dp_link_caps_config_order {
+	enum intel_dp_link_caps_config_order_key key;
+	enum intel_dp_link_caps_config_order_direction dir;
+};
+
 int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps);
@@ -24,6 +82,11 @@ u32 intel_dp_link_caps_get_allowed_config_mask(struct intel_dp_link_caps *link_c
 
 int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
 			       int link_rate, int lane_count);
+bool
+intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
+				     struct intel_dp_link_caps_config_order config_order,
+				     int iter_pos,
+				     struct intel_dp_link_config *config, int *config_idx);
 void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 			      int idx, int *link_rate, int *lane_count);
 
-- 
2.49.1

