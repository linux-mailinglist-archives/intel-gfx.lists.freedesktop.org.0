Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wApWLwrbhWnfHQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:14:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59829FD80D
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B867710E773;
	Fri,  6 Feb 2026 12:14:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PBRzYj+1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC71D10E773;
 Fri,  6 Feb 2026 12:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770380040; x=1801916040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1ztLI4bsY+8OI8X3uH0La9QWBnTS4nqY5RJHs/7VpYQ=;
 b=PBRzYj+1catmbzyc0GUqADdzYtWsjc/MFa6FRtTjhg9JSuVfHYZUEYrl
 m+HzM61ajfe6ytKgfnEbaIGfwMqmViIfvv7MsGGx/G8o+OPuogeH73kYj
 R8uFZVTOsPqdUNxn8P7PlrCjxM27K90zCy3LoLvR0+n8Gi67+w3kfcm+l
 uhZztVpX/40n+snjJ4RSzQYQ3ey73+LKO8NR/5uVF1EKFQyzp/EwNXsPf
 5YwBkLZQo+fQRE4kTj5cwZmv6x23JZMHyoXTJVkHiD3bMW75DCZK193N6
 JRCJlUN/4zDYLylLjTk+fL3JCJzOvJp6TpPW1pu65o4zLOobUidB8yLoS g==;
X-CSE-ConnectionGUID: OOytwKFiS9W5G4vAPfbHqA==
X-CSE-MsgGUID: N21NUSYYSyipOmHdSdUxtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71765201"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71765201"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:14:00 -0800
X-CSE-ConnectionGUID: lJDpVIx+TD6Z2GAD+zOePg==
X-CSE-MsgGUID: d4rFnQW3TxWI124iLPmDkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="248472615"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.129])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:13:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/10] drm/i915/dpt: remove display/intel_dpt.h
Date: Fri,  6 Feb 2026 14:13:26 +0200
Message-ID: <cf5e28649d145ca9c41ad49a9b3920d60fa8b8bf.1770379986.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770379986.git.jani.nikula@intel.com>
References: <cover.1770379986.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 59829FD80D
X-Rspamd-Action: no action

The remaining functions declared in intel_dpt.h are i915 specific, and
so are the users, so we can move them to i915_dpt.h. There are some
useless intel_dpt.h includes around that we can remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 -
 drivers/gpu/drm/i915/display/intel_dpt.h      | 19 -------------------
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  1 -
 drivers/gpu/drm/i915/i915_dpt.c               |  2 +-
 drivers/gpu/drm/i915/i915_dpt.h               | 10 ++++++++++
 6 files changed, 12 insertions(+), 23 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_dpt.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 295f14416be7..6df7593c29d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -85,7 +85,6 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
-#include "intel_dpt.h"
 #include "intel_dpt_common.h"
 #include "intel_drrs.h"
 #include "intel_dsb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
deleted file mode 100644
index 0482af43e946..000000000000
--- a/drivers/gpu/drm/i915/display/intel_dpt.h
+++ /dev/null
@@ -1,19 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#ifndef __INTEL_DPT_H__
-#define __INTEL_DPT_H__
-
-#include <linux/types.h>
-
-struct i915_address_space;
-struct i915_vma;
-
-struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
-				       unsigned int alignment);
-void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
-u64 intel_dpt_offset(struct i915_vma *dpt_vma);
-
-#endif /* __INTEL_DPT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 7249b784fbba..5d4ae8be5ca6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -17,7 +17,7 @@
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
-#include "intel_dpt.h"
+#include "i915_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_plane.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 746e942cafd2..677f1339b7f8 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -17,7 +17,6 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
-#include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index 28300ef898f6..597890649285 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -8,12 +8,12 @@
 
 #include "display/intel_display_core.h"
 #include "display/intel_display_rpm.h"
-#include "display/intel_dpt.h"
 #include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "gt/gen8_ppgtt.h"
 
+#include "i915_dpt.h"
 #include "i915_drv.h"
 
 struct i915_dpt {
diff --git a/drivers/gpu/drm/i915/i915_dpt.h b/drivers/gpu/drm/i915/i915_dpt.h
index 494cd4af3bcd..9b765bc8d88b 100644
--- a/drivers/gpu/drm/i915/i915_dpt.h
+++ b/drivers/gpu/drm/i915/i915_dpt.h
@@ -4,6 +4,16 @@
 #ifndef __I915_DPT_H__
 #define __I915_DPT_H__
 
+#include <linux/types.h>
+
+struct i915_address_space;
+struct i915_vma;
+
+struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
+				       unsigned int alignment);
+void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
+u64 intel_dpt_offset(struct i915_vma *dpt_vma);
+
 extern const struct intel_display_dpt_interface i915_display_dpt_interface;
 
 #endif /* __I915_DPT_H__ */
-- 
2.47.3

