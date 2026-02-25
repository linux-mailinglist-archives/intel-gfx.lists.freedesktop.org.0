Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KTmOpYnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F36219AEE6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D12B510E87D;
	Wed, 25 Feb 2026 16:47:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k1o0qw57";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A45CE10E870;
 Wed, 25 Feb 2026 16:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038035; x=1803574035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=CVyp0AGhLR0gb6CgwQW3qninmRzyJkY+lB9n67Kg/T0=;
 b=k1o0qw57o6gBePkYp37XK5ay5qgIbylEFqlJOyait4RkXLtJmHk1EIXi
 +rvy76Sify/sSD8hkmFZY7u0Xp8fuFK0VlEF855wWxjQQiHxv6tGHLq2i
 ClTOkb2zVHBH42yHPsDitbIF/0y8utgJCstAOTK4071AihQMy3SA7nw/O
 bLHev+Q/++euuANkuYziWL171nVYqHSqZLmBaRRtYiNbn0O09OTMzjkXJ
 jAq5gmMzTGNK+1YINafhNddCX8B0f2tpCs8QTBB7OgUO4cMx1rvBCcXgo
 1FLx0MZKzDvCEDyc6UUp2C5B9h5on+QP0NXe7Z0Xo0ij4oGVbtJwopLyl w==;
X-CSE-ConnectionGUID: N0622RIQTxS+EJ5yD2Embg==
X-CSE-MsgGUID: zUwHIcu5SB2tdZ7D6o3+Wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73259856"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73259856"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:15 -0800
X-CSE-ConnectionGUID: xWQ5qEoJTrWaYUqGo8yHXg==
X-CSE-MsgGUID: 8HVTEcIDTJesql9I+jt5VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216433409"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:14 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:14 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jtrTTAMPSgUj1sypfXHr3MR46oY620sZJ1qJvWLCoq6lJhm0lzpPLl7rhGg0dts54nPH2hITsebYoZnj/JjAuxDC9GpmDgUp130j/ILtaVWBxsNuwRyJR2d/lASKUmWPOv04grJsDAbd9WUk6rS/CJcG/wFj83RY6giOTR8HB4CdUq2IP+decT9B2JunMpRl4gKPcC++LoC8x+e9m+ze8rPoElIMA54A789syOjq5XibSvortM15S07lDdUcS1QwbQJW1uRo8JBYl1xcRnLdrgO5H+dM0zea3ngL3ZQOs7UD3YPeMLFWLQwf38RVajK8zEiljwahzDhxfeQhwbl3CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9hk1cgXTUR48riqJusVm65rLHztLiLHBLPty9z/VfRg=;
 b=S1Ic2GMigqBfrDO8ODJ0lGsNEgO9nyhRZoqtB/VbGXK2/2UuIRmY9XxpTioV2uirEq4ix5+/SZ5fJrxY3RoU2nVss3V5EY/S2pghbzFBGH+X7qR4uU40wLDjjulg5/19OUf2gdEZH5JrYKLKioSP16Y6OAVueX68ohRJOspDeqrJOw1CgA+WZRMCyxw2VEakXj45yS9PxTG17N4wM/lTiUd5mNMVY1+BBE+dQzLK//iNNY8wdCtSrQ/P0zg3w3YBXTvmPjQEQwOF3XNNx52fW05zJknnFcBqn+e+n9+vohU3nshaweDpUoXN/0mcbzNRIGbNunTH/2BlwMJ8ob2WMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:47:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:47:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 17/20] drm/i915/dp: Check SST link status while handling
 link service IRQs
