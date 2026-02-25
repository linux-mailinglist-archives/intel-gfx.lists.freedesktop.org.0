Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGffDnonn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C634919AE8E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2140710E805;
	Wed, 25 Feb 2026 16:46:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RvIgR2e4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC9D10E7B3;
 Wed, 25 Feb 2026 16:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038007; x=1803574007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=glToa2O0rci3DQ4nJDpnXpeOD748fKE0ekF8NHQ8Yh8=;
 b=RvIgR2e4FXIEjEOnfeuQatyQ1+MZEeM9msya0PTvm2vDT08hFx8BlEJ7
 USd7ltIwUTvjzeU47DqvrHccNDCP/2Sj2g3Eu07pMB+RbmwnEC7SrQG1i
 pkO37+cAa3X0Nuhnh8lZpEi83J8v6sRHpVA9nvQVWpd1w4TcStJA6VyIg
 Oq7pHyUYZovlDjDz+12nz6RunT15TprmVhv/0QFso17Sh+/tP5ZwpMfHz
 TKF/B1llXaoh3MONDvezoe4jC0WUDw9ZkURTdhOtB41/5pIVLgBTuP7lk
 FKfztsfRM1KsvttTd3cHaMqdBmuMLWhwadLzi9bQ1OwEtKyNpRsHWX5IE Q==;
X-CSE-ConnectionGUID: JIRaJAKxQ4ucblVp9j4Ceg==
X-CSE-MsgGUID: lAHZda1FRS2aE9H2L5JwSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90495841"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90495841"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:46 -0800
X-CSE-ConnectionGUID: EfBQIdO8SIGOxAlmZn0/DQ==
X-CSE-MsgGUID: Nt6gu7F5QWi4QbK+63eBzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220424234"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:47 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:46 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:46 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kENorjPOdm6xLYZQ4SVwzUTYAyGHMgYemAqgKuakEw3Yc8hDc7Yxcbr72y1UgyDekNTyBuRnUWxprnBTaFDqDe1J0fY2nw6BFidh9jTvS8NZmbfCGxg45GqYrFm9Wg1nXN27ezazt1AeqgkuyCZeyyYvRcNhu/krgYTrCb1UQQNUIzMhVj9B2aD9iqIzroJNsDaV8B0UDbg65CMy25OjsQ5aP5/SSecK+FXe4hN/y1NBreojTljifkt/E/fOFvAATl6x1S0TatAOiQDLZPo0vnze1bTz51vws1nA5igF45azog3LojNbOQCZW6KGVpyZS0TtgmOkTQ4qWQ+7y9TEIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=neyn/+JDQ23rijjdumojO2n0S8RjB0EjeXGDd4gAI8Q=;
 b=fCKEohMUNtEqnLF3UVeLzJ26KbhJO+07DVt5q3yMz7lxuAN0CE5k+i7VUMy2Fj8GNoPDjib3sSF6Ss7LL3QyvfGjRGcgMAnHqFdcZ5KxyhsvNyvJ/OuuMaHjmEkc1opdS3wwvM3YIRPXZJ0dTHAxdjrZizr8J0xv9slzsdoMjAcBBzomcsVIdJRhGQ9L2I8OK7MsvJ6HsyqQU5E59B1Z+6NKIqBi9JJg8n1B8ZbqysD3yQbX5+ioJ551mcue4Y9GTJNXaZntpzZu6mRNZWDITzV7O7jqE+sMxFSb8Dar+XBiJ1I9F3/HYED88N9Zc0Ctkwx+IWSywnSb8B98pS7OwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB8787.namprd11.prod.outlook.com (2603:10b6:208:598::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 05/20] drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
