Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGotI3gnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3348E19AE87
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49BC10E7F3;
	Wed, 25 Feb 2026 16:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MjsJhfqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF4310E7C9;
 Wed, 25 Feb 2026 16:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038005; x=1803574005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=yhpKh7H+6xf7ar182LFjjU6KF82lXDhn5hCXh8PBJWs=;
 b=MjsJhfqBqBR8zmcuUmJw+s8TwaCNVoAGGoVax7KSC9sm83Ko0dC6m4KF
 jRIpKSCwF2MpvNXkHIIIY2hJ1IE1DfMoimn1OhFWlBYb4zFpPI1/vLzXv
 yaI8HsVJ5n6o7LDu/tO3s7/OybRt3F6JKDJAfWbWiYF04vRWEktkhNOov
 PJv7A/8N6igzzswQBdctzlfV2dSEFm0OinGYHlJsrPm0WFJOKsKqyI/Yw
 26IsKWbsSS4SLqlVI4GV/yeWru+yDDGu+T5T1OC3fCBKS00J5zfpcFcil
 fA89AS7ewmQOHmBYpj7zAQ5uP5zj7cnGXbzjD1pG5gsLSI5fCrrco3Xep A==;
X-CSE-ConnectionGUID: 8v5DzrGZT+aAb1QVPJMkeA==
X-CSE-MsgGUID: VuJVOTQATPqEgOhyudQV6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73259814"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73259814"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:44 -0800
X-CSE-ConnectionGUID: xuUBtg/dS8mzVAcRZl/gFg==
X-CSE-MsgGUID: Ja6dPHuvTfiIYcbg4Ddsag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216433286"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:43 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:43 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SMaGx0IEi2uzMYBUJyIG/FcxMrG3hrFxesbDe46e1qh/s11bKfKq+u5LRghLCIJQe0atpe45/UYuwazY9LZcff9jKksDzouvgPVd7p/YWpYfhU0igjhP75IDyFSKLLOfEQsBWKuvZgH/WP9yR6wB8f1DeV1s5pTuutpEHFE2sBtNfwCg/zFqRX5EvMKsW9z50rumU7mibYRERvCxtzGH6NVcDhLwX6xKQgfWYIW1CLljN9di4Y+E7FcLzgGMNoPjWPoSwaIrDV0TS2qF0Dn31g5IvCgTKYJKhlBoa+b5GPtNAJ0xSxooOs+rxffbXdJiFEQqC/voMM5sUT+PU2xrvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ySWq47FJ0yDWt4ALOrBgSqWu7O1c3fuBvaR65hMT9tg=;
 b=MlI6qLxWOjKnWptgSxnXiPxGd6mj6gnRGOPQsm9Shw7tTZ7jK5WGsrdGSpqj3saiQmbFpj7difslOxMFw9CWASJGxx8TIHzqP/B5i1VsmmK3rzC4brf7cKb0bjhxnJSZawTGSGOrFfsFNvqlAV/z8IgtdbnCfmf4wlDTQa74MhOVGS6gPdoT1b41ApNrBp35DP/y8++WmVqatafGKJ3wECiJbNbDdQKoMTRo4PwYwYaAsx51hPWPrtqeOcN0J/rxCzg+v5cwjijPWxkoJ07AhrrQz7vudYSVQR07dQ3kh+JH4CDhI+OWU3zXaR6VJdZQZYV+A7a949fpQa8EnfmoBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB8003.namprd11.prod.outlook.com (2603:10b6:806:2f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Wed, 25 Feb
 2026 16:46:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 03/20] drm/i915/dp_mst: Reuse intel_dp_check_link_state()
 in the HPD IRQ handler
