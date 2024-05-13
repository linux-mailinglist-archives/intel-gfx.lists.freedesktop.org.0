Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BC18C41E8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 15:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8536210E10F;
	Mon, 13 May 2024 13:30:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LltC/tBl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B888510E10F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715607000; x=1747143000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+uVRMl5CMl+O6Tb014gFaK7NO/JHRHyXK5UEOWs70lA=;
 b=LltC/tBl8G39iuaTl0CAPnp6siImrJRQgV498rVukC3yK9OYnG99y5aE
 BrbMyML+TwsoCIqpVnkG3gCLDQBYMOab3P/ZkY+raa/1nzGyQzjUH7QCk
 7Eel8AimwHbX7oshk2EIQoTAj0F4A+J6U2OXmJokAhtbc19grRnxAi8W5
 PxAGv1N0NPLb6P9XkPRK0IWPETHZAP37FEPEEnKqEY6VQPfb0QGtDp/Sb
 KjRJZ0SQZalEFL4UcruLZBh+1TC3eq8Z2CrvQlxk8aQjk8BKN3ChnEE7k
 7N7SUJhEa0OEPvRaFtiunN9T23oONUFTkIhB9vrAQBVkwvCQ1M1JCDYfT g==;
X-CSE-ConnectionGUID: TB1dOwl+QsmJZJUUJc7gVg==
X-CSE-MsgGUID: n2Vhp5BtR7mxj7qI0QxCzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11403567"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11403567"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 06:29:59 -0700
X-CSE-ConnectionGUID: 0mzZmp2FS2qQd084y+p7yw==
X-CSE-MsgGUID: sJrE8wyYSGiiQU1mO/N7ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61173062"
Received: from unknown (HELO localhost.localdomain.iind.intel.com)
 ([10.49.75.6])
 by orviesa002.jf.intel.com with ESMTP; 13 May 2024 06:29:57 -0700
From: "Chen, Angus" <angus.chen@intel.com>
To: tejas.upadhyay@intel.com
Cc: andi.shyti@linux.intel.com, angus.chen@intel.com,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/mtl: Update workaround 14018778641
Date: Mon, 13 May 2024 13:29:56 +0000
Message-Id: <20240513132956.73709-1-angus.chen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Angus Chen <angus.chen@intel.com>

Applying it to VDBOX after recent performance data on MTL

Signed-off-by: Angus Chen <angus.chen@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index f3332bc55b8f..8432fb4fd28d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1695,6 +1695,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 */
 	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
 
+	/* Wa_14018778641 */
+	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+
 	debug_dump_steering(gt);
 }
 
-- 
2.34.1

