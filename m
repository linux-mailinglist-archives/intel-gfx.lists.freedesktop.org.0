Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 967BDA9F26C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950CE10E51E;
	Mon, 28 Apr 2025 13:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OUMo6Rwv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5FE10E511;
 Mon, 28 Apr 2025 13:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847120; x=1777383120;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=GHKHeOpDm9cjUdZJnWUlEnwl7mmOpkhHkqT134PDemY=;
 b=OUMo6RwvjvJlapzs+3Cl3wexvPlywCbMRmgJUkO5wHt3XX7TR1zbPrQ4
 TCWvuvne0MuE30lOFD8coFEcqPu7kt3bBI1QWXJGg83GLyhgRC1t3zHXK
 B4nVgx5DP5gYb3HCfa82zn+GRQiRL1urdq/I2MGbThGZfJNlE948En4gj
 hIyvdeEY/sPaLZDUQ8LxyXh7aMTycayCzpgHsf3oPLXBzyxtTFm6zS2ee
 08LqUQpWpH+tU7bBS3zeEBnORSudg/yqoQmCdW9muVZ7elpTEt8aYwy8d
 GvxczwyEBxKKQkG2nXqm8Q/NapmtC7IX8NpDRrKd4N2V4JveieyVA2VZz w==;
X-CSE-ConnectionGUID: aaBDd03+TvaPPAXAdMSZwQ==
X-CSE-MsgGUID: +Nl2c5kVRQeCgcar1m/vJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51243503"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51243503"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:59 -0700
X-CSE-ConnectionGUID: 58L9NxGTTnKDAzyouTf4zg==
X-CSE-MsgGUID: 4A+qAOrQTaWQhmARW/BbPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="164597969"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y2C5VboSfT0akvCilCyChMrUxrZPSsucjJAjp2zWiAniGq4+vUFLqB8APdJhnCGUsmd16Tmm0Nt9e/EJu087/VUNNmKHX7W0dc6lVJU2ccHcNoy5SaTi8gy/7ccdAGWobT62AeKE46+0J2ArwVyQqqCQvUjzx8z50NnyrlQ9XscGxuXPS0NkE++vdNELqMLikbLkbqD0Wg+66WQoviTi3vfkhY3r/FSXRcQzoSdcHYdTB0YEOnJGcG3iA9CWah2S4MZy+ve+DzMKJHoXXYoAgtXkH0akzq422mCZfYbumLXzLuXu+Dw097E9C3GKRXrMLc2TsaM9Cy2IMS6zZ9UqVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ofHDzbkoTbt97cEJf+BryZIoAIGnFA2/m2Bq8xdcXQU=;
 b=v9g1v8moZINE7TjMkbgD0j7sbMX4/s1spXxJ1UNRng43+Yvyhbxk6xCbFz5FSRbHy7fgpOrT63+srygkUaLaVI2h1rS52D8yMFpkeJxcDcgLcka0X7/TK8VvPMaNpunhdhH8RDfRxWnGkHXBJxy/qFftmp60bKk+HG7rz7DAa7tvGeDvO18tkg5uBzqP77Jy7IyST3FO7h/EUvXNeD8++K3nWGzBCXA+bT1kzNao1IlRDADBaixZfId075Rm+PHR5JnUnamTZVheRAWY+NPdBRUZ+a5mQ1CcRS31pIxRcu8gLw/mgCAeeCJ5r1gzXyQ24EdCsvRZIvYkDmteezpevQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 13:31:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:41 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 08/12] drm/i915/dp_mst: Add support for fractional
 compressed link bpps on MST
