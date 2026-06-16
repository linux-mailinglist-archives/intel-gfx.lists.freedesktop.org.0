Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2hSTMIutMWojpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEA369514E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nD8W0Xqm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA4A10ED20;
	Tue, 16 Jun 2026 20:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1503210EB5B;
 Tue, 16 Jun 2026 20:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640584; x=1813176584;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=tJe1KMfQI48eCJlR8EZFbm4hHDNN2VSrHfAGAHdi54Y=;
 b=nD8W0XqmRjaHdNUS5DHylfxcRNps42AY0JhEUfLav9av79apSbPPmrEa
 w8/XxKF+7JycVqscMKrVd2v9OygfLSTicad9mZGcHmaP0G5j6N+v1f3II
 T/qCPHNZHWJM6hawmPIqSozfce9GenM0OVK/mnm9k/+g6P0bTdKeoXhji
 epn6wf+9DhF/62qeYNjyickbt2HTnbeU7R8uCwlsU7gAQ8HeECjfuO+EI
 sF5W979k9k9/5C7puwtNlUM0xJl+kmcCF77BR+9Xhb+RL5RYjCj4El88j
 XeVDhsBDPdgZdYt4GtxZsFMgsSmTnUiFQipg+SCl3fiuZcSjDjfKX8Otr w==;
X-CSE-ConnectionGUID: DIlXEjpNQQyOoLKJqrRTpw==
X-CSE-MsgGUID: PmQ2LbKuTeuebec7fNI9Tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81427280"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81427280"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:44 -0700
X-CSE-ConnectionGUID: Trs/jbyfQx+U0f6TmLoXQw==
X-CSE-MsgGUID: 3QkXhiTFQBeZjTZyEZRWrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="251786246"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:43 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:43 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qvDRHBF0chBi5N2Ic17ghn7lZt9s5neIN5ZczVEegkDHPKzDsiuXbrwR1f2lrOR4XiWyL56U6K+JD2MsmNuIpYktl6UZPUwID8fGMtzFAVcPXlYCQtnxzM4ZgXIR6yqo50hhVRgSwK3uDIWtTU1dIsp8AF8aldZleSNCQRa9PwAbfHAt9bpeemRm61853cA/18FsRVAC7yUpfrD1ooU657TZ0hMSpjHkxnEEsFVp0/5N1IRY1eLdXoRy6HXYPKF5AN7CobAxcf1kTo+636vXsrRSsc5sikzhbFFI0blujBcH3MXR5KUN53YAi34WIcjrtDfZ4HHKqzw2XUUDCL567g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xE+hSxVNf58B3lZbMyL9RAWJVjSJMG+3I3zwuTae6pM=;
 b=BlwEeEAOxaier1+5EKAgaw3Vj0yCl2AOa+enRGlQSI1YJOlozDdJNcgZ1nGeT+LaK26Ois6cUPoYuk7X+DqVt6zUcjlsgTiG7HuOZqj+hqOoLc9662djgzw0KYsVP39B6DJ98ed6R4fA8B4Tt/xg6WdWs6oECJE8wRbbSyyayz+xvM/NGqww29yrp4V1iuQCY/XED3BJq4jgfM+D1eQJ2t04Gbo595Cgqe4ulXihIvuadQ3Z1c3rsW9TQTpz+DIUgBO93WtuqT1KifzRaPXvTssyhRBmUU60DnHCz9V3GCo1Q86vnlc8AVEwFOfnr2mE6iTPh4OJtVSTq7mpvmDKuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:34 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 10/28] drm/i915/dp_link_caps: Move link config helpers to
 link caps
