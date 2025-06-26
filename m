Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB877AE9811
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D261310E86A;
	Thu, 26 Jun 2025 08:21:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GsvVJEMk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 280FA10E838;
 Thu, 26 Jun 2025 08:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926073; x=1782462073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ABTShWIkb+keOUnD2U2MDFY/t9GwompDEvNwDHJVnHA=;
 b=GsvVJEMk+jgDv2yKBG/gAP9QsSIrztWswuThB97+g2SssK0iJyQQBQtt
 x9CVYiMJS/RDTqiyf95KwQA697bxCisUJ4COG5ErzqLdHbzKPdR0n/srO
 wLRRjvJ61TvV+M9NJQCoXbJXYOyvF1gLd627h39y9Ru9FSAgPE63GOvjT
 wuWpcxYW7HOUMEi8ySmda+4qzzUDZYoazdnUEAyLvBG5hCUyfPWzG6c1v
 frdRcDuWlM17Fu3EnsEOQT469esj2TE+5eu5JIl+iYw9ZUx9vrkAGJIKQ
 8oJwvhHxD7mMjDLHGg8L8FKwwIyVmj+kaCLMEBGpsej/gl0a4Oxii4k/3 w==;
X-CSE-ConnectionGUID: 7+StFLPUS+O/av77AAOSPQ==
X-CSE-MsgGUID: 3bujOM6YT9WNvWETPTq5kQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019333"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019333"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:13 -0700
X-CSE-ConnectionGUID: /UcLVLt9T0mnsUR2fQquMg==
X-CSE-MsgGUID: /kDYW10XQZuVOu0D8x8nlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069928"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wfjj3HHjNc7ybNmg1fj+8yNsCmiCykI02LjRQ1mvsYCVvfdP10C5BWF1vmxDNsBMB1U0EhfmyJyWq/B28LZ0QHOvffRJQMDEsFKUIgaMmB3v/sWdWkHhVZ/SPcnx5C94cuzSNy4Wrz3z+15+CgupoqeD4b8ks7JICcE+EiyT7CQqTOuiv+BJj30x4BA/7ocN/c3kLh5bekRMoDIi/OtVrOkYjVCMMuEPTdMrMorgSraQmofvx8xhpBjGyTHqUxnMMgsN430TzJNeMSCysCb4/Xj7mN6Ae/ZxgZWBLiG9W9GSC8s95rYBm5WLuXrxl16ydM0mHB1lHEdWddZXOYHOHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ruswXLu6Os2yaH5YLMEXOIAZ5hHVjv8hW9Pi/O9iqV8=;
 b=YWMzjSliZu0d/cC5fKTXBxuC3WQr3H4+G5B7HQDtFuBZRA+SwlHIK/N8t1LR2dKI22Myuf/n1KKh80G1gZm6zb0+70WzfNqNEd5e7Q8kRTleLFPfzxCrMCZ5VSy9qM+D8gkZuaph4M0IWYJCJPYAumizSqTaWf+0+3N/dcA/ZFNDeqztmN30LDkqr5Bmmwnts8lj2SDN7Mc0AvVVpn9SX4S2vMq30BCRZxKcj31N1nnGL06w3vNTkIEo6ZnI8GHpLs7pg+lq33x9JPU24VJh8FZLk9b6lrbdgjuOxbgg1t479awJet1Fvzue42W3eXGB7MSwpjZtHIVD9yslQj4ImQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 05/20] drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