Date: Mon, 28 Apr 2025 16:31:19 +0300
Message-ID: <20250428133135.3396080-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4514:EE_
X-MS-Office365-Filtering-Correlation-Id: 1082cbc3-df1b-4271-5b5f-08dd86590278
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fSBpPPhAF16mTdiyq87FJlD8nKzDLzdDboPmlk/T4D6mw3Ec9VVYarPIXrMT?=
 =?us-ascii?Q?AUQzpAf6EzWYkWUaqJMbqp0geb8fnauYdJOkiVb2ePTh2qvpHhvdYiVuzNqQ?=
 =?us-ascii?Q?3j//7lPt7HogJ6r650cGA2bKdS5/mutTkq8hxjzlc/pRvfz7X/ceSrDJuEfY?=
 =?us-ascii?Q?AoCvLWyoQOZQWthPP9cFDM0pNydGIqH03AHWGfm1fiVe366LT1ik/AYv6CbC?=
 =?us-ascii?Q?+5YYfhMBJPE5NvXQlZsQ/tg8dRvbO6wlaNYBg7aDl8/p4846sHGZm+W5TH2i?=
 =?us-ascii?Q?rI7+O3CsUQHPvp0As/a2vu185PXZV+VA16X84kBu0LZlWybnEf6BAihKtqv+?=
 =?us-ascii?Q?I+kzmd6tnRWsNRVBO36gBNOaVQRefI00bUIE0A2ivZkuvAc24q+4ZSc+f4ez?=
 =?us-ascii?Q?6t9UFQ0tNCxppHIhWt9pGp2PEqH6MNB/JaCAfU8EnMQAkRYlZaRbg4fCXZIm?=
 =?us-ascii?Q?Sl3cmEwVDoDGHsZl6FiaHVCmoCckkBSTCi4T++Buu1S3t5czdeVhNr4r72AY?=
 =?us-ascii?Q?vZPxjDurakOjoqLGOpXRhWq/mk3cemVTkwc4e2LvXNVquRueLluCunikVgKo?=
 =?us-ascii?Q?PU72I5XZvW34bMKcSYGRYm5X4nc2IXGr7lB1xU8ueiP3kaWdJ4ZWc0YHMb+r?=
 =?us-ascii?Q?qvyFUBPxrcQwFhNxX+fDR5l6OWNvpDe/NRQoazPrJmIuiQNWM1Rz1X87aCAz?=
 =?us-ascii?Q?w6YDMlfDx7BQ0RWrNUTOMN5X+I4AnuBauICYTLwnwWu6pE6QG95AL3hhr67X?=
 =?us-ascii?Q?vq482PeD+IH1TGCbTP0vJNUrzLtsdfgZ7hPqIrX1Cx9SX2+r27eOdsJuS7nT?=
 =?us-ascii?Q?E0qE1u9MHr43l9/0I+4/0Yq1eTvkFZE2xY+V1edK5gY5DwwUN++Lt7c4/mCr?=
 =?us-ascii?Q?C/7j0QT+CJiHDTvGFSa4KhnaG3COzrttPgyMKU/c4Y2z2ryaqn8E12BCbmN0?=
 =?us-ascii?Q?KTfcELVjwJmXOuiWwZ6zrdgOYqIQf3NFkumFqIRSgoWHAZ/OadeRuZBsPS/X?=
 =?us-ascii?Q?S9fBiNdv5Hc61Th4lLCVPb4AMxy78hkmb6O3ZOZHn09dE+9a4jwKzyJdtqvA?=
 =?us-ascii?Q?JEB1UDnVNV2egi8XH6OtgpwG8UAe5A7FnDU2J9Z3IRdX6hFdr0K1RnUBlMUQ?=
 =?us-ascii?Q?XJ2uirK4Y16jtb30fZgcHc/2VChQCc7jQGSpZShAGsKS1rvxp9asHrf1AFOx?=
 =?us-ascii?Q?0szXNyy08Wo9P6+5bgqTj0/uGQXoGkQyXhAr/WgXjzyhlioeKX8GlppfrA98?=
 =?us-ascii?Q?ycF17qj6Xsh6bQY3IrizhblGiySYr7Q31190fs/+lDVEfL1Z9V45WB8jTqUd?=
 =?us-ascii?Q?egVzjTBKJmKe8dY7zcDKjB2m9UxbhAtaLE8VzGGYNdER0S118KXb+ETP/KrN?=
 =?us-ascii?Q?VSIsHwP05nFIZJqE3PZrNb0EoetQRsgacYIaZD/+bj2vfP8KS2wN5qqgJu+e?=
 =?us-ascii?Q?dwiZW1r2Sa0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X7CQPPbYmf/w2XXoD25QBx0wVc9Jy+y7npzo3Cz2LJx3CGV/6ujhPSlWSpoX?=
 =?us-ascii?Q?T5tbx+VqsBG9vbkTSD4dugphZmdxzAYNm2JQWpVH/4E9HgcT6QvFOYvDjFjD?=
 =?us-ascii?Q?CezC/SirG2pgzXbubtAWOJDpkOE7oT7v5GPhNpocayEBfd1/ibLhdKC5uV2/?=
 =?us-ascii?Q?HlBg02wxQ2k+N7QsSOGaWJ6Ae+94Kor2MtXZ2SQyOg5To1SOKNp1Q5D5RQwF?=
 =?us-ascii?Q?NTCrFkIf+R9KEDGKrZMld5L6UOEF10F3Kztxw1ccrqF7KtNGHFDvKGJHXgP9?=
 =?us-ascii?Q?V7j3JcW+J86OUySbmCODNELQWdu6LVQ05sy8E12fTjccN9mqLNH+CNKgn9g/?=
 =?us-ascii?Q?uMYoSDhKkbLJ4T6VaM7Vx3Y5xjVye4gF7ax3u0xzaDPnPBLxEfPlGcgLB0vJ?=
 =?us-ascii?Q?xhY3aaGM6TQGQmCGXGuqLtKb1bZPHt2mv7uEBmpcBgP1DVep70qYDuu2oiTd?=
 =?us-ascii?Q?03KU1OWwfxlt/NvsJfySlP/OMHjhiAcABvzbbGNSUx5nswa9/JVmxayOrml5?=
 =?us-ascii?Q?P7wko7ytR/Mp6NXJVpy7agKwsJ88iqNn51O9QJEB99weaYBDCqj57nbNril5?=
 =?us-ascii?Q?PBMk7XKdoCMSgrRZxzK9Nq1v6e+pCEWpR+pkMVwTwoJzxSdWK6mwoRcPd4ug?=
 =?us-ascii?Q?itOiQMw7sFjGaVlWUgNKFeOwTDpS8MYCh350+vikXVfe+uYWkrmLoDtRHqKn?=
 =?us-ascii?Q?HbfrRGAU4+cv41J/DISV1u4IpUuBYThLWnTX61+PvIomGXYy+lUgFw9Jz9oY?=
 =?us-ascii?Q?F7LQAjsqXnIwZD5qz+yA6+tcKKn2D6HxB3pLiXI6E6BkiJEAvPreqWhCSVj2?=
 =?us-ascii?Q?W45fkGmcVbfHokjDMpQycW2bnAfsVSr1Sv+Jg9LTyXeg+grxwzMr3zJt/6qi?=
 =?us-ascii?Q?Gh0Z5owsrKh06Mo85K8/+9bSJXUS5XF4f/3voBOTSEBm3EnqIh+ajsYtCDHa?=
 =?us-ascii?Q?m9D69zj/vg7Phv4VfptuTIANrP3N9yq3/Aq5A87BF1JAlNCR5UpbNnnqHDBY?=
 =?us-ascii?Q?ikdbnp7AKUKRaEdiAhYvn9A0erAe7qyncwC3ruDQQrmk8hG+wHht/nua/Vf0?=
 =?us-ascii?Q?wt9fFPbFcAN0uPgDSOOAtRLYuprq4ZWRfR+nb57YPRj+BDW9jwFy6Q36/MOM?=
 =?us-ascii?Q?s9NQHrQgREk9aXo4ALSD0LYBFgRtD68DJraytWvowavq0ynDx8D1LHA5XvHF?=
 =?us-ascii?Q?Yh6PyY41m2vOb/24OV848XsJiO8ZEVI7k/5+zNkM+hDcR6TCDDihIkSQO+Ty?=
 =?us-ascii?Q?9xkG3ln9LQiXDKCuRwf9xMc49ANOSn7JJOMyv60/lwXAJwXeL9bo6yDqPo5f?=
 =?us-ascii?Q?Dkq/hUto82qvtNlFNmDPPK2H1yqZniYVcS40q7+gxO4IPQFSjDPzCQCldZVj?=
 =?us-ascii?Q?lJe3k1MVVvYg4hoFrMtPoDv6rUD0T/1/hJz5BPyxpMMeReRvUo35WTEQM6ow?=
 =?us-ascii?Q?Is30eGiEUdW+SrU7kqQnC+QeYCiXOyREnHd/lzCrssD97WcIw7N4TqyVp2Il?=
 =?us-ascii?Q?BnvjVKMt/ZCMj83TLudWrdlGzlxeqvwOHxLNoGEfcSWQ11LDDNfiQ4M1543j?=
 =?us-ascii?Q?l8n95EuA1eqPRM8MgSFGuzHCscDp6p7vVnjt1467?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1082cbc3-df1b-4271-5b5f-08dd86590278
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:40.9699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w+h+RoY1C1s8cXiqc6RGi+fOyh5xs3hLa3em/HeKLdUDsOh6fjFcZogZGv/aiyWVv0tR4Rsu0x8IjUMFrCxfNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
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

