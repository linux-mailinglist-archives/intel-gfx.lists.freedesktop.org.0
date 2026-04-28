Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4E4MC3Su8GkeXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92236485647
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1551910EC54;
	Tue, 28 Apr 2026 12:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AaKZCq2T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8459810ECD6;
 Tue, 28 Apr 2026 12:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380968; x=1808916968;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=uP0hfptbjC+REASWxVyKfB5oq1ExGrfwcHiN0qEw7WQ=;
 b=AaKZCq2T2cSO75Lp0c6wGh/fsFpnvJDJr5wfHJcwAB/V4ppotaHCbZm8
 JL3ysxbHq31xZJiSsYD/oSR6z+qCT7A5vViLblmoF+Bi5N9AB8SjwX3ZY
 MnzkR+wl2IFpp2Oe5a+XXBVO1Vz+iK3lTMctHLPdgDbOLc7uLxKpuzWHv
 QC7psEE0vqHYdkXrO8oMWg6lprlWrQlOCUQQ8s4E0wwPrFJOerTWDVsRw
 d4Oyi5+xJlWxtikXLQsuA1TEOAb6C7L0HzDIISL+UE2Z4ea7YUoZ7EWM0
 SAWGmZkdEwPJEpsUyvOmW4AY9rSULqpNiaZRAonjpAsFSgPBM1cea0yI9 Q==;
X-CSE-ConnectionGUID: anX5Sn+eTh6n0W5I+WPccA==
X-CSE-MsgGUID: ixm/ROUvRBSZJBjrSQU8Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203398"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203398"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:08 -0700
X-CSE-ConnectionGUID: VJYcuk/nQle9pu4AMOkdEw==
X-CSE-MsgGUID: Df/+UrGdR6eug+tDv1qliA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234245175"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:07 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hS5mB9nP47mSgXL+XBtQQXSNSd0DbiC9Z+tXqZFwARpI9/u1M60b7N46KnkNnhn5lYCYwqLDz+x+cs8Whvc8jglJZUqksjk9kFPrdYOghqfXsJRmt+a0tZdetfyXlzIUVkbvhi/0pCBMLRZZ+qXeRk86KOfqGRYv72vfqhZdbxhVUmQpdZYEcV/zk9Yxhx/cPoO8M8+kuI7/JutrUgs6mdwDj43X3cN8068Q/e/nc5uRbQbOqKqPcW3YFxN3vHL5kzSVpUbC+r6comVFFcw/ZpMru5340ch0+PQD2GOfsu2r2KEGSBHVaOSr9WX4A6ZdrBkN0BhFuB74ZrzIm613DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5JJCykex5X5+pPvt4MehXzFQky7GnbkvJwSWxhAVNgs=;
 b=QS4e6qOAsCjAzuP3hIO73cqVO0J1gFWrmgqoWwGNTcRmbCLpGpZ6G9X7UO/jx/wN4wGFjOjqARfwV50vwwOKUFNPUKBHAYw1hKcg1OOBFnpZi+55QvkYZLWjMFvExWUBhh20iJyRXQt/en7+cPFz6sN5sofnHb1O3NrWyjdbLNSeP+c8ulxm5xJawXYmoZ5TDvR/zAiLXVKvM22UK4FqrIJ3pPdeH5YoHIMRfbyGl4KLajSdUjtJa85TyWZkjyyS0CSG+VadlUecO8UpfT0QoXXa7BSLdDNJ+pBt2/+SBBnRHTkTs3rfVYWObHrnB69dpzvzUWdDhpM45KEm/40C+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:56:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:56:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 104/108] drm/i915/kunit: setup DP link test context
