Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AABB1AF6A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0982910E610;
	Tue,  5 Aug 2025 07:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CW5vFDK1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E3710E5F3;
 Tue,  5 Aug 2025 07:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379457; x=1785915457;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=YvjHHMCxbxi7O0KAh+xXe4Sy7m/PoG5e/fFSwJvQ1M8=;
 b=CW5vFDK1O2qXbKAuL1yceEVHZdy8QYoaGX/3k6K25uwznBZCacKBmyWL
 HI/vd3nIz3U5hG1a/gxYf4N6LFnrH1byblkYaYtqE6JEjslPsepXPWSca
 CKsGENavH1URJXi18B9PeYYsJPPN/FkqDdLCHyefQIxFDtxuZEkpRqy8W
 nsyNsjcJPfa+xywWJnsR9I//1QX/erVa1WZbwWwihsFLtrvcofOjB4qr/
 I/y8pvUirvT+Oa67Tl2exTlKmWs/DjmcLRjPHNzqBM6KIcKfDYTb+oA/9
 dVPa6FytxB6kbTinx+aHF3xGwYEd/LDLaIXigSqKtwcVOqvFQeJgJYWp0 A==;
X-CSE-ConnectionGUID: yJv3iwhATyGjYXObous6Rg==
X-CSE-MsgGUID: NHfxaRkRQ5K3zZsa9birvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="79217816"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="79217816"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:36 -0700
X-CSE-ConnectionGUID: zISVU3yiQ5C7Gp4qcyY0RQ==
X-CSE-MsgGUID: H00rsZ9BQCqHvZiS8lfoAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163668578"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:35 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SWZCNV91a7JrMznAI+Fc52ExJqgHw8W7IKidwjbJsr6YEpReopSqsKVYU2D8h9dNmesMU4bF1MNbf4hYM9OXot/YQBZKRtRkLFyjb8BgIqVd1I33EWsfw+5lydnGb295sFGEA7/683vnPfQE2tOejzb0C6P9x3NGRmNExyS2dDi02ppKESIyhg/V4RkMTUyIug72fLPbA99qPt66g44GlJTqcNPjntoFZ8fyD+/tnP/pUdQm/52VmyzDU7/Ro8T4Wt+MXHYtDe6TczKT4FK1HgIdXD1aT14S3xjFhya88tJfjoZtRZqwzQXfOFevcACu/khXMxQJXAAp9sxHMLD+FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wQVVD1UNB4/R0wazRmnfYWjKxe20OyS3wB+b1r1Hhhs=;
 b=kxMIUqjU7sQ0OeVJ6NW4dE1HHCKQG1neOyNZlQVq5oZwLv+3+MFmZSItHE1VwtePLln9bkwJUd7GvxKeQs9q9BTjSGpvGm8gRbUqNvtrCzriFISJH3XF29fpk5vIfMUqirpQM1lfefAGJvwuvGPE6R029iP6/GXR4esBdw9HjKt/ab2TmvkqIVa1EoNdtoh6m6zNzyP6tJcjMpG1SCMFp4mgvL0oqy+CVr8+8EXKwbx2k5vmNS2fpgxfFs5PBJrZ8qWVkw/jst85AzPlYFHJAqeI2qVTROHRGkqkBt9LnCbIv05cBCOIvz+QFioLEC5rzlSRgcqa147g80pTnmt9vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:30 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 12/19] drm/i915/tc: Validate the pin assignment on all
 platforms
