Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFgYOoP0/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:34:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F604F7C62
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE3AD10F4F5;
	Fri,  8 May 2026 14:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6KTtZX3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D31C10F4F5;
 Fri,  8 May 2026 14:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250880; x=1809786880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DhJvChCSJbFwNsRKNTYfnjyVLXeWuYL2YrBuEOGGzKw=;
 b=c6KTtZX3Fn28snpusW+FkXAaWaYffieCdsTsQKPElaETnUCnmmvL4TsV
 MG2XUTypWVWik005TFnYqBj9hZY+s7TVKA/bPG9iGae6bAJJm8lo+p48X
 IislmgbLWXqPRTbqX0tTohJlhyYOhoKbet0Zzx9cwZ+egYNVsGg/VXjZ4
 xmss4GpcXs7nppOCIG7GQvJNzXeciu6Ad9NXkT0rwZ6IiPeqW7l58DQvz
 pb0GV576bcsMJs6J1y5kkwdEWfeqEvU0ru2jqItgqpmrwMrfl6/1hgxBT
 ipqv2MimP0b8oUw9yOpc6fV5LQNC11IY79ySc+u/MC/AMR5IJCYfg/FmA g==;
X-CSE-ConnectionGUID: ukraDjJXSsu64QtMOE2pjQ==
X-CSE-MsgGUID: WjVKyZukTE60JNwEJSOQpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89808857"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89808857"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:34:40 -0700
X-CSE-ConnectionGUID: yETDaQzaQzmzKpSDQPsoKQ==
X-CSE-MsgGUID: YtbxwZ51QNWhgkUp+6n0NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="237024074"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:34:38 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/16] drm/i915: Move intel_fb_pin_params to the parent
 interface
Date: Fri,  8 May 2026 17:34:12 +0300
Message-ID: <20260508143426.26504-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
References: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: 81F604F7C62
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

strut intel_fb_pin_params will be an important part of the fb_pin
interface, so move the definition to the parent interface file.

Or maybe we should have a separate header for this kind of stuff
since the users of the parent interface will need the struct
definition but not the parent interface vfunc struct definitions?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.h  | 12 +-----------
 drivers/gpu/drm/i915/display/intel_fbdev.c   |  1 +
 include/drm/intel/display_parent_interface.h | 12 ++++++++++++
 3 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index 805e23067004..84530f20d7d1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -10,21 +10,11 @@
 
 struct drm_gem_object;
 struct i915_vma;
+struct intel_fb_pin_params;
 struct intel_plane_state;
 struct i915_gtt_view;
 struct iosys_map;
 
-struct intel_fb_pin_params {
-	const struct i915_gtt_view *view;
-	unsigned int alignment;
-	unsigned int phys_alignment;
-	unsigned int vtd_guard;
-	bool needs_cpu_lmem_access;
-	bool needs_low_address;
-	bool needs_physical;
-	bool needs_fence;
-};
-
 struct i915_vma *
 intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
 		     const struct intel_fb_pin_params *pin_params,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index ce4082da30e8..aa2701795caa 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -38,6 +38,7 @@
 #include <linux/vga_switcheroo.h>
 
 #include <drm/clients/drm_client_setup.h>
+#include <drm/intel/display_parent_interface.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_fb_helper.h>
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index ee2e9572bfca..b363d6a85dfe 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -16,6 +16,7 @@ struct drm_mode_fb_cmd2;
 struct drm_plane_state;
 struct drm_scanout_buffer;
 struct fb_info;
+struct i915_gtt_view;
 struct i915_vma;
 struct intel_dpt;
 struct intel_dsb_buffer;
@@ -29,6 +30,17 @@ struct ref_tracker;
 struct seq_file;
 struct vm_area_struct;
 
+struct intel_fb_pin_params {
+	const struct i915_gtt_view *view;
+	unsigned int alignment;
+	unsigned int phys_alignment;
+	unsigned int vtd_guard;
+	bool needs_cpu_lmem_access;
+	bool needs_low_address;
+	bool needs_physical;
+	bool needs_fence;
+};
+
 /* Keep struct definitions sorted */
 
 struct intel_display_bo_interface {
-- 
2.52.0