Date: Tue, 16 Jun 2026 23:08:30 +0300
Message-ID: <20260616200849.3534628-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d1b562b-8088-4a5b-2e15-08decbe32d41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: prasPDl3Z8eW+8/B2IVrA8y2sxecoKxHHAPp2ED7+rzPtfpLAcqCHktMGvU1D7o12ckdSK7Bco0sOFrarHsT1AZhFkAvbdEEbtPNFWAuky51VLRH3cchMhMWWUYreBOeK3r8/DyKHu9X7TZ7SiNtX8bsUz7ZCm8YVbGlakpPftBrb3HIKMm9a7lVDYb7BEc3ReJvcwAR7XiJUlUFs6Di3X9QYpvDZOHDcEuogiTetBr6+Q2b67qyx0sq/aPRJyoQWfTNF/9LtQIncWh3KzGLjoxmUGoWUCP77+aykMahKe+YmLeTn5aQ58CdHJTx4zJNng4jYyov5i3DJOfvRJ1gr1HLMyI61LFYOZk8tIL4JlpbOFIL6noQf1wSQDM2YGB92GOCQe0ubYWTlyTrQSAh7dK9bNwIX1mIznL2i+GEnNcDBrAVErfBMl5vit1Dg+GRtYgNIvKya8aa3710VVQesGtqbOryISaozH3nJ38g3nbH2H0TjcJXEG6BQunWgGApNJK1ZlvLWtc5zM8Fe/eCr+wcuGJ89EF2+wOXz58amLE5rBBCT0wy2Kx0+1HlCMujta1D0dy6xyI6Rpg8zTxGmmHjdfT+Q6CkAC34npeTaujgRXn5oEkqJDjWZFAwF6Q3Zdn0aHu5GYdbQBxmjw0cHeVp5wGD9rN7KNyJi3e9nhvRjBJugPsWJnn9nH5mWZpG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0NsFm+UIW/myaVdW1QNdLSUfb/WyMYsuY3XnkCyrfZUKDf4WAQ5gAjhPypyO?=
 =?us-ascii?Q?AefkVNIZ0821fn8uWZw4yTN88gdg2xr1uxSEZE+5Nr85w51Jb5ktPTcEX9sl?=
 =?us-ascii?Q?bgslvul1wzd9mCtfwzbDZNeQeB7usCRrzky4cBlPtLC5a03xEUNoU1L4EgbT?=
 =?us-ascii?Q?tctRnkfq/bNBlKxekPwqW++mKtzBXvg/Ckco4XWZcPskb3jNrrTdhLOYttBL?=
 =?us-ascii?Q?UV7yiPaxAoCCpWSXMtBuoHVzNAun4P+v61u1JDcwQFqWm4f8q/2xuItj0zkL?=
 =?us-ascii?Q?IA1gY4nGNhAClBgCkDMfsN8Q+I1IGVwm+QqYzga6/KUnD9GwRfsDIgyjI95o?=
 =?us-ascii?Q?cxuSIY1HpAyuz55FaF8+ndXCIMrrhgMI7PUGdtI3oiKMWaXghpmL+5jFRZEG?=
 =?us-ascii?Q?FeZrWQEOp4GPLeVaXcYwe2FtmMikMwQq3aYCdaydgLn7vKP5zr6ReieCDBR9?=
 =?us-ascii?Q?046DCQt4qR9I/9+IINwHBhy18kaz1rwVgZfH7fmF+jjtR6d1TYkieXMyUIoc?=
 =?us-ascii?Q?pYp87LdDEif9iThCEluuw7OFAyWR6chcS2Ixvbtjb7oi1CZB5i5qxk7S5ruP?=
 =?us-ascii?Q?DHlJn3Rg9LthjmDVylRAaqp1fL2Y86a6xs/7h3dyEp+1ffj6Lk7VCN8RNIKL?=
 =?us-ascii?Q?3ZQ4lPRTp9iD0gLbmGBtRXB3eKYB63gXrNAOYbuSV9DKLeK9JuQxnuo5eqo3?=
 =?us-ascii?Q?M2PCVUofkEm14gRatPQ+C3AFT8KvIjFmxRaeWg9YKWSfbDlRPqJM9YdhixVa?=
 =?us-ascii?Q?X3TNUBblLrLn9JlXKd5FoLkDLkAhmnePxGSkx8NltUa9ddb+vehNMk6IofDS?=
 =?us-ascii?Q?efOMT3eBOEEaFnbUNDHEgUG2bXyn5buMyqBHgiXQbzIUpJsGElekSFCqql8F?=
 =?us-ascii?Q?qCe055HgAZU5myleuoUuGqHsih8iHBuOSN/yVNDgcZ0WDqQNx5QzQBj0ngCw?=
 =?us-ascii?Q?5UBPOTMESS3zIQd5JFweMGFUjyECs/+o8siEMRffUuW+Gct/U7Za0N3YJOfe?=
 =?us-ascii?Q?ho0Z3WlCDK9yeVZQNRxtkWrvqzRtA5FZ+RgC8TWVY63q7rxFmt/owNRZhqYp?=
 =?us-ascii?Q?2Kpe7OkBMNvrdCjZMrGA00CYSlFaJG3uOZuOlTD+yiezt7ZR/g33V06cXbwl?=
 =?us-ascii?Q?88ZwZNsNQUvRYe7ocHpD32q9s3PAi/q5oaDAXUD5OXDVCFx9RqUM0uEKEcq/?=
 =?us-ascii?Q?6msMPxbyDcoM1Aut389BeMiM0wtlHEpRoFNitxScF8dG8e353nyp7zrF/FKS?=
 =?us-ascii?Q?o4KHj71fuxtu2b7QF+/sFCiubLoS+VswIRo4traWZb7QJ8GuPTDYomJWlmLF?=
 =?us-ascii?Q?RiCXa4/j7BLCd0k3E/63VnBfrcIrvdrgTzwLgDJ53mqm7Ois8fzVsZ7ddJVd?=
 =?us-ascii?Q?Y0c65BTm8WhbNnJDk2af1Gw/H+JOhKNzkiTqZZGujJL8r1ltiqyVBisOJ2oL?=
 =?us-ascii?Q?7dd+2A7mFt3TcSgcRBtZTJ5tm/JVthlsTZAUzNjxd/C6t2nzn/Wv13LfDW62?=
 =?us-ascii?Q?5EP1cJWyUuZxFcnY384g/i91HAC7h8tJpIcBR2RjOO+6ZGF7x6nyFSCzxQAI?=
 =?us-ascii?Q?SHCxmZKjwxNcc/B4ai2KAAGlcTmeaJaTehk2XUcqBKBr+7K1Z5iaZ0r/O9Hn?=
 =?us-ascii?Q?j8RHTcNY7WLJdlbAKZ05i9h7ALIRNlmZKWYEyPTgl2oggKE/F10HcLeVJ4F2?=
 =?us-ascii?Q?tiV1YlT0aoY5saG0ZjCChDegyQfo5ENi9mbgO7CMsIwio4xX61zoqEc1Lzz2?=
 =?us-ascii?Q?CzxMAFFS/w=3D=3D?=
