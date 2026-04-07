Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDEXODPj1Gn0yQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:57:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 956C53AD607
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232DD10E3E5;
	Tue,  7 Apr 2026 10:57:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/UWtiUc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF57910E3E5;
 Tue,  7 Apr 2026 10:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775559473; x=1807095473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3toR1SseGrGYdv0n7ktzNZLrKucF12Or7xEZyI4//Pk=;
 b=i/UWtiUckxSmc53oM7BHnG5gBugFRSt7OgvsHtYDTHk9i2JogmAP1aH+
 a4EZSNdkj695rOGkuLEJzbG07GcKGiQO0XErsUVq7TyTsZgXWLoxjxTA9
 Mbo4WkVqG+S3t6GbWGSTD+xz/A+Mx/y7eKKnNkN52OYhUWw5suXyHSpfn
 /ddFCeMbxF5YDlrpJjwBEkkM5fa+t7N0XfAJBDYMixUbv9kpxtHIC//rW
 NzLFGe1D/W/Wfel+Ar83KnHIgFA1+mjFItO3sIvqWip7w5SLXL6lRuoXG
 ZPs2fHUL/J+Ow95UnHzR8IDlJHAyId6myGGz0JVkeX/s+nvaKdNlmGxwm w==;
X-CSE-ConnectionGUID: VRcUPWW6SQyIug42ipBc/w==
X-CSE-MsgGUID: m7WF5pyTSs+k7uJP2zADQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="94099415"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="94099415"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:57:52 -0700
X-CSE-ConnectionGUID: 0irVqmVpQaCL0J3sdz/sIA==
X-CSE-MsgGUID: sXQw5T68QbqXJA81I0K/hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="233109314"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:57:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/mchbar: include intel_mchbar_regs.h from
 intel_mchbar.h
Date: Tue,  7 Apr 2026 13:57:40 +0300
Message-ID: <591ac112d10fd9d75691020e31b07e89086f1416.1775559414.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775559414.git.jani.nikula@intel.com>
References: <cover.1775559414.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 956C53AD607
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As an exception to the rule of not including unnecessary headers from
headers, include intel_mchbar_regs.h from intel_mchbar.h. In order to
use the interfaces in intel_mchbar.h you will always have to include the
registers anyway, so the includes are in pairs everywhere. There is zero
asymmetry. Simplify.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c             | 1 -
 drivers/gpu/drm/i915/display/intel_bw.c            | 1 -
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 1 -
 drivers/gpu/drm/i915/display/intel_display_power.c | 1 -
 drivers/gpu/drm/i915/display/intel_dram.c          | 1 -
 drivers/gpu/drm/i915/display/intel_mchbar.c        | 1 -
 drivers/gpu/drm/i915/display/intel_mchbar.h        | 1 +
 7 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 3dbfb850fe1d..02ac6f9a3d0e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -20,7 +20,6 @@
 #include "intel_dram.h"
 #include "intel_fb.h"
 #include "intel_mchbar.h"
-#include "intel_mchbar_regs.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index e6c8fd630294..474438fc1ebc 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -16,7 +16,6 @@
 #include "intel_display_utils.h"
 #include "intel_dram.h"
 #include "intel_mchbar.h"
-#include "intel_mchbar_regs.h"
 #include "intel_parent.h"
 #include "skl_watermark.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 835a332e9686..82955cf16c4c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -42,7 +42,6 @@
 #include "intel_display_wa.h"
 #include "intel_dram.h"
 #include "intel_mchbar.h"
-#include "intel_mchbar_regs.h"
 #include "intel_parent.h"
 #include "intel_pci_config.h"
 #include "intel_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 98e5a794fab7..4091b7c4914f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -25,7 +25,6 @@
 #include "intel_dmc.h"
 #include "intel_dram.h"
 #include "intel_mchbar.h"
-#include "intel_mchbar_regs.h"
 #include "intel_parent.h"
 #include "intel_pch_refclk.h"
 #include "intel_pmdemand.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 2079c63e3649..f103f7cba018 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -15,7 +15,6 @@
 #include "intel_display_regs.h"
 #include "intel_dram.h"
 #include "intel_mchbar.h"
-#include "intel_mchbar_regs.h"
 #include "intel_parent.h"
 #include "vlv_sideband.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
index 16fcfe1e93ec..a0d0a796c6bb 100644
--- a/drivers/gpu/drm/i915/display/intel_mchbar.c
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
@@ -10,7 +10,6 @@
 #include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_mchbar.h"
-#include "intel_mchbar_regs.h"
 
 static bool has_mchbar_mirror(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.h b/drivers/gpu/drm/i915/display/intel_mchbar.h
index 002a4454e8ed..51ecd6075bdf 100644
--- a/drivers/gpu/drm/i915/display/intel_mchbar.h
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 #include "i915_reg_defs.h"
+#include "intel_mchbar_regs.h"
 
 struct intel_display;
 
-- 
2.47.3

