Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBA0AADA32
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 10:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805FC10E765;
	Wed,  7 May 2025 08:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8pjkwNS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C9F210E769
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 May 2025 08:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746606705; x=1778142705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kwghmxUkKijPqX/CyhSTermughEfsUdYYNn5vehzDeI=;
 b=n8pjkwNSKvs5zFWl7cCd0CLAtO0PF8emQ4pxorSwos4rmLqEjanhRUty
 SoymxQhPmgTfyGN/T+5Gx/6banr9a6L0ub8jJG5ihsf0t7e7yn044Lxbp
 a2br3OkUAhEU9pjrjErH8EeB/DiKQra4io/MOQGibmCYzFRTEjXnkzhwE
 01+VT4EBzyuaZNz/lY6oTo6agS7S/vr/FEAETX3p0BBlN4b9GNR9nhPne
 RHw7PS1gz1V7gdJ/rIQW/QCCVdN4Bjfgxx0oR6r2hLap4XdPP1gtU0ox8
 dlsj6es0X9FzYadVS+KtTw/+mp8IjHgt/cbflMCtCnKRToLE/KhnOlksx Q==;
X-CSE-ConnectionGUID: F3Nnee4YQ2im+B4FZjnRTg==
X-CSE-MsgGUID: dgNRqzrNTSyC07fQXM/9gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48194099"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="48194099"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:31:45 -0700
X-CSE-ConnectionGUID: qugv2EMCQYa45u2P9j/gWg==
X-CSE-MsgGUID: 6ApvcuQbQ0i1o6TW8CXccA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="136409313"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:31:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH] drm/i915/rps: fix stale reference to i915->irq_lock
Date: Wed,  7 May 2025 11:31:36 +0300
Message-Id: <20250507083136.1987023-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The RPS code has been switched from using i915->irq_lock to gt->irq_lock
years ago in commit d762043f7ab1 ("drm/i915: Extract GT powermanagement
interrupt handling"). Fix the stale comment referencing i915->irq_lock,
which has also ceased to exist.

Reported-by: Gustavo Sousa <gustavo.sousa@intel.com>
Closes: https://lore.kernel.org/r/174656703321.1401.8627403371256302933@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index 5135b90a2a40..ece445109305 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -57,7 +57,7 @@ struct intel_rps {
 
 	/*
 	 * work, interrupts_enabled and pm_iir are protected by
-	 * i915->irq_lock
+	 * gt->irq_lock
 	 */
 	struct timer_list timer;
 	struct work_struct work;
-- 
2.39.5