X-Exchange-RoutingPolicyChecked: ZMzOG1LScxegQzVtgguF2Dr/8l93SC36JerElsjxgal1trDKbSRV9X7oTVYQrl2+vovrOr7mq3HHr2yoKAoCNXRpve5byYsm20TpyXorPc9ZjZLqqAMQIGChmV9VucZZDNz0iVfb+leUqFR3RqD8VNT7ALYc99+9JL/ySJ6sbL0LChJQOEt1PjyT5BHz+1v9zGsSVceoKnaAPE+EKy346hz0FmqsXjMgLchT97YPvaX0EahREnkghapuYl793Fb1Ggi6pCBAaVeoBc1U9vKnq/BRPoRbUUdXHYVK/XW3F19dCg8zcQignu357ZNbjvmtx2WSQq9O4OOkQ0TiTOht7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d1b562b-8088-4a5b-2e15-08decbe32d41
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:31.2598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SRC856EwfRsHLX8eIEPGLzxAGVuqUKEj7MKIftg4N0PEO26mbjXaOtlkq24kYnnn28DjkHCWm3XzDoO+JcT9Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DEA369514E

Move the helpers handling link configurations to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 101 -----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 -
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 102 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   5 +
 4 files changed, 107 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c4ad386acc6db..c4b650431eff5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -33,7 +33,6 @@
 #include <linux/notifier.h>
 #include <linux/seq_buf.h>
 #include <linux/slab.h>
-#include <linux/sort.h>
 #include <linux/string_helpers.h>
 #include <linux/timekeeping.h>
 #include <linux/types.h>
@@ -677,106 +676,6 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 	return -1;
 }
 