Date: Thu, 26 Jun 2025 11:20:38 +0300
Message-ID: <20250626082053.219514-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e6811ab-619c-4883-804d-08ddb48a660e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?U/0RVTs4lbBerA4lBzw7UBhxOSCjTTh0cMYQ0V2WvEaY5Kcsf22jRcwi9rEm?=
 =?us-ascii?Q?algFrI1GCx2PDfYpcF39pawhjizxHB0jivGumkzk3Oc+OeQfxWeZaeqnZV6Y?=
 =?us-ascii?Q?Os4J7FQTJ795BPVugckZkac2T5xqAgUayLTpA+FFoi/EZgJSGsl35yIzdKP5?=
 =?us-ascii?Q?mjZ7bLzV9E6s2PZA1sl39GgjMbE+jgaVFd3syoQArGWjRT5ylk6HUCZWz/p3?=
 =?us-ascii?Q?ahdSUs3auDUUOCWM6D0jXu5Fwsa9fPJIoRDwI21jiwWATK6l6rHhe69eDKvB?=
 =?us-ascii?Q?tYfsOJWZaylW/qk7R/BpnSqOTe+SaNCTnIxr+Ni0VUQpqTKDcaKv2mLdbIvH?=
 =?us-ascii?Q?DFH4RvN7gXzCEP8HpvLPR0WMFOL9Xm/3lw1qUDEl3G9uSU4ICxGRXC/SgGOV?=
 =?us-ascii?Q?r/QuPZZ3ZGRFTRiWTL96hGnwRUj8FmyDLbslVkOWxnxMB7M4UxqwP+txFGOx?=
 =?us-ascii?Q?2lBwkXl2qhXAj/Ws0ot5d0jeUTuSYJJMThUqtZbFTUxVSgaPQQVToZD8KcGT?=
 =?us-ascii?Q?UeeBOOk2Quu6iTuXSjZKXLY+2G6T55aOE8x5y8jj00JjAKtVmX9pksbcSaDG?=
 =?us-ascii?Q?+K02N9RUgv6/2p2klVeGrCun7NZkMPYBjZQTV8l0jG53hvbRGjMYRI8HP8bC?=
 =?us-ascii?Q?TcfqeiuNaIJ5qNEuxyliOf2ziMr/nkhTzenCX7cDC3o1b8aiW5Z9wrjKNkYI?=
 =?us-ascii?Q?0M59F7smfiECOKawEJeED7nX35vkqpYjrXRkT43L1XP7BQuW8F84PbCOMV6g?=
 =?us-ascii?Q?+E+T1OFkWaHybj11CnUov0POpm1OY6JGUXDoBW9MEpyKGySgP13EE2E8lUgW?=
 =?us-ascii?Q?i2gj0lDpmCUmFMkN/z8QNA4ZYTP3oUa72+TuIjRNzdRmWzVKwgEaEAKahiyG?=
 =?us-ascii?Q?7ZHR4hmkeIvhPBxM3ZsraLJCgJs5qy18kVN4lSiyXsSv4Cb2y9PRZX2SomUf?=
 =?us-ascii?Q?99aazMmfCONQ26wPve3s3od2i4qc+Zv7Gez2O643klNLpwXIGSKzJlNcme7W?=
 =?us-ascii?Q?e5wHptEAw/QFLPweMUiWO+qHpKcbgSVqbcc6owkgvtWCYC1RH2q7KOg14zF7?=
 =?us-ascii?Q?BkSyGW5vBuE8doQtd3ZDTC0O35c0hBwamSvB56B90PNJjO17KO0fAQMZW5b/?=
 =?us-ascii?Q?GTcXmKWYBVmaaD15mYYjwiOAfZYIVzESgQnjDKTztontIB/JSd3hdLY42ISx?=
 =?us-ascii?Q?CZ7Wq+NDMZBBJ1eqmWYQOIJy3BWdZBHVr4MLW9oCqnV5YGWUdSlqYPJ52hEA?=
 =?us-ascii?Q?9mG/Gflroqoa9GogyAOAtp4wt1xSJGTv8baOxkTc2Ph3PREjNWTdiszkVZoQ?=
 =?us-ascii?Q?fKwfEV4CtltauO4S/UUwGwTJKWTV16UsuWzXvnrOzbSQ8x1OSk5BiamV34SX?=
 =?us-ascii?Q?DKX8aEXoufPeStkkQSocDHgn63OTA6TOx/zaLZha36062KWJrvZtJ73I1m2e?=
 =?us-ascii?Q?ox/HiZeMb8I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ijb3PMXi9LQPK7llnOD3bU8Q/nQ1zqqOHHHjF6DGMy7xcl46oKtJ1lMrblzi?=
 =?us-ascii?Q?mu5AyQgroSKKc/0AkM8k/2c7QBF/1UmYtLiXnYqHiYetbnLH34+UG2btnmRe?=
 =?us-ascii?Q?YyG1ynl3uFq08dVRYiWz4YKsWgMEe05iXQNb0X+l+k3elW7Pwy5duTEY7/9h?=
 =?us-ascii?Q?VSPMrDC8nA6NaiPehY0b7cLw9FpphghLnf6cedAVuU3QAot1rwuoetdDdzpi?=
 =?us-ascii?Q?ZwMTwNsBdMem7jp/ZElCbroHOYUv489EHrsH0lg8+Z08FT4avLCNF4Mqahcj?=
 =?us-ascii?Q?ts7tl0gk14HS6MIF7duVoxZSZQ982lBQqpefznIaXQNqOZ4WHtxx1Jpgaw2+?=
 =?us-ascii?Q?h7M1DgaIM182mmwVgVycu7hlz15niT6N92RM3AuSqG96SrO4rqrPuqNSevVx?=
 =?us-ascii?Q?AjAVKUFq8OYbDWAhWDJbPUmugg3qWJIe8qaD3gBq6ZOwDtsAxY/GcIFCOywV?=
 =?us-ascii?Q?H9BHM5GtX/bvV9vJVAcDSmv/bOX4gUqJlTY22Gb0OrAEnmUydVxeTzg91fdS?=
 =?us-ascii?Q?zlU/xJL/MhemP2IQocedDFyZHqKOFLoVOw4M/eBnJ6yHgjpxvwRYfZssTRoo?=
 =?us-ascii?Q?6zC9foVRqi7Q2DL1YIzyuPdDPjXPTMxI6t8uN4zyoP8u12LDJcOa1twmu73E?=
 =?us-ascii?Q?6j2Lu3jI1XEmogPCKFd8sXq0w1mjS/ddM2SlRMz83jJdhDdmA6Fn/8HEUXg2?=
 =?us-ascii?Q?ccV43CnYOf1xhC7YM53bVJYqPf4UrAnYwB85UUn53AKrJcnR6XArPc5CRTJV?=
 =?us-ascii?Q?CQe37WXVH0Ud0WADszqVSZ6QR5AQnzmhzCFhsoHyIm5++ayLbyT0VjDrWB4B?=
 =?us-ascii?Q?QIctGa06/iKPW7lOI/qMfw7FB1fw5R+hlvLvUsp09Ll58fmnFOr9yz05zriU?=
 =?us-ascii?Q?kQDvtM6d7lWpM2ACOx5byrr3PKJ+bKNxpeq3A1PQhk6jVQ1wO5wqdU6UbmVJ?=
 =?us-ascii?Q?HCiSrPyV6+hzkJBDMZXkyxb2eJ1XuCgEiLe+XhXIdfBzRf0XWCch1uANXWBG?=
 =?us-ascii?Q?u/u86dVO8IMyeQrtluxtg9svPOlsloQhSDw6oHR+xa5z1cQB9ps/LcfVCyqp?=
 =?us-ascii?Q?qWvu1BhqcnXldVgIBp9Y9JL0Fb98W0b+Cnq07n+g0FCnb5QcYtLTpjtAxMQy?=
 =?us-ascii?Q?+SG0PHMdkzKom/BhR9fR6oqqzpoVGHW4rewPstpZwZ8soJqNSgHN7zpR0w2n?=
 =?us-ascii?Q?prcAtrZ7ODOUNM9bNlw7+aOlrcfnNI+tzPgg2CcNNeM8XcrozWBGXJPKhm+J?=
 =?us-ascii?Q?XbCP12TyPmeYpCfkX8fEXhaicrZ8jZrQzMXo/fVJskdCdKMMNOhNFgR6Wpi1?=
 =?us-ascii?Q?4J9ovywQT6c+qxDOsWpHuwvN6pEekN/+kXiu/O/VqPrDgz+SU0QkhHP5w3Q6?=
 =?us-ascii?Q?evuyng7ch5feecjQHx2Y+KTAwZiYv6gwdj+hXA/aH9pRJxJYs4dk4io6C30A?=
 =?us-ascii?Q?sUd2JF9ylO7Prd3CgjZv9Eu4iCNAcUr9vYZt+YHnx/sebd8U63CnSVnURc8Q?=
 =?us-ascii?Q?rOFVe9ncuszMwEgGv86G4yPkqldzaXKf2jjEu/I+t/lH5ONy6fCu6U0raTyR?=
 =?us-ascii?Q?6gOwRJy5kligUFoBhdlbcYJ6Bhdpvu2sMBOIiFTu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6811ab-619c-4883-804d-08ddb48a660e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:06.8702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Q6KJ6LH52AftrkE6ATn0NqVpB5tvc9y7vgGWYx93Sd7GfDGdLI63C+E6tpA+Vm/opSsdsNL1mWjn+W9WMVDOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

Handle the RX_CAP_CHANGED IRQ, which a sink can use to indicate a DPRX
capability change without disconnecting and reconnecting itself (i.e.
through a short vs. long HPD pulse). Handle the IRQ by doing a full
connector detection.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 453416b9e9bec..c2eadfa060c2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5099,7 +5099,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
+		ack[3] |= esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5112,6 +5112,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
 
+		if (ack[3] & RX_CAP_CHANGED)
+			reprobe_needed = true;
+
 		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 			intel_dp_check_link_state(intel_dp);
 
@@ -5424,6 +5427,9 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
 		return false;
 
+	if (val & RX_CAP_CHANGED)
+		reprobe_needed = true;
+
 	if (val & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
-- 
2.44.2

