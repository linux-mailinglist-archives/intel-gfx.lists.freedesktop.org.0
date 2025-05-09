Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 568E3AB1BEE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 358BA10EADF;
	Fri,  9 May 2025 18:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fF5XZSFU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F94E10E067;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=T9qRui3wkVlVDmQpzeNkXgSzU82mnJrhfo59amNH3oU=;
 b=fF5XZSFUC5SbfK0YyNfTJhh17RhbLlBGLGuLWDTsoEUlFThBJ5+DcH5M
 UQeM5TGizuUOKEMbmwTADQ1XoW2sFVILqqGwVfgmZ6lEcRIrRLUUF8AqF
 wXnf1KOgZkMDYkJOjBwTPuw3GM0P/nwjMzc1fYDkx1b6PMcgs+DZTCZyV
 aNcrc77WRCqGCjcjUV/Px2hQfW1AlvRSIklXbQDiVr9EbNGbloGPnnljt
 fZUilkN6CFXCdxIjOgMKnQvQVUQRwmf0Q79XZ6eaiauzwawzDwfPXKkIZ
 rIwFdjsQhGH7mvBQEQl2bufBPUhh+1XSH784tuDmaRTKInkh8tGBr+Fkb g==;
X-CSE-ConnectionGUID: k0d80Q/PQgGwMqgdSvF6bA==
X-CSE-MsgGUID: OWMaxnaiQWyTrXcTSxLSqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464896"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464896"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:52 -0700
X-CSE-ConnectionGUID: AZFXg5HRQJi2DH4Trn/tjw==
X-CSE-MsgGUID: aFE5lmqFSHOhAsg20DRWYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564185"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qyhg3BrmZej9XtH3/OoFqtlIeYVL9/3bprCGeJ3myEQm7w+W6t86yltMkn1T6L5V13pHc6Mx8jxiOfbt1Zpf5b//4XtV7TprIR/A9rS6bBkho/l7JOLaRPTeA4RhcTXRT1uv4qcAi5UH2Z791JaXWx9y3/vL0PUBQo9fszcKFkZYpGhn7exffmHAoqA1sq1cygpMJxJ9l7DEVmo3/c0QO9NYourCWd4WR+BxA3c7MFJYn3wfqlAxHrcto51vZ2jLBy0cBpvwh8jXWIzaUY9ecEkFDtkR8hxngBiQlArkPpi3qzj6/HuOUZIKluBzDNFGRUh93uYhUEvoxyzp46Pkgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swwvJMg1tuIz/xVsT/dlfYr2dyP79B7tHbHISUQ/I3I=;
 b=qZnmO/mtwY3tlSV4E2AuJyImoI+2m/NN6x7qUKZC+beJQ8xnVO2m6LDIvwuC/t/0CZZhQSm5XjwbHfP2hpDVrFuTjOQejYbmid3crEB9RpeAuYGjZQU+SI9tX3EhV4W2OPQhR52Cc90uwKHo9Z5vaHQFCCYmWTXwpNxPwU5sCtLBJjvl6xCcQ8li6CmZUdrUybehp4QDRAuYdsR9cGej/rV4wmLOP95rEgk8NIT/oUekCXftqIYzkFIesLBSAsvm0994kyUUxsgakjZk8ygMRRN2M5ZNdOWCGACQIc3xUj3WOhSvvDvJdobiKTtpZNs6FMoJUgJoCWUzzWGz04BHjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 08/12] drm/i915/dp_mst: Add support for fractional
 compressed link bpps on MST
