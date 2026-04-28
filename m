Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAZpCh+u8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC17F485501
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F1410EC6A;
	Tue, 28 Apr 2026 12:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kX+6vcWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5819710EC3B;
 Tue, 28 Apr 2026 12:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380891; x=1808916891;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=slr6eQ05PGOJZAW6VVC1IlffGOS+rsIB66j5HTUGu3w=;
 b=kX+6vcWOK3sWYYmp1u2Yh2p8UVDrBrfrSxxBD0Vw6rRmiQJw3ximCEke
 F6r6XCZ9ltOM3bwGtRt0O6Z5I/GVMPWb9vThQOveMCCOX1Qm61ccb3U8t
 U3rTN0x5qQ9KRhaEHAphOXNGqMl2UCDiZXoHB4Nn1dvw1UgpP4gIepvlN
 cXBGedBYfEnRYpR+2B8klvkzIwTB76l9VXfwym5HQbFjU2bEGBapaPWIq
 NQWOx6FOuvypOQv2kFbyEfZ6ZCdem+eOe2U04zrFO8sgypXklyWN1SKNX
 b1V6ljd6kYjSQLl/38//JE8V9Ub1sof/0okwgh7dX23Yvs/tPUnyZXniw w==;
X-CSE-ConnectionGUID: amg260eiRumCr9ZAciBiFw==
X-CSE-MsgGUID: Rn+kAbeERZeZVqKALbBY4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945328"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945328"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:45 -0700
X-CSE-ConnectionGUID: ptndxCajSNyWVZ3q7TVTrw==
X-CSE-MsgGUID: x2PGMNn8QYy6eI761HmMHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377781"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:41 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9OW5Ek0Yd7PwIs5Hhb8QL1+m1yHVCMfGcR8eH9jPeh5Ki9FnJy0CPY8yhJu66u9uauDVyf3me3PvDvZL0bY7lkuiJ8PNlJE4zklETX5OnLN0Vl5knT0mrL3hSjjmxi4ULTlPv4ixDOHYsEawnGh5QfeD3+Gyfd1JnyADMVO6i4EDlj7nyESGxtRQ1ozfwujwMp6Koi81/i+bYPijc8BESmS7p/18A8/TknGAhnyFnmKxcZzbUPNbezgUfSyjSiiRSYxiWzZklZkzFcnHLqnvjxwwqe4jiRkQpyyca27/VTU7lCj36jGaY01kVbN8EUrgLeMxx6qjp0yZ80Q+gQofg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Doo/xzbBJuiyh8KI9M98fRyTa3cR5+ALv530qXanZwI=;
 b=fcqMid7Cvz7s9E1rTjR4rlC8soEOL2BHF9Ct5kYwBpN5cukBoWAbfy8XJXhnz96Fqy/73sQ3ygfNc6cgPlwkJ74lFgfDky4bCusFn6Ev5HTmGiQcJIq1EXx7aB9BLs6isf/yojzL2svbnMgs34nbHl6B9V+Id+ypx3DFR8CEkWFywBsc0yMFnLB6o4R63XOLzp2bZl4Kb1l9nbhs9+oAoGQ+FGvkZGLFyv6RPzIdAGtPX9HyzbWDdWucRnvScByTZtc9T1RWhxQQTGdTcpfZTqRUJol9WSZ93KBgBdDWPtVmwpXfH5gBRySzrQsWvURBs7Po/2PeunMjTfBXJLITuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:32 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 063/108] drm/i915/dp: Simplify the modeset max link rate limit
 computation