Date: Tue, 28 Apr 2026 15:52:25 +0300
Message-ID: <20260428125233.1664668-105-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 470b2d25-a4fb-44ca-4d8e-08dea5256db9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: DWrAjiAFoZNNJPSvwGyraGWu9t+OEaR9j6/2w3Kwoc+z6LBs7EzzzeafhzsG9zXx7k+OB8UmI3Q1NLhZKxfnxJhi8Umg1j7MEgS0yzstovf66gzDrsFNcfX6sJ0kfyId1Wcdafjyku67hJHZJmxtbY4+2GW2HZi7MIS5bdB+TUk1y1CookkH4kV4gTDp+pOpc0WjviW9x7+b3zdvXBsjHtr0N1wYUTqXMTR78HFof7WIWrcBTXKiRu2E5aO+PDJUeoantZ3tgGQjd1rl+Ge5z+INajSdNTCaRfoE4nm987vA2xuYSUSkp5hEFIYww3O2yVzgm5dLgkfQ/PAwtyTn9ZFgpvkcr/x7+P5jzj+QLhIUjqIK+SrJ+XohQhbWm7XvaTz2hFLMRo8SyixWHP2jV+4Fj6jirRUZ8S5qr0zV3NWJ0yfShcULu4i/hroaIz11SBk1TK5+vaf2v+colCFFsCYe3y5YzFTJpMgGFkvyRzxcZaxkDFWWIp0avV4rhEGzSljYAHJhgczvg3jOsAVKRLb6qOJg66tccM4kacVKC/HsEqMmtghXELHVRvHDcNkrxWmaiX/aAQAVqExeiy0QpcR6kYACHSLWgWAbECUtxBAT2dy/pm0LesWILbDliKKGCRhifmeh9E9Ry/YjirvSmt2NaccLmoCsuwEenIeBPljbb4h4Eba2X8OISYdp8SAyIeeSJ1DvrkmdCxCCMUtl1aMsAlnqoMQNIedsPeBxnjU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U8NTj5G/365mIA5XgbhxaWSQo9DDb1ufsFSqyTpMoBNjfo7R3E9UTa7Q2s8Q?=
 =?us-ascii?Q?FNyJxzb6woRIZuKTxkJfVpfUWCpEE8hJKAQM366Sk+alKTz33qBtsCrxrZrG?=
 =?us-ascii?Q?eA4kqPn024AAjr7rxKCJpJUPVV+TEdHQXZuMF5Cmf794OmPkeeXawOt32T8s?=
 =?us-ascii?Q?i6p4jvDnc1n9i/6uzfR6HkGZrob/95/h2a/ImfrvoSL4X3ag8DsO5PBXvBUN?=
 =?us-ascii?Q?owid9gMhL2BX09zGz/XKFtTcNiUh/4bgS67o3ouEF41kzX9Y6XJgyaiFR805?=
 =?us-ascii?Q?SWF6ioDNeHNaSH59CL5xj3yePcJVtVeJOGj2qNdpn+3CaIs/m+APZcpjoSmI?=
 =?us-ascii?Q?/N1oMhkMwrrueRGR39Udsjl28mVaA/5YNg7NWDjrGvUIVeg4P54fz1H/RSuX?=
 =?us-ascii?Q?Bt5UKe8Ay34PmN3vJ5du0S/AMBH5vyx9vwpA5/v7O89dmhufkOQ7nxhFCbA9?=
 =?us-ascii?Q?h2Hna1KdD/hdnZgBd3moHthfrvn9LuDpd39SaeGh8TLk0qsmGdRqoWEev9RZ?=
 =?us-ascii?Q?VZeJq+gUEMiWUM2J/JCcAlloKiqNzWsayfKcgNjx3YaA3GdpOBYRyG+vhjGB?=
 =?us-ascii?Q?0eJb5xOTpCJg7um6a7XLTFa9ttY7wUjD4szNHT4KzMwjL8cUIuNtL9i+Z6mk?=
 =?us-ascii?Q?cAPs15ydDO3E+VlUtcKeQPJEKrpMa5VJJGsMcRFK9HnxJbEnWg5BkjQfLp7s?=
 =?us-ascii?Q?mzE0xhMWfYhTom+3peAPzcrJ6iVx5XEE4zyZfLLP7P09h57aK8cgfayeWz9+?=
 =?us-ascii?Q?45cieQ2vqJE/LLfK5tm2q3rR/jnZyaL3yy2AZ+XgauUFlMhOkKp8o4Vxxmef?=
 =?us-ascii?Q?5kQ4EkEhJ9Y9MtvPN4aeMh+N6qw5xqJPeS+JAp7ddGBQo/FH9lI7sAIXma6e?=
 =?us-ascii?Q?Ywp4lOBIdFHc+7Ie+zT//HzunSAxar2wS0ZFRnUJ68itHVoMEGGgd8V1TVlI?=
 =?us-ascii?Q?t3Jp9m6HhGOa90oWtD5tDpoBfgDL4ldmAhSp85M6G1A8lJfcPvVnpblPfPsm?=
 =?us-ascii?Q?+TydEKJ2aNteXzhu0omZc0qxwOj2yp/QkpxCXGtYv6UTBAoYOQAN+7X/Nfkr?=
 =?us-ascii?Q?tES6WA9VMnvecYlJfGXx1SUPuJVNM9oq2vQoeODlQUFMqq5LcRhRfmCtKGRz?=
 =?us-ascii?Q?p5oVFVLyyWAEAbWEnGSp2HV5LXRv+a5JDPmB5nsY6rXmCkqlonWVQ3iJ1ei2?=
 =?us-ascii?Q?49Lzs4Ns4P00Bc7Ak2GFZ1NOlG20Xw1MtwJzAB2D30XGUzpiKl4gP5Ko89tx?=
 =?us-ascii?Q?GvHnTqfCgZrOQMv+bg5BuUHos3XJAC5O24nyBJAOxMBWz63gHa3fbkZJAU5d?=
 =?us-ascii?Q?kuYaLzuOUb6oYK03PF3IUW2R1PiJFot65cDPKuJy23XWps38XYigTxpheyYC?=
 =?us-ascii?Q?OxjVHGRs80KrMgsAvtx4+xN233HWEM9U4JtTtfGjZVRQU1McORctJPPhj5kQ?=
 =?us-ascii?Q?OVtE2NyPqFXi/meUgdZB4bTJ5xNv1Pko5hBLc3bIOD300KirE6McVSOWqtAp?=
 =?us-ascii?Q?cGAbKLstACboqnHNrriIJwQdKR/3TV67QF9DCp7TQ0eo7QYFgUzkdrjiiWke?=
 =?us-ascii?Q?kCFIVboR8S6YQiT+RIgPFrujJruDae/DDAxtFBYSEzLLbiwSNrMAoAi6UCou?=
 =?us-ascii?Q?wU7wQEniFWWvYtJlu9DqJO7x4H3yGLkOUP8SLFODkNKFQcFq/br2FAb+9x2Q?=
 =?us-ascii?Q?gt9k441p4vQjd2NPoOkqMdGpnGecGHs88ybFmtMyRSAoGkZPFL3l1FPjh0Wu?=
 =?us-ascii?Q?nMg6+ENaCw=3D=3D?=
