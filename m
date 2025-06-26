Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBBDAE980D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE1110E85F;
	Thu, 26 Jun 2025 08:21:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZYq38ukk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A2E410E2A5;
 Thu, 26 Jun 2025 08:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926072; x=1782462072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=u5CZH7wIA6HGJm0Q/WhD73ujgoLfmEmW0IsORwFiLos=;
 b=ZYq38ukkN2DNIQ+1CqQPL3o8TTjwqDZfp893YnBO/iI0DCP9MnD5SL2y
 Yzydt+lQyGEVPvF3FjEVQ8RjejJiLipJ5W+ZbEtkZZtqKcGwFGp9xY6q6
 GPt6TAPoU4yhw1zPE097y4msVznj8+9LqTlJNs4q638wbIWVwkgJUoiB9
 q5VhTriJw2xtJjQvfUOO2wbqK+ZV69p4zX9zL9ImgeFu9muahopOAdEcz
 cexnTJcJPi1skMqPfqIApPiT45PSAzZga+zsgZTjX3YGj3Gx+5N4AOr9S
 4Y/mSb9iaeBCBIH3xCfbxcg95E/Smdkn9xV6iB7xnZrHNJd3UuBFZdItI w==;
X-CSE-ConnectionGUID: V5KY8fuUQhKiEHiXtcmkDA==
X-CSE-MsgGUID: 0vg+tmovSbWuC76xL2VFSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019330"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019330"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:12 -0700
X-CSE-ConnectionGUID: VdLJA8FXTuizZKGsanuDGQ==
X-CSE-MsgGUID: 5aygDf5YQrWi+if6vSNbDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069926"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:11 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQC1rOYJE7AMOC9CTFdgetAIPxvyGPjouspBA+Zv58j0pv0fx8XABZZPyo/PiCzb85SsyB41gdmNmv6gAnsVqzhBEnTXINdpy/Ww1JdW0wRM1WxDwdbE4i+bcbbesdn/gI3lrecRxTTWBWqzEXzRZuksUR008r7krlnun9db4JpPugdOrG+1CkP3xw3gMkJH+EX0+kDGXK7+yr6tPvnGfZWpUR3NzgkZcTESmmkxxOjlPt9gx07NxxL2whBYUmI2jI9IsMV+gQj90vnuil+yN+Z2OT1XZRXQbGXQXmSHOJi96rd2ly7RVTZhn64iNoOloyOyDrc0ep14DAa/wBE/NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJjrlZfhO3ec8H4RRdvtcdjBWPzBdva3jQttakf/QDg=;
 b=JAZAwcYl9XbDlezMddLNfce2sTMPSwmF+RQREfQCrLjrCOxyAF+ttOWg1ldqBuaHHtqMBn7CIRdbT1EPg9e+cg9m+Zs1XetDXqUHoeJ/sxY1U6yEbvzZaVZZnZ+F2mYqhS55GWVOG6WPtEjJwRdBH9d8DPt1Yx6MBVPDc0hl/uwNkR9MYcioxSv0hxJrqTvPMiPA9VfSQkjdA8YFJ1dxxsfxJu+PoxqZkeZlxaAiwgAT9/mYcaVTBOYciqjpWVD7ncgFSafhjIIiA8Jr6u1tLmyZkZcVr0kUdP6HoGkEWIDQmGCpcsfUnw47u2NfBjRRj92v3y9YRahdDsviY77O/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 04/20] drm/i915/dp: Handle a tunneling IRQ after acking it