Date: Tue, 28 Apr 2026 15:51:44 +0300
Message-ID: <20260428125233.1664668-64-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 43eb7c4b-e0fc-4cab-dd86-08dea52545a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: AL54QfZxuU5yKy8xE4BkEHfrSHrUkEnDz52bljwvgUdo4AcixbEkgR9LgaBfmqErs6r43ozbZXo9qN7eLaXliogZbpBwr4YNfn3S+cvfItHpxikFvkRCjTvuva8j5vvsKMrigh+rj4pJCCnHn2r5yWPd3S2CHZ8csTzvl6RiNaZaWLc2fjjsjCi76wAYg+5BB1yrLtTUNNlJmzulRQcMxs1YX5ZukxlRhLDFc5xKVTyq0+i9BP5E6JD9rAGX5mazQ9lEyTLALGkv3EbD7P75+4jgDd29rwFDjpmotAv5CJ3ZyIryUtt4jv3FAda3HYISxHpicdIc9MkMbbIvSReTvx5+4ZelfEMlLMoxcd8TYKpUWx8Ft8ULnwR1Nw4JbmeXy4V4LQ/VFgdSTBAGQW4poG4iiyZVjgCNu8RwFiHMNZKG7kV8FnnFAi6g5O/4+Cg69WNMKoXgKJrDCmHKUwRwRwhOqCSWhlse7IbK9m8AASqOoUVvKuQAYMkvxntZaWVGiA/DwDIRE1jCUYWvsNnQ1jV9aaAAo+FugZi1vtpmgAV2hBitoJGGXMR2eYekIs9TKx5pgttWefoGUK1rCQHtsfbMWxESKJEq8xCEi06iGe75ZNnRtobfX7MCoi8EjtSlFTm5LQ5ujrbbJfxtmMlQG5aqR4cgBXvqYCHmUDzaVXQ6ch7k8xn7dTyK1oWuStM6Z0lm5e2o9i8Sp0pjx/zhTiZlSHLNobWFI4EQUxkbs+I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QMDYlthgrrSdzVq75z8FNam7camdRmP83KkcrngnzYVvtaH2WOG1rLX3ryiu?=
 =?us-ascii?Q?1U0rR0C2SPnC8Whzw65o99VzIfr/jMGXaNm0Dq1d5GJkHGhJZ+1iEA/S76xX?=
 =?us-ascii?Q?/XusKMPrIdfBTWdJBvGgXlxlIDxmn511zIdS18iLraxbF5CfHC98EAt7/cQU?=
 =?us-ascii?Q?0qI7FhPaHZauAtigna8N0s2i0yYC0ovaUZ+DordQFPx4LukIrvuFXz65XZYu?=
 =?us-ascii?Q?tHA59uL4y51NB5sgkCic12Hi2ZAQyCZ/Z/FKWVJlwHreSPV4eH5Jgc4jVk3o?=
 =?us-ascii?Q?oCZrxCrP34IV3uGnv+vkRZctzwi1IpandDkB73+sMNTV3YMoJ4HuWI6PFgUz?=
 =?us-ascii?Q?Tp3X1UbKz9zfJaE1eRXhnCx0KTtprxprxplGolgHuljL7Y11b+aPouCSRaaY?=
 =?us-ascii?Q?Qag2Kgg9GByrBgp2WRsMaL23zsoELaPXvjWTge8uNoOlL2Z7+HTWOS0W06H4?=
 =?us-ascii?Q?cu9hPw9g6QP/OKen6z/lD2TtGgPReyxZ3SkjnvG2EN+Q4iFGpw77OdmlB1B+?=
 =?us-ascii?Q?1PwJ1XMIjHSLkLxmnJ+fv/dFOQJgtIP8PsZ2rm5owTi0EVe+u6H5sMGohDD/?=
 =?us-ascii?Q?Q+aWNoOxJX2OYQyof4+D7Z7Qboja3UoQKiqd95q2bHqCcAeK1OfPnrkQL2cK?=
 =?us-ascii?Q?qwsPTfZwT8ddLjKMfNCZUHdctfLYyjdbTGiu6hDh8pcBm6oXGS5GTWOrA6dS?=
 =?us-ascii?Q?gGAcr22xhaYmNilcH4N8LA6ufs5ygfyaN2eSpHcvIbDMmsdjbJZFdAcZgd9K?=
 =?us-ascii?Q?I+0jtaKIUz0svYBQxFu4lGYalTECW3/fAnmQHfTzbM+f5SDADMX8eTttZGwF?=
 =?us-ascii?Q?9FuTKMUugtreGrZ+sRtyFPjnG09ijWksbJ8buQLXwWc7m9iG3cUNHN5ze51O?=
 =?us-ascii?Q?e3ipsUH4HQ7MOagBqHhVXoTxsf7n9WoUznPkvMexrO5ZyfXEIRWQXVMM8HOw?=
 =?us-ascii?Q?21K+IQt+9uv3khJ8BraOYC1DdTGRvDGGmsnTRexapHFc5j8y/saQO/vzYqVs?=
 =?us-ascii?Q?6acGpeHe/WISpK8RU5NmfLhJlYpJh0P1idP9ZYSO80bToBbRsjZ5I/U3QLZ/?=
 =?us-ascii?Q?44ff0BeaTT8xK44nsBTlNF/hp8mgY7iNy8SCd+RCWKpj/woAakId0RXLQ3cF?=
 =?us-ascii?Q?5cDgtCIY8JdNDxiLJjw7CDjuHKR0+3pHs+4sY9UMYTEhrZN58bnm8Ktt1HF5?=
 =?us-ascii?Q?jsgoUG+8sF3GmMjRuI20+RPT/1DHXBYcLj6NT0mHzZGSOJvKdwCjPz9ewfjj?=
 =?us-ascii?Q?J3PZTzPxoZU5iqSD2coBmo8/Zbj34f/V3CdXp2KdNjRrU8x9dtSvnScwi/a9?=
 =?us-ascii?Q?GF3H2qsgCHp1pijIFw/XBpZHh7Sxq1xH3b+Ds/8NYyv71k584q8I2P5yYNup?=
 =?us-ascii?Q?KQY5R0jjF4gBweeCW+ZeoVJY/5huaEZGR+nY7Ozl7lbF42OK/VN9MC1Lf+sw?=
 =?us-ascii?Q?PhkZLfVUpLV5hp5KMj3v7i6JykzYvyvtYP0INP2/IbjlRWG/TWvB0LOs0J34?=
 =?us-ascii?Q?YtRI0T/hKUv6ArSCr35AxCZJCEH7CxFuD5TEa7Tlh9fS8RC/8Og3y7zfamSr?=
 =?us-ascii?Q?Kt1I4DovHfWM2B70jJpIR0gpj6sBCEKAye7A2Bd1u2kro+TY4MsiNE/SNISv?=
 =?us-ascii?Q?9zoTPLQMxPoB5ckXi9gcTc00hM9+i+NMdeu3n4hHSJy5rLMDJlJ5UXI9Hy05?=
 =?us-ascii?Q?t6xBdsEr2AtlUJ1cxYkOMA0DQ5jlLK8Bp1V5P9fqahubW+e9PySqB1sVnge+?=
 =?us-ascii?Q?97ijwPxTjQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: o2SR/9rOzJfo/5qcd9liyD0DDjgZND3Wlvz7wqrauANL+D6UYw7jeeID2q2B79LqV1+zYPSqGW6lnBOfA+hg+xuQ5C+uokDs7pmsgCimgMi6T9uNlwupiLh+Y6Je+aH4a5/0Ql7XNhwod9KtOs8qfrAgXV7zrZOhgULLTXAFI2Q8QiC0T0YaUaFcclTomdavf0qPspVVfJd0H32G7p46QRvMBKcflb14FFhQSp7WvixNEsalT4C/khzrhb5pdYhv7mItpgfUBuZiP538PQDGRjIdozvJzgZrBoR8RH35mygzMtHufUuivFdoe8EAdEqHfTm6bN0K5830iqv9l9zStA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 43eb7c4b-e0fc-4cab-dd86-08dea52545a6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:23.6681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9rB93E39wTKkRkcx00hUG23/CXrTTVDk/SaRSxndULNXW1du6mgb4FWtxgU6KsbrOLmV4w3+kjeYDcIg4JEr7g==
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
X-Rspamd-Queue-Id: CC17F485501
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

intel_dp_link_caps_get_max_limits() already accounts for forced
parameters, so no separate adjustment is needed during modeset link
configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 88154352e1faa..9be3b767fb54c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -356,16 +356,10 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
-	struct intel_dp_link_config forced_params;
 	int lane_count;
 
 	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
-	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-
-	if (forced_params.lane_count)
-		lane_count = forced_params.lane_count;
-	else
-		lane_count = max_link_limits.lane_count;
+	lane_count = max_link_limits.lane_count;
 
 	switch (lane_count) {
 	case 1:
@@ -1550,12 +1544,6 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
-	struct intel_dp_link_config forced_params;
-
-	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-
-	if (forced_params.rate)
-		return forced_params.rate;
 
 	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
 
-- 
2.49.1