X-Exchange-RoutingPolicyChecked: sme+bThWW+mGU424W8COuC+onVIh/yxuWNd3nVE/6XshgPeIVHGLgr8oZSl0wcRz1Q6/fJiX2dbxCqebCkvdDHrIavX3ZXFYeFKUK+DU8ef8GmPUGgMi6MaGKKSOWO0XRQF984Xjr0zX5irEVbvFbC1VKMtXCl/ujwgXlwdg8Sva7Hf2Ox4pgzUl/ZDA+aJirHJxYyFSdZW8Z09LtVCNj8TvOmJwyPyfIPSMKQFksZ5/TFVt6FpHOfGGzOhgY7lu1aKAfTu69SThZawJ8wGsv1j078ZqWEZvK8T5GyWVL38+0z5XCRMX2cBtnjybKjtYE5Y8zaRJxJV6Ay0uMwDm9w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 470b2d25-a4fb-44ca-4d8e-08dea5256db9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:30.8851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4EqpdNp+b+6kGvqqmrAo/PK2kIo/G9BNizce9/W0zFuXQSHrL2SNPGmQtCeUQfJqBQ6w9ArMU8rQX0/j8dsE/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: 92236485647
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Initialize a reusable test context for DP link KUnit tests. Sets up
minimal device, connector, encoder, and DP structures, and seeds the
pseudo-random generator for deterministic test runs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 1efcfdc53c936..83f09d8cc4aeb 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -5,7 +5,32 @@
 
 #include <kunit/test.h>
 
+#include <linux/compiler.h>
+#include <linux/device.h>
+#include <linux/prandom.h>
+#include <linux/random.h>
+
+#include <drm/display/drm_dp_helper.h>
+
+#include <drm/intel/display_member.h>
+
+#include "intel_connector.h"
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+
 struct test_ctx {
+	struct {
+		struct intel_display display;
+		struct device device;
+		struct __intel_generic_device generic_device;
+
+		struct intel_connector connector;
+		struct intel_dp dp;
+
+		struct intel_crtc_state crtc_state;
+	} dev;
+
+	struct rnd_state rnd;
 };
 
 static struct kunit_case intel_dp_link_test_cases[] = {
@@ -16,6 +41,26 @@ static struct test_ctx test_ctx;
 
 static int intel_dp_link_test_init(struct kunit *test)
 {
+	struct intel_digital_port *dig_port;
+	struct intel_encoder *encoder;
+
+	/* Reset the dev state for each test. */
+	memset(&test_ctx.dev, 0, sizeof(test_ctx.dev));
+
+	test_ctx.dev.generic_device.drm.dev = &test_ctx.dev.device;
+
+	test_ctx.dev.display.drm = &test_ctx.dev.generic_device.drm;
+	test_ctx.dev.generic_device.display = &test_ctx.dev.display;
+
+	encoder = &dp_to_dig_port(&test_ctx.dev.dp)->base;
+	encoder->base.dev = &test_ctx.dev.generic_device.drm;
+
+	dig_port = dp_to_dig_port(&test_ctx.dev.dp);
+	dig_port->base.type = INTEL_OUTPUT_DP;
+
+	test_ctx.dev.connector.encoder = encoder;
+	test_ctx.dev.dp.attached_connector = &test_ctx.dev.connector;
+
 	test->priv = &test_ctx;
 
 	return 0;
@@ -27,6 +72,8 @@ static void intel_dp_link_test_exit(struct kunit *test)
 
 static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
 {
+	prandom_seed_state(&test_ctx.rnd, 0);
+
 	return 0;
 }
 
-- 
2.49.1