Date: Tue, 5 Aug 2025 10:36:53 +0300
Message-ID: <20250805073700.642107-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 35d7eac3-be7e-4889-c577-08ddd3f2eee8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LRixK9bItil1CgcpQzv9sq4V6cGCV3PJKgZosaJZi6kQTd1GqJ5RbYH89cWt?=
 =?us-ascii?Q?IrEN/2+jefc8z8QCxHhrblpWqxvbZBQxgzRAiIfg9PfgXPEXXN+YDXypYkl+?=
 =?us-ascii?Q?5aZFKasL6yerx+fEsmEP9iZ43rzPggefATaexpJ+cZyPzcXtr+qg4SSojE2Q?=
 =?us-ascii?Q?5XyGCOQxt+7/oJIYQzNBj7/ifL2xLz7wbo+R70/TsRQuk+qvv3VBDi44UQne?=
 =?us-ascii?Q?z15OL5k+c0rGRRzqT8B+jGLEFx1mosZNpAwgzeTTED8ah25rf3/4JQxqXzQ1?=
 =?us-ascii?Q?BMoigdLrU2h/Q89XnCvo5XCvg1hor9ccSHpP805cWbHvUT9XbANUp+X0aXHf?=
 =?us-ascii?Q?Z6sBdM74eBQPp6Atym+7Z5T6fPRktWspoy0bfLG1RvHxnabKStIHaG6dzCYu?=
 =?us-ascii?Q?hcssZ5QnQV/XGHmgwwJyf7GQwyVbhh1mXK9MvvduWcdcO+PwfGTb1aSOFRh5?=
 =?us-ascii?Q?hUgrooXASaLWmw0+Dr31pgaV8HVVjf2Z0vGg252++lnB66G0judiPM4IXL5v?=
 =?us-ascii?Q?vVktJUOLf3XSLY40pY18v3YQEGtjMHKZS9ZDW5HimBN27Mx+c/x8tw5ZWg3n?=
 =?us-ascii?Q?anz5rOVyNmdXOpQzEzhLLL3gFgtuKq78RFU+eaTgUYljAH7xdFpdueLXRUzN?=
 =?us-ascii?Q?eJw7Vte6ztSIYtTYrARMRk9suU4NwyDzyBGEsfWWzDOiRPxOm34LxY0Hwd/D?=
 =?us-ascii?Q?aA638pUUXDlCjsw4FyOPEo4gTeE8LxGRTmVWiKHzN3PIgnEz6Aq/azv0ukNE?=
 =?us-ascii?Q?3Y8zihMjtjkoes1chr7ItoDWBqr53uvbH9HAnaKNTrXT7nzaVWNppDiBwbDi?=
 =?us-ascii?Q?g56bto5CzdoDI9LIcH1QOUGUxR/IYN9LjLm3lmbHhGxJflIx2DN+lKpA1QE5?=
 =?us-ascii?Q?167gaoQJxBmEdwy9G5XDKg+LaxSrit/76BtshnBAiR2TT6hQZgxyONq5oYoV?=
 =?us-ascii?Q?o3UOTX/4m9gpQIFVTEewFeqtkH3jq8vVEjn6VO9zTAym04oIZbDhQqaI1Bee?=
 =?us-ascii?Q?ECx0qMLVaVpCMBES+uDJH6ufl7rAD6HyrWKMjs4PzmhCT0sM2M0nDCaIjk0+?=
 =?us-ascii?Q?gZcW5m1QtZHwxVPbEQ0E+LWCq5hJCp5YBsj5sS1mkUmM2vbewGKQyG5zMgdi?=
 =?us-ascii?Q?PUEKX6XX7LqKSBI/LatBHnTrWZRrMC1NCqGB7RZmgfpQ20YNWHGK5SCagel3?=
 =?us-ascii?Q?zyHl8Eum2sq9lprouWsHqk4oD+jaZLyIFPfMGDyjvAGKZxi1q6cO1TJ6kt0u?=
 =?us-ascii?Q?v9/MG733Vx6Jj9dvYQ6mEgWIrixjmMtg5MEQv4PdCWmQYF1x8NuzAgnvjp9p?=
 =?us-ascii?Q?BJL5BBC+dWNQbJqY0jN321+72ABlTBIm186Xn62owNZ8jc0D/4U104bcGzrb?=
 =?us-ascii?Q?CB6anVSB9+uHHd2dsDu5kVXkyPZoWg6RkApDv6RxKwXGnWr68xkIimOJaz3O?=
 =?us-ascii?Q?rFNho6yNE4U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f/nn8DJH1zaSq/0glDoFcPW0rVAuM+kl6trTni+f588czK/ErhwnoD6wTs6x?=
 =?us-ascii?Q?YQ/TohzyU9hq9wyZ83U+fQiZQTQx6pC3R8CQE26QIDok90g1Mk3wG9RxtW2j?=
 =?us-ascii?Q?4X0IzUQo1kURkTPPubQ+eDLBfTzH/SdkS2LPFniBlj26I8ri7rpY1LaMdDSx?=
 =?us-ascii?Q?RWZ5UMrLMOX6rghxvupq+tBgkQplBP94yUbN3DW7IWh5Culw3G8ZKgBYseZb?=
 =?us-ascii?Q?UnNaN2ZXQcOwvfI6HworyICsa+rJ6mdAnqDG0JmpfFqkhhPlC8hh+ykWA0/2?=
 =?us-ascii?Q?pASSRQ6M2CROkQiyTJc3ApGK4QFbXxz779X+7n4fXN7oUpUil4aw9viNkgxI?=
 =?us-ascii?Q?XyjaeY65Kfqji4BdZ4uZchnIaKHfwbLS+wm0TsqMkuw2PvlohUo6B/94YeLe?=
 =?us-ascii?Q?2VziJILnFm/Dtuo1zh7cgVHoDgA79et8jib58ws3IooWxth6v68PGNxtcVIa?=
 =?us-ascii?Q?tXTjDCn9YZO7ZsCED+4P0i9/4oDew1rx2zsKtnSzZNvbQGo00V6wvSsqwC+Z?=
 =?us-ascii?Q?kPgidNSPGHLcCg390BS5m4zmrt4+YSlK7/aayNiQB9CDRObuEEwChbeY8sC9?=
 =?us-ascii?Q?WD8wvRQFGL3jbSe6/FNzGnXRwDH7fmOlKeVn4Fdq3ysYZKqRprF/eeGoaCFt?=
 =?us-ascii?Q?Svcz46AueWt85PjSqQPbJDgLxh7/4Nyc0pgICuo5cgQzuCmky+FeH7QGyly7?=
 =?us-ascii?Q?Im8lDUrrCP5KXZOupj8JxumghFr/DR8TwSjwRb5HE+Q8EewdFW0kiXPt2Fzd?=
 =?us-ascii?Q?DHBot1A/LZJv7XVFxeg4RWeDtvdcd60+CjzVbZLE0T4aIsx9I1KrDWl7Gt79?=
 =?us-ascii?Q?FFyasjmS5AGagiv8I1tfp33RymjG9GPsBAqkdHAyj8a/x3mSIDhwcbOgIwk4?=
 =?us-ascii?Q?KSQdiuwkkk5avKgvgYPrPCZ6neU36W3CcCOb9aMcJHg+su1vzgbg21QhixYj?=
 =?us-ascii?Q?HXncCv8ojtBP0vp8QE23jDtD2xA4oSNtJCUMIK2AgiZvCS8j69MmjQhinBty?=
 =?us-ascii?Q?riijZQ0j/I74vooOI5T8eQbjQJDrCqljpc47f0le5ue71T/ImD/93ZNk+Lhd?=
 =?us-ascii?Q?qbyV5gWQkjgejHVT/WYm//iMmNjAUtn7Uh7EbdDi66zz7I+RndiGB1wagAz2?=
 =?us-ascii?Q?/Bz9uYnf1N+cjXgxFIS7aW42pDJPKYWEyz5/HiTwhcm5azLpP4/zVX8P/tQl?=
 =?us-ascii?Q?FViygmL6RpjlCXZgBuFwavQiB8HASXsvXI3XeavDIdEMJ/GXfbDXnG9rudDp?=
 =?us-ascii?Q?0u00dwmS4hgcP+jcLmxD2E6NcWPvBKWd7QOY+7k3lkVlYAKkjioNet+esmEV?=
 =?us-ascii?Q?qfc8i67rWuxX50gYMqBSwt7NsXRM0pMbi2hZBoyoiUNEkHYr+ZC6sqmHSXUx?=
 =?us-ascii?Q?1DeFVkbZqI0KGII21MdJahtr3hxIQx+pD+2tcj75ROUeBEOf6F3nG/4dFpQw?=
 =?us-ascii?Q?pegr+PB7WfTQtTJxzXrLQFfR+4eNSkjdkw1/39F/yLeFYs08fqbZFmTThe6I?=
 =?us-ascii?Q?anq+Fa5Ejhq8jfgNnzv69p+sx/nBLhJzv65oToMtOfMC4h9MIv9cmaEdqojc?=
 =?us-ascii?Q?W5adyJD3Si7M/eBVQ/uCjuc+RI4dOVAxoFGxq+hddsZDwEvGrnrHKX+gTWQ7?=
 =?us-ascii?Q?cGianR7uCDtKB7I6ZO66RgqFYHtXIVAqK7MmJutL2FLY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35d7eac3-be7e-4889-c577-08ddd3f2eee8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:30.7153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z/ysseN3ETqrlp7XxqT3le12Gddt0Zv8LhN2fF48EDH8UsYb2wMdRVMU3z607HEzE38DZzjpJW2/22L4EC9m4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

