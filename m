Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 123AAAE9815
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C5810E85A;
	Thu, 26 Jun 2025 08:21:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MmfsiBRW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB4610E85A;
 Thu, 26 Jun 2025 08:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926082; x=1782462082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=R2dPwA2TW9PF91/AwtyRUwlWdeX5VP54cOkvJal92qI=;
 b=MmfsiBRW0ZLtIlwnmNIj9narjLvN7En9pTdU7ih0AzfkU2caRdQm2fI4
 8bsUkPmsuj8XGtAMCGChjgsT0wyzVrDJuyiu5DyPzcNJAG3AKphcikp7S
 cWHeeX7b0gwYvGAg5Pttqs2CVsEWcYJqpU6+VtK0U45hiCSTXS8tScj4M
 2TAmIWaGT0sAcEZLcEoJw27+sMZSLe3qUBWxDZ2hhxYw7otbquTUq4rMc
 6uYSjo2KmsT9nJ6jcfBoHBFBhA3NR+9+s2m21PYvqSyinA2CJ0p7upTbg
 NIg8JcSZcwuWSKTs4uGJT1ICI8SyvXFTDpQZ6ByyBqv0eIIzNDRLevCuB g==;
X-CSE-ConnectionGUID: EEfLHuxEQrWRRIpazbc0Dg==
X-CSE-MsgGUID: x7XrUBgURuSUUEGOArHBEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019371"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019371"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:22 -0700
X-CSE-ConnectionGUID: fmQo626ZT+agVahxvRcL0w==
X-CSE-MsgGUID: UxTIYiWETVqfAFoMq2+jlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152070022"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=th9Gk5QIzD9JnVTP2bMk92viqSm7V+MemVOtEifJ6Jtei+tjaKl0h1kyU9/dN9CRH8NmGBRdSnAlJEQGyN+QqtUCKcYET4O2WQY8kQJY8s07uNhIHbkHgexLADcesO7SkGmuiA+W68inVuwVc+lX76EzWyh08id3Z9MqvYNkox3EWfWYePc2U6ih165gyf0hqzdh+0KuQ7T7XgS/rfbJSX4b1z78renfhvo6WfVDHLx36LNEykN/zxWLJ1QuYuX8AXTXJn4nbXQBfPRlFG5nkMeLDoM/rLl8+11zl/4TJvgKOI4Qcaw0e544kQuUrL2uHDMi5qiovnZO9Eqy/0Wbvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tz08RBAo6DrYnTH0n+6J1Zm3LihURCDJI2H8kZHX9so=;
 b=K09VtBmpGhQ6kLNhveeuAB4mBgGL1uQJBlnbuGaPDBfP+Lchb2xSkbneRir5wCvADYEpWe5xmH2FJNC4XMQiQS68pptZM20ttLT1R6X4NBG6/MKhiUqdOsj+4p32K425fuVc5fgMs4Mjv+oe1iJWCfJsDjxJyP+U1Z14KUeRizzPzTrYCZlqLLaK4YbvN/I5K4OFvxJ6b/0YGn9qdicuQagGLwm0F5bMs4X/jhfJPCDBsCgCOzfZ/LgWMSgNVl0QTV8DncXcOYt54H1iv5MhGo6VRQxSqBbz+ZBe8gWI3Z8Cpgln1DBzIfMcsObP1T41dSXbHro4R/dYmvKgPhCO1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 12/20] drm/i915/dp: Reprobe connector if getting/acking link
 service IRQs fails