Date: Thu, 26 Jun 2025 11:20:37 +0300
Message-ID: <20250626082053.219514-5-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 864beff1-c73c-4b59-619e-08ddb48a653f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fAj+nAm/IE0GfLXHE1AlWghYSh4WD6vx4FrExqnuy1G1UwXWHu+kI333zUTD?=
 =?us-ascii?Q?9mYqOL/KtrLxGlIr6SXI0mUUzKd1UuMl1guwOTXfg2kNQ85mFN/UNCYC5Iyy?=
 =?us-ascii?Q?fnoRgtC7Jwe0TSa0zxoJGQ77S7EvRbkKYMqKvYJGa07ltGOTORoPvv3Dgb8e?=
 =?us-ascii?Q?d/eHQCtZNCIAgxG3APKukpK7ebvuB/K8rIt9GcKgrKYkgEOB8UyxKrnkh9Y2?=
 =?us-ascii?Q?CaMVoJUnQXlzfzf3XsyxslqhXklt/EEbkHTSQEZR3WgWsA8yMZtxTZxoTYhh?=
 =?us-ascii?Q?YxcolKMjijcFxtrexNtt+CnRT9KOBxF5EEYVV7pXIxiNsNwoJ+Zh87bacCQW?=
 =?us-ascii?Q?ndfzEG8QPa4H6Jc/QQ7znSflD09mOJtdFlFyZvtjttjQ/DICGV/FuD3FZTJS?=
 =?us-ascii?Q?Tf58qDrWB/omTyaX4ZaKvFX7H+QQudrs8/sQ4QQw4wa9v3XujD1+47Hwp2O3?=
 =?us-ascii?Q?qZdxs8nDBNw/J9xkLQ9oiVJLxhTvDVmv3Rsp6RX6ZsPNqrmSku2piQiw9F/3?=
 =?us-ascii?Q?5XTkSwQv5xqlySYbuRth0GA7C6LUF0GdBGarbJmQ7YjGWC5/n/foUkoEKe2T?=
 =?us-ascii?Q?8PtDfNZdeTfrcHAbPsw7FN9aZgXk8EZQKiPoGtLfnZKKBDApkFHxUcE/ktrM?=
 =?us-ascii?Q?h50ulm2sSg2YJ4sJqoSd1RQ/X6vxiTFK7H8q+0deyoYkNPN4m8zxJP8Rc8tQ?=
 =?us-ascii?Q?TcuhW5vhRMDNTOwDgj7wXpw0qfebIf27htQcipfWoC/7M/JQxrmtK/0z/yie?=
 =?us-ascii?Q?0tkauC+KGac08FglYE4d+63Wiq8/xOERKmN/Wht7RNUd3QPZi2R2p7mB4q5v?=
 =?us-ascii?Q?w8bC04z9WKdFKZVO89uiaOsruPnmppx5p5mCSGiic/bo7WsbTS38JVrCznqF?=
 =?us-ascii?Q?gWa4UxOanwKHHagiLX26Zqpha/BBzFAofsh9LL/tEbxktW2guWTJoVUg1uyt?=
 =?us-ascii?Q?XsgAhZGeaQPyWCe68GmO/tcpVCmvHkKquQbJjohwxO7lf+h2AEUUwUGdWar0?=
 =?us-ascii?Q?SNr2YwOOuGQabQeej92UM7Ts9QDfdocUCTCQ/RkQ0jz1/gfV41TJW3F37kWQ?=
 =?us-ascii?Q?NF3HKrsVDZrASKLhuycgjBRhn2fCDIgmNEG2oAdL4GOYXZ0bCYIApiM9FRrc?=
 =?us-ascii?Q?ws1wDjYjmbBMdBuASNTEPD2CyVCr0WykQXa9CRvAB+rCRH4LHj+mZjEWIUPB?=
 =?us-ascii?Q?YRfwRNd+e5CpWcTB5NqopWsJ1H2PqFBJAhLWU4g/I2m0EJAYVXSuz7UBHiI7?=
 =?us-ascii?Q?9U4LPhtXVGvVk2oVSii81oi1qvqkxX2B80p3ur/R71UaLUbtLhyUMHxEDmi8?=
 =?us-ascii?Q?O7fmJ/Z6M6eC0dMDBWLmEFAuEiJ8ObjfQtn5bDwjTzvzScR0qVH1T+BJT7Bb?=
 =?us-ascii?Q?YWM+OeiXRAuaWbe3Qti9q4DZQXrsQUNj+t6oV0j6R6P597PrBA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L51mbwTGTuc3AwK7uxU64WxKEm5gtJqbfkeRw9lFLu9faL3qlRUbY/sl1mfr?=
 =?us-ascii?Q?IT34cWp3CdJWsBhxXN3vGm1eJ/YdVM3viTSHLLdXDx8fHFksLbWHI6ubkbQy?=
 =?us-ascii?Q?7JK28FxFOaRJ6UzvKDGgZLYDEN8ZjP3QCFGqLjhI2juv9GAqsQrzivkK0lYy?=
 =?us-ascii?Q?RO5pRCRFvFZp+bDLoNSVaVfU1XsiO8DjvLzG5+v44SrrZPee2OWnpb3OpUMa?=
 =?us-ascii?Q?oY1tPYbRxUaMB+mRw1s8Rcv+PFGLuEL22t7Gm+qIqODX2qd+sy6nnv7XQaoe?=
 =?us-ascii?Q?dPQQnzmqWKcMVdBChFTaUOb+Co/wuY7zruIfCqJwEwaWDJ0FNBI2f7ekv1rt?=
 =?us-ascii?Q?ibBOZRBqsuT0iGKPtXMAE4S0sqrE96/GBweXUnimxvsp/dwWrTayAKKeth8F?=
 =?us-ascii?Q?qT2e+sin3ZQG0r+5htCLaaiYDzSHTzt74xw9rNjm1BKfPfrm2UF/5AihHtZk?=
 =?us-ascii?Q?xfykmnmGl007dT0COLwQkTuegKDKym5khWrY8jA9+UwObXEp8eQIgbwYwcnT?=
 =?us-ascii?Q?oxgRqo0BsXkxkcaaJzVHPCYvuobN91oRIzqNq7OChUfXUWZIM93YRNxqcpO/?=
 =?us-ascii?Q?8ntZB9MSRKwaY7Xk4T8DqCkIDSGtOfWRIxY0s/huHUCDvZFc+3qptwbRQwcR?=
 =?us-ascii?Q?O6eWRoWljXSe5wg2wqoskkyIqt397PvH6UKZZZx+70zgQbMtnf0PIY5YReBA?=
 =?us-ascii?Q?0LCUGi8RTv3p1fBuL6v92z+AwE/gCw37JdNAwt2QN/GKLkPdxa/33Qc2Qpqx?=
 =?us-ascii?Q?loYZ+uxkIwNQpFeIJzKJl3BIRw56lhTe92eiF8zigHipBCY2Qp916frwnEZm?=
 =?us-ascii?Q?0FXQXSdfW2P9wL/MnquLOsTKhctYWCBTm36ZxpFhepNM7RUlZzGkPeKBln1Y?=
 =?us-ascii?Q?KWHDnq38luqRDKpi+Uv8+jrMFOpXcirs13VOG8o2tIy2L6I/ZmHyEpK7QjsS?=
 =?us-ascii?Q?XJPD3Tbt/dbs9Yl73ZQGT6suX5qQVbJZ8yewVtJEBNxiaiKsb4G7SbgKkSTD?=
 =?us-ascii?Q?4FTIO/g5LnW2hV33KZa1GbMsnG9lCZGegTeIbhzD1OhB6QDY6RSGwFwk9Kg1?=
 =?us-ascii?Q?1sJua0uw5A14EHmg5WonpG9eDtLH4l1fBYAyfcF5JidD4GL6Xk9FILEubO7G?=
 =?us-ascii?Q?ZPCiSYKtQUfaAcbUoOQ+qreW1FUpekkpktJA/RDMpuABSBfEsLi9K2c1VR9y?=
 =?us-ascii?Q?QHAX46jKAJaFGpViMVfMLlKFE50twLkwNZJQaLFdpKLdNDPrjXK9oMC8mJ6r?=
 =?us-ascii?Q?CoyAC68q7EGy0cOk1tOg2bqhauVG7spBcTu9c/e0q/tMUYEPCJhSqc7uqRtW?=
 =?us-ascii?Q?MPtB33/89aGLb4i6Nj/UEIQwSNlaxglVKSNr9FoL6RggjhoNiFyHKSX/nBvg?=
 =?us-ascii?Q?IAXd79EywdLqhyi/ZuVtazljaXwM//xZ86krcXrT4NKmeT4WYjwgbWVSzEFt?=
 =?us-ascii?Q?xGDTNYXEZQ6cPTkHp79e80nqM2Eg++Q9CxnulG+Qk0S7Lk6E6myehXlKYnnq?=
 =?us-ascii?Q?28Wxnw1ICDBu1Zyd+QCsoE1Lw6STIZzsN1j1Y6VSIiNIipX90S+jVm1NwqwN?=
 =?us-ascii?Q?NwnMKeyKYYfYFZIqzUmUg2nlqotfpZDsS+2Xfz0A?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 864beff1-c73c-4b59-619e-08ddb48a653f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:05.5027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0MK+XxfwfVjjd4srbbd1Md7f/EMj+eI6BlrmPm7u0U6J1Rr7NZQOYIeQdSf4z/0quXoqbbO8wW/N63l0x2CH4A==
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

