Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DF7C8FC5F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AFD10E866;
	Thu, 27 Nov 2025 17:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UrU8Hu+S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A051210E863;
 Thu, 27 Nov 2025 17:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265876; x=1795801876;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=TVjlpsbJkHCjG29RkJAjVGt5wWz9aNuStkrXJhsZom8=;
 b=UrU8Hu+SBVcKcgDSO2ea5WjaJRqKrBibsP2v87lz7YtPRc12L2cqWH/t
 wk04qw1+XmtT+i9iSlY92UzCVW9hBLRpDFzedbZSao8/c4DqUGUDFLI0W
 9w3GPPa5nlY3JMN77mvKUWiNYyqy7zZl8jKOdVTkN07mo5gDdKTUzvDZK
 3qQGGqhWBttglbaPBJitP2bHkw9BQHiZa5sFYli4Hd+GrZGVnMhV/OO0H
 A5bi4pxKx8GhXzhhYDlRfAAjmt04uoFGnz3GiTdW08Wvk8XvuIte0AL7J
 GIbvdkZnangtTeCBvx/Le3IZ80w251844BeY148dK5H0KWq+ec4ADcCs1 w==;
X-CSE-ConnectionGUID: z8BVYpNhSU2J7+qn5o2Obg==
X-CSE-MsgGUID: hdiC0Wf0RxWVYrj34RiV1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002949"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002949"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:15 -0800
X-CSE-ConnectionGUID: lt06wADTQS+Hb8A8q8UFFg==
X-CSE-MsgGUID: Yyu5gxEMQ4Sf8dSNbBjXVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453587"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:15 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:14 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:14 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tki6pWbmgYTeNivfxmaQnP8+tPRquCn8fJtLO4nzaD9iPPFDX4CRKCWCdYSpNoyBUed5xYEGwvRit4Oc5nYeEuh43FcTxPNBg+hW/XgTqpiHzGRdJ3Vvn+Rcc8NQLASaRvVJr+COgJ/pjs5ecfg+JY927/wjtydUQwQaAvqBY2ZlOYFuhJT5FB1LW0kCyNp8Qy380ZGu6EFDFya6Kgo4d6go8FD6XFvvaj82d0YvW4PRtDMKMek+7Am35/jr3zJuwc7RvWx6IWL0sBm0UeY1NyNtidPD7UtSatJaY5COnPFrCHcNTApeG7vykbCmyiOocczPcXRdQq1FFT6/ItooPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N0QpMZyLdodvV3G4foLLiGbqMhJY1KJyzAyTychuiF4=;
 b=yD5NW8yzev9byjPmGFJ7v0ADWrHxFcU975JktZuZffI5rKL/aWHhPrKzvJV5UyxkyWeP7NTzdYEsLgL4Nk081+HOHFrBhNhjiW2Dw2Nn2nOl6M34popeGe5FRCPTUfJEt520zIyrVKxlDSsCVMtQCtwMkbKrsxwbcGWr9bHvAKCY+HPuRkj5Gb/0bEUfih131qpdynUVYP8rOX9RvXAqcClltFWIZ+7cK2ytGnAfeHNv8NqRb5Efcwh2fvIuwzSmKNUx5DHhCGiZSEK6JJmjI3hzDtXrkUdjGKil9P21CV31Gv55z/YGAUc02/eguNe3k5iLFr5q7v9JVRc93++8RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:50:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:50:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 07/50] drm/i915/dp: Fix BW check in
 is_bw_sufficient_for_dsc_config()