Date: Thu, 26 Jun 2025 11:20:45 +0300
Message-ID: <20250626082053.219514-13-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 40a71d36-c4e7-448d-2870-08ddb48a6c68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xihGImLTW68IGCYY9+kzqEK/bx2gm+XggtWf69EkmDkF6luubOoDDS2kn9+F?=
 =?us-ascii?Q?y5wCSYFfZnADXhvN6V03dEHuk+gi2WDbsPk5AZI9KT5aLbJqoPA3bn91yHH/?=
 =?us-ascii?Q?Matxcj8pTnkErLtcWxrl95Z27gB8KEASLVNl77VzKci+yUexzgeBvDjz5he7?=
 =?us-ascii?Q?mkZvxnXy5Jxx09ZOES3JK9TQPByAwOtakd6xFvnzole430Ud1ANm4wgIgVlS?=
 =?us-ascii?Q?/V8JxvN/9ljJ3iNSuReXDh26IITEG4G1DPvbM+E05gP9jkU3MMzSFDsZZFpS?=
 =?us-ascii?Q?PUes22s/zCysfDr/e2liA7RplNKvvneRQqve0C6jHX0Sz6PlQuojz62dWZrG?=
 =?us-ascii?Q?jdrDD5yZAKtQwGWvZWdk00PglzHEfJm4c35oQ9CdSYL//FkeYsHYx4srMLjU?=
 =?us-ascii?Q?VdJFzKdkmQXtlQHLzmqcOb/wCRBuaKLdWr1S2fJQCHc4W3kIB8O91XUgQb0y?=
 =?us-ascii?Q?jptqBf1typyAywmgowoAXvKCol3iqoRTxTslhlcqRU4iev48HtU+Yf86PC8t?=
 =?us-ascii?Q?MbagHKPcyHHqXK6iGwyodm/ZJKHIZ1rjRGT8QAjGWitfXla2RSgI7VexybDC?=
 =?us-ascii?Q?e7tTX+HPUp8hzU7xcu0IXEzjy2xLcRQkhv+vqWT7yfxo6G9BWdBgo5axhpEJ?=
 =?us-ascii?Q?CSHuumBHuNtPtkQvJE2myg9knY++SmlefRzdmsK2SfNcJNBMwYsr7Qjj/7Oz?=
 =?us-ascii?Q?WzrxreZym8a8OKMH0pKkL9fRnjYmEX07BNdr+gs+gAgEAG8IzAkgHHXB6mNc?=
 =?us-ascii?Q?CjaY/PJsVtxqzSZXI5hV66kAGSmW4IXyRBSZsMoROS4J7Uq5H4rLKk7yG0RC?=
 =?us-ascii?Q?4zNE4jrtibiJoJfch8debGqz0kI04G7Y5226STuiCiDRGf6um4KkYeqxD4CR?=
 =?us-ascii?Q?ksOXLqJwsYsyRU8lqP2nWsiGm8tsx44+hooxqeCRikvTO3P/XgnvBQr9xV63?=
 =?us-ascii?Q?Lq2m+KnpX6Se2YoGSSAGZenT6I8BG8+RTSp3SymOS4pvcWYXSAipR2VhLqO4?=
 =?us-ascii?Q?AdEa67jRICPtS7TAhr1v8iWHae3SPYJ9d2X462m4T3Z+T42IsBtgo7rvi2Jx?=
 =?us-ascii?Q?yoppS96qeF8a5lRzdmwc2QQB1dbYLu5P8XhjDioldn+SS0cqxj3eRdN1ckiQ?=
 =?us-ascii?Q?JRTqyK0JFNehF3Y50VlI8WFeITua/bMW72vHO4V9mgd6H5tdXbQySRTSYUXm?=
 =?us-ascii?Q?FQD/RGikA1hxy0FmAS4Qg27sFUR3JYfXNjsbvpPBKZ/isSF6Ml9/Mpc3z9t0?=
 =?us-ascii?Q?K2q4/l5FkawQse5WhkPCOGOUmudonh7j0kb9/+AMe7cgDp2dAfa4exPQ1/j4?=
 =?us-ascii?Q?5BqLbmM92BxCkZu+K8IF5RohurQMT6uKoxyedBNTn+ACCKwDNWCs1ZeLkPh+?=
 =?us-ascii?Q?bqXKmeekIC0RMLZw5CUL4gM8DoN2OB/MLzfPGn8Nf8+dJbLQyZ5qBTRvyW2Z?=
 =?us-ascii?Q?5+pjIr7xpt0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lp4f+y75d7crTEPtq/egEd6+Q6o3Ny97H2Sd9VyqsWqkTEEBfVsevfo6kiDh?=
 =?us-ascii?Q?0gtdPbPga6p+3MSEYVY2QHq+23XHiVBGFYwh7HINzYL95D5lBypSQBc6j+9o?=
 =?us-ascii?Q?dIq5Ik8zLoevN8Tle8ROVhz6f0+f8dtJdg/8Ub7pi+iOSpw98JPsa/Oc0o0o?=
 =?us-ascii?Q?GciI4BE3gcxXDGsLJOg2fB6onU8YJVg/v2H6wLOsYNaxYzRD60zj0+0zEQus?=
 =?us-ascii?Q?TRRVuKnYd3OtRBfywwdxDCUBwoQ4abgWnRjVE37qyBFg8mYf6xdXIjvpqGLu?=
 =?us-ascii?Q?9LrZX/ZoZSky6689b7atOkrh0X0UY7Yqhp+eb0KcauzAIU/xEc+94mCWo3lT?=
 =?us-ascii?Q?3cepzNDxW+9avQvoLmzKTVSlKwc+MCoo5VLf7vxhOQHIMnrQr2ng85Eo0ikT?=
 =?us-ascii?Q?49MOwLgJsTPB5p9yxr2XGDi+aEjofhu0FHXAG/W8Ev+gMAwUUlWBETrz42qe?=
 =?us-ascii?Q?44mucQH/N52jk1ho5H7VQhBW3RYGfXBdHXRwJlw2dbhisqh1v4qmhldzKXCz?=
 =?us-ascii?Q?ETbZZ351egH8m38k2I2XfMNjWstl4lTRdAn/76D3ZL4aYdOO6qFa8nf8CO9T?=
 =?us-ascii?Q?oLSxgS45UMlTipj+DWjRZ4x/5algbf+PH+OhVVVmluHjRFdu0pCdw7+dNDPg?=
 =?us-ascii?Q?tI2cOmD7MN3ycsvpvZwCJsmA1J6GjidntzOI1kylS0oobJc7kEPAfN7Fk2pJ?=
 =?us-ascii?Q?0altlTAjqH59lPrHgkQFrn0tooQfKe3BHBY992QV/HXPjK91moATEqBqONgt?=
 =?us-ascii?Q?bU9EACUSoTf8w73rzi4EnA7yZFS9h0gqvy/LYN0HV9tmukIU1KHsVynNJjQ9?=
 =?us-ascii?Q?hMy0GWGeNuGPq+7x9AJtUFfzzcwCmp4dIZO018tLj+W57zmnnd83vmtsQ9S8?=
 =?us-ascii?Q?vuYTXSWu1YvvoppXPDAYsgOLpJmXLHxTUj6TDEe/NxcO/6e25zIRjx4CGzs+?=
 =?us-ascii?Q?KxpKaLuJn+464qfpg42XS3DIMpqSo4H+jE5vCXDd0QE4xOYnYy9Mx/ahL0w3?=
 =?us-ascii?Q?GVc7cOSOIF0y+Jdnc7ICBfKw9sIYox2f15Ou3GxlDfohTCT/WyEXJL9HdZof?=
 =?us-ascii?Q?WkBlgixKonwADuQnGV/ALW9ALs3+cAovmWNMUkSVFmLEZfHXAM8BT1l/CdBL?=
 =?us-ascii?Q?eoSov3oFfHLrB7Z7KTc8PM7VXedEdSXK8PtJnwnmyzTtbu1qr4irlgd6+BbO?=
 =?us-ascii?Q?RDjrwiBbLoOOiFZ6edcJqrCABaSJ+5lYiFKRTwhbXeAcBDyPCfK3jrLt32CB?=
 =?us-ascii?Q?MFLodYXG8/ibbyfxbQl9yyaHzivCQoMj6Au7b+P/OPsxP9/DKhGvUrVdBPg1?=
 =?us-ascii?Q?wIZr53wd71xB16bSdznpRsx0RttoylpmxlBbKceMjSbGvQ8oBbWjaT49TFDc?=
 =?us-ascii?Q?Y5i2euuPSeyTOZhV9S2qVE6yT8TzOgb2J422S7Wn+6AJ4bLHzmNpFe35oa2q?=
 =?us-ascii?Q?5WwhuieFnBvxarhqk7HVdsisX7fUQn4jCbbG+RnZIP7+Kl4yS73EiXGgPeOu?=
 =?us-ascii?Q?Gpp4jsJiukIgwaJXmnxAwih/drQcH3CZw1l0q2AOQlIzS2M71NUTSz5CKytn?=
 =?us-ascii?Q?0CQMko5OnWFXTPKWbdC+BOQAaiNon4BZGrqgqvYW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40a71d36-c4e7-448d-2870-08ddb48a6c68
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:17.6889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RguPg7SrTBv4cTegRbGMGg3JZHBT+WktCAX06/bahuYOpudpBjVH/MGllLTdK+l9K0lG94lBEdfnqL9Y04B4Jw==
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

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, ensure that if the failure
happens while reading/acking a link service IRQ.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7eb208d2c321b..66db426b4aca1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5430,12 +5430,15 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 		return false;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
+			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
+		return true;
+
+	if (!val)
 		return false;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return false;
+		return true;
 
 	if (val & RX_CAP_CHANGED)
 		reprobe_needed = true;
-- 
2.44.2

