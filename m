Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0A9AB9B22
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD09310EA60;
	Fri, 16 May 2025 11:34:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d65wu+7I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8279310EA5F;
 Fri, 16 May 2025 11:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395268; x=1778931268;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PsRoUw/CkJGUw9P8mYSzV9QgaoNp/tvTILBRykX4ZN4=;
 b=d65wu+7IR6Cuev6uEDTOp7rFpj/4V3ucaAZMByu7B2fV8F8SLEGfZdHQ
 GJ8rDjaElEqz11UFsEY00XbYYsNKZ7IP7Hetg4qLqiZDDAvYZGD49WYQA
 2rjEF+kjQcM5+Q/1yn/KnWaxGKlaL+wvfVoneVTudrxsMhwLN3/YxTlr2
 m/a6bbuDpwZYr5XoBQfhjrR7Ez/5z6s5npOAhrz+j5qjk4eBOYwZb2ky2
 dCkFq+okirsVDG/K3UjrhmZ8O8Z0ydqz1ACcu/8KZb6Vjfd4qIiT3XtZH
 0oV+556PmXk9e0rG0hx612p82KjNmgq1ZV12/48T7MjYaZJIYQmhNfPY9 Q==;
X-CSE-ConnectionGUID: pYWPWtkBTuKZIE4bXCI+hg==
X-CSE-MsgGUID: sI6A1QeHTEyB0VqGjoTSMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349814"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349814"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:28 -0700
X-CSE-ConnectionGUID: 5dbCB/BTQCapgLVDfP1G6w==
X-CSE-MsgGUID: bavQ2RsMR4WgBD7BfmSCzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779549"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/12] drm/i915/dsb: Provide intel_dsb_head() and
 intel_dsb_size()
Date: Fri, 16 May 2025 14:34:01 +0300
Message-ID: <20250516113408.11689-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The upcoming flip queue implementation will need to know the
DSB buffer head and size. Expose those outside intel_dsb.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 9 +++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h | 2 ++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b54fb6170364..82cb58cf9c6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -237,14 +237,19 @@ static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
 	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
-static unsigned int intel_dsb_head(struct intel_dsb *dsb)
+unsigned int intel_dsb_size(struct intel_dsb *dsb)
+{
+	return dsb->free_pos * 4;
+}
+
+unsigned int intel_dsb_head(struct intel_dsb *dsb)
 {
 	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
 }
 
 static unsigned int intel_dsb_tail(struct intel_dsb *dsb)
 {
-	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + dsb->free_pos * 4;
+	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + intel_dsb_size(dsb);
 }
 
 static void intel_dsb_ins_align(struct intel_dsb *dsb)
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index e843c52bf97c..6a90ffe1f6ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -26,6 +26,8 @@ enum intel_dsb_id {
 	I915_MAX_DSBS,
 };
 
+unsigned int intel_dsb_size(struct intel_dsb *dsb);
+unsigned int intel_dsb_head(struct intel_dsb *dsb);
 struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc,
 				    enum intel_dsb_id dsb_id,
-- 
2.49.0