Add support for a fractional compressed link bpp on an MST link. Leave
the actual enabling of fractional bpps to a follow-up change.

While at it add an assert before the bpp loop, that the min and max bpps
are aligned to the bpp step. This should hold regardless of the non-DSC/DSC
or MST/UHBR-SST modes.

This keeps the mode validation and DSC->DPT BW specific maximum link
bpps as rounded-down integer values still, changing those to a
fractional value is left for later, add here TODO comments for them.

v2:
- Align the min/max bpp value to the bpp step.
- Assert that the min/max bpp values are aligned to the bpp step.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 32 +++++++++++++++------
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7abc5286f4ccc..0f89a301e4a0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -957,6 +957,7 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
+/* TODO: return a bpp_x16 value */
 u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 23bb9aa554fc6..a1203e5f570cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -23,6 +23,9 @@
  *
  */
 
+#include <linux/log2.h>
+#include <linux/math.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
@@ -135,6 +138,7 @@ static bool intel_dp_mst_inc_active_streams(struct intel_dp *intel_dp)
 	return intel_dp->mst.active_streams++ == 0;
 }
 
+/* TODO: return a bpp_x16 value */
 static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
 				    bool dsc)
 {
@@ -335,6 +339,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		}
 	}
 
+	drm_WARN_ON(display->drm, min_bpp_x16 % bpp_step_x16 || max_bpp_x16 % bpp_step_x16);
+
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		int local_bw_overhead;
 		int link_bpp_x16;
