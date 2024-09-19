Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A897CE66
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 22:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306F710E175;
	Thu, 19 Sep 2024 20:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hx93Tret";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5285510E175
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 20:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726776867; x=1758312867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o9wIM00hY+B/wxyGVLKQHNiQq5wNLhfsfEXaPexYu5I=;
 b=hx93TretKh36Re2Ta9bNjMcOW7DSDOXQf94HbQhrSWQi+VjJSvDRVwCP
 CSreBDUbd8KLl7xHdQdvi1ePrAV6rUBCz/aAX3DafHi8YIhoHLqUxg6Rl
 Tk4qH0NL3Jj1Gccq1p2PDLB2jpaUTQ9dyd/Fl8GMeTfTKy6q2IvtZ/+Vg
 DLM8gHtztZ049aS6XZ2Gh15ikCD+EhEUCrZtVYNhcpX8ZM2vwWUyOQrdj
 DY3coxc2Sj/KYdhoJtFIBydhgnXEzD3c2fHGa3avDLEzSP3kbl/hQdh8M
 1jBQXOX1x9tDH51mdgDeh8wXno9aIhaceKIRE7kUIB+YYbl7JPbKCsK1+ A==;
X-CSE-ConnectionGUID: CVYYahu6R4eVCMIpdqR9jw==
X-CSE-MsgGUID: 2QJC7j0hRYqyYi0RSewoGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25639419"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25639419"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:14:27 -0700
X-CSE-ConnectionGUID: SfphGcnDTH+0pvtziECHEw==
X-CSE-MsgGUID: 5kf1UJiPQIWg6uhUg/5I/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70297475"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.127])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:14:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [RFC 1/2] drm/i915/display: add improved crtc iterators
Date: Thu, 19 Sep 2024 23:14:10 +0300
Message-Id: <3566e03bd3e10402f980e0a623f2ce893032f107.1726776703.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726776703.git.jani.nikula@intel.com>
References: <cover.1726776703.git.jani.nikula@intel.com>
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

The macros for iterating crtcs have become unweildy. Add a more generic
solution.

This is extensible via new initialization functions, more pipe_masks,
and dedicated .get_next() functions.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_crtc_iter.c    | 94 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_crtc_iter.h    | 87 +++++++++++++++++
 drivers/gpu/drm/xe/Makefile                   |  1 +
 4 files changed, 183 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_iter.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_iter.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index bb67bad839ea..7a370cc91dcb 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -232,6 +232,7 @@ i915-y += \
 	display/intel_combo_phy.o \
 	display/intel_connector.o \
 	display/intel_crtc.o \
+	display/intel_crtc_iter.o \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
 	display/intel_display.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_iter.c b/drivers/gpu/drm/i915/display/intel_crtc_iter.c
