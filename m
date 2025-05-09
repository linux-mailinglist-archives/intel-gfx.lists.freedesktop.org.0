Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C59AB1BF1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AB910EAE3;
	Fri,  9 May 2025 18:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VVJbeIlK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19CB010EAD6;
 Fri,  9 May 2025 18:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813844; x=1778349844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Q6czn3/AWSh6pX0/GjVGFcpQrMdPP4EzdxpXB/lgy6w=;
 b=VVJbeIlKj917WqmVIL+Fp5hhTk5IkGNvxvPx9uRH5wV5/qpxiFAvcVVW
 WZr7eUTr6rJxSM7HZ2LASdHASk6EqPjwVo+4sgc+YU9rEvu+ZjKvmxj9Q
 NUhU1mWOKVxBx+FwUGwMnhQIqr0g7qn/hd+bJT+Vy5CfYYGNotjGHAzza
 0Yxcrc2JtFaN1W58WMs1V9IYDnE0N+blRGO+wDWhXvuG37XbXtyXU9mSb
 GIYXvnzvIgGxw22y6S0HYSkLtPWLHHaP2hxDffNL4gRGeptUaRfAm9ytX
 WOkX+v/16epVy1oKHhkrcKWT+9Y4+7Zcz+VF/HDAejXb+vKQ00MtYKJ8o A==;
X-CSE-ConnectionGUID: drc7uE/aR1Og3fU0F0DA0g==
X-CSE-MsgGUID: Q6E5VDo6ThqGBjepOV/bSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48523185"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48523185"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:04:04 -0700
X-CSE-ConnectionGUID: pmNgJOJ6Q+W8FEnXJfQtZw==
X-CSE-MsgGUID: ocz7JgONRYqeNOWF/hyoLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="137196786"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:04:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:04:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:04:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:04:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tuz1wbycf15x1FQsTU3t47TRWDvDjVznLw09S+dkzNW5oAcCltIuDBHWwmdT+4DGwj9Rpd2QPMPffFSIHiZdSPG+tacwisfTGuOO8/7dbeSfM4xYRKaI9rS5uIH8hVygYxZDX4hOpxl+eXDPm99NEJhaGgr4F4Wb3RQwGLKz57XnL9bF60k9+HYljtePMoE5u8H80jRpMcerOgKG6QyiLRzGRVOn5Rgmww/t0avV4+qBzkQno5Lc5aE9fUaXOUFee31+eTeQzfW/lEGZPC2gthCSvL4iADmgn2kh5yQor6JP5l/SyxPvYyOEuys3zUEnI3PPvFcxN1Kvrx+SzDNdPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xj7hmP8Tmi1xrXHB84zQZFuErv+AniRx5Hnj7CSGjeM=;
 b=nMqnT44h1LjWSp8dmS66ss19jeQefcpWrogVc5AYVhZmeqLpIl5XPaLHjL5Jpdvzp4gvGEfH0+NSHA8zuZqDNHo/O1VgPBRitoV9uwN9YfDXb5DAu+/LlC5jHwBTMB+Agwkykaic7eE0TV+Xf4GuzKzcpUyit9IgvY4lIzhaHs3osaGem6HxABhZBP2tyQTdszZ6T2/DOuZDxXG0o8Oe+DKEZKfazqgvyyAQt3gy17U/tBJs1ohkZyZzEDYIx/AIYUny47/kcDDBbLClODAQririL619pd4mvKrdOC/Dqf9NnI4YQIPgGoJpmhPtD5NhNNyGcWz4hOVPIpekE403fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:56 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:56 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 12/12] drm/i915/dp_mst: Enable fractional link bpps on MST
 if the bpp is forced
