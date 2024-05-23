Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4588CDCC9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 00:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ABBE10F44E;
	Thu, 23 May 2024 22:03:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L8RkQ/9q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E343D10F44E;
 Thu, 23 May 2024 22:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716501809; x=1748037809;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=AbPppIFk9yMpRgV1P15Ax0GQVd3O2qDfT69hVWPFqZ4=;
 b=L8RkQ/9q6lQUGu7qk7PL/0lRxU6q2uOd1kA9BexMtMmeU0jYXpPzvJ6J
 15yqaFZpTUlJIbKaCwnIsxLgoMDEpsS9f1Ze0j0cvAAP6LQRv5PXlONWt
 KtmGXudP80SvZj3tH/n7vcMwXTVtGhY3o6kwvkOMVGhUkcoFYjLzYK1A5
 FeF498LVOcXN8s7GbXpLLU4Sn77EtDM+PTI+fSAmXmBd99xBPTbIdubF7
 WlBkuj1AJSkBIJaJyTzvGvj1fjQACanrScl0osMwqClbFvx985v3PDlP4
 N3NG5tZ0GdHqqqy8UdD0vXuZboDctvRuxr3po71YArWZ/Pa816CUBpRyX A==;
X-CSE-ConnectionGUID: 0FTtayoURBKRFoA2WS+/Ew==
X-CSE-MsgGUID: ugFi5T+mRqOy0VbTsaRFoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="24265931"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="24265931"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 15:03:26 -0700
X-CSE-ConnectionGUID: O8HOR/izRfmiVAQshTCjzA==
X-CSE-MsgGUID: hgD57UmERt6kMbyaaLIS/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="38662334"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 15:03:25 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 15:03:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 15:03:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 15:03:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b9+ubXINOkjc69k+zvlm6m2y5fzfFvbEpeQa2oxjRAvlYhwVEA4q0LWU0CZjLhv6DJJ38oJ0nIpblpqMFsyIgXYQ8a3wK0fDJ5JKd5axB4ZoCQMpsBQiE5+mg3R4O3Ntd9VgDaA3FJcxQLcXNdBkFH0PS7GtbTOtaIp/OEXJHw2dC2f2WDjFCBkI4uVNy/Mdid00zACVIXRDls1+ymP1qRuGZoTFwbmZVws3D4/X+0KTwNfWQU17zDnLzmPAYAV+CEAnJWWkUVxEILkBXug62zsBQb8MhfXrpotczUG579xR2oNa2BE5i34KTA5freRn+7mKJnEsPJ4wlBIUkiUvIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rojCVj+BiGKqPq5wTdqFjZ6Xbr4s5Hm0uBqeztSUKG8=;
 b=oMlnmV6462sJ6EIw/LFVJcMdNEFQ3E1lrErCgGPhCQb+oyuLb2pIO86igRpNlvMz8bhysPRNy5FyrjmQgMQcRdVli6cYYRA92xIgKwpp5CD6P/qpMhMeQqWEE/MPle9PAXVbWvl/2pGIEnkYWZXueuVni74ObF1xbLVuSMG/rWUn0m97nVP1SMN9vu5bQrg92PkxsrlaJNqDfNgAvVNI3keZzvzousSZhcHEIQqMI7KP3XovhzsUwyMgCw/4bXfLUfgEFmxocqd3IQjn7CyPRrBvTlhLpoo91jGG0A4N5hAI9jD3vyzU++42zehWntAXQd3DhW8L47IFwnuCDFa3ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8343.namprd11.prod.outlook.com (2603:10b6:610:180::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.21; Thu, 23 May
 2024 22:03:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 22:03:21 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>, Francois Dugast <francois.dugast@intel.com>, "Imre
 Deak" <imre.deak@intel.com>
Subject: [PATCH] drm/i915/display: Expand runtime_pm protection to atomic
 commit work
Date: Thu, 23 May 2024 18:03:18 -0400
Message-ID: <20240523220318.25446-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.45.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0076.namprd03.prod.outlook.com
 (2603:10b6:a03:331::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8343:EE_
X-MS-Office365-Filtering-Correlation-Id: c2f89ed8-b666-4fb0-a080-08dc7b7428f5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+GvEjj/yj73StG3TOUtu2GahGNp2MrIRXAl4XyANKtDz1FDJbn6XEe05MUKF?=
 =?us-ascii?Q?kzGiR2DndSZ39Vs6bEmuG6Wd5iX6O3bN3m3bRov3NTnRhMPat6xI237xHfWo?=
 =?us-ascii?Q?pZMoSWZ0+mz6Si9Jhk8nOiWhnrUXIZ/j232g5twjcFooRtbFbHTOjRzb2fKs?=
 =?us-ascii?Q?0jovGHqUlOJmVL794Zt4IYbq6B6jEeOBYin2uGP4ojN6rxmgH0bB5ejgzJvq?=
 =?us-ascii?Q?6FpS9P/45Yb4BmVnhocXup06V9l8ouUMcBaRlC/TNDocpa8yYMaQMtty/nBJ?=
 =?us-ascii?Q?w1QfYjhtRT01kual1MypEqODv/vqJ7cVynMQH64zOa5jfNa6VWgBRZi6cCzU?=
 =?us-ascii?Q?VbJHAUzhcTsQiNIIc6UzBZzxM9zGVmxYsT9A4fs6MsoKG7i33qbQ5wHQ1bB7?=
 =?us-ascii?Q?yZigkEqPo1kb7MmVx1KBQemdXyXm8GBGSAedYd7C8Aw3bX9Tr9hZ5HZU18Lz?=
 =?us-ascii?Q?/7vdHnKHvQAaq2iZINJR9D6ZF0Qqf01ZibuwBy0zvPER6I/wcEbxcMlT30Md?=
 =?us-ascii?Q?EGhcDx2GIwQkSXVQhDQNFkA+384cUdf/pFZo3VHV3zF1m4GPsCeMc6GqrjiF?=
 =?us-ascii?Q?EXyqWCYsKDPQta1+U2uK5YMxLG6SKMCUqsOa/1D90Exuxv4/yWjNZqKwKAZP?=
 =?us-ascii?Q?jWoqyBBmuvpMQustg8CaOJSAn6lyWJ7VMTyYYWJnQPQpHyUYAoyD/Tvx+B2k?=
 =?us-ascii?Q?13SjyO9Vv5GfPT83x9fGwimMJ4Dht2siVZylw9yWTrQ7xrgcVpVMY72hqj5l?=
 =?us-ascii?Q?Mdj3v2s0s2ok0NI6NFqyv4235crBlNXYuxfeCyxmeZFRnyTugoGqPrOd1q8W?=
 =?us-ascii?Q?TY5jPXaMYoi0l2t9Fxc2il6DZWHJSyx0JW/t5Q3oF/sDEmt4YBwC1krrljcy?=
 =?us-ascii?Q?uJKGyTnBsthp8nGPTeX8il1jAk4yF3O2sHdd48irRMxMKMRRoyGVh5WIxOD8?=
 =?us-ascii?Q?FxEhIis2pwcb6304cjOyehAByNomBF8TT/471aGvECJ+A5UTTh4KEOMzXwD0?=
 =?us-ascii?Q?eSlrrvSjWLytexeVGxQNJjCQ3IL3Ec6W74dL5/vipLgAiiykMsRKNT6N/No1?=
 =?us-ascii?Q?yWpuZCcmJjEQ0xW9Dchqe/sblN4kQC5F6OezerIn26EqUbRqojLwV/G0MAGe?=
 =?us-ascii?Q?rxxSUq1Fex0813dcMhXGYDnDvP6u/fDAXn8AjZgxWpbv/Ayo78m9lkDhQdcI?=
 =?us-ascii?Q?cBrf62OZAVL5Wf5Y6+hiyTTy4ZMcEMQBYAR7f5LzBE8mL4MW+2GL0xGM+JAs?=
 =?us-ascii?Q?u8a24YOnhQct5OSUrv0Z7n5murksdH4gIIbPFAavMw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3xoj5A/Li6WtlZ7If4HxN2o/pSd73p8tzibKtAoeCHpFMeMMvAmHx//nS06N?=
 =?us-ascii?Q?+uWm9R2xKXVfMghldidF5AWZ/CPRUDf74hNqS0/vYwtitQIERI29tct/Ypnv?=
 =?us-ascii?Q?ZZAA2tA2tvQQj9mrsNWOsHG/9xY3K0FAMNBz+qdxuAbQ4j2L/fmQy7E9H3zn?=
 =?us-ascii?Q?upwHu1F1VRq2SmPTFM94rse//r3ogJ0uXc7XvYUhkfhz/GxGr+CO9I1Nfsld?=
 =?us-ascii?Q?rT6SkwfGNCZp2khbj8+aNRAsKzN53Kjh2vTGDoV0RS5kFRcRyKYFbpDduIa6?=
 =?us-ascii?Q?qF4VmGlR8GNUZrEcKSgr63cQrjh+22T2lXwtjZ2+fxRXzr9ow5YQSFYrgeHu?=
 =?us-ascii?Q?jKhJuH2D5KB1kNvLocu5cbfaS9FNHLdBPprO8kfOX2FTOnfWBLzB4aKScQU/?=
 =?us-ascii?Q?0UpnfFA9Brhtp4LqhINSkNiTrv7JO8SPFxJykIUopcykkTtCJrC1Lz4MjX0m?=
 =?us-ascii?Q?i7SsfCxmo0ND4rnt5TPdB4mNhBfB4wESBnxEZT/tTe2x5cIcdGF713TSaUim?=
 =?us-ascii?Q?wypLASHCzIpx2fuAJkUeifaw4UXqUK8ZXXkRe3eHqPUFVLeDasx+sVmjvgD8?=
 =?us-ascii?Q?Z5+Y8ixW+HWaohQf3iFQxQnjuSseDISfzgxLRbzQra52yuwJBxtV1kSfK7s3?=
 =?us-ascii?Q?BjvGuFnVXb9tRixfz2qDAAssT4qmNredcv8Htpz9Uvnp5h8CVxI2xQu4Cyjn?=
 =?us-ascii?Q?SXxPXz2QEZs7hq56ooXwQHs7EJIzaa2GhgS6R9RYCKa3PAvgemA3pS3NRdTj?=
 =?us-ascii?Q?u57H/0PVBPsOAhREKxmXxKsSS0yy3yGwUdANPC0q71Dr3vTBbIpmJme6GriO?=
 =?us-ascii?Q?aN4C37n1NxOJJExpe9qbJlNCz7Hytghmmxw+y7Ek9vp5BG5oT3/SKAWDOaSL?=
 =?us-ascii?Q?i1FIiqTyq4o5K43h9SPOXwaAn1SRSBRvCk9X0uz6grl536AuaF4+sv/Ysyay?=
 =?us-ascii?Q?g85xcCnWDGNybikwCgkmnbMzQkdl9nurnN9XbObgEwnZU68DG2w+9rognJ2A?=
 =?us-ascii?Q?EKKFkvKVehQWMkl4Xp2FVRlvxrx1JBtsPYdWPn6YaIM5/sV70+iZwlhqFNXN?=
 =?us-ascii?Q?6F2fFyl41STKPzFQf/N0aKbXFyRzM/12qj620rAX4bgzUbu99hS1/kZzV1yA?=
 =?us-ascii?Q?gBiwwAeUmy3Sxzw8FsNuJ/LodeC3OAuZ01JlscJ78g6EjkRotEc8bWASfc4K?=
 =?us-ascii?Q?feagR8Vmmx75UE/kPv8em6b5xbf1GESILCsrWAnIO+YGc1mLkX/W/J00yP6b?=
 =?us-ascii?Q?bS2IIzBqmIY+c/J1P8P4OoPJRgLuYyKDTdDDOPc2Jy+PQ5iFXvdDSly76Xkt?=
 =?us-ascii?Q?jjTW3t4yCLE8qM0Hu6mvbqr7k3pSVPH/wYW7L38qq7VsULxJijB82hiYLR/o?=
 =?us-ascii?Q?DG2OXJ2sInGA9ncAh4QPUFcVSR0Llpjz1RHmMeKYEbjvJFzr4WS7ay4LNxFx?=
 =?us-ascii?Q?dJKXYpZXSVfv3rNJyETsOr37Y2GF6CJ+uOpEDkmcdbRAuxXIZ6n0i7PpKp2A?=
 =?us-ascii?Q?KgHRRmkDLC1Aimh2Tag6cp3r2WoqOxdvfcW0/t9psiQTsqCUtb3klr1cjLpB?=
 =?us-ascii?Q?hKqrvm2p4Bis9yp2yh4i4JOHMa4ZgSIZd2l7BVZLVqtqcV1p2bzRh2+C/NUB?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f89ed8-b666-4fb0-a080-08dc7b7428f5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 22:03:21.6072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aC+sOmuDHWcAUUC+AjbRdH8dDW3Ygu+xJKo+xvkMqF4pDdwggJ5wZC0RUf3YjAiQC4JQZ+56HRA2dCeZd9X46Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8343
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

Xe memory management relies on outer bound callers of runtime PM
protection and it will warn us when some is missing:

<4> [274.904535] xe 0000:00:02.0: Missing outer runtime PM protection
<4> [274.905051]  ? xe_pm_runtime_get_noresume+0x48/0x60 [xe]
<4> [274.905118]  xe_ggtt_remove_node+0x28/0x90 [xe]
<4> [274.905164]  __xe_unpin_fb_vma+0x91/0x120 [xe]
<4> [274.905234]  intel_plane_unpin_fb+0x19/0x30 [xe]
<4> [274.905306]  intel_cleanup_plane_fb+0x3d/0x50 [xe]
<4> [274.905391]  drm_atomic_helper_cleanup_planes+0x49/0x70 [drm_kms_helper]
<4> [274.905407]  intel_atomic_cleanup_work+0x69/0xd0 [xe]

The atomic commit helpers in i915 display are already protected.
However, they return the wakeref right before scheduling the thread
work items, what can lead to unprotected memory accesses.

Hence, expand the protections to the work items.

An alternative way would be to keep the state->wakeref, returning
them only at the workers. But this could lead in unbalanced scenarios
if workers gets canceled. So, the preference was to keep it simple
and get a new reference inside the thread.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Francois Dugast <francois.dugast@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1e8e2fd52cf6..03a0abc589fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7172,14 +7172,19 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
+	intel_wakeref_t wakeref;
 	int i;
 
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
 	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
 		intel_color_cleanup_commit(old_crtc_state);
 
 	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
 	drm_atomic_helper_commit_cleanup_done(&state->base);
 	drm_atomic_state_put(&state->base);
+
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *state)
@@ -7453,8 +7458,12 @@ static void intel_atomic_commit_work(struct work_struct *work)
 {
 	struct intel_atomic_state *state =
 		container_of(work, struct intel_atomic_state, base.commit_work);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	intel_wakeref_t wakeref;
 
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	intel_atomic_commit_tail(state);
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 static void intel_atomic_track_fbs(struct intel_atomic_state *state)
-- 
2.45.1

