Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJu8ENOt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF848529D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8C210EBCA;
	Tue, 28 Apr 2026 12:53:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NnjkwUEP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA59610EBBF;
 Tue, 28 Apr 2026 12:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380814; x=1808916814;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=qM1wrnEKcoPnGlw4/TUeLstPCzAEpe6n6mZ5YARW6K4=;
 b=NnjkwUEP4uPG0WLwS6jdCxIJF3fuqamHXwO11B1GdFrfcZyXDWblxvBK
 bws+MMWoHy3hw/QRwpqpUtE3YSe+TrmsdB+tGed0qHFFHnJyiK5p+ikBr
 Fr+43CqiU9vRrLfdUPuwMDuRL4aD3h1CEaCDgnLET42JlPwnF7+aqSmmH
 3FPM0tG27Ix6wdtdUwvPypEHs6h62pxYZesNcv8+dvpkCUgaJ8cwncXc6
 wMA45R2BEwmCD5eV50LFH6XszLpHD1BO1SzZb33BN+0bz4dm+N66SuFFp
 qMPLxuh+Bt8szizrzvsbP78+m4dAb+QbmcsfcF1jYkyX/XY+jNAK/bvHU w==;
X-CSE-ConnectionGUID: Z0jnfjCrS8aYPh6ca0zXQQ==
X-CSE-MsgGUID: DI+lcUe8R9aNm0G0DDf+GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398633"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398633"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:34 -0700
X-CSE-ConnectionGUID: yTvff4hlSSKP6ZO2XydCSQ==
X-CSE-MsgGUID: 5m574AaLQR6bB6jFgnMrRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911369"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:33 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nU4lMPfWna7M0OWQyPOYMu7/A+wDG6S5127bSLu/9eUiD7hQSdiGaXMXTp6NXFldqGPc+y1qC1XnTI7oZFatnACyQR0w7cOrsdwBuuy9cgYR/CI9UNV1jD1f1ELpyNSWnbSF99bDM772ShlY/pj/7P5mA0MkLVOF6hI730CkNt8+VPs4utS7E45yR7w8c8W/sRcIEk3gpKqqrWs/3b3uqMKPyoNY8cKCaKI2Tl2KGO4O5VYxHJdzrQB4pZPnJb/udGCdBOXzGORl1uMnERFTl3FClv2V+vXRKpNqzWKOa3haXNWFh6dt83q63sYs3reoomhkSPZaI9zpOqxOGnNK9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6AWCjF1ZmueeZ68aFNeIB6e2VxyH15k8KyUHATH2EOY=;
 b=fFd/pUGFH75mnQsj2wq8rrr9d/tu9Ew+/hiSYXRjUy/i6JjficMhh28NJMGeJzTmPDF7NX4HrYxEeydIyGxguyzm4AaBP9ohd83YkVejWS14px+XumMaSbtd+82s+5qEiwO2qIMIgWUrqoFX7NemOGgqJUzkQrUH+mts8/+zPsDuLWYwHL7FdmTG52uNkcBdYdF9Au+VGC8W5G+lwUHgI+7qHGaLxFPdTyIZng/2L3CXTDXo7yXgwD392jCDrRHeI+wZh1eqOfLNrwHMy+WtdJjY8dG1XUF2kw6h6Z+t9cLYRR1FyMJf+1XwGzT7JPWnahP57QBY/NlrWpAWRV7jGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:30 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 030/108] drm/i915/dp_link_caps: Move common rate helpers to
 link caps