Date: Fri, 9 May 2025 21:03:39 +0300
Message-ID: <20250509180340.554867-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: d1217e73-e9df-4f9d-001d-08dd8f23dd7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?r8W+jROFgD6eOk8j+f2P6bBkRy8KmphiovxrZtpyyxNtX9tEXTqa+iJAl+fi?=
 =?us-ascii?Q?jqoFtP2DeLKyN+xdKqzehXM2d4DRW/xR0mPwWuLe4s0G6g4NaZ4q+ZeBznbU?=
 =?us-ascii?Q?isAZ+GOet722YNJaljHr8eoJfGgfraGKEOlfHwEbw+RLDn1uYEZ1P5jIcD+7?=
 =?us-ascii?Q?zs4b45+bPhaGv4Ahh8rTwOq0U3G+Ptmea1QBpmG2XiCE1uFb8AN2wqIbPr5x?=
 =?us-ascii?Q?S5iKySerBVN3egIUhym2eK91nwCZ0xnTgHYjZqk5936YIOh0bmn4C64R2xsP?=
 =?us-ascii?Q?t/71itXKnb5A8MHzjNy8SK0+dQwDtjG4Y/xM5L5hQbJZsBIeVfcIcue+2BPe?=
 =?us-ascii?Q?e35RkrGueezs3NoZ5MDmosOk2F/KfzxEZ/3z7SRknwYNKXbvKLSSs0tvlAmo?=
 =?us-ascii?Q?kCwSeFuMSNL+cg1bapwoG22jy9oUSmQfnv10KzSAic3WD3tkyJz9S041RDuC?=
 =?us-ascii?Q?9Gtu9xZC516AMWvwslo7y2bZVttcFnOilp4XEfhVghnPxtpfyN9Fc43vn2OI?=
 =?us-ascii?Q?PV+i7lnYePqAw+2AZDAqqrxwZg40v3D94YTP9pWenOZXtttoideuo5kby3K9?=
 =?us-ascii?Q?1GwuFTy48Rs4hY0IO5qmmbrNEs4fnq1Yyz/XlG5BGEnoIV2aRN79STQ87PPR?=
 =?us-ascii?Q?fZyyHRQH10fFV9JmN+R+v4PKYk+8kgr585yToREZs/Y+TIDe0mTjEXnwlAHO?=
 =?us-ascii?Q?djlFHyOj06CowzjPWj+cd3bBtSAN+6No4E8M4Q1WF08A/eVvAm20Fuqv9sLL?=
 =?us-ascii?Q?5vq+Gq3CkEIzIlCrgZ9jsZDifIC9xL1HWJN6kOujylnEzZwlOvZE1hEZFpzc?=
 =?us-ascii?Q?Ax1MHNJbOttZuQgv/Fnk+NvFY9WeZHnovKy5Sl89JEmkWPPE3aosY2F8TrgY?=
 =?us-ascii?Q?7e3YIRd/9gLOxCEkr/1dn9zSDOVRO4eSHyEuYkXnFUIM7lxhMAy8oce33zbh?=
 =?us-ascii?Q?Uq3YrTco4wYBdtPwkHcB5QsR8q+0OItMuetedgKRpX2JiPNWgC6syjqpJZUP?=
 =?us-ascii?Q?+3RxTc04pGci6HeyWIPQD7JcHdZTQV7MDSOZGJudf8ASQeR8a9mvYvb6zOxt?=
 =?us-ascii?Q?MXeVp++c3EpJTlVkKiQ91UDRblRR8L5Y2+0P+JOI1tOiLmfKx5B7MxD5OBtk?=
 =?us-ascii?Q?Zo9AdWvjuyku0F9pw3FHDKLIIHvXE7FxFshHF2BhUjLd5F6Jl/lq9pLbGiIE?=
 =?us-ascii?Q?xDE0G/3cgfLEtESTKUReaK7gedzs/GMQPDwlsqBqmUGFka+ah2BhA1FJiY3B?=
 =?us-ascii?Q?VRBX48PpB1r5QAqDBMOmt0fRlxhQT1MlQ6tYC54Z6RysuKIGHmvhVXYv52YW?=
 =?us-ascii?Q?blDa9I25Gs0EdB+bUi8sxGDkVH2xBOgWj/uOVtg0yu14lZGWT4ObCMKByEyl?=
 =?us-ascii?Q?vOh+RCl+/8H565GrtHErYlqRHpPA7YvV4pqxo+X7UQZ16MXq9w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d7r0y1KboidnCe/ydkWJllryAmJ8q0zYYsxS5gWqQekHIFpyC1+gqE6f34k3?=
 =?us-ascii?Q?U89gId45td7mAs3mo9zkjVHwJ186DVJHldl83USlwfBZ7TTeLr7F6SjOuojE?=
 =?us-ascii?Q?P+v4O6nIAm37/KK80KC+rR1brg0ocPAGCbMST7c7YaWLhnzztdTeorZg8upq?=
 =?us-ascii?Q?lUjRow59omgVtRPEx2/un30U/ew+hPE6EazZ4V20oJ6lFNL2Yd8IO/brRxvq?=
 =?us-ascii?Q?bargvZGnLvKwnCCuljmzqjXijd+oF62gSKzdDKdK6bJHe2tyDB3mH5EQ440A?=
 =?us-ascii?Q?iJIaF6mNRrAhFsItaXMwAbt+I/gIawSLAcwc3GyyZoE6wDQFuZyOoeQWndkq?=
 =?us-ascii?Q?/80QIkIA6rnQ+DSe3m4Pa6XXuZiXEx0w8tq4yKAdMPITu462dvUEbZ9XcHMy?=
 =?us-ascii?Q?oXBuGjBnZSGnZiCKqIddgTJLXVBIJJOFd1jUtyJ5prEo2ndL+d4yynz45qqd?=
 =?us-ascii?Q?AG/rspHayws1lAPErD8cxFoZ+owe6MxihQFuOz1brteLWKRkAzOvU+nwLpLF?=
 =?us-ascii?Q?BkZ7vwltlHvEW5R0T9EOvCj9hdLiQwBhhW1seYMO/o5nc10tRAfJfe2cw2un?=
 =?us-ascii?Q?pl0ci0pzv0Dxun1G3coz+cApiV8Zp8JlQrzgXn4ANKFgzZ+goTpCRWRGQthz?=
 =?us-ascii?Q?B+u0/1Uut8/hgUxo041ADSNr2cjs9QCULRsZ5ZQcioImziALOTmgAIcvUiXW?=
 =?us-ascii?Q?NNwf6fhqsFqF8LytYaPYm4gk7RYylE72ol8cayxSnTAfjT/EsjQujO/SxtsV?=
 =?us-ascii?Q?N/X2KdQymaBIi7JlhPWgOVuJ1wsF9OXfBlf8FlVGoaKICNZD2Rg/gQccTQym?=
 =?us-ascii?Q?rfmxm/gNQaoGUPJPOe0Rif83P7cuWZdJHdRS9saSZfYEhSmJqTaVIaD2bHjO?=
 =?us-ascii?Q?0bVMEM1ZDzDtSmKsP6LWI/oB9I2K/EZZZe8OPspMwSH3c794zNnzyY5K/wCJ?=
 =?us-ascii?Q?Q/MUbk95wE3fHC7JSIMdOg9cHfpdNbLkVlsQDdVC9uudmiWRprTTJq/ZmC2n?=
 =?us-ascii?Q?XWLnf2qbVX0iH5c+cMitx0rmytDuaYyus72Is9HfoFZGBqLjMKGUQucZ7fpL?=
 =?us-ascii?Q?24u93/Petf6qGRibX9PF6cN41AcGNhLE4PHfuVi0Vy1lkz0zFKuUXCNwYhW/?=
 =?us-ascii?Q?gKuS86RTadetIzgGWQnuOuS7BhWpfUiHAO0WCR9GDR573e1tneJtlfhGFKuq?=
 =?us-ascii?Q?pMH6gYP1Dl3fDsez9Q1xtRDdzn+fkTveQiN/sdz+OellE05Z4ua+Kqa6MMi1?=
 =?us-ascii?Q?dU90IkD3YpNvwmWJZRy383ub8S6UtbUVGpwkS3y/tpLfFVYT8GK4wWYxcSMx?=
 =?us-ascii?Q?t3D6qvvhfZYJCJMDQdPIgu75ZczEenlgn/pKPFzsBWNdat8zean8pae94qXA?=
 =?us-ascii?Q?xhpTl6FW0kghiTsB+QfJIJvsyI7FmBrexBAGqkGjR/IxzGIlKDYy9kSjmI7k?=
 =?us-ascii?Q?el/yTUS0EcMqqlfxkpdw9YUtR93NCbY0smsXEumW43ui7xasp9v+yIpKKA36?=
 =?us-ascii?Q?is/DXyMl6cvNleeIb53g4DwSUyGk0Y9WSXiGMBxY1loGvAHVaWyYRpFNMd1y?=
 =?us-ascii?Q?JqbaXJPGGa1WLwuDYw4U26olQt26RuuqlFCa8VB4GJGYrjPnvtEPibjOuNtX?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1217e73-e9df-4f9d-001d-08dd8f23dd7e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:56.2098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ShGfEWyBqH/9A2KJzt6VRHCVo8BW8bNyfUSAJq9GomH3lwwfBOwzPGRdcCErJRjPhp1C/QrzKZecXS+DMAZw9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