new file mode 100644
index 000000000000..27f16b565a67
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_crtc_iter.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2024 Intel Corporation */
+
+#include <linux/list.h>
+#include <linux/kernel.h>
+
+#include "intel_crtc_iter.h"
+#include "intel_display.h"
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+
+static void reset_pos(struct intel_crtc_iter *iter)
+{
+	if (iter->reverse)
+		iter->pos = list_last_entry(iter->crtc_list, typeof(*iter->pos), base.head);
+	else
+		iter->pos = list_first_entry(iter->crtc_list, typeof(*iter->pos), base.head);
+}
+
+static struct intel_crtc *get_next(struct intel_crtc_iter *iter)
+{
+	if (iter->reverse) {
+		list_for_each_entry_from(iter->pos, iter->crtc_list, base.head) {
+			if (iter->pipe_mask[iter->pipe_mask_index] & BIT(iter->pos->pipe))
+				return iter->pos;
+		}
+	} else {
+		list_for_each_entry_from_reverse(iter->pos, iter->crtc_list, base.head) {
+			if (iter->pipe_mask[iter->pipe_mask_index] & BIT(iter->pos->pipe))
+				return iter->pos;
+		}
+	}
+
+	/* List exhausted, start over with the next pipe mask, if any. */
+	iter->pipe_mask_index++;
+	if (iter->pipe_mask_index < ARRAY_SIZE(iter->pipe_mask) &&
+	    iter->pipe_mask[iter->pipe_mask_index]) {
+		reset_pos(iter);
+		return get_next(iter);
+	}
+
+	return NULL;
+}
+
+/*
+ * Iterate all CRTCs in forward or reverse CRTC initialization order, depending
+ * on reverse parameter, first matching pipes in pipe_mask0, then the pipes in
+ * pipe_mask1.
+ */
+void __intel_crtc_iter_begin(struct intel_display *display,
+			     struct intel_crtc_iter *iter,
+			     unsigned long pipe_mask0,
+			     unsigned long pipe_mask1,
+			     bool reverse)
+{
+	iter->crtc_list = &display->drm->mode_config.crtc_list;
+	iter->reverse = reverse;
+	reset_pos(iter);
+	iter->get_next = get_next;
+	iter->pipe_mask_index = 0;
+	iter->pipe_mask[0] = pipe_mask0;
+	iter->pipe_mask[1] = pipe_mask1;
+
+	/* It's an error to match the same pipe twice. */
+	drm_WARN_ON(display->drm, pipe_mask0 & pipe_mask1);
+}
+
+
+void intel_crtc_iter_end(struct intel_crtc_iter *iter)
+{
+	memset(iter, 0, sizeof(*iter));
+}
+
+void intel_crtc_iter_begin_modeset_enable(struct intel_display *display,
+					  struct intel_crtc_iter *iter,
+					  const struct intel_crtc_state *crtc_state)
+{
+	/* Enable secondary pipes first, then the primary pipes. */
+	__intel_crtc_iter_begin(display, iter,
+				_intel_modeset_secondary_pipes(crtc_state),
+				_intel_modeset_primary_pipes(crtc_state),
+				false);
+}
+
+void intel_crtc_iter_begin_modeset_disable(struct intel_display *display,
+					   struct intel_crtc_iter *iter,
+					   const struct intel_crtc_state *crtc_state)
+{
+	/* Disable primary pipes first, then the secondary pipes. */
+	__intel_crtc_iter_begin(display, iter,
+				_intel_modeset_primary_pipes(crtc_state),
+				_intel_modeset_secondary_pipes(crtc_state),
+				true);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_iter.h b/drivers/gpu/drm/i915/display/intel_crtc_iter.h
new file mode 100644
index 000000000000..ec8d7ea3d595
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_crtc_iter.h
@@ -0,0 +1,87 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+/*
+ * struct intel_crtc iterators for various needs.
+ *
+ * Usage:
+ *
+ *	struct intel_crtc *crtc;
+ *	struct intel_crtc_iter iter;
+ *
+ *	intel_crtc_iter_begin(display, &iter);
+ *	intel_crtc_iter_for_each(crtc, &iter) {
+ *		...
+ *	}
+ *	intel_crtc_iter_end(&iter);
+ *
+ * There are various alternatives to intel_crtc_iter_begin() that change the
+ * iteration behaviour, but the rest remains the same in all cases.
+ */
+
+#ifndef __INTEL_CRTC_ITER_H__
+#define __INTEL_CRTC_ITER_H__
+
+#include <linux/types.h>
+
+struct intel_crtc;
+struct intel_crtc_state;
+struct intel_display;
+struct list_head;
+
+/* This is private. Do not look insde. */
+struct intel_crtc_iter {
+	struct list_head *crtc_list;
+	struct intel_crtc *pos;
+	struct intel_crtc *(*get_next)(struct intel_crtc_iter *iter);
+	int pipe_mask_index;
+	u32 pipe_mask[2];
+	bool reverse;
+};
+
+void __intel_crtc_iter_begin(struct intel_display *display,
+			     struct intel_crtc_iter *iter,
+			     unsigned long pipe_mask0,
+			     unsigned long pipe_mask1,
+			     bool reverse);
+
+static inline void intel_crtc_iter_begin(struct intel_display *display,
+					 struct intel_crtc_iter *iter)
+{
+	__intel_crtc_iter_begin(display, iter, ~0UL, 0, false);
+}
+
+static inline void intel_crtc_iter_begin_reverse(struct intel_display *display,
+						 struct intel_crtc_iter *iter)
+{
+	__intel_crtc_iter_begin(display, iter, ~0UL, 0, true);
+}
+
+static inline void intel_crtc_iter_begin_pipe_mask(struct intel_display *display,
+						   struct intel_crtc_iter *iter,
+						   unsigned long pipe_mask)
+{
+	__intel_crtc_iter_begin(display, iter, pipe_mask, 0, false);
+}
+
+static inline void intel_crtc_iter_begin_pipe_mask_reverse(struct intel_display *display,
+							   struct intel_crtc_iter *iter,
+							   unsigned long pipe_mask)
+{
+	__intel_crtc_iter_begin(display, iter, pipe_mask, 0, true);
+}
+
+void intel_crtc_iter_begin_modeset_enable(struct intel_display *display,
+					  struct intel_crtc_iter *iter,
+					  const struct intel_crtc_state *crtc_state);
+
+void intel_crtc_iter_begin_modeset_disable(struct intel_display *display,
+					   struct intel_crtc_iter *iter,
+					   const struct intel_crtc_state *crtc_state);
+
+#define intel_crtc_iter_for_each(crtc, iter) \
+	while (((crtc) = (iter)->get_next(iter)))
+
+void intel_crtc_iter_end(struct intel_crtc_iter *iter);
+
+#endif /* __INTEL_CRTC_ITER_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index ae245fbd91ee..e1c8111b2528 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -198,6 +198,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_combo_phy.o \
 	i915-display/intel_connector.o \
 	i915-display/intel_crtc.o \
+	i915-display/intel_crtc_iter.o \
 	i915-display/intel_crtc_state_dump.o \
 	i915-display/intel_cursor.o \
 	i915-display/intel_cx0_phy.o \
-- 
2.39.2