Date: Tue, 28 Apr 2026 15:51:11 +0300
Message-ID: <20260428125233.1664668-31-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 5371b9ac-3286-4917-54d4-08dea52525ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: OpCDeyKpekRnCWIjkciYiJnLiRPDoeUEO49HYBXYqJzNxjPlxw5pov8/oL9z+8x6GvGJP/3a8MqO54L2wx04XfxRzPKXoaAv89Oecclmx2JobOnZWT1GjS++VJ29KxIA/cbrfVhK6aH0kcK/8DMpSu8OZjgPMftDHPdhWm/Sy0IZk4ePj48nzWhjFrxbsAPqsl4R9buwuj5tmB+lQi61hmDphW0Vi0Sz9ZzN/iSs2HyyG1gGoXm44R0gTVC47kC0cGS3yp1wdNmuJ1pjYNdi8Jx+SU4eUVGsSHQlxk5Z380B32le7cMqZ9d859+LYKg3876fL916aOQVvFAJN7a2vuePDucIPQOI/TaN0GEtdEUgjKd6OYzTH26EpNqGKynknttU+BK1hUhEgHB32doC/nOTKRW40dKk1TgcLvNWEpR8wRV3QPQxmmmzjz3G6/5hnHyobzXGXUU8ejfeR1kko1xFIdIqrsFuAw0acaWKsOUsERuAN8rlmmLSu3nEdmQuiCjkF/CDApa4Z8MYLSKpWy5Z3akAtqfhV/6AU5uCCgUgSb0nb0f8sNGbGQW02WJOKTPjoqPaQZwkeqaL1tgTrm3fBYVFYJ9Ps2aJXfSPpOaVQ5t3NZexYOSJsPv0MUGKpEEA8x3Ko3bdLOAAEMfnbDmYWMhVsOAxK70HrCA83xguLvwCqUk9nSaz3pnrxarnz8Ya+RwW791wW2Su189oGRx13huieP4TC6WPH7TVPa8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZRbjEkbMdnWFKV2V9oH6aBrRPwFPNhpqerJ9xrVDEHAtyXTEXSGIArK4qCoB?=
 =?us-ascii?Q?2/c3zKw4aZyVO3ndpm3nrfKhcZRN8a1dGix/Y9DS91wnHQ8jXnsLDq/+MkEz?=
 =?us-ascii?Q?5XgqA/Vq6fdjdJP6pwCc4/AkyXEuuO/0dN3X3EtEPE8ZXoMO3hMxdcXgdDxr?=
 =?us-ascii?Q?xpJUllfVXmQ0U0Y9HhohqUMcLvAbMPvX1vXlpXaGhMVcmuu4KSCnm4yLcBvd?=
 =?us-ascii?Q?eqJ/PnvkHQXCQd7DlTIzwWZlyx1fwe5IdurECCmw9/TW5ku1xxZEi4RlXzuR?=
 =?us-ascii?Q?2XyXhKvLuIOVji0mpTCZzllNc7LXKxFDM+gfDZz2x9XF3CyaqUm2buA2blu3?=
 =?us-ascii?Q?mrCEso6OXydi70CTX5eRSki3tmD4yTfr4G66QITx/faFqRjLgv6x3GE5hanx?=
 =?us-ascii?Q?hc+DJdNXhxhs/U3APmtFzenECoQA7sXLCtnzTRayy8e0Jkhq3sxnHbs+sP5Y?=
 =?us-ascii?Q?7q8hnM0g2fvra9NdlW6RlMney+D4iRFNAjWbDoMzSlH8jAykw/STvo3tioPa?=
 =?us-ascii?Q?ehoDYNZL50qbYV3oIKOA2ahfFfauYLxrHc4xb11siU58I8H+bY5J5sUYtpUf?=
 =?us-ascii?Q?ixyX7ilMP7i9FIel+XTl4dajj90HsMEeSoJjOSewsoizXpOr/CG0ADajTFo8?=
 =?us-ascii?Q?3jJ5Fw0lQsurSWz7b5yCSbRAJ4q1TfIdtLA1Pv7ej+EFup/SUqUKEaXmpujj?=
 =?us-ascii?Q?uVWckWsDqJjxuGvwAtoCeU2PybMYsbyJLOdhmVLbAU4XjilLcOHg725pgi/s?=
 =?us-ascii?Q?RhnYwv75UaCYbkXyu2ogM9guZrvKctzgeSnLFjyD8FXt0CJD+60qS7cuvrkv?=
 =?us-ascii?Q?6b2uHovk0/Pa5ZjXIzNxMpxti2kda00PxgyaJXqv3xmw2lDG1gT1c6efnIUh?=
 =?us-ascii?Q?BCcViIn4d0Z+C3Pa5SS+B9YF4IZgtj5EW5NyGSYbTFUXV/6bqEFi6eei1mb2?=
 =?us-ascii?Q?X9qReC/wwifEH9m1HBOFU8X76nOa1DCZQiFaz9tKRCFsxl2/sBd7MGuRc/k/?=
 =?us-ascii?Q?GFM15Gj1xvcV8QTihaDuiChm+eSXebWwAD8RLe8GYvZFo9VRKsrg0Ko/cZMw?=
 =?us-ascii?Q?FApF5bv+WI+oYoSTYdaT+Sja5PUjCE5Q4splDZfkb8vwlnhnGFtV5g+3tSOZ?=
 =?us-ascii?Q?2NEfbcD2vCXLL8RrcbrciUAD+9V+hmPmR9G8fFdLaxxIvwuDFl3KauwadjO1?=
 =?us-ascii?Q?CwS8IITlMFM/z6X+nGe7bzldmgQg7W2lbSMyQwcGg53CU/YwFa/7qfqZ9FvE?=
 =?us-ascii?Q?IOfB0yEdKDOoxJk0SbQKinA68U7+re0qoJvbkNzfBESxbX4botNvWtTrJDSq?=
 =?us-ascii?Q?3m+KXp0PT0lnxyQeyG+JatNwUFW88td2J1MQMtKma7bGMY60uZTlEvSCjl/a?=
 =?us-ascii?Q?8+JIRfSGcmT5ZOVTeuoFoe8OR/aX/e47z8o1AMS13UJvkAA/ANvdKoXGSe0a?=
 =?us-ascii?Q?nkrkLCYhvxI/WHqdREfo9BejG95CY/jCQbNTKvvNrmNMZgm21JqtL/N5QHST?=
 =?us-ascii?Q?ccbXeGai0Y7S+3R/iooVUmU8ErpwNxglKUlhsXHqeDJtvd+M0I59SFCqRlx9?=
 =?us-ascii?Q?a0BDqXaJ2TaeSJ4Nmgxv7HHe1fYENG7endSBuEh9Ww0YMfGu0zjymZIBXmje?=
 =?us-ascii?Q?B7OqQfwRjiHYgbkEVTakeo8WRO/4XJpNr6uijHY/Xh9f/v3oWeOC8yfgZg5S?=
 =?us-ascii?Q?UHuxflZj9x4ksjqqJU2gWFUvTj6zeCCpQpUkKM1/A/dBpiy8l/tTSVRrfw+R?=
 =?us-ascii?Q?2hAmKBq41g=3D=3D?=