HPD IRQs in general should be handled after acking them. The

1. Read IRQ register (read DP_DEVICE_SERVICE_IRQ_VECTOR,
   DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
2. Handle IRQ
3. Ack IRQ (write DP_DEVICE_SERVICE_IRQ_VECTOR,
   DP_LINK_SERVICE_IRQ_VECTOR_ESI0)

sequence would miss a new interrupt triggered after 2. and before 3.,
since the flag set in the IRQ register for this interrupt would be
cleared in step 3.

Fix the above by handling the IRQ after acking it.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 285cd9a5d4a7b..453416b9e9bec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5099,17 +5099,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & LINK_STATUS_CHANGED;
+		ack[3] |= esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
-		if (esi[3] & DP_TUNNELING_IRQ) {
-			if (drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
-						     &intel_dp->aux))
-				reprobe_needed = true;
-			ack[3] |= DP_TUNNELING_IRQ;
-		}
-
 		if (mem_is_zero(ack, sizeof(ack)))
 			break;
 
@@ -5121,6 +5114,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 			intel_dp_check_link_state(intel_dp);
+
+		if ((ack[3] & DP_TUNNELING_IRQ) &&
+		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
+			reprobe_needed = true;
 	}
 
 	return !reprobe_needed;
@@ -5423,18 +5420,18 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
 		return false;
 
-	if ((val & DP_TUNNELING_IRQ) &&
-	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
-				     &intel_dp->aux))
-		reprobe_needed = true;
-
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return reprobe_needed;
+		return false;
 
 	if (val & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
+	if ((val & DP_TUNNELING_IRQ) &&
+	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
+				     &intel_dp->aux))
+		reprobe_needed = true;
+
 	return reprobe_needed;
 }
 
-- 
2.44.2

