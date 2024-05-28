Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75BE8D1967
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563AC112040;
	Tue, 28 May 2024 11:29:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQtHVUeK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDCF11219E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716895753; x=1748431753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o5ndWSsy0+wNS560NAkmzs5oBpGlC86Q7Utk0uxaIXM=;
 b=kQtHVUeKXNJRea4ylZOhmwFriAByThBCJHEpR6ltqCMZRuXFuRPfkFEt
 l8oN8VXgX1rdxUN06xADKTXtYl8G6m4WFVG7uOrcIozsEtfhQrcoIo1QP
 pNjAj3GdTVGcwv+eQzeRyFi1YSGpZqRiJY57aG5BGDVVRjN692wKtmw0L
 YjCtOZgw0k5N/Qj8QVOV7GTnJ5zaWdZIovRTyo6a80Dj+YYFI7PlwZzWE
 ebQBZ61erTPkx0bLx0GrG7dtdd7EZ2DqL+kaz95sYIhE7eZ8Nm8MTTqeU
 gkIy9gLF3hfOZ3kXmjYOrVMkORVJjcHiHUJwU2dj/8Mwc8AzaQzPRWEnJ w==;
X-CSE-ConnectionGUID: BtXIitNiQeu5bD2AoPzBLA==
X-CSE-MsgGUID: 0CTPC8zoSrKXk2F1nzY97A==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13078572"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13078572"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:29:13 -0700
X-CSE-ConnectionGUID: y8iN3dtTTd6YChpMIp+Y7w==
X-CSE-MsgGUID: 14hiiR87TCKXJB+IrYp05w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="34962276"
Received: from dgoldx-mobl1.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.249.36.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:29:12 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@intel.com
Subject: [PATCH 1/2] drm/i915/bios: double check array-boundary in
 parse_sdvo_lvds_data
Date: Tue, 28 May 2024 14:29:00 +0300
Message-Id: <20240528112901.476068-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240528112901.476068-1-luciano.coelho@intel.com>
References: <20240528112901.476068-1-luciano.coelho@intel.com>
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

During static analysis, a concern was raised that we may access the
dtd->dtd[] array out of bounds, because we are not checking whether
the index we use is larger than the array.

This should not be a problem as is, because the enumeration that is
used for this index comes from "panel_type", which uses an enumeration
with 4 items.  But if this enumeration is ever changed, it can lead to
hard-to-detect bugs, so better double-check it before using it as an
index to the array.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b0a49b2f957f..128fe9250f40 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1120,6 +1120,18 @@ parse_sdvo_lvds_data(struct drm_i915_private *i915,
 	if (!dtd)
 		return;
 
+	/*
+	 * This should not happen, as long as the panel_type
+	 * enumeration doesn't grow over 4 items.  But if it does, it
+	 * could lead to hard-to-detect bugs, so better double-check
+	 * it here to be sure.
+	 */
+	if (index >= ARRAY_SIZE(dtd->dtd)) {
+		drm_err(&i915->drm, "index %d is larger than dtd->dtd[4] array\n",
+			index);
+		return;
+	}
+
 	panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
 	if (!panel_fixed_mode)
 		return;
-- 
2.39.2