-static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
-				     const struct intel_dp_link_config_entry *lc)
-{
-	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
-}
-
-static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
-{
-	return 1 << lc->lane_count_exp;
-}
-
-static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
-				   const struct intel_dp_link_config_entry *lc)
-{
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
-					 intel_dp_link_config_lane_count(lc));
-}
-
-static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
-{
-	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
-	const struct intel_dp_link_config_entry *lc_a = a;
-	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
-	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
-
-	if (bw_a != bw_b)
-		return bw_a - bw_b;
-
-	return intel_dp_link_config_rate(intel_dp, lc_a) -
-	       intel_dp_link_config_rate(intel_dp, lc_b);
-}
-
-static void intel_dp_link_config_init(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_dp_link_config_entry *lc;
-	int num_common_lane_configs;
-	int i;
-	int j;
-
-	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
-		return;
-
-	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
-
-	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
-				    ARRAY_SIZE(intel_dp->link.configs)))
-		return;
-
-	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_configs;
-
-	lc = &intel_dp->link.configs[0];
-	for (i = 0; i < intel_dp->num_common_rates; i++) {
-		for (j = 0; j < num_common_lane_configs; j++) {
-			lc->lane_count_exp = j;
-			lc->link_rate_idx = i;
-
-			lc++;
-		}
-	}
-
-	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
-	       sizeof(intel_dp->link.configs[0]),
-	       link_config_cmp_by_bw, NULL,
-	       intel_dp);
-}
-
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	const struct intel_dp_link_config_entry *lc;
-
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
-		idx = 0;
-
-	lc = &intel_dp->link.configs[idx];
-
-	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
-	*lane_count = intel_dp_link_config_lane_count(lc);
-}
-
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
-{
-	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
-						link_rate);
-	int lane_count_exp = ilog2(lane_count);
-	int i;
-
-	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
-
-		if (lc->lane_count_exp == lane_count_exp &&
-		    lc->link_rate_idx == link_rate_idx)
-			return i;
-	}
-
-	return -1;
-}
-
 /* Return %true if the common rates changed. */
 static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 8cc6ea04e000c..fdf9bd88859e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -108,8 +108,6 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_rate_index(const int *rates, int len, int rate);
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
 void intel_dp_reset_link_params(struct intel_dp *intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 8ecdc01af70eb..6a37ba8c35e27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -4,7 +4,9 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/log2.h>
 #include <linux/slab.h>
+#include <linux/sort.h>
 
 #include <drm/drm_print.h>
 
@@ -81,6 +83,106 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 	forced_params->lane_count = forced_lane_count(link_caps->dp);
 }
 
+static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
+				     const struct intel_dp_link_config_entry *lc)
+{
+	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
+}
+
+static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
+{
+	return 1 << lc->lane_count_exp;
+}
+
+static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
+				   const struct intel_dp_link_config_entry *lc)
+{
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
+					 intel_dp_link_config_lane_count(lc));
+}
+
+static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
+{
+	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
+	const struct intel_dp_link_config_entry *lc_a = a;
+	const struct intel_dp_link_config_entry *lc_b = b;
+	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
+	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
+
+	if (bw_a != bw_b)
+		return bw_a - bw_b;
+
+	return intel_dp_link_config_rate(intel_dp, lc_a) -
+	       intel_dp_link_config_rate(intel_dp, lc_b);
+}
+
+void intel_dp_link_config_init(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_dp_link_config_entry *lc;
+	int num_common_lane_configs;
+	int i;
+	int j;
+
+	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
+		return;
+
+	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
+
+	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
+				    ARRAY_SIZE(intel_dp->link.configs)))
+		return;
+
+	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+
+	lc = &intel_dp->link.configs[0];
+	for (i = 0; i < intel_dp->num_common_rates; i++) {
+		for (j = 0; j < num_common_lane_configs; j++) {
+			lc->lane_count_exp = j;
+			lc->link_rate_idx = i;
+
+			lc++;
+		}
+	}
+
+	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
+	       sizeof(intel_dp->link.configs[0]),
+	       link_config_cmp_by_bw, NULL,
+	       intel_dp);
+}
+
+void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	const struct intel_dp_link_config_entry *lc;
+
+	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
+		idx = 0;
+
+	lc = &intel_dp->link.configs[idx];
+
+	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
+	*lane_count = intel_dp_link_config_lane_count(lc);
+}
+
+int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
+{
+	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
+						link_rate);
+	int lane_count_exp = ilog2(lane_count);
+	int i;
+
+	for (i = 0; i < intel_dp->link.num_configs; i++) {
+		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
+
+		if (lc->lane_count_exp == lane_count_exp &&
+		    lc->link_rate_idx == link_rate_idx)
+			return i;
+	}
+
+	return -1;
+}
+
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index c6a84891db464..dab956e804b95 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -17,6 +17,11 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
+int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
+void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
+
+void intel_dp_link_config_init(struct intel_dp *intel_dp);
+
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
-- 
2.49.1