Date: Wed, 25 Feb 2026 18:46:15 +0200
Message-ID: <20260225164618.1261368-18-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c8acd16-e243-48ef-8be2-08de748d82d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 5//DvmruyvGjLDPh8IDXHkQavGV7lox0fTIBYsyjp4y5//6FEDQ4TVPZaKbhdmRBAt8izESIrSyur2RVB1T+XXMECUAV4TOCku+3fKCO+BXjEKC3PpkD/ZKhKf++/n+NKLY/0xlJ0X7l/u8YKZQrjdy/ckDPjE0SNevsgW7Ppl9FL5R+wXPtoZ9KDF70Z0MEpSEMc5Fwy3FDrymu09wFGeGcvFQrvs1tRzbKo12io+7V5JEUoOK8bVt1Yc/Xehfnqu3cg5RDlGfpD349BN/hLBf1MErJpM0/K9iD0R+QGd7FhqIy26GKAqaeOMsjk34csLPAUGm9t4WcakIBrFrVespYhizyRbbVupHKDGJ4PPhigJJDMtEWQXlW61tyhIDnmxHWNE6oaCmxEMv3p4/STosQaujYE/cKcXpaHylJT3FSlmbCKLaUzgkl/AZhxI92SLmovVp1KlIfiCWIuBvXeYgmBzkQI3fMYte412vNFWUlUrw/Cbcd3kAIDUFi6kV3VQKJDhhDu8N+IZ3dmG3pRofpnDkK1b9kGL3HcDmE2aRvIJlnXSyHVcN7S5PYrOD8ucapvaLhrf3axdSXSGuaGzN/Atks5xMMPc7FC6IaTN7AicmI8sicgXDeA7rIL+yY/JOSDy1/VlqYu4crcqaZUCFRup1mR7JMBn2ebQEavUcStFZUQ899fV2m1o1sMXja0kW2tX5JzbXnqJPtetvoucdtjNQZvVk2D7tDOlPmguk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?huX0AA2E1a/YNY8pKzZzJFrY6nINiErzbkdgP4KyBN5dozf5Rh9/bU0JIfAL?=
 =?us-ascii?Q?aHavvXpjt1tM3CCpfwxQUBcT1W80Xd+2yFZz16VkI/Wu39xLWxhmXeJEpvaj?=
 =?us-ascii?Q?1Mdj5WG0/9W/hkWXV5GvPmZahsGmGDHnYjzQ8RrOHykB5CcOUUXQTXdEyDML?=
 =?us-ascii?Q?IXSqr9a8ktaQFVfAtZhdwcKAnsahj+qZ0UyKi2lhbhkJBVegPSsC1lI0kcdR?=
 =?us-ascii?Q?W29+zkR5UC90uD1Z22IYDFhApv1dJiNtdjTJa5vaPYHzIEO5EH2bSVIU2aCF?=
 =?us-ascii?Q?Z2VmPmn1R6rCzhpjl8sgLbDBrxr6vumNnUXRg0YPS0ADEiI6M3eeVXaf9pS/?=
 =?us-ascii?Q?C5RdBUrv6wMG0cGux2XDBXggAiGJte9pSrzP3IBXXR5haRFKVq4Hl0Rp5uHy?=
 =?us-ascii?Q?18cuN5fq+xKJz7Jkg2EKvNSGYGVo6u9vCXvmK83x2LPU7P87moGH4XNOeZpg?=
 =?us-ascii?Q?QzFOhUFPqeA9pE3sMP6x5Ey48vjtrVGylVhOXlW5eFV3M4FPRO0/0o1PnkrU?=
 =?us-ascii?Q?e4qFPC34fgXAexS/wSsD5qbt3jEO7ODCRE9UBIkDd/rvUCMYTC8F31gJtwDX?=
 =?us-ascii?Q?7Ip6Vt3FOou4bihFMjT/CXgoB77jOPNpEZ84tZGmAzozT+gc6Qbx9CxHWZYh?=
 =?us-ascii?Q?vk+K1aABB8rSJBvyrzL/M6Tl4/2ilPnKUav1eBtIWnshQo67D7s57YOPvNt6?=
 =?us-ascii?Q?SGgaMXmV28tGki+OXMJsAVBoQ4b9/5bwsvZvbPHN930cnDv47KpoZKyGx03v?=
 =?us-ascii?Q?u6pQJkm7JIZgMi2RKbmXhQyB7xLLvzg0YG8fUtTExittrERcbPxu70/3S2vw?=
 =?us-ascii?Q?VFi6Pe2mPu8yNDqcqHJk3C2HMV+992stCcg8QfL7KKg7EHQTaDxlqVHDGfs7?=
 =?us-ascii?Q?St+AaxpILgd2NCvAznR5IOr62cI/0NAEyn8D//N2ThMzkvV1h6md3JsJqfBM?=
 =?us-ascii?Q?Ydqo4jLWPb702H5oxXQz2vESSr25QR7LemIVHy6gUV8txalPbScJzRjiAYoj?=
 =?us-ascii?Q?H1NVopVYYJOBuFmSq9tNTc3geL7BCLdro1ibNGUny4Syr+3esfw1/DD2tcpO?=
 =?us-ascii?Q?ZUr6V0Wfi8+TUxcNpltXQECaY6Ewak/qTMgZyzBVNQil6v1L11fB7M23VudR?=
 =?us-ascii?Q?zQA8ELRQdM4LQ5swrXCmNlS1ek+jitMW/n+mpUs7uFe66GYqXn5iYPoiNa2t?=
 =?us-ascii?Q?Ex5lmNriLskAZL4Y5LMq/2v6c8nb/ZlP6TyRRaNkhjTaczjXVltZC5Jboarj?=
 =?us-ascii?Q?ytjsbEcU1W2Tu2IfqGR+L/caTmdLILMgzqz8pY6K3WGV3lVeRZLen52dlDXk?=
 =?us-ascii?Q?DPEIpcy+OlBtxsqB2/XJniCuyieLAwkt4Ts1B1lAqM+Shs98Li4D+Zx8g3ob?=
 =?us-ascii?Q?+3RRJnezxU/zdCnBCisesLW6RDSUC9qo0tTDGp+SmaFGtrrFaOi88RPNnH9k?=
 =?us-ascii?Q?mj2e4javSuP9sQtX8ZIkOmHD1Ezs85oMl7+8s7z2oomqmRz+15xas3gEWhNI?=
 =?us-ascii?Q?eiKrqjd7y+GiMMYRGm19gd9qXC18pX1QAengZwIP82JvE9mvhjYT6rq1cd7F?=
 =?us-ascii?Q?QNIOlvSRpG6GH2da86B0jpN8wDy/9Wj2TU3wDtK/HZx/6cp3glkVbA3moybv?=
 =?us-ascii?Q?VX1lsgxRelbePncU6Tr9TLqx5LqjqmwV/hP3I6pPUEZfK9Nt42VeekdKO34g?=
 =?us-ascii?Q?ZTad7EboNQPS8+8YkKfy7BX3sVe8cNkFrD4io0IGhDhGLiP+6TC0OgQvW0kO?=
 =?us-ascii?Q?2eijpvSWhA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c8acd16-e243-48ef-8be2-08de748d82d3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:47:06.9028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yB+d9jGU8vnpVnO8QcBTfV7IssqZ+dMzJ2he2ZQwl2/BPQygSCJ8u9Tm+2skc8pglTh7cH6/EX32/4gFkhXhxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
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
X-Rspamd-Queue-Id: 8F36219AEE6
X-Rspamd-Action: no action

