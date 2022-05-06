Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF72A51D748
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 14:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A5A10EDCE;
	Fri,  6 May 2022 12:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2BA10EDC7
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 12:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651838665; x=1683374665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7P12KGerziSIk2Bv0Kdb2dWVxq3hL3b5f7QVLXLvCnY=;
 b=KXBsppHDUR3ojCxG5QU6/QvhiUI7e5Xf8YrA5mSZ48AT8LTURFjGecGl
 JvefCX/ABfPZR51Qusz2nG/fAT3NGkdjxwbDLNJLdfRCSjp3ioP9z1R7t
 diVRkDBShIEe1pCkEWRRU4WTyqWyzm3M+IZpYl7D4l8R8meZDhy4siXe3
 5+JT1/HBsdEcC/Q/52cbsnuMp9TsjxvWULrPd0qEQ4TtE8TgwqvekU7T9
 TKj7M4sqRhqBec+5tNiJal0/7RK6V7JaaPzyswTd7KU2lNf6dH/wGv1ZH
 WlcuRgBhoM5HWIFgB4RGWJ0pRiFkJBna1fbRuAGHYbqthy0BjO33rV1NI A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="354882544"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="354882544"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 05:04:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="537860715"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.157.88])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 05:04:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 15:04:05 +0300
Message-Id: <20220506120405.2582372-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pxp: fix sparse warning for not
 declared symbol
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix:

drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:61:6: warning: symbol
'intel_pxp_debugfs_register' was not declared. Should it be static?

Sort and remove the redundant pxp prefixes from the includes while at
it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index c9da1015eb42..e888b5124a07 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -9,9 +9,10 @@
 #include <drm/drm_print.h>
 
 #include "gt/intel_gt_debugfs.h"
-#include "pxp/intel_pxp.h"
-#include "pxp/intel_pxp_irq.h"
 #include "i915_drv.h"
+#include "intel_pxp.h"
+#include "intel_pxp_debugfs.h"
+#include "intel_pxp_irq.h"
 
 static int pxp_info_show(struct seq_file *m, void *data)
 {
-- 
2.30.2