Date: Wed, 25 Feb 2026 18:46:01 +0200
Message-ID: <20260225164618.1261368-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB8003:EE_
X-MS-Office365-Filtering-Correlation-Id: b4a3d3da-728b-4a7d-aa46-08de748d716b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 1nsRKxijrwJNiqpPRbGQcl6VuFxD6KrmUBTCNV3VxOPRHf9p8W0o71VnjV0R9/whIqU4qunZmw/j92C+nlKESR0qPpoDizAWn/jYXYPLg5v7pvh7NXugjfVkqCdf7284+CqaAuB/YNSymNSF4ynFGDCrwknqDchxP9pNXUl9l0fx54VV3HaXS9+6THWlgHh51b5UcoPguBCm8XKzBmHyPo+wHpU3pXcMWmr1OTiMPlDc6dwViQ/nK6P9qLl4MMiR9zwBBcoPy42zhLBVV4O9Cj978ek6h/OmMCWJIy8jVjbqg2ZOXhsOnj/YF5bhQoSyJ+xwK5hz0rhOG82CODnHjYJli2mq3Q5aBoc30cjxuigBXPyZBmF58HypPGYrE9q0MOYfi9xSmIbzHN123Hq3zmbsQfIko+fh96ojDJyp4Qc2f9/GGcLgzXi41fSZPJsVor/qmpdtrRvbxszrY5AJUtbukNvr0LFpvWgEckX0Z8ZR+Msjt7Ccj171PyRSAhLNlP63zTF463CJ+AC+0n2k7K5Bmdek2omGt2bVWk8FyI5C4USb3e2imwhTgnfSsZjzb0Ec9gOjV4LRnUNJipRBMY+/a/LTYlP5405GEu76nhdkPWYOW1V+NyRFDgNTOAmoyeZmqkFpa3E9wODadGGbXWeE8P3GL5g6Yys40QHm3+M17AHDNZhMIsXN8c8wre91o4DZG8BdnHceZ+6m62/rTbHq6BUYCumR3lCFSVZTSxY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UA+sYihNFFLAzgtPMBxq5i7Voc/+NbbKyp4r7deXaOBb133ODdWbPApj4l8/?=
 =?us-ascii?Q?8i05JWWPKTjfSZD5osLTg1P2Htd4Nx7utzuz4wMk5OerUrqUBbj0kdnXyI/b?=
 =?us-ascii?Q?cRI6hLbOHCog8poVY8n+qeQyPdt5g+wKCXmqMllBRFahr4IEdxgeixMJYSBQ?=
 =?us-ascii?Q?9AF6EC/EERAuQ/Wkyu76ySIWYZgmmODopw2aAR1aMeg+wakL43CI7OgJsKVK?=
 =?us-ascii?Q?UkIqYHFq/u4aLTIeWDQoyx7ZaTMU/aG5eXjnFoFgtO3ddVxUooWNiIXA4yif?=
 =?us-ascii?Q?QDteeOf+TyRKBf9Ac8GKifHvKuSW0r9TfHuHwZSb+IP6PzPUDM1ITuk7T8C8?=
 =?us-ascii?Q?YjRj9gmKLMKd5BBVclHbH6BUKzBbGh6TyKg47hVsuoxIRWuIc8RehhRhUWjH?=
 =?us-ascii?Q?JEAXv0FLYsMus3sKc1+03uY1W+q4f5rvoeOeCByVsvoPlhdxXXMt3C1EVjnV?=
 =?us-ascii?Q?OeFNajXb8RHz2Qgtui3W4a+qabL6a74PYTR/Yl8MImqb+V5TQwuruqCAH0J+?=
 =?us-ascii?Q?+1KRuzYQ8TsEbZFh1mdGh4cSyTaRPyobZVaBsr50uuBN7HfQq4GRFYejaeAs?=
 =?us-ascii?Q?E9e/c67f/CqXVUlYdyRlRRwGCYNP1o8SORRSk/qW37ekeZlCxCV1RLvMVAKv?=
 =?us-ascii?Q?SAdKNeChS2vOGNtcvHbiYXbVqc8dQV/P0kYvAWYa9XGqVqSHl9peS/ryg5gZ?=
 =?us-ascii?Q?FLj//9DfbYnXwB7T+QXz1yI5KrRYoMZWhFMM4BLK9RFZbnChj8uUd4CZZ8si?=
 =?us-ascii?Q?hFr9cdZ3Jv+1bbbhCH893YUlZRC3CsNMVtMIl7XR20s2p18VwvTdRy4bb2bx?=
 =?us-ascii?Q?iRNksEoTpiVZWob8poS4Y63tb8L1I14TB7a7Kg0UvIAFklWIX11Ikm12Hkye?=
 =?us-ascii?Q?JO8N/MUNxPDyLs4xQsJ0kkCtpwf5tt8Jp8QTNp+jB3c/LnsYwwzMn2Agvx5L?=
 =?us-ascii?Q?LN5zrtianRHJsvKFz18LVk9OxqM6pSfdyJJgyyQEHLPR3sph9sfSKOAYcx4E?=
 =?us-ascii?Q?Y3pxpK1g845kNDcUxIXZ85bz7RRqUqoZuwqoXrMQF680zy0CfUgT3bnpQC8c?=
 =?us-ascii?Q?FXxYbN8RrjayIryFdtRz96Yq4Vv6dUFukFlDa2rHr3UlXkZuZFw3UQmJlnxM?=
 =?us-ascii?Q?jsReTEvVlMr4Qp7EalPUpF/Gdg96TBYEmUarSLCfGmAiYKb2Uz1UD+ierZG+?=
 =?us-ascii?Q?Px0i+Q5P87zyFEEMElOzFXyeQoiRz9hu+DGvE0FjSsBO3euEzbUeVvxTeyZM?=
 =?us-ascii?Q?JKixfD/MhLePT1seAudpmAHL4BEsJdcSMvB9BTBs5Kp0JsazZODOd0/2tZa7?=
 =?us-ascii?Q?d2//C71NXXmc71btq9dvfuQxkTLsj7KqkSWlr3x/CKpiSxhTSdGK4+EX/DsJ?=
 =?us-ascii?Q?hONfib0ORrepueZs8pJ6t62wc/+wM8mw56k45hds19LxJInCQB1CMf23dJZ7?=
 =?us-ascii?Q?BytXyuh2+TTKHzfRvPUvFzW6S5pIm1FbwcwzG2F/iyO6luIMH1PAIv3YvHRP?=
 =?us-ascii?Q?Wg4td+lh3tZA73hYW5tomZh1Tf0MIeraW18hNDxUBvt76zz/zHlVVDI/Zy7c?=
 =?us-ascii?Q?W+5WFa+Mdt6JS3ewyxssuj5QmiQydueFdjiTI1Aos7b1BcdGzakX6KYdPl9U?=
 =?us-ascii?Q?CxV2HDFMXbVtSjfnrouiNAZwcv6zm1lykncCEI6V3x3a0lxj6S7my8dxhKqf?=
 =?us-ascii?Q?JKVdyI5UWTIC82K3/3PPdA3d+l4ysrr9hbiHwk1y/fEzCb+vWrXzeMma+squ?=
 =?us-ascii?Q?vv+NvQYRWg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4a3d3da-728b-4a7d-aa46-08de748d716b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:37.6954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LrM2uah23LocSVvOjogrG1CgpTBRQ54u8Dnr8y9O65xncAx8TSJWner4U+mgUSijqktZJ49A875LQ4QEMpSzEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8003
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3348E19AE87
X-Rspamd-Action: no action