Move checking the link status for SST to
intel_dp_handle_link_service_irq(). This is the logical place for the
check which should only happen in response to a LINK_STATUS_CHANGE sink
IRQ. This IRQ is only supported by DPCD revision >= 1.2, so for sinks
with an older DPCD revision the link status is checked in response to
any HPD IRQ. For newer DPCD revisions however the link status check can
be made conditional on LINK_STATUS_CHANGE.

For now keep the current behavior of always forcing a link status check
regardless of LINK_STATUS_CHANGE being set or not.

This also prepares for a follow-up change sharing the link service IRQ
handler for SST and MST (on MST the link status check only happening in
response to a LINK_STATUS_CHANGE IRQ).

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 58c52a9974c46..cecfca0b0bb7a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5871,6 +5871,9 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
+	if (irq_mask & LINK_STATUS_CHANGED)
+		intel_dp_check_link_state(intel_dp);
+
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
@@ -5924,14 +5927,18 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
 
+	/*
+	 * Force checking the link status for DPCD_REV < 1.2
+	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
+	 * for DPCD_REV >= 1.2
+	 */
+	esi[3] |= LINK_STATUS_CHANGED;
 	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
 
-	intel_dp_check_link_state(intel_dp);
-
 	if (READ_ONCE(intel_dp->downstream_port_changed)) {
 		WRITE_ONCE(intel_dp->downstream_port_changed, false);
 		reprobe_needed = true;
-- 
2.49.1