X-Exchange-RoutingPolicyChecked: aDBHzN51J1qrmabEfBm38iLrfGQyFCPBo+Y/USeq9eHc4I+OH/rKVk6t+RGsxHMn/qkh9pp19VJTtSjW9yjZf3YZEU/IhhcUzU/Iy5uBHPlsrTK+/pwfGZz2xVzz/n5EU92/YoF9VHqrKuZQognv23eYbXX2jj61R9xwq8ZiOpTtorUWoKcddkeInRNUlr94pOHcfrVIrbhm7gIGTr0S3usuAc0BI8607CCZHTY9l+nE+PFFvdcxWB5Dve9dd3OJcVa37YhMs7TKU0IS1udU35XVUc7NYuf51ylO9j3d1Tf6faJG582CO90ZnMlpJdf1j3UwpnaIG4Sjv391Zjc3RA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5371b9ac-3286-4917-54d4-08dea52525ac
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:30.0259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: seqdMh0cqhqhl3IVxJihwz+Afx18T4huDGs/H+qgoHKO1cirQytJtHBimZ6Sg/5diLohuqEjrTQC24zukHeO0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 5DEF848529D
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

Move the helpers handling common link rates to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 27 +----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 30 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 ++++
 .../drm/i915/display/intel_dp_link_training.c |  1 +
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  1 +
 6 files changed, 39 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e63e341aa5c8d..1f903f9acec15 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -314,7 +314,7 @@ static void intel_dp_set_max_sink_lane_count(struct intel_dp *intel_dp)
 }
 
 /* Get length of rates array potentially limited by max_rate. */
-static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
+int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
 {
 	int i;
 
@@ -327,31 +327,6 @@ static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
 	return 0;
 }
 
-/* Get length of common rates array potentially limited by max_rate. */
-static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
-					  int max_rate)
-{
-	return intel_dp_rate_limit_len(intel_dp->common_rates,
-				       intel_dp->num_common_rates, max_rate);
-}
-
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= intel_dp->num_common_rates))
-		return 162000;
-
-	return intel_dp->common_rates[index];
-}
-
-/* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp *intel_dp)
-{
-	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
-}
-
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 {
 	int vbt_max_lanes = intel_bios_dp_max_lane_count(dig_port->base.devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3c0d229eb1f55..8f7607dc412d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -97,14 +97,13 @@ void intel_edp_backlight_off(const struct drm_connector_state *conn_state);
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
 void intel_dp_mst_suspend(struct intel_display *display);
 void intel_dp_mst_resume(struct intel_display *display);
+int intel_dp_rate_limit_len(const int *rates, int len, int max_rate);
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
 int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
-int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 335382d193475..5711dde8d6eed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -5,12 +5,42 @@
 
 #include <linux/slab.h>
 
+#include <drm/drm_print.h>
+
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_link_caps.h"
 
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 };
 
+/* Get length of common rates array potentially limited by max_rate. */
+int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+				   int max_rate)
+{
+	return intel_dp_rate_limit_len(intel_dp->common_rates,
+				       intel_dp->num_common_rates, max_rate);
+}
+
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (drm_WARN_ON(display->drm,
+			index < 0 || index >= intel_dp->num_common_rates))
+		return 162000;
+
+	return intel_dp->common_rates[index];
+}
+
+/* Theoretical max between source and sink */
+int intel_dp_max_common_rate(struct intel_dp *intel_dp)
+{
+	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
+}
+
 /**
  * intel_dp_link_caps_init - allocate and initialize link caps state
  * @intel_dp: DP encoder state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 050b279463d6e..3248777d1287f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -6,6 +6,11 @@
 
 struct intel_dp;
 
+int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+				   int max_rate);
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 810227328d002..9572ea509a8af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -33,6 +33,7 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_encoder.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 11712a151f729..64fd4f09d1cdd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_tunnel.h"
-- 
2.49.1

