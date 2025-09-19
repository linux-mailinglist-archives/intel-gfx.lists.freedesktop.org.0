Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC66B8AFB0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617A910EA71;
	Fri, 19 Sep 2025 18:50:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OcAsrQg0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D88410EA73
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758307824; x=1789843824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vXMfqH+eofjzuF9aVdFsleLVWb7fn49cDi3NTFh5tEY=;
 b=OcAsrQg0VfFRaQrPIz9H+rZt0dFmNwLN3Havl1tVxfpCXSlsTEfhLQZA
 enD44lc1KJXKd/Nexvc1kyBkPYPp8pLa8kxa88ZtEJIQXx7ggMDphsdXk
 HiczPRnppp39bOE7juVl4ogeef68sFbKDW+XjXpzbnWcEtsy8A4fCxOVW
 v4eKwlGCqEpKdYTDU2wOeUOJiHE2NHoAIW29x85/2yJ3OsNHCRVJp9eo6
 p2G/3GbXNIG8rMqZ9pT38WsH4qjpW9q6PLNUasp/XLEadmqQsnA3uf15B
 TA0jQw2njmGCzXYewmzGsjXUF3UtKKHPhMV8vnih2ObHtRTEzFeSgkO7Z w==;
X-CSE-ConnectionGUID: dzwo7Vt9QLu72m4t8oJyxQ==
X-CSE-MsgGUID: Hc7Ky3y4QYaJb1Mt8Wddnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="86097340"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="86097340"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:24 -0700
X-CSE-ConnectionGUID: DGFOZbLjQ56r1vZ0OrmvaQ==
X-CSE-MsgGUID: JMjApvFiTXmK7AWpgLzZgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175152924"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:23 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 1/6] drm/i915/pm: Simplify pm hook documentation
Date: Fri, 19 Sep 2025 21:50:10 +0300
Message-ID: <20250919185015.14561-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
References: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop spelling out each variant of the hook ("" vs. "_late" vs.
"_early") and just say eg. "@thaw*" to indicate all of them.
Avoids having to update the docs whenever we start/stop using
one of the variants.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a28c3710c4d5..76bda4376fe0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1670,18 +1670,18 @@ const struct dev_pm_ops i915_pm_ops = {
 
 	/*
 	 * S4 event handlers
-	 * @freeze, @freeze_late    : called (1) before creating the
-	 *                            hibernation image [PMSG_FREEZE] and
-	 *                            (2) after rebooting, before restoring
-	 *                            the image [PMSG_QUIESCE]
-	 * @thaw, @thaw_early       : called (1) after creating the hibernation
-	 *                            image, before writing it [PMSG_THAW]
-	 *                            and (2) after failing to create or
-	 *                            restore the image [PMSG_RECOVER]
-	 * @poweroff, @poweroff_late: called after writing the hibernation
-	 *                            image, before rebooting [PMSG_HIBERNATE]
-	 * @restore, @restore_early : called after rebooting and restoring the
-	 *                            hibernation image [PMSG_RESTORE]
+	 * @freeze*   : called (1) before creating the
+	 *              hibernation image [PMSG_FREEZE] and
+	 *              (2) after rebooting, before restoring
+	 *              the image [PMSG_QUIESCE]
+	 * @thaw*     : called (1) after creating the hibernation
+	 *              image, before writing it [PMSG_THAW]
+	 *              and (2) after failing to create or
+	 *              restore the image [PMSG_RECOVER]
+	 * @poweroff* : called after writing the hibernation
+	 *              image, before rebooting [PMSG_HIBERNATE]
+	 * @restore*  : called after rebooting and restoring the
+	 *              hibernation image [PMSG_RESTORE]
 	 */
 	.freeze = i915_pm_freeze,
 	.freeze_late = i915_pm_freeze_late,
-- 
2.49.1

