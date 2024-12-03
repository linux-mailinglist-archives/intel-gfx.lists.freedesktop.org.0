Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8020A9E201D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 15:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D299610EA3B;
	Tue,  3 Dec 2024 14:54:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FNb8jroe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C73710EA3B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733237662; x=1764773662;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=J5mcW1sh3lx0ts+XbaP7qHNdjsHX5OslL++ZY7Wyv9c=;
 b=FNb8jroeqT90lJDuhVLOESkZJe+uhU8bskq+pGRTg7B1Q2n97IHS6VQ9
 WhpCnS6A++EzcMPRelIy7d/2lxlhWs8tQxl7lpendt63aoAabdVr/CBLZ
 TZ3eWEYv+V1KY1thuLRqy1yu3nmTrtouHMWPqvidR1VFpwv+mDoeLAXYt
 uggSZgAIea76hpI032dv8ACcoNsla4+zK0vJaKNjEQTtgZxEELbM+eAqj
 VN8tdjzsrQtZsmIjcArwG66We3o6lfVEMdkQt2FpyyIqUeISVG7g/DL56
 hYVCQRWtLAOhTCdeOejlXgzLNHOzKkeF8E7nwp9VciLzZrOqLpT3jL+76 g==;
X-CSE-ConnectionGUID: FXdQGCgFReiMmmCL929vIQ==
X-CSE-MsgGUID: zHnfzb0YSpe0yPosMLaEIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="32812120"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="32812120"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 06:54:22 -0800
X-CSE-ConnectionGUID: sCrArSV/T9ynsZjUAtbYoA==
X-CSE-MsgGUID: PT3ZB9HJTXqARwAiyPRxpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93863628"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 06:54:21 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 06:54:21 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 06:54:21 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 06:54:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IQcMCQbCbj1gn07fm5tjB76P/v6NcLs0N6vB8ShFQwhHncwS6qrLvd807tdairANIsndnlgCi/qaB0i69wvOt7fmOLJ3oOAEwq0DzUsbiDWBTfZgVXNqcgffqO8x9qHYSXHLi5q8EsIbUCncy9gWNR05Qn4kyDFNWOnu5UjlpsJM5nOp02PmpnuZXshWeD95hCrOIzOitVQSPhQzsamSTimlvis98SMFPz+1gI6dwmNmzSRRQs6OZPqlfH9qILrAcbWjYy9R391IODw1O4Iag5WUTKh5Oq7oAfsLct87cqbTajB03ZtSP1ilOIR5gq70g9Z8/rqk0+oFS3wp1mO2ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dciBGQg0ZMRHUBcT3yeZm8tpA9QRwu7CRm2Fgs9kG+w=;
 b=CurQQ5E8JcZBlPTBT0tOfQSyc0elz5Uh9u8IrB7L+NeBJIezDrK9U7hmnT4N++KU2MJQEXfxGV2IAJcxD1o7SLS2vJX8WM1CpivYGRARg21Lh9trZGhgk6xjG9VKVFk8n+PJZBUuD0eAGU4PL5YPY/WPuXSDl2KTPTX5Q1a6NkNV/i2cQEq2T3CUOo87T2+vXL7XlWEaNDh6FuKpSj0Fy98Ylb0TkIP7oEmfpMBs7AUeW2tFoLZhsdsZEom+04xKDjbtnuBAcMv+YGP0W9c7e95VlZgAIog9Ds/NKz1LrnJLFKgmQFoBEFYSwFR0VdQisOLK+kDUWxaOQ07t9/0Afg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 by CH3PR11MB7762.namprd11.prod.outlook.com (2603:10b6:610:151::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Tue, 3 Dec
 2024 14:54:11 +0000
Received: from SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa]) by SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa%5]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 14:54:11 +0000
Date: Tue, 3 Dec 2024 14:54:06 +0000
From: Eugene Kobyak <eugene.kobyak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <John.C.Harrison@intel.com>, <andi.shyti@linux.intel.com>,
 <jani.nikula@linux.intel.com>, <stable@vger.kernel.org>
