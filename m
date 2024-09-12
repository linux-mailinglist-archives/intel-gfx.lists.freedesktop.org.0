Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A0E976F7D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 19:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F4110EBF5;
	Thu, 12 Sep 2024 17:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VOjzKfaI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6D710EBF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 17:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726161954; x=1757697954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=N2oE9LsAFYW241RaMTljJCU2pNlvqzZHk8DExk/MI/M=;
 b=VOjzKfaIDlTw4tGupCnL49XsFiBfFalncwZ4ZSfETm+J1x7Rgn7urhMv
 FXfY2gqC8GnfHgK+akAv30+3oFq3OOOV2wB+XijhBw90V7U9/8kz3wRWQ
 nXOjFSom7oUVWi9RMKhXwpdv9f3qK9RCv7+EywbebNSfRSSSy8PwbVV/d
 yiQ9nuE5XxS+Aid50zemhJaDoWT+UyF1+CEh339gsmzt+ynTxZnXTzIzt
 0UwBD11FEkIuyxkVeaZBJ/PigxRMI0zZkbG+CFoYaSGdwi6yaWryDg55R
 TuO978PRZby6favDmhI/ikN0HsZKpev2Kn+S4i/1/c4R+yY/T/wPbQu1b g==;
X-CSE-ConnectionGUID: 6gm9wlDKSHS8doCE6rWwNA==
X-CSE-MsgGUID: /b4yKzTJQ+qi1QjdKMzs3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="28929421"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="28929421"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 10:25:54 -0700
X-CSE-ConnectionGUID: eu+l/Cx9Sce9elAHWgxAxw==
X-CSE-MsgGUID: m6Dh0H6eR3qEQBcZMta74g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="105243311"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 10:25:53 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 10:25:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CUZ9wJEVAd1+oBqor5eBk9SQs2FhgHzwKRg9yWf2ziQNM20GRDOAbFlp/l86GTksqcDzlb1TMYCBZ4eI1ET/FSGrxTN99wvVm5XQToaH87rFHIM8B1VUdmFB06GDK938cziwy+skfu7bHSq0itxJSUny9gxY9DjCwrl1Ds4D7En/K5Rr93S+1DFMVl5nW+ABx4j/TnlQ8egYprbibj+UbZrdfwyLxy6ePAhJMkhhV8EnDCRAda5HSXvfxnkVc4GR4XwREMbYmvw8ck0FsocSfMRBA9yCUtzgVm1jYBS9T6nkJ+q9eBGblcI5jTZ4L40CCQAyDuzHwpiB7tBAzyaN5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pupn0ARl7qOgboIcP27g41PtWZ6+tm3pjPLnHcJrvxQ=;
 b=ufisZN/Ux1Ced80S+wfeSEIERk1wnOjmBLVMW6XKyEiNv9GDDGN7JJPrKAZtUmxMj3xdSCL328ZEqnsm6yUYOTpUN1LJ4fq4FFDufE8uopN850i+I3ujNyBfcAQ8bS7tRvXCg3Qxdxy7Ehkhyz3ZQW5r8Ev4SitpIqD9CMvDoF3oKVdxA+Ff/nvRAmWCQkJ/T3JW6dp9dpI13EWhUDmrfpic55aT6LoqDVCswu/WryjHmona5qy3PK+OustGybM64VTreWtaWmlnhsV5LhpXB9tcnD1Xr1zC9F3Cc0rcPmXYWgGEt9qXhMWmDyzn/sZOXjECqQiFol2p8YR+4IPlHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Thu, 12 Sep
 2024 17:25:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 17:25:47 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 2/3] drm/i915/irq: Move irqs_enabled out of runtime_pm