Date: Fri, 9 May 2025 21:03:35 +0300
Message-ID: <20250509180340.554867-9-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 64a75244-894d-494e-75d6-08dd8f23d918
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OuhCe2WmlfsHCPx+pCVA+nOvk5Rd41HofE/RJW3BlrUqDHvf/1/KPY94mu4d?=
 =?us-ascii?Q?EA9vEOIGxn+qCG/7ae59DLsV1/65MS4m3glYRkPVIwp66js2KmbUTzTjjcJ4?=
 =?us-ascii?Q?hv2mYj//cjbl8BqiYoZcb7kEWePOD3HDWmgLu9t9E/Carhk6JIHzha4R2O+Q?=
 =?us-ascii?Q?kAa78alRpVMw9u3f8NFJQMFlgXOoNLLUdNhCoCow9/jNh2Sfbw8UJ0zH9ZfW?=
 =?us-ascii?Q?0uE4PrI6u9e6FoB4GibIjimcPO6ceUwoCnWBdXwerRTohT4ozPJ3HdHjqPJc?=
 =?us-ascii?Q?yuM27l7QI/RroP8lmCsZTHu5zEqiM9iw2knYR3EhPEfc8maTCZRmjIfWgD5P?=
 =?us-ascii?Q?aK1SrhjoSxdvssDj2XeNPs946e58V1PpFsxVH8AGRlr9MKGym04Op5v95++m?=
 =?us-ascii?Q?GueD7gx3VH4OZhYoLD0u7klVaYREujLhYlhww+k5uiqsCXa/SvmdBGZGspoG?=
 =?us-ascii?Q?8pWINCI5m6Kfxrrdkmmz5HHJagxvBW5VI9d8hxYiSssh9qwqVkWzGyxMcK4t?=
 =?us-ascii?Q?WIbHj9vYF64GoyKBdGNK3/YNcjgp5CqVtbqiwNi6NeBYpe0NO+3o/YKEqzFS?=
 =?us-ascii?Q?4ScdOX8X6VZOj65jpLaDnER+0cnVoD1BVfS9czu9ifXOGamz0cZOOMFrYk1D?=
 =?us-ascii?Q?i3zqA0FFlmJlmhOgJc5fIpKy8RgKs1a3pUbss1LBTEIC3Bo7GP0UXP07A63r?=
 =?us-ascii?Q?vRv4ZMKgsEQ1jRceEfjqFVu5XQz5WW14FsbzQxh+UNC1fagFjcRCLVj6/tEN?=
 =?us-ascii?Q?4bz3pqbmpkTBVCSj1IdGrfG/PAki7wN6q2mwHnB6RDf4QvPkdqA8FMXamU6+?=
 =?us-ascii?Q?lawekzindCBC2rFcLAbfBY518ZUUwRdU2eU98vkV5z+P/E4AOBESnITErkfw?=
 =?us-ascii?Q?QRVrwhFr54wu1E/h0Sks9Lphks+86ZUyMkJ9iWhLi5DTL4xgZk50Wt/mWhaA?=
 =?us-ascii?Q?ugB3RCDHqYq2N3QjJRGW58U07O0ueykFwcSxOrrCtPkN286THcQT5sVgADLg?=
 =?us-ascii?Q?KHGbxggI8vw/q8n0iZ8EddqAAsoYt5MwuLxXlEcyPdv8jrYdO4lI8S4fNuw+?=
 =?us-ascii?Q?QCnxWIrrq4WFpH6sDOPTGNbMnUDft7t/vkofVKx3Di9AfQGoJALtut9yYjmY?=
 =?us-ascii?Q?vi9x6u2Zn6HbSDis4R7SCiPeF3Urbht4uveVtpzTx+djx31ERdLcyfY2E29L?=
 =?us-ascii?Q?EcPV2YIrZkC5CF/BZ7CY2jUYCWlKscIfEZbjczLLpvjLDycjCnTliXHyw7SE?=
 =?us-ascii?Q?F92t9TvWSA5AxIB1XFrnZQDe1hGE3Pu1cKiuI0zDBYwslFV9bIAahwWG4f8Z?=
 =?us-ascii?Q?DebniFciu3zhfCPfafD4xNJuV+6VNqiwPllKtxP95VnkonccIF8+Fstqkbkl?=
 =?us-ascii?Q?V/g2cQlNjvReiJrMODGmkTg8zBXzhAq/EJRS7MAQjKQq+j0yUQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rpFB4E7jkevqGmUvXsj0kJpEErp82SLF99zdXAFCnmpR1BVSccXiUMSMeaaP?=
 =?us-ascii?Q?SQE0RnuOoJKTIW+InsndCis8y5D98VbBujLa5U8Da5gF5/eMkWqPj3EQzXis?=
 =?us-ascii?Q?7a0sBv0AsJAfMjwTwHX6zB8Fw+0bqKarcqcmIQOmK4OHVlyhCOh/0MH6ZYzW?=
 =?us-ascii?Q?FI43FrtqeMmQhlt9PQsEBYPAVnoj+iCHdav+Sh9GnTsTnsCtQo/oIZAOoWdE?=
 =?us-ascii?Q?CpgHO1OeDOq0H+fCE8SmTk1DA+QaW84+fnR9cvPOVdGWbz2Egfc0U85pzkFB?=
 =?us-ascii?Q?2eJcD0EuPEj98cQCCKYwdpA+AoGxascvrPGsIsP0pFo6K8OxEJMhHA3tyjwk?=
 =?us-ascii?Q?9qdPyZ7ZhxmH6H7OUjkM6RvxjKBoM62Jeo1c9srzHRiyEAUxFBzxJjebIpPV?=
 =?us-ascii?Q?B69xRDlRBM9Tsw2U9mgTg50w/4TVcFN0C6Z12AUwn4SSUqztUkiO6m7zfCh+?=
 =?us-ascii?Q?uvHc1S98yGdhWLjP2g5gLYcgE0M69MUxn8QLpX//YbMz01ieKqwz0vHZcdvC?=
 =?us-ascii?Q?zERxs98+oid5dSOTef3KUl6F4JsSu6CfCOAarQfzTegXM3yn89PxB9HgNg/B?=
 =?us-ascii?Q?lJ8BgG8MH4xdnpjiq5J648mINCaFBS6xvEqGFV3pFuLdhG/W/Ary7htQgoW6?=
 =?us-ascii?Q?YtX4AvFC0sbtPeWP+rcHkd6+B7mR3gI3burtSlw+T/pf8uY55IdiNqOw6OtH?=
 =?us-ascii?Q?L6lLA0maiPTYuq1clmlHmHeEXK41/swpnSoTwiW2NW9XEm2gGyqG0N6iGoSV?=
 =?us-ascii?Q?VVvW8QYPAO+YulFWmShA3V6juir8RlTYDoHBwYYm4b/Jjy+W/42p5snwx/4F?=
 =?us-ascii?Q?W7CWW3Gqen4cL8mE8GLumSjqlzZOJADQ6GK92MKz92VkXOV5c45x2ZgEeTgC?=
 =?us-ascii?Q?6BWkoRAv5bJc/eLkc7tRTUKIMzzaPUNJZ7O7G+dmWaTzeaLMww0Ns0Oulc3C?=
 =?us-ascii?Q?1AV7JRapcJqP7hlJYKwPBG29hhZPV3iZqi381noLSuVAd1PIU6YfNiYk0AjZ?=
 =?us-ascii?Q?bdkD1lJYnoaqrDxMnDvPKtc6HUww2En11b7m2DQ6gissdGSDcioV0ibD1Ufp?=
 =?us-ascii?Q?9Zv2v5TY9Mijjutz51DQPUGfVDIATZR87Vmiz7DC8EzF45Si1G0f0E9EUEZ/?=
 =?us-ascii?Q?T1vZWV9CIWhcSWh+HEHCCiIdaobVMbVNor2IKW0D0KgU955yLOf5NugPOStq?=
 =?us-ascii?Q?H1tm4jHPrY12/GjvWBPSd5UZNnISpXVZoyRro5M17ezrTKhIOlZiNwe0fmIu?=
 =?us-ascii?Q?XTLmNs8fLNksM36X+78kSRU8cNEgM2S2dWc4w3FtV78/0bmyf7DULEkSRwi4?=
 =?us-ascii?Q?bP5BFU7dZYTSHieiU/HpE+RzZF2lMy9oBWo/wPaHeTBQzHoo2p3I98Mgg9zC?=
 =?us-ascii?Q?f2pN9YwZ5kcIA7jgBCjtO2xupWMyQ37UR90pVEZBEDGF7Qw9NbnoNwctxrqi?=
 =?us-ascii?Q?0dGrXId/4rLw2rHclyXwI9HrIWmz6HKdnrYlGhxkRlbSgKGR28bXxPI6X+h5?=
 =?us-ascii?Q?fJiMTn4e6nyGUXkqNeKVqiO7jRwc3aNoZY/jg0zoC7tGKarvgoqNURtxaoUU?=
 =?us-ascii?Q?2Ytxil1JcR9AUTTvSj4L59MnjsJSBEm+sQbn/TmI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64a75244-894d-494e-75d6-08dd8f23d918
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:48.9539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6du7Q+pffpE7Eq67PjPLeoNXCrn2f5dgZlUcZ6j9QA5dwibwnAvSy3IfQQi8aEQaF8epaJ+MD5d8nDXsjrxc3A==
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

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 32 +++++++++++++++------
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b91c1e43051a1..cdbdf20a46b7d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -958,6 +958,7 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
+/* TODO: return a bpp_x16 value */
 u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 42351229177d8..13b2bd3ec8607 100644
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
@@ -315,6 +319,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		}
 	}
 
+	drm_WARN_ON(display->drm, min_bpp_x16 % bpp_step_x16 || max_bpp_x16 % bpp_step_x16);
+
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		int local_bw_overhead;
 		int link_bpp_x16;
@@ -460,7 +466,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int min_compressed_bpp, max_compressed_bpp;
+	int min_compressed_bpp_x16, max_compressed_bpp_x16;
+	int bpp_step_x16;
 
 	max_bpp = limits->pipe.max_bpp;
 	min_bpp = limits->pipe.min_bpp;
@@ -485,21 +492,28 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 
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

