Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8017C8FC56
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEA810E84E;
	Thu, 27 Nov 2025 17:51:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5EjGx8G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9FD010E843;
 Thu, 27 Nov 2025 17:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265872; x=1795801872;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=he/r/zWRIjxmibPNE3m0LZ70/Yredx6yBR3i2VjnteA=;
 b=P5EjGx8GKgP0bRsR3Y7QcwxVoSnaG7qJ+qudoJwV02OECSetToF0Ji2n
 UemSQDZxdxqrFvhj50RmlfN7ZlSWTdCWUlfHSAb+mGM8AaJHj0Mr6Shk8
 I9P4XkDzT4JKPZ2Ix8XyTk/+LfE+SODlOkbbWTCxedBwnwtLJ6OU4Rklq
 b9RQlYoqlHbY8nB0nOJ++xehXtLJh2UwcbOtpvx5qh8bBE8b/QaKqDIxI
 ccgRwovRdXcbIqpXHAJk4b0lYY43ZWIZfE51mssYhwpTIhoR3yOlBQyCS
 07VoVVz+dqqTzjsq1o9T675mZJesG6WH20tdhssrg5y3o6plpHhzqnJfZ w==;
X-CSE-ConnectionGUID: 8FyTa2LzQu62bwM81gG7uQ==
X-CSE-MsgGUID: kjC7MVc4Qc+ExSBGjeToAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276748"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276748"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:11 -0800
X-CSE-ConnectionGUID: SbUIFTFgRIebaOa84nrohA==
X-CSE-MsgGUID: tAf6pcCDSe2oLZaoZ7fqDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562003"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:11 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:10 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:10 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fEs3ft/LhJujE5wHWheqAM23dd7e+5p4mFmGsJQZyFS1idFAAkvPsnoXuJrgdzHEGE/wn2YzaMai/so6x8PXOR1TkUMCxr/77hFWxMZ6YJAasNctE6gHNt/SC8v+xUpxebs8ebvNFcn3yXToVhfBoyY1Zv9w1MHP7k7iEUsAa6rHt10SvJUDCGUVWVIal9FlZNpGq8NSiKyhi0yEKBMnOqUUPajT1KvrPf+C0Euz++lJpECC/rKI/yuK3IRJze1YIRfbEE36ldZosfR0dkBuoyR7MeCtW3AaV7a4Uui+O172Qw0OdzomaCubz/G7q1hohK8LoyZUPq0FJF0m3Jz9UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=go8a8r216R6vBCR5MgRlDPBkyC+B3/yfFiQYVcF5Azg=;
 b=Dgf6GK9E+KsM/fsBQ27OuOKJYxYLbFvYpyqv7QPYDXZYOg2QUaXMjBl5G6O1/lo8aGCQqeRKtNd9vSFXIzmQapwImke01/+bCpYJ0WEYEezW02HbZ9YrFV775bHI+wIZqcf3O958DATFRxB+fC2eAaCM0E5tARs9udeLUqPCdarcU+/9YSRX+4RyC6U3unc1JQSzvGoeDdrCkAqieeRYHSwJi6UORgCftvOrNags431E589Wv2ZoyAGeFhHL6RmY7GzHLbT+5fb/IhUQufUYFYGOSYjDS4P7DLrx320r0nnJ7sa+ye9OZVuNy30IoKwhqU4oEj7n7RYNcnqd1ZtCSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:50:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:50:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 08/50] drm/i915/dp: Use the effective data rate for DP BW
 calculation