Date: Thu, 12 Sep 2024 13:25:38 -0400
Message-ID: <20240912172539.418957-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240912172539.418957-1-rodrigo.vivi@intel.com>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0263.namprd04.prod.outlook.com
 (2603:10b6:303:88::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7555:EE_
X-MS-Office365-Filtering-Correlation-Id: 43f1a463-4aaa-4918-7769-08dcd34ff085
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8cxurGR9h7ecshqB9DyucSw34RjW/xOSLfEPsRe8jawJNW3zHqgAhKLQybXd?=
 =?us-ascii?Q?6sdsXUz38QXwb1G4nItm2mRy+8VJs1VJMecAzUTSVKiNaV1jPO5I3Od6bOE/?=
 =?us-ascii?Q?ZTypuBs30cGcCx3f+NQDZ0ODbc6dfR2BrS2D4/jBPUa7U7pmxNXnTHjC5+5o?=
 =?us-ascii?Q?UWafPd+9UM56CYpfPcpik5jsiMahmhvloXavb/U2E9ZFzjPw08l5C4AQo+O5?=
 =?us-ascii?Q?QbIdyRFZRU0OHowU2Ol8hNOycIDoXasTiPvpOhrdpcnBw2AANpgXdk9Xcd4Q?=
 =?us-ascii?Q?9hOVG+jolgTJtabRTdK0+T0UerMDwjU0peLih40tV3DDj4nN0whgrkntX6FX?=
 =?us-ascii?Q?X4tyI/GbDdBoMFnPl3Q+o1FZpyCdKFSDrPOV9hWzCbl5mJpiLTUzGXqWJAKY?=
 =?us-ascii?Q?PtKTuUUU0z32IYuRBNURuKBRZS30warN8dcMYx18mdI5NV9xnQoDFkbzoQ2G?=
 =?us-ascii?Q?yztTlThIYjGT0MJYqELF6c8ycKtTFqIr4y8/DgOsZPwpAzVaWSlEDzu6GxZu?=
 =?us-ascii?Q?fh1HSOx3FCxySVpCN3edYBZTKafeXOEBROKfl5qbkSLw40EsDe5boBQk/pdB?=
 =?us-ascii?Q?Ol7+QS1QjGbxErFfPaWwQId6F2V8Jgsj6md0d/4Vbh7ysifJ+kgvEvVdDcLZ?=
 =?us-ascii?Q?IOLivqMRiSGZqQ5vjhiUhKHl/78qeKdUIPvPpQnS3vLiBnyTbbGL5p8ZuI1q?=
 =?us-ascii?Q?wLSKaOF74nB//FK7wLy5z18JDIOxNMvVZVcgtPcPw6lUchOVPXfSwZnW7Z/i?=
 =?us-ascii?Q?e5b+14iwURlWEdmRYqezUvSQWsQ2JckY+8unJv3iW98mXopwuNIlO1ExC/8O?=
 =?us-ascii?Q?0rAWzjWiGhBX9x9ndMad7LaW/qDcWYzvVvMGo5kZGilnkV910NAh2oMUXK+j?=
 =?us-ascii?Q?kO+MkZzxMPb7e29JAefXHOD48C5UrKXft90LMUc9XXAIsPX+xOGoRTug1Dgy?=
 =?us-ascii?Q?ugFHKKEpMZO33LcNU0puGoKJRgmt3gtnAplS/8u9JfT4HEBz6U5kYGqi/fBH?=
 =?us-ascii?Q?oaiRMV2OeYVQKxA84XbJi8zJOQ8A5lAEyq/DYfTyqnn0aNgsQpB8qwokbq1Z?=
 =?us-ascii?Q?b4SWZs0rK1HiFTN2RCywTpSmIQ6QQ9SSttBA+NUqR7gIH9mDVudf0+x3//3D?=
 =?us-ascii?Q?f/tesveKh0OhN+HYw1qFkStmjNnZ2tsQhxtH6WWAlV4OZSJ6y/M05gIAS7DU?=
 =?us-ascii?Q?/v+aJwie3J8aooYR6nADKokfyxmOGL/vr32Mwqa+bdeFID969QYPQPzyVYpC?=
 =?us-ascii?Q?TihiFSRzAMs6Q/97/0sb8E5zBOLb6Fiv0RaeEZYyD2tH2a3yQM8Bc+7YRvSE?=
 =?us-ascii?Q?5frQfifU6YuGiimFLkdjD3fqqi71/8rX5E0aJ9P4bAoQhw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YxX99rTBNG5Fwaj2SYHlEJm2XjguWadFk0BOSu0cjfrmltMpOq3s+3S+9V1V?=
 =?us-ascii?Q?hjzaPQxOiFEzTw9jwMYd54hPMx2jXUbsLJXJuabuNzfxN0HMnAOM/kuzleND?=
 =?us-ascii?Q?eKQhM1wjeJAXEIIq3/rkPL3GcPfCbfFY1Pe6tyvQTlOpxKLlKwO86+xcygIn?=
 =?us-ascii?Q?7NjmHta+j3EGVyz5y8XWT9INQkC9ll9YQhfDGNZ3ltpvYDyk2GGNFUpm95qd?=
 =?us-ascii?Q?KEiEeBm8Crya1CkTj6q4P12YTTIeVX1yXKVrHG7mdl03EHv0u2VvRuCBQVWK?=
 =?us-ascii?Q?4lPu2XtrHBbLA7G2Y0ztUJ8dT0hGyc8966c38a9xNq+o5mfrRDF07mjj3weQ?=
 =?us-ascii?Q?xEXXrXhCczOtCPi3Qp1o9haQ4Thk7aesst1peTdpBuxoz8IltMUAbaXoxp8r?=
 =?us-ascii?Q?Mltrnm1hSQJwVAIyxBPnbDvzQdcDA9e6/yWukpKxtBFFkILndqA9y7KA+Qvo?=
 =?us-ascii?Q?Yq/BUcWng0kUUNfA1X1J7baHhtuR8XszNpZynFqGaOUIn9/2jdSDWf2elnfx?=
 =?us-ascii?Q?pjGgvzEXGtnGR6mBWyLBDc63OA5XYw46SuD4sfGZ5IdzyV4pgWI9uyI02DVA?=
 =?us-ascii?Q?MuTVVj/aOw53co+LQ2H9Ru/RKjBVuablSpWBa06OOHMz2Lx18eIYqntlywbk?=
 =?us-ascii?Q?iSBh0y/gruzda4tz3acFzi6m7Qzh2r+LGkReF1AKQ8hPrE5HkPw06Ug94X33?=
 =?us-ascii?Q?zdONnEqQ0UQo2OvSsdemhglR01ZJngQi9jOkewKSzpSc7+MpXQ/Hu5eK9Yvm?=
 =?us-ascii?Q?oxq5Om9K8APC1B2Zphb7XylAuDWWtbesoVdndt+H3faGOE55XhrBJwNplRTx?=
 =?us-ascii?Q?HVPNXcz09VqP3H6D3IGteb3IDJjDTzUbu2atgMa5odpRqoPr2guNdgBDXnAy?=
 =?us-ascii?Q?1J1sYHJmu7kWTBhBNBK8rEDZxGWV+mdk5f8cdFObSFighR29TgaPNZtU8pZ8?=
 =?us-ascii?Q?xzQzlb5L2zwRJGU2hr8T6F2lElMijJ4V/kUUqaLv/89wSKoRjSGVcD+VndbG?=
 =?us-ascii?Q?gyZ8LA1qNwKgO7iB2mCeMAagE9boeyeF7+ffNeovRTkcUJljOFHaWFe+kC32?=
 =?us-ascii?Q?QkaNq4xeTKNQlmbSxVSQ1w30FIMtAFuJ8NUrh2kAHcM7+r/vzkhJPB4wRkO/?=
 =?us-ascii?Q?Q363hMvxzcLNC8zfKlE6JSqAOaw2MCpVt6YFALYoTK/toQDKl70ZrtNCoLIZ?=
 =?us-ascii?Q?0WJ4OaSuLIkp4y0RnYHSbaTKO5z2S21aJrv29s3hCiwtthwji9cDDW7AvDhn?=
 =?us-ascii?Q?oh5MqPCMWHQmtWWeJ+uQeC4IfEmdFwJ76prt5wSEJb5jkAodKz26N+3VmYnA?=
 =?us-ascii?Q?ybDNPT9KwOZa/3Hq+LB9jpLB+KtSMHwtFOZ9pVzqFOMg+9eRc92oAXEki2Ak?=
 =?us-ascii?Q?oVrctBobbV3Pzl+GvqQV3r+WruVHqLhH5aAkr5eDiowpM/zexYjX70Iti8Jx?=
 =?us-ascii?Q?J2yKKxpX4lw1cAh6EBmV7iB5yfLSZcTu8rP/QomSxK1ULD76h6c312r4BUhV?=
 =?us-ascii?Q?FMU57XoqHpZClgVSCgG3h0FEIRXK0NJPMpj8ZwM4jkNCCJ6u4fFM+nGXGmWp?=
 =?us-ascii?Q?eCYH8lnyeRqacrMldrYAPoidA3n5FO5dxDV42Jb1ZcPDZzosB2v5UU2lW9xw?=
 =?us-ascii?Q?4g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43f1a463-4aaa-4918-7769-08dcd34ff085
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 17:25:47.4505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TWVv0SNG7qmAkzB6LgnoHai3BicATITvn5SLFQDgBu4QOGI4jUSgBtIERsQo7ggqh92mwzFrn/E+Y2Xwqt3www==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
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

This information is used in many places and it doesn't have
anything to do with runtime_pm directly. Let's move it to
the driver, where it belongs.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h         |  1 +
 drivers/gpu/drm/i915/i915_irq.c         | 14 +++++++-------
 drivers/gpu/drm/i915/intel_runtime_pm.h |  1 -
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index aa3000349116..def3ca135406 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -234,6 +234,7 @@ struct drm_i915_private {
 
 	/* protects the irq masks */
 	spinlock_t irq_lock;
+	bool irqs_enabled;
 
 	/* Sideband mailbox protection */
 	struct mutex sb_lock;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 9f1a6f692dd1..2c0fdb5e05a6 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1404,14 +1404,14 @@ int intel_irq_install(struct drm_i915_private *dev_priv)
 	 * interrupts as enabled _before_ actually enabling them to avoid
 	 * special cases in our ordering checks.
 	 */
-	dev_priv->runtime_pm.irqs_enabled = true;
+	dev_priv->irqs_enabled = true;
 
 	intel_irq_reset(dev_priv);
 
 	ret = request_irq(irq, intel_irq_handler(dev_priv),
 			  IRQF_SHARED, DRIVER_NAME, dev_priv);
 	if (ret < 0) {
-		dev_priv->runtime_pm.irqs_enabled = false;
+		dev_priv->irqs_enabled = false;
 		return ret;
 	}
 
@@ -1437,7 +1437,7 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 	 * intel_display_driver_remove() calling us out of sequence.
 	 * Would be nice if it didn't do that...
 	 */
-	if (!dev_priv->runtime_pm.irqs_enabled)
+	if (!dev_priv->irqs_enabled)
 		return;
 
 	intel_irq_reset(dev_priv);
@@ -1445,7 +1445,7 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 	free_irq(irq, dev_priv);
 
 	intel_hpd_cancel_work(dev_priv);
-	dev_priv->runtime_pm.irqs_enabled = false;
+	dev_priv->irqs_enabled = false;
 }
 
 /**
@@ -1458,7 +1458,7 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_priv)
 {
 	intel_irq_reset(dev_priv);
-	dev_priv->runtime_pm.irqs_enabled = false;
+	dev_priv->irqs_enabled = false;
 	intel_synchronize_irq(dev_priv);
 }
 
@@ -1471,14 +1471,14 @@ void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_priv)
  */
 void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_priv)
 {
-	dev_priv->runtime_pm.irqs_enabled = true;
+	dev_priv->irqs_enabled = true;
 	intel_irq_reset(dev_priv);
 	intel_irq_postinstall(dev_priv);
 }
 
 bool intel_irqs_enabled(struct drm_i915_private *dev_priv)
 {
-	return dev_priv->runtime_pm.irqs_enabled;
+	return dev_priv->irqs_enabled;
 }
 
 void intel_synchronize_irq(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index de3579d399e1..796a2dcb307e 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -42,7 +42,6 @@ struct intel_runtime_pm {
 	atomic_t wakeref_count;
 	struct device *kdev; /* points to i915->drm.dev */
 	bool available;
-	bool irqs_enabled;
 	bool no_wakeref_tracking;
 
 	/*
-- 
2.46.0

