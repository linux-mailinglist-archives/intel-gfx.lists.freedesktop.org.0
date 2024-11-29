Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4789DE930
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 16:18:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21FD10E4E6;
	Fri, 29 Nov 2024 15:18:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aY4vxhMF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730CA10E4E6;
 Fri, 29 Nov 2024 15:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732893489; x=1764429489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3au231/hzBnl/iwpV5UXv9HE4Oi59/WXxRvlFyEb7eg=;
 b=aY4vxhMF10gyGiF6LwnEA7RhhiAJq5/19ezgTo95FZlipXugffOI0+lE
 5uN9xnxmGVqiX1GYzgEkrICJ2ggO14iyC+ULOl3iMfhaYylrauWOzTYV5
 9c9py/wLvC3z8GRtPJd5eT8bWAcOM5tT5EK/6PAm+NI6HfPLmM5BWzG0G
 BCkZCq4n8r4KATNlsbom/k9iRUD4SCDjam6ZLp26GxJAM9v9hgtabKCo9
 ymPNbFAYk/49ttfUy875JKAXQPR634dSk1cpDloM2XAXXBRcqIsaJLAZi
 pWRddgwUPV0aMG3s9Go6DDGuCDgdsAWCa9OgEnH/7Q8CCMEfnTpsVJfSb A==;
X-CSE-ConnectionGUID: rsjMmpGBQJqBDDq4+UdXOA==
X-CSE-MsgGUID: G/5CWzmkTXyyCuHRFnRV0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="44513492"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="44513492"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 07:18:09 -0800
X-CSE-ConnectionGUID: Cz+7Fq5nTsGz/pryG+p8Hg==
X-CSE-MsgGUID: 4Tysu/I+T72QL9UDF2n/DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="92394997"
Received: from eamartin-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.90])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 07:18:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 2/3] drm/xe/display: Extract
 xe_display_pm_runtime_suspend_late()
Date: Fri, 29 Nov 2024 12:17:45 -0300
Message-ID: <20241129151754.22015-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241129151754.22015-1-gustavo.sousa@intel.com>
References: <20241129151754.22015-1-gustavo.sousa@intel.com>
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

The current behavior for the runtime suspend case is that
xe_display_pm_suspend_late() is only called when D3cold is allowed.
Let's incorportate that behavior into a function specific to runtime PM
and call it xe_display_pm_runtime_suspend_late().

With that, we keep stuff a bit more self-contained and allow having a
place for adding more "late display runtime suspend"-related logic that
isn't dependent on the "D3cold allowed" state.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 9 +++++++++
 drivers/gpu/drm/xe/display/xe_display.h | 1 +
 drivers/gpu/drm/xe/xe_pm.c              | 4 ++--
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 69c828f38cb6..2e189abf8d6f 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -407,6 +407,15 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 	intel_display_power_suspend_late(xe, s2idle);
 }
 
+void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	if (xe->d3cold.allowed)
+		xe_display_pm_runtime_suspend_late(xe);
+}
+
 void xe_display_pm_shutdown_late(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index 17afa537aee5..954c5a268ef4 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -41,6 +41,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe);
 void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
+void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
 void xe_display_pm_runtime_resume(struct xe_device *xe);
 
 #else
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 80699dbeb2e9..a6761cb769b2 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -414,8 +414,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 
 	xe_irq_suspend(xe);
 
-	if (xe->d3cold.allowed)
-		xe_display_pm_suspend_late(xe);
+	xe_display_pm_runtime_suspend_late(xe);
+
 out:
 	if (err)
 		xe_display_pm_runtime_resume(xe);
-- 
2.47.0