@@ -482,7 +488,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int min_compressed_bpp, max_compressed_bpp;
+	int min_compressed_bpp_x16, max_compressed_bpp_x16;
+	int bpp_step_x16;
 
 	max_bpp = limits->pipe.max_bpp;
 	min_bpp = limits->pipe.min_bpp;
@@ -507,21 +514,28 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 
 	crtc_state->pipe_bpp = max_bpp;
 
-	max_compressed_bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
-	min_compressed_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
+	min_compressed_bpp_x16 = limits->link.min_bpp_x16;
+	max_compressed_bpp_x16 = limits->link.max_bpp_x16;
 
-	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
-		    min_compressed_bpp, max_compressed_bpp);
+	drm_dbg_kms(display->drm,
+		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
+		    FXP_Q4_ARGS(min_compressed_bpp_x16), FXP_Q4_ARGS(max_compressed_bpp_x16));
 
-	max_compressed_bpp = min(max_compressed_bpp, crtc_state->pipe_bpp - 1);
+	bpp_step_x16 = fxp_q4_from_int(1);
+
+	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);
+
+	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
+	min_compressed_bpp_x16 = round_up(min_compressed_bpp_x16, bpp_step_x16);
+	max_compressed_bpp_x16 = round_down(max_compressed_bpp_x16, bpp_step_x16);
 
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
 	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
-					      fxp_q4_from_int(min_compressed_bpp),
-					      fxp_q4_from_int(max_compressed_bpp),
-					      fxp_q4_from_int(1), true);
+					      min_compressed_bpp_x16,
+					      max_compressed_bpp_x16,
+					      bpp_step_x16, true);
 }
 
 static int mode_hblank_period_ns(const struct drm_display_mode *mode)
-- 
2.44.2