Date: Thu, 27 Nov 2025 19:49:40 +0200
Message-ID: <20251127175023.1522538-8-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 64ff1ccc-934d-4e5b-4005-08de2ddd84d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LPKyMW7TWD2GJbBOENW1t8iNhVD9z6rpZiIpujqDwPnyLQpQbcrkjGgyQ26z?=
 =?us-ascii?Q?vlT82veXkncUpNAoUvHM4c0eVkg8RWorICWJCR08rERIRKCEx90TleQLAMl5?=
 =?us-ascii?Q?Ao0KQ7OCj0y2i8U6gH4WRT6MsAFpb7nk1xs+Yqm7FCtYOV1CYIZjSkq1nGSH?=
 =?us-ascii?Q?F15VsIgHYZMVs+MhKzYY+VNylA4wV4lszb0ziongL06o7YCd7r69MmLhH9KB?=
 =?us-ascii?Q?x7uWCF9Km+muCg7LDI7luorq6VsVTYGIR3nZvfYlGHJ49E0MugEma66mP7IM?=
 =?us-ascii?Q?X4r60G5K35attdYFT+OM7b4pM4ibGM5vKUylZpZUV+PS2OpleN7ikRy3JcXI?=
 =?us-ascii?Q?MX9ZiscovT05MTdZJTSimZi4Vu7xkoQ353BkJSt6Y+F0UGXXGfZdE7mLn0Eb?=
 =?us-ascii?Q?7bPl9XhMoFO+W2NxJx49uhj91IH2vlrZju/ygU3daoslde9h4aLUhjMisTQK?=
 =?us-ascii?Q?Lp2tRXO+s+g5+aOP7hBHWASMw2jNWn3NS2oRXKFdkDNoluQ0/AXyN/0eGThw?=
 =?us-ascii?Q?Tk7KzKl8r1dKK7RS7hksK6Xmy6J33uzGEUolBt4ntOm37NBYhrhXbazKu7tQ?=
 =?us-ascii?Q?yEGjwGrgNk+lyz0VpF/wqYp5mBC+Q1pIaGHLgiPkkzqRV1xls3d6NSGuRQQ0?=
 =?us-ascii?Q?+fh8YqdUB65aKH+Y+zm5mfjKX9d1LvrYVakI+lCjDSMmHcyhYSVlqmYop4FQ?=
 =?us-ascii?Q?b3OJp+V/jFqjZBqkHHogs9pTm6jiF/amJT77GtTyiPFoYDZej5BNIRUx+OKx?=
 =?us-ascii?Q?Qy/v8R6fa0rA2KMk50livP/2050EsbEH9fyKMC8zP8g0ORH4ml+IMFi/PEFh?=
 =?us-ascii?Q?koALGorIYS2dDMlsjrVFi3VLb4yeUfCi1PEQmfYylGHFcz2SoGYHlEMlgE2r?=
 =?us-ascii?Q?zXzIMYPTe+tO7Pk88ndTZngIwheGUA8KabdufkUOOAOJQdAfjbdjCuTsNVLo?=
 =?us-ascii?Q?sR1G8v2YWCcGgumDKS3MqXUmqsUsiZlq7NCpZ/aYw2ssmbcfO86rMECvPn/D?=
 =?us-ascii?Q?eerN0BwnZb+QBIexgYCieJW8gr3Y3OBHfnJHzrMP4+tHwn/xQKVoVQz+uLQz?=
 =?us-ascii?Q?yDwxeeJhwTFVW278zClTDLAAcUEUxScK+IHAX3KN72BqfEd864JpxdRcgKHy?=
 =?us-ascii?Q?ShYurgA1GMWNBLz+iRgASKFfE240cvdW9yg6CERRk+ZopPsGtsxXogfcSmya?=
 =?us-ascii?Q?784MLvCylbVcoUrxzQZJnHo/XynRxEQn7wuVAcKq/QDVgOqtAHneNBI2VA39?=
 =?us-ascii?Q?2LPOsdz9X8b2ulxWJMdrJ5apgYXAM5dYtjZ95FGywllP+eW8+L57JLXnUTI9?=
 =?us-ascii?Q?71gnmxuygMbygbh9CAD0OSF+RP8oZCWZ3iqKE0fiFxJptf7A/Sx/br5IGwbG?=
 =?us-ascii?Q?5C+xxByq6PUh2SyuKfcoeES7+94gSwvymU+rldbFciIxF7usKbev0Zw8zDve?=
 =?us-ascii?Q?6wTh4Yin0tJV3y4yqJ5e9JVfWfN/UGbC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8Kgjzupdhwit1DZr0QF2ibHOYYpnsqVpHYp5hJkTBZeto5158CNp4qVE1KWu?=
 =?us-ascii?Q?Q4weJi9GUBE+nZyGPt+1wD4cGXMEY6yfhY5cXJUOuGa7InOIvEZ6n/3J/pIa?=
 =?us-ascii?Q?/i9qBIjwvNoqGT+VKK6My5vYTbK+jcOpSBowp5YL3e1QslsAgPUFaRW/eSH7?=
 =?us-ascii?Q?Qs3+m75Ew2Ud/vGP5r9tS9Ss3r/j/vZ+2ruJfafha7wlWAb69b2O41Z851Pz?=
 =?us-ascii?Q?1TISQAipSX6MysbnifeFXbYFWjCHiEZz7gM2NYyAgy0dKdf2GZJ+DsvOxHl7?=
 =?us-ascii?Q?ol7Az3Ut9m9lJyudru9hzgFIDrapnDW7GTyAfJUquaectPSZmBnGiZtFl9pv?=
 =?us-ascii?Q?rUCz7+EQvCAx+oao8Gf+CUEZJk7GVtzF38Ln+fCuBR7BCJksLBMckhxyPtrL?=
 =?us-ascii?Q?aYHfdiS1Asj1UhXprQ+CJHfIM6xkDopY3AGv0xEd9p9Oi+LFi6Q9izOGOGBX?=
 =?us-ascii?Q?qUxyFSOdW6TD2hgjZF4dO3ag6HIugj6tXIRc3i5K/XeNcIBmxTfkJViTULqo?=
 =?us-ascii?Q?PbkwDoSRWdMfzMZrrQDY52mLipWV1Y7j8GAN3WHRGFWSXPZ8qfe0+fqDYhQh?=
 =?us-ascii?Q?+SSRtLXWW7JuEu+q7AVYJtBaxSg+sqc0SONABWCZSKIvfW68xn1Ti2NqZoDG?=
 =?us-ascii?Q?7DKzzJV/pfwXBGGDY+qK7dA8LeSefj0HIL66o0YeXLH8ntW3dvUONNqTYgcs?=
 =?us-ascii?Q?xR2PmiSoOGwRYLgN8xlcHGOdG91IGHRX9fXBiO2KNHbo3+TDUehbbTRdIATH?=
 =?us-ascii?Q?Naon4j9UdUPXG3qR25ggPTs1+Ki7YM6Dc1n/Apf7N5Rm7efXJF96IQBTtQSp?=
 =?us-ascii?Q?bE6MM6X/DrKBFHI/a0FVzbALSw9RNJ/cSGj6E66FWUUZ+4miysAsfl0oKsv1?=
 =?us-ascii?Q?Kbotv7uBWjYFCgEq7aFgyr0OGSWXBSWT8zi77vxlVv10pIWdCDFTAZorU1Xs?=
 =?us-ascii?Q?1G1dwXNQ1iHQ1SJQmqsX5RrVdT8dDgEVw/VRgbN5cjTQVkOPbgIhNCMpw/R8?=
 =?us-ascii?Q?W22YjQjSG459wwmV9OcgF8UXGEyLCsADrzfPiJanSa6+/53Nv4IaZSijQbXa?=
 =?us-ascii?Q?o/svQW+1JXnecPpu99O+UW6RHQcvkzeblHeJKAY8FeJ7qNYldz1m/nJGCBJP?=
 =?us-ascii?Q?DguelUKuckbsWwGtthjwXWMlBmHgdcEF8ItPt6+6Y0MjU1dFDW8mny9SJuqs?=
 =?us-ascii?Q?eMcQs86FL9XKNt8p/6GWYqx9zoLhpSASo8k/FlkJlZGdZvzsKYV9skM66GIV?=
 =?us-ascii?Q?a7KHBfVt4iooiRRFR7wEyiDv/1WfdwJyvtvJKZ2PdJyJOSWU1xfNvoc6zDug?=
 =?us-ascii?Q?od6SOTjvMx3ca/ysYwNdOdNGP+xHhTn1UZjnzHd07eM5YPlOgL8R9I8UmNcp?=
 =?us-ascii?Q?hkWcTIIHNUb6QeGTbLaS/ezFj7g2MokcDERljYB1I4LrO65clpX+iReqPtM2?=
 =?us-ascii?Q?ACNuLbJuCkxDVMJPvkgrBI7uZFO0V4GpZ6s1O2FnYRBvtmosVH580sr0hEJa?=
 =?us-ascii?Q?ichcQKSDpuyV0+MaFhyxJKakAgG6iWmszogI22xqoog4z+hzg18Pd1JNMAZG?=
 =?us-ascii?Q?seKxlY9QbqYAfQtT7i+8OO32DDF0ENCcy7LfAl6O7AoWc2pgXv6HOvCXyVY+?=
 =?us-ascii?Q?H1iHUlNv3WhDYGZP5wDpG1rmsFHkfD+L0UADEOBn0Jx0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ff1ccc-934d-4e5b-4005-08de2ddd84d2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:50:58.2128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6yQDfuUQwEwT3FeAe+WGExDYWB5x3LWtKsGBBMb5qWFM9kisXc3/ZSWZT2QGImRMrcZLmXTe5gtOuAajOxjsWQ==
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

is_bw_sufficient_for_dsc_config() should return true if the required BW
equals the available BW, make it so.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4722ee26b1181..4556a57db7c02 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2029,7 +2029,7 @@ static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
 	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
 	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
 
-	return available_bw > required_bw;
+	return available_bw >= required_bw;
 }
 
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
-- 
2.49.1

