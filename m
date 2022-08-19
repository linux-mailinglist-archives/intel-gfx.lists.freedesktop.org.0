Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D9D599B56
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAC210E7CF;
	Fri, 19 Aug 2022 12:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E24410E964
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910578; x=1692446578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z3OvlCRRBAbUJRA0/qPJg1Uy/n08FIFOdixerO5nViY=;
 b=ESbquuXduUGOW1D9gNXdzi+xpgGkOwgXvXXtJGaPmFMsKML/UguOLJ55
 pKKKq1XIQEp7X9rVVeyFp8Kj3E+I18RAj/GwR9QVM3aF+l08jDauCjh0V
 P/v6obDHDnqB32LrnvVgHsolpEJ5zjIMFD6B9vAUUXtxrKTq0I/ZrnfNP
 FEGIJLYjs6YdPwvew67ioxeeeoJQAqqvZaAU9Ak3vqc2BxvdXN10VXLOq
 Ly3jjG5iQs4BRKZ5dF980bEW0WzSwBSPpD+bovgtJ1zNmcw2FpV40GeqQ
 S5JfjFJPkdNqrZ6+g30CnxpUKM7GLxU/9jQcyzLx4VMjHwjDnCan5hAt7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="293785947"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="293785947"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:02:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="637256562"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:02:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:34 +0300
Message-Id: <b395ac4c909042f5daabf29959d8733993545aa2.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/14] drm/i915/guc: remove runtime info
 printing from time stamp logging
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
Cc: jani.nikula@intel.com, Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 368d179adbac ("drm/i915/guc: Add GuC <-> kernel time stamp
translation information") added intel_device_info_print_runtime() in the
time info dump for no obvious reason or explanation in the commit
message. It only logs the rawclk freq. Remove it.

Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 01f2705cb94a..24451d000a6a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -365,8 +365,6 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p)
 	u32 stamp = 0;
 	u64 ktime;
 
-	intel_device_info_print_runtime(RUNTIME_INFO(gt->i915), p);
-
 	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
 		stamp = intel_uncore_read(gt->uncore, GUCPMTIMESTAMP);
 	ktime = ktime_get_boottime_ns();
-- 
2.34.1