Subject: [PATCH v6] drm/i915: Fix NULL pointer dereference in capture_engine
Message-ID: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: ZR2P278CA0064.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:52::18) To SN6PR11MB2640.namprd11.prod.outlook.com
 (2603:10b6:805:56::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2640:EE_|CH3PR11MB7762:EE_
X-MS-Office365-Filtering-Correlation-Id: b7e2bfd7-6836-4afa-7bc0-08dd13aa58db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?I1MFQg095vTLalKDbUkb11NyfydeMBEEW7FHYf8reoBeJY4wXFNaz11R/T/l?=
 =?us-ascii?Q?x7xG5ncZsd7TQazQl84E0HVDW9WdOTZP+X+pMtHdgTqs2Wjf6g6JP21dJupx?=
 =?us-ascii?Q?jWRdZAACrf4srODDvA0q0T0lVBwjdBPFzdWga2wD8X8gqbdRCvrTlaqIBG1r?=
 =?us-ascii?Q?n14jhyuhUy5mwQ+GSFoeeq87kSsiJqcYyJBpVNvhkUHbKZ6jGi80eXXPCAhx?=
 =?us-ascii?Q?kPyWjrOhwdgMOFwUsVuB8+ryBiT1mx4WXpNj6cUosm/XhqUzXzsZ3Qg71G/d?=
 =?us-ascii?Q?5HFCjMvxtbfnLzCOJxS2lsu1AdpFgREI4tqaSe4fTTu/xBpfX1kXxUdWTiq/?=
 =?us-ascii?Q?939VKf75rjMf6TcyB/716IFFdA/J+n82nqX1rDC/Usl+BE6ZXyLO/aYud/AX?=
 =?us-ascii?Q?gGMcv43F+lDquEnXqSOcVQgV7W0ZAIyNmBCnMxpjzzcFhXJsLBBQuQzZlfRC?=
 =?us-ascii?Q?De+QL1xEL9vLL29p3DGO2Ufp5CZc50vu87O4JBy3+GCkpZ03fTz7BrNh6fXC?=
 =?us-ascii?Q?1DUdzJ33ZqyA5ifKFiv/1EtZu6q3mD8xETpkvbnSHI5AUCPHmg8VARnhE0N2?=
 =?us-ascii?Q?ZJoA3Tf3/PkI2PSM3CLcfKcdUgfdsOCkYcv3kBZIdCNzJUshuec4SGyI4PLm?=
 =?us-ascii?Q?c+apoas0l0pgcFPdQq28ST0TzqABUUYEvX0F2GUdBfh512Yl/wRdnjq5Pqan?=
 =?us-ascii?Q?gKOXEQAxG+TG3LsReqfZCTzLH4hhfoTHnli3JSmECr24PmITj84+TARz/+1r?=
 =?us-ascii?Q?7NkPSdywZH0uIKOcaPZ+dOKI7lFv+i7K2dPJXkMosfTqQL3Zzi3KBSlkVaZC?=
 =?us-ascii?Q?PcHRHQvmKNew1Ecn+gGgwbJg8SQtA4LXz4C/0iCVXD+f7C5ZVodw9+dD2gTS?=
 =?us-ascii?Q?UW7QLurBfTSe8FxYc+w8cBxrg8+I4SdUjwfEHiMXQ/K5OTa7QLDvN11QuQtH?=
 =?us-ascii?Q?dO9xhYSJMwzAzdHO7oVUP+n4Q/rNfo48vqLfSLdQjBcdcp7BQ1RfE3V/o7Ps?=
 =?us-ascii?Q?z2s1D7znP0e82pFPMR8yM2n3SERnWpaM+aQOxcBm3EOsbMWEfd2DXY9W1rlp?=
 =?us-ascii?Q?MJykFf/uv7Lpv5XA42tVq9du5yoPhiR4gPI9bNGrsdUo8YF3MDzK5wKcKGZI?=
 =?us-ascii?Q?N2m79u6ZhmctFEh0qd8Sv+pQCtg8n29K82c5oytBX3CxJW1NL1sJLx6sWo0q?=
 =?us-ascii?Q?JniGukgaY05YTrmp8FlwQYT5m3+c7N3qWg19zMKfjvbqCJbTbwIPa0WfyAhZ?=
 =?us-ascii?Q?14It6Haop9auvaZdNKzOLNHDICKD6u9cz69ylnz1Z5SWcrJuzyLad6XGZW+k?=
 =?us-ascii?Q?HFg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2640.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ytvDdjdxaJtrs/if3wV+ZKWGWVipnuIHklrs5oAzBRN46m198ZjW0hhLVeFK?=
 =?us-ascii?Q?UuJFYwsHx7KOH01hGFnfrK1irpqncWgGkcZKsR7QmH4yzGQ6B+bBFvmJxse3?=
 =?us-ascii?Q?ZjL1s1j0ADSjOyh6gECs2AlpJ9RniY1lCoReSjCpV8cAJlfJkk38sGH1ODNx?=
 =?us-ascii?Q?6MXVzevMIEl/AE9+/sB2W0gcwYwxPCk/S6k1c7luY01PmWmWoPaF72IXVsLa?=
 =?us-ascii?Q?8DqC6YusOEo1X8p0iKVVmw/ApzvhbbeVTzxJslZJqHEenvdyG32Ct0m4bk3o?=
 =?us-ascii?Q?EBrU3xapPGV3g9D7tkkdHXi98l6eAnI/cP7OSqK09gF8CTCdP0Bw1j1X4Du1?=
 =?us-ascii?Q?AMWgifUD4CIGFFQITaIAWTNrBeKDJKRxMVFTvysrP6hyd4UUc1LQ4JbMxIFw?=
 =?us-ascii?Q?Aqq7c3nm8FIJcLHLTSnrOaXaG6KeMrQK+zM6c1nmf6UFAewzqk2s8B4OYGAk?=
 =?us-ascii?Q?zUiy/BxkeJA1MT89toxo0RgK9bGXDtfW1JVYofdcz7TMJfAkGMXg/52aBpxS?=
 =?us-ascii?Q?dptikR/EuIakwRCVDyar2o/xN2faE3K6hMnwBVfFMJe+UYTbPv/tYwVUcx2w?=
 =?us-ascii?Q?50BoqjF/ntvf8pUz5477v8+vpvE/vCs6zBZcVPTj/KPNGH2pDjXFbf6gyQXe?=
 =?us-ascii?Q?Um61V6CF3a5EeMmAsg5RJB6PsiIv9qmvGdTk4tjepDsA4xbgWbqqVyBAhURz?=
 =?us-ascii?Q?PUoi+RNFBdpZVZVJ5Eh5bHESzpilEMYYjPDnjOyP3qYzwDOCbXJopchcm0Bl?=
 =?us-ascii?Q?DuwT/6ywBvjpgRX6vuS+OD8lA69zNApyUm7n2bZ14k3GyQiiWDNAgbjQN9/n?=
 =?us-ascii?Q?RJnkl8FlaeW2S36Z6Kk5MZ/PIs2ogG638swPo63+90+nN0APfaK5IaU4xQMl?=
 =?us-ascii?Q?VtPSCLzxjxbd6w+cMejn+aDzN466JKaZYdkqUSTxAV7QJHo9Dj7NC4PLhPIo?=
 =?us-ascii?Q?gmZ2YLgeIueaj5OPlrDFajbrfV87bTNPmM2dqQ77MD00mxaJVGJl32AQIKcD?=
 =?us-ascii?Q?wdd9ugz7lY6TAm0ZC2j8hO7Mn2dsT/EeJSDPJNmymgVDKBZAULVO4mjs2ZWH?=
 =?us-ascii?Q?9rRuRzO6iEPrEvja/zicbMpTr4yxNKKuE4L7L/RF2p0jgLi1F2u4xm8Ff/gw?=
 =?us-ascii?Q?tV1Q/v2Pa57IZE8vJNVf+ELIzJLed+i/AXTfihClR8OYlVxgdtksC0EHdwiK?=
 =?us-ascii?Q?PMhB7PqCIvv6Hv3MKC6UKPR4XNb0hrdels3LQHfkvHg1yKIfs6+T76Vdg1C1?=
 =?us-ascii?Q?CKQKu29iH7H8tR6kg2SM4YYRgDPxRqRQTFgEVi+H7lKMuENoHpZ+NFsdBfhx?=
 =?us-ascii?Q?cH0cBoELW7GpVIhVAp57W8MhGOzBe7AtJWe18xhTY67gl9wgNQfC66buPjiQ?=
 =?us-ascii?Q?VGwjCD35ldD49rkesk2lOQaTZC/yzUQ6DdE/KxDTyvuXLxtpcuRjIDVErTTS?=
 =?us-ascii?Q?+De/Y79T2U4M0mwFMgqZXJd2PPhNBLYx8dahwokrJK3KXr2Ntsy87GTE7Ty8?=
 =?us-ascii?Q?Il3R7fIItkpA2ImjcrFHGbcIF/9KnjBVx5Rcwqok5jjVY93g3NEkmUA2cJVF?=
 =?us-ascii?Q?HI4Nkcgqt4u82ET+UJtBD5WHT1gRhGDqonYBTMvrEIUNhDxHhV4C8V9izI3M?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7e2bfd7-6836-4afa-7bc0-08dd13aa58db
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2640.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2024 14:54:11.4745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NtJKtcWv8ap0TzAIIqo2sbr442Kyp4tnLNbeAFvOqB3toNR3Fw/T/tdvjPffntR9W+pV4rrlcHCp3k9YtSDpPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7762
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

When the intel_context structure contains NULL,
it raises a NULL pointer dereference error in drm_info().

Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: <stable@vger.kernel.org> # v6.3+
Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
---
v2:
  - return drm_info to separate condition
v3:
  - create separate condition which generate string if intel_context exist
v4:
  - rollback and add check intel_context in log condition
v5:
  - create separate string with guc_id if intel_context exist
v6:
  - print changed log if intel_context exist

 drivers/gpu/drm/i915/i915_gpu_error.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 135ded17334e..d88cefb889c3 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1643,9 +1643,21 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	intel_engine_get_hung_entity(engine, &ce, &rq);
-	if (rq && !i915_request_started(rq))
-		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
-			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
+	if (rq && !i915_request_started(rq)) {
+		/*
+		* We want to know also what is the gcu_id of the context,
+		* but if we don't have the context reference, then skip
+		* printing it.
+		*/
+		if (ce)
+			drm_info(&engine->gt->i915->drm,
+				"Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
+				engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
+		else
+			drm_info(&engine->gt->i915->drm,
+				"Got hung context on %s with active request %lld:%lld not yet started\n",
+				engine->name, rq->fence.context, rq->fence.seqno);
+	}
 
 	if (rq) {
 		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-- 
2.34.1