Date: Wed, 25 Feb 2026 18:46:03 +0200
Message-ID: <20260225164618.1261368-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB8787:EE_
X-MS-Office365-Filtering-Correlation-Id: 0684f0c1-c02a-4e52-ada2-08de748d73b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: VvTlwpWOUhfmENQHr05wvsaD8TnZTgraJEATaTJEewUK8teElIxJRIv5hGRFQ0Z8Uv1lxIXKdys4ckSMRJZ35J4Z854GZkzM1a25gb5RJhtKKnw1CPbNryEPKpWPWnNqiTVOOEkpTz2yViuXrDAc4JGNdAuTPdyoou+YRWPW+Sfb8StJDTZlY5GnJkIcNGYUm2Xii7CCv81KLZWIw9lMgqhwaqggoocfwW0sSx+vY7PB6uioLA5BD/xbXEEZgjzgvKrElHwTdAMSGJQmAMdKQs+ZCAfxHpiDDY6TDrck43y5l7Oi4F0WUSwJYO406eUnENWI6IEKFRlEuW51xXihe87hfE4gABv9nfu2V2BngfHaYa/1Vt7p7xgHruXzbr/toN4SmBgyJnEn+xynN/c6MK3h+k6tvxWi/e3MiKLtOHjJRuc0bJyg936MoAxYuoJ2ma0uK+TKFBFBuhgpa+kjhEj1ZhSXI+rMq6B1ncBrFHbgBC9p2Ful1JPtM6Z9gH8GeW4jhBnTgcTjY3KQ+EXYuBNPvyUgBjrOOyZGea2Pm9TxNwokJLFm10O09ga2LrP4zcaz0f+mX5Pz/qYHg6FdUo2Lms2GpswB5Ql22/s0S/NIHSjIFHCI3I4f9T1IUJxGLbxsdm2bYZSNegO18KjJBjbHYoHieRAzK+sgc0UXur5Jgj+qpiSZDgbS7N1jztAvT5wI8/YlZ9SuWTK1RcB7LfRxoIW1jhuHd9vZWfFbODQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r8ZFkkTpdElw7jMJFxl6HYvyauPjjXUPt4FsQsH2+QXZpqmK0T4Jy/uZRJ2J?=
 =?us-ascii?Q?xAqk1G56RDhUsxjAy4KdqDXB+pSaUkPMdzBXjfwmOqMt98kwHteKi+V2FPjd?=
 =?us-ascii?Q?UVpgQwfQGI14wDhvcjh6AaQ253KrlXJUgrVVzH5ruSwQ6OaS2InnG4IvaUgW?=
 =?us-ascii?Q?d04p/9LVvf0dI9orFtHj5VVSXTBANsU9jP7jlGfyqb0Wq1cWhfvC6sCTAaL1?=
 =?us-ascii?Q?bqU0cR65D2OdKfZtJkfGwgFEGlixggUIPngZPfMAwxwI1xdGmKqg/aH8jrGV?=
 =?us-ascii?Q?krLn0SG0toomoevt9Dn5bEwtoJRqd+dimIpzi+PBzylkys8pW+2V29JO3JYh?=
 =?us-ascii?Q?Jd+naOr77vzIUYXmRWbum9KYraJAtVUKTAaELO67cZRqiP8zRG4k/CqJQQ/0?=
 =?us-ascii?Q?/IoUPIJCkZ7zNEyrL2jvSCZZkK0QUPyGKxYo3T1MFhlafKIZqYDe01iFzZHr?=
 =?us-ascii?Q?ZgDWMvjjmr3u/zJdxfXY8f2ZPtsGRu7N/xLmyhhyJAnC5QftzXxuB4gSo4OE?=
 =?us-ascii?Q?odnH06Lv6RmE/y+IUzC1hGETWTWj1eJK6Zh4ZcHDYninhCrE7wUY2sR9KbTd?=
 =?us-ascii?Q?q6BlKehCDqIT03xRT02B38esBf1RNdkbUM7xz0kIQNkSEeDvMcl/0jwnmYeZ?=
 =?us-ascii?Q?JgX3ENT1+Q4JI5WuWhw/Yl5OXsS/8r2CkeJvqxt6IEP+ZpIkH2rDcNtdcJw4?=
 =?us-ascii?Q?c5yBFwMbNPuMA5FVEzo1xoCqAN764Ms15b7ZmmGKSEFT2pld7iqA17ELUCa4?=
 =?us-ascii?Q?hhdJfGOkRkSQorrfyjrX/q4BB5UuoPCrO0NW6Q4DjwHBAD1egkTh9ktRf8JA?=
 =?us-ascii?Q?mg9o2/tj+wI3C0PqFAGHU8Fkpj/slNaidUU4sShsdqRx3cHwm2Dohk44Hm/J?=
 =?us-ascii?Q?Is/YVbO5c7vmAJCB89Jj7tR1c17NVkbhf630BPEogpKRtef7j14Bj99lESfL?=
 =?us-ascii?Q?YJd6hBK2aFzHqDRo7nZgDjpK7l3JXDSOGEAA+QPKEaCBw5xLEZKabsnAYQWE?=
 =?us-ascii?Q?/zRT9B2c1CZG1LzUPRijHgZsDIZXYNuuCI6AopyuQnQIfQ/5jlBaB2x9xW8K?=
 =?us-ascii?Q?r0CGfz4E8WORAXFVPMyRbWEGgQhlWP1geIk3YL7MaEghQWH3wCO2xwprsw5c?=
 =?us-ascii?Q?fWO2U7o2H+j6Vqa0PM1tbJauoADiTXjB9tiZPO/CcIpUcpx7qGdlD3/KkPS4?=
 =?us-ascii?Q?6BV/fFlZ+PWv0nuEW8a+5Ip5K8rv0NGMIBzxq8eVtEqs2uwZi9aw+UTdEZB7?=
 =?us-ascii?Q?euHz8C2Mm+R7ZzXQowrnRQJt0IQ7Q0CdMV62YjZplCaocwZfJFgcO470Fi5X?=
 =?us-ascii?Q?QzM2QCWsgTAnXhOWcmKUQAr590jnYV2uF9tsK3JMnzbBI9Kkl2S3qzPXxgKH?=
 =?us-ascii?Q?TeolN12nUvlxaFpbxyueXsfQ5S4CRpMCznxYYPS1neOzyAe7Ogu6oE2Ir1rx?=
 =?us-ascii?Q?MTP6e9oLBPY1lB2yVHE1PVO9mkDhV9X0UVl0ip+IvIasHq81U+1S/zIOhQ6z?=
 =?us-ascii?Q?9/9XD6Mb05cNa7BlxJM3ARushO3IcG04HFnOvLX14rC4TUzJinx0GWqzNmi3?=
 =?us-ascii?Q?W0jBQOObfvaYx0YSyfrSq775SnTzvFcUgloQH92JxPIxyKBvxOJOfKaF5GCb?=
 =?us-ascii?Q?Hk6t/wngqdm6Ry4ORgsaMESSBUxxIB0NGEdraTMqhLCRzqhhEiDwvqQA+6nT?=
 =?us-ascii?Q?omOWQy38SkCymI63xZqO61cWE606EmPfXSAupjJkcagkO/vPwKhil9XDcrWO?=
 =?us-ascii?Q?zG55WYxCVQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0684f0c1-c02a-4e52-ada2-08de748d73b0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:42.3558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8YFpQqv7jpDkFwoM2Hnd14D8RMBdDEd/cNXL+M0M2vJD6O07/P5O65UAonZwx1jH3jBfAB86qa/HRr2/T1S74g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8787
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C634919AE8E
X-Rspamd-Action: no action

Handle the RX_CAP_CHANGED IRQ, which a sink can use to indicate a DPRX
capability change without disconnecting and reconnecting itself (i.e.
through a short vs. long HPD pulse). Handle the IRQ by doing a full
connector detection.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bc5c318869329..5f5e0145cbb69 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5478,7 +5478,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
+		ack[3] |= esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5491,6 +5491,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
 
+		if (ack[3] & RX_CAP_CHANGED)
+			reprobe_needed = true;
+
 		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 			intel_dp_check_link_state(intel_dp);
 
@@ -5803,6 +5806,9 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
 		return false;
 
+	if (val & RX_CAP_CHANGED)
+		reprobe_needed = true;
+
 	if (val & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
-- 
2.49.1