Enable using a fractional (compressed) link bpp on MST links, if this is
supported and the link bpp is forced. Fractional link bpps will be
enabled by default as a follow-up change after testing this
functionality within a set of commonly used MST monitors and docks/hubs
which support it.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 6 +++++-
 drivers/gpu/drm/i915/display/intel_dp.h     | 2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3021395dead2d..91a34d474463a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2103,7 +2103,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 /*
  * Note: for pre-13 display you still need to check the validity of each step.
  */
-static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
+int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	u8 incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
@@ -2111,6 +2111,10 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 	if (DISPLAY_VER(display) < 14 || !incr)
 		return fxp_q4_from_int(1);
 
+	if (connector->mst.dp &&
+	    !connector->link.force_bpp_x16 && !connector->mst.dp->force_dsc_fractional_bpp_en)
+		return fxp_q4_from_int(1);
+
 	/* fxp q4 */
 	return fxp_q4_from_int(1) / incr;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0b8a9b939070f..eff3414c05dbf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -212,4 +212,6 @@ int intel_dp_dsc_min_src_compressed_bpp(void);
 int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 				const struct drm_connector_state *conn_state);
 
+int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 13b2bd3ec8607..57602606acd5a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -499,7 +499,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
 		    FXP_Q4_ARGS(min_compressed_bpp_x16), FXP_Q4_ARGS(max_compressed_bpp_x16));
 
-	bpp_step_x16 = fxp_q4_from_int(1);
+	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);
 
-- 
2.44.2