Validate the pin assignment on ICL-TGL, similarly to how this is done on
MTL+. ICL supports all the pin assignments, while TGL+ supports only the
NONE, C, D, E pin assignments.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 28 ++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index dcadbf7b3d40d..20d0bc8257860 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -282,17 +282,35 @@ intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port)
 {
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
+	enum intel_tc_pin_assignment pin_assignment;
 	intel_wakeref_t wakeref;
-	u32 pin_mask;
+	u32 val;
 
 	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-		pin_mask = intel_de_read(display, PORT_TX_DFLEXPA1(tc->phy_fia));
+		val = intel_de_read(display, PORT_TX_DFLEXPA1(tc->phy_fia));
 
-	drm_WARN_ON(display->drm, pin_mask == 0xffffffff);
+	drm_WARN_ON(display->drm, val == 0xffffffff);
 	assert_tc_cold_blocked(tc);
 
-	return (pin_mask & DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx)) >>
-	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
+	pin_assignment = (val & DP_PIN_ASSIGNMENT_MASK(tc->phy_fia_idx)) >>
+			 DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
+
+	switch (pin_assignment) {
+	case INTEL_TC_PIN_ASSIGNMENT_A:
+	case INTEL_TC_PIN_ASSIGNMENT_B:
+	case INTEL_TC_PIN_ASSIGNMENT_F:
+		drm_WARN_ON(display->drm, DISPLAY_VER(display) > 11);
+		break;
+	case INTEL_TC_PIN_ASSIGNMENT_NONE:
+	case INTEL_TC_PIN_ASSIGNMENT_C:
+	case INTEL_TC_PIN_ASSIGNMENT_D:
+	case INTEL_TC_PIN_ASSIGNMENT_E:
+		break;
+	default:
+		MISSING_CASE(pin_assignment);
+	}
+
+	return pin_assignment;
 }
 
 static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
-- 
2.49.1