Date: Thu, 27 Nov 2025 19:49:41 +0200
Message-ID: <20251127175023.1522538-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: ba177792-b004-4fa1-2c1a-08de2ddd860a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mT61xCPF2ZN5o+4h9rUXqKPV8cAruEnTd6RYFq+Y/ui1W9rpE+/FzLZrsKqR?=
 =?us-ascii?Q?ytj/ZEqWfGThghmDEyrPItw34W1TCQndlcWptdpfPwK8ppUB4zgAhUwGysa3?=
 =?us-ascii?Q?m7D3r1Mzsd2AiQOo6Or+SxrlKHKJR7w/3nhrkuIJEOXQF76maptK1u2zczDn?=
 =?us-ascii?Q?CVuMW1Z+3JJtlr/iMWHaMjarEkK/xd9tYOaQX36zSErkAYBaaXZB5AhqJ/0l?=
 =?us-ascii?Q?5DiqTh+fNw0qxpmhbWOPpVKI/1Py4NtjpwSHktcwS+vuXTYzBwisK2yfpDGy?=
 =?us-ascii?Q?gV57gQQqW4/gU1wztzBEYZqUGK77d4NWh/spTCu4GotUCti6xK2VUWb4Iuih?=
 =?us-ascii?Q?l8m+MV5RduWSrlBjP2cgtu0EqzoW6aZAeFisTLFBWmCnVDovLpv5ZG5YBHAv?=
 =?us-ascii?Q?cwaaMu1RVNKBh0UO1dMOuR5/YBFUDhk/Sou+WaiwQvVVs9m4RjUGqC8R8XLY?=
 =?us-ascii?Q?6K2Q/oXZyyCSrGIutj3HEk+79UPW8rIgPQYZMO/PMaq0bwt3st/EaiG41m+H?=
 =?us-ascii?Q?VvUX2mpj4n6KGVPwCoo02/WmQHzsynCat+uMysbKMZxb6VtVuEbuFjn14pef?=
 =?us-ascii?Q?SwlEA/7n9B+8hL4eDNzUCEL7sVNKDhzT6UXhESdGzQ5nTV5OQH7IPKUdvLWI?=
 =?us-ascii?Q?AZuDf+oVwgemWefPsAaajO/Ch4ujJWJBhBhigioB3Popvc7YtDO4h6kYcv4Q?=
 =?us-ascii?Q?sdcooTP2JJT1y1vS9myDKZ4rEw4dFrHAKqAr5CGMEoMMIGEpG9FEQNxytKOO?=
 =?us-ascii?Q?cCmYVK9NdsYzWn878KM3JxrJ46wUZhzSp5e8zKGIn94oKY3wxmiyVjphKirX?=
 =?us-ascii?Q?72Ut4BlkW63DZbkB77MtEelAPv0G3gC6QTagMKPHwLZ1k8FLjs0UfRbhOyTo?=
 =?us-ascii?Q?Ep47vIN0DHH6SmqEHlVLAnFX5FZLHecTqbsqgBmGjQEWgGvPjG41zFpPeu81?=
 =?us-ascii?Q?C3Old7vtNENKDS8FCLpoEwSjHggDewCcOfo4XoEHBmNbtKGvVYmVZPe86xnH?=
 =?us-ascii?Q?ooKFvQWyptkspgyCaZZ64WHggUl1NGBAl/XCbuWRoJIwSVPyrs28uHJOYb6W?=
 =?us-ascii?Q?l+aH8tASl4vk4uuWhZtmkBvv7ZRlZvmNugKUlbr6UgRURCmRUnTUMQt7ugUD?=
 =?us-ascii?Q?5+LEgJG4qRtzr5DDzzmhlQmJISQJds8R5pH3F2DGAUXQsu/jtUpxzLZKJp2K?=
 =?us-ascii?Q?PQ/Zbqi0nmzen4AlxGfcHcnPqSOtrTFmehl7kT8bdGhg9DWgCu07TvlMVSP/?=
 =?us-ascii?Q?XuKQzKwi1UhLh2BcdoUQEBp31PnVWcs51O2oPtmXJzdJ4zs4Y+CI5enB6bH4?=
 =?us-ascii?Q?CX1jJC1A4wvIxCV1PSXlPh/+63kJZlsK5ygV1sN7s8v5ksuRMfYHdNAqJpU4?=
 =?us-ascii?Q?npQUMLfAdHVtoOYk8vNEqn8YC1BrR+BqJ/F8suB34RWqpB/zGZWwA+retXF7?=
 =?us-ascii?Q?ubuTokJvNPSTJJN5i76qx1/kq06MhdBi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4gvglWrchqVkPONrfvYPg3vL3X1zHDCxq5hs9QZu2PbP0JOZ6+Sg8HDSej2t?=
 =?us-ascii?Q?+Y5g30SZURFSSwablV1R4nMBj4FAce9xOG8908lR1EiYKYbm7g0UuWIYNVOa?=
 =?us-ascii?Q?Zo/9DhPK4d0VVVlzpsnZKSnlHIOxFS4vLEDmGtJ5nH/mAyVPaZBuAGKHOLUL?=
 =?us-ascii?Q?gJ0G8Ef8DMSbPVUtBqo4s4GVHzYEFZ6ikyFfCcwVjS0gOO+r9rWtWYQY219E?=
 =?us-ascii?Q?Eg/FQZhB6T6ws2gWGO5uDq9GWmx8+kbPA6PRbu24Y96TlxSavl3tG1iPe4VJ?=
 =?us-ascii?Q?SOo88TiqX5ZPEcqgXVZ4bYPG/3j3FovxbK0JCfas0wysaUuj8HrEpHdsYvv8?=
 =?us-ascii?Q?+46tDHx8FqEfk3OuZ/jBnVNTy75lKDdo8gGYJRS/UuvIOLA8iYmhiLfqbSHG?=
 =?us-ascii?Q?8NOR16dyCIqLarFYDiszNy8DgDLGBcnvKJx+uI7zTs4YHvjoqsv9kTXHf8fW?=
 =?us-ascii?Q?DsciGEaYoU5TisDBvxDrNya2Ua3grnrzGw/5KB7Bo+28TtK56zGulDrlieK/?=
 =?us-ascii?Q?5VUP0Tc9fUG+eHYph+DrqGatlO23cUZqY6xTMOsEciU+oUqq46i7UC52+kw4?=
 =?us-ascii?Q?3sJB9OFvyUVb8u6YhWUrcjq9A+0jqvMa+8j9HtkJoSHQ2EpqUcgP5Jr4RGI9?=
 =?us-ascii?Q?OASU83Zf3tLrPyeE60QtwdLg8mWwn9R+wTGAt/DDhXOdvQj9tapr9OCFCo5v?=
 =?us-ascii?Q?HXWCT1X8EvbtoIHyXklIw0/2ahTlvM96Fl6OuZOoADS9fQVteZq2zJdhYSjm?=
 =?us-ascii?Q?tlw4mCUpajvcj5SzE67YN/6TTi6cva7dD54w2nJn9ES/hTsejibdMxvZcB7P?=
 =?us-ascii?Q?0sY7PkINrtQO/UdBJlv+gHCtyNxkRkaFDV5sDl3y5fNJZlVBI/5xCDCjwByI?=
 =?us-ascii?Q?mcyHgMsvNqpeeIAM0147pChD1xVEmxDQRX/TIMVudcUeLCv25bAtz8gQ6TM0?=
 =?us-ascii?Q?GqfOYzarCv37HJQUkj+qggmAvlmhOVR7C1u4bnjEA8aX/50YyFK9obZYhivW?=
 =?us-ascii?Q?WN6W+RLBUhVLRsnDrMrQJxp7kVV/0QEOdKJhlBu5XQ6wYD2Z8y0AV+vzanDj?=
 =?us-ascii?Q?5QCeOFAg8u/Xt4OjEcqVXywP0a/yUQOW9OcOCeRL0TMPFpJ689JNViXYKZks?=
 =?us-ascii?Q?eplgBWxalzv53MLQLBhO4sbVtxvut295wXAoWPjEB0LLT5MFabXeUOM3nAjE?=
 =?us-ascii?Q?w7fwyrSbD+mwNUsZGsSg3DaRt3koSoldJzQ15xH+nxkkf+vjyzJHMVu/iMEx?=
 =?us-ascii?Q?lqCUaIMnOFHNiYNMqvkavR5PZDgmIT8g4fTO1tfE3xK5IX8y0btqjmpyGlBE?=
 =?us-ascii?Q?Ky4YdLU5WMkgFjXGdDcpzAjG8NwdtCaSs/hutrpWAjKzckwpGOHzT0WT7W5O?=
 =?us-ascii?Q?oOHwaTVNpIRf3BLQbdw2Tw4s3X5kga4SbS+RyU6PxIfOQ1EHhvWQ1GxjhHNj?=
 =?us-ascii?Q?qpuzeEpn4fpA3LrucS2b5jOcuWAFpdriNpG7krtL0siTKhr72T7FlrTHRIAP?=
 =?us-ascii?Q?aVoPQ3DG2mST05qiidreog8peyvC/JFjMO1chH5tIPn45I6WYV6SnVaYo6pU?=
 =?us-ascii?Q?w/S3TRNs4MxmiXV4ige7OFfAqraJhGZOw7NYbGau5eTsf7/b/khqSYjAEIXE?=
 =?us-ascii?Q?3nu9ru3gjGjo8uDJOXSr036Q7JPFl7ZIgSYplpVvFCCr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba177792-b004-4fa1-2c1a-08de2ddd860a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:50:59.6454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hYdlsDZnszGpVVtK2pdJ0+EvWps72EmSKbu5JZspR9h/wPynTMWswKEcRNFLwj/iSid7YpCJcnXlmNFRwxH7pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

