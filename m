Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04A9ACC8BF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A9610E103;
	Tue,  3 Jun 2025 14:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BjB8KwL3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B2C10E103;
 Tue,  3 Jun 2025 14:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959726; x=1780495726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=maH+eT4tndhDNzBWNPlLrlbRvUowQjuPes8d4vvBj+U=;
 b=BjB8KwL3s7Mo5WlHNv3qRnxZseCFJ8iWa2JPcJwniUFk8YPUyF2kiVqP
 FvEB0keJbotfMmsm2IA+JqEwnDoJyxJVBiiCyMbJOzDwbJTyDlK4dvZVf
 gB60NYcF1SvjqYblQztNf24NHtyxAmz40V2dj60h4cT0ij7wNUBeRS+HB
 H+6bPTa9jCphQhuBjJPxvicHFzAoKpQES+hJlHHI7BamTEwCnk8HMaT20
 6p7Y6N4gV53Tp4acpq9jJo3fvrbnHvQ0v/StrCXCb86KhpiLPgkgCt2QL
 1Op57o6TJ9ZEdUr7JCnha74pqVuJcL9D3GxBSOGLnktNM+/GiiVQEPdOq g==;
X-CSE-ConnectionGUID: L9WWpYafQ2yWMhAT8q2K3Q==
X-CSE-MsgGUID: /o3B8TvZThuyQNgm4dvVtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265804"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265804"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:08:46 -0700
X-CSE-ConnectionGUID: s4Ex0tefRGSniw6Gem0qlg==
X-CSE-MsgGUID: 5mqjWwE3TBaYRfsgG++JWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155619"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:08:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:08:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 02/12] drm/i915/dsb: Provide intel_dsb_head() and
 intel_dsb_size()
Date: Tue,  3 Jun 2025 17:08:26 +0300
Message-ID: <20250603140836.21432-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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
index 15c2bb63e874..f2b6e6f3216e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -241,14 +241,19 @@ static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
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
index 6900acd603b8..ab6489749866 100644
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