Use intel_dp_check_link_state() in the MST HPD IRQ handler instead of
open-coding it.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 34 +++----------------------
 1 file changed, 4 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e94fcacb95304..b3849f1d9b7f3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5444,24 +5444,6 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 	}
 }
 
-static bool intel_dp_mst_link_status(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	u8 link_status[DP_LINK_STATUS_SIZE] = {};
-	const size_t esi_link_status_size = DP_LINK_STATUS_SIZE - 2;
-
-	if (drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS_ESI, link_status,
-			     esi_link_status_size) != esi_link_status_size) {
-		drm_err(display->drm,
-			"[ENCODER:%d:%s] Failed to read link status\n",
-			encoder->base.base.id, encoder->base.name);
-		return false;
-	}
-
-	return intel_dp_link_ok(intel_dp, link_status);
-}
-
 /**
  * intel_dp_check_mst_status - service any pending MST interrupts, check link status
  * @intel_dp: Intel DP struct
@@ -5480,9 +5462,6 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
-	bool link_ok = true;
 	bool reprobe_needed = false;
 
 	for (;;) {
@@ -5499,12 +5478,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		if (intel_dp_mst_active_streams(intel_dp) > 0 && link_ok &&
-		    esi[3] & LINK_STATUS_CHANGED) {
-			if (!intel_dp_mst_link_status(intel_dp))
-				link_ok = false;
-			ack[3] |= LINK_STATUS_CHANGED;
-		}
+		ack[3] |= esi[3] & LINK_STATUS_CHANGED;
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5523,10 +5497,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
-	}
 
-	if (!link_ok || intel_dp->link.force_retrain)
-		intel_encoder_link_check_queue_work(encoder, 0);
+		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
+			intel_dp_check_link_state(intel_dp);
+	}
 
 	return !reprobe_needed;
 }
-- 
2.49.1