Use intel_dp_effective_data_rate() to calculate the required link BW for
eDP, DP-SST and MST links. This ensures that the BW is calculated the
same way for all DP output types, during mode validation as well as
during state computation. This approach also allows for accounting with
BW overheads due to the SSC, DSC, FEC being enabled on a link, as well
as due to the MST symbol alignment on the link. Accounting for these
overheads will be added by follow-up changes.

This way also computes the stream BW on a UHBR link correctly, using the
corresponding symbol size to effective data size ratio (i.e. ~97% link
BW utilization for UHBR vs. only ~80% for non-UHBR).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 40 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h       |  4 +-
 .../drm/i915/display/intel_dp_link_training.c |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 4 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4556a57db7c02..aa55a81a9a9bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -453,15 +453,15 @@ int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
 /*
  * The required data bandwidth for a mode with given pixel clock and bpp. This
  * is the required net bandwidth independent of the data bandwidth efficiency.
- *
- * TODO: check if callers of this functions should use
- * intel_dp_effective_data_rate() instead.
  */
-int
-intel_dp_link_required(int pixel_clock, int bpp)
+int intel_dp_link_required(int link_clock, int lane_count,
+			   int mode_clock, int mode_hdisplay,
+			   int link_bpp_x16, unsigned long bw_overhead_flags)
 {
-	/* pixel_clock is in kHz, divide bpp by 8 for bit to Byte conversion */
-	return DIV_ROUND_UP(pixel_clock * bpp, 8);
+	int bw_overhead = intel_dp_link_bw_overhead(link_clock, lane_count, mode_hdisplay,
+						    0, link_bpp_x16, bw_overhead_flags);
+
+	return intel_dp_effective_data_rate(mode_clock, link_bpp_x16, bw_overhead);
 }
 
 /**
@@ -1531,7 +1531,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
 
 	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
-	mode_rate = intel_dp_link_required(target_clock, fxp_q4_to_int_roundup(link_bpp_x16));
+	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
+					   target_clock, mode->hdisplay,
+					   link_bpp_x16, 0);
 
 	if (intel_dp_has_dsc(connector)) {
 		int pipe_bpp;
@@ -1838,7 +1840,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct link_config_limits *limits)
 {
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
-	int mode_rate, link_rate, link_avail;
+	int link_rate, link_avail;
 
 	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
 	     bpp >= fxp_q4_to_int(limits->link.min_bpp_x16);
@@ -1846,8 +1848,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 		int link_bpp_x16 =
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
-		mode_rate = intel_dp_link_required(clock, fxp_q4_to_int_roundup(link_bpp_x16));
-
 		for (i = 0; i < intel_dp->num_common_rates; i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
 			if (link_rate < limits->min_rate ||
@@ -1857,11 +1857,17 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			for (lane_count = limits->min_lane_count;
 			     lane_count <= limits->max_lane_count;
 			     lane_count <<= 1) {
+				const struct drm_display_mode *adjusted_mode =
+					&pipe_config->hw.adjusted_mode;
+				int mode_rate =
+					intel_dp_link_required(link_rate, lane_count,
+							       clock, adjusted_mode->hdisplay,
+							       link_bpp_x16, 0);
+
 				link_avail = intel_dp_max_link_data_rate(intel_dp,
 									 link_rate,
 									 lane_count);
 
-
 				if (mode_rate <= link_avail) {
 					pipe_config->lane_count = lane_count;
 					pipe_config->pipe_bpp = bpp;
@@ -2724,11 +2730,13 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	int bpp = crtc_state->dsc.compression_enable ?
-		fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) :
-		crtc_state->pipe_bpp;
+	int link_bpp_x16 = crtc_state->dsc.compression_enable ?
+		crtc_state->dsc.compressed_bpp_x16 :
+		fxp_q4_from_int(crtc_state->pipe_bpp);
 
-	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
+	return intel_dp_link_required(crtc_state->port_clock, crtc_state->lane_count,
+				      adjusted_mode->crtc_clock, adjusted_mode->hdisplay,
+				      link_bpp_x16, 0);
 }
 
 bool intel_dp_joiner_needs_dsc(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index d7f9410129f49..30eebb8cad6d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -119,7 +119,9 @@ bool intel_dp_source_supports_tps4(struct intel_display *display);
 
 int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
 			      int dsc_slice_count, int bpp_x16, unsigned long flags);
-int intel_dp_link_required(int pixel_clock, int bpp);
+int intel_dp_link_required(int link_clock, int lane_count,
+			   int mode_clock, int mode_hdisplay,
+			   int link_bpp_x16, unsigned long bw_overhead_flags);
 int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
 int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index aad5fe14962f9..54c585c59b900 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1195,7 +1195,9 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
 		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
 	int mode_rate, max_rate;
 
-	mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
+	mode_rate = intel_dp_link_required(link_rate, lane_count,
+					   fixed_mode->clock, fixed_mode->hdisplay,
+					   fxp_q4_from_int(18), 0);
 	max_rate = intel_dp_max_link_data_rate(intel_dp, link_rate, lane_count);
 	if (mode_rate > max_rate)
 		return false;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c1058b4a85d02..e4dd6b4ca0512 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1489,7 +1489,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp,
 					       max_link_clock, max_lanes);
-	mode_rate = intel_dp_link_required(mode->clock, min_bpp);
+	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
+					   mode->clock, mode->hdisplay,
+					   fxp_q4_from_int(min_bpp), 0);
 
 	/*
 	 * TODO:
-- 
2.49.1

