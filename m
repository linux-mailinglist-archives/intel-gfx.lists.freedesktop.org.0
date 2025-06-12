Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE67EAD7491
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 16:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCAC10E87E;
	Thu, 12 Jun 2025 14:50:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ROvwCC7A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2536E10E87E;
 Thu, 12 Jun 2025 14:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749739829; x=1781275829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DBPNk/ri4CKnKk7qThzJkmMM91QB0XLLtUXYk/LydBg=;
 b=ROvwCC7AZWBbCHw8ngtAziEs7FxuyAeyFCN/UZ5BZiQhz2m8AkNFQYuH
 3Ma7YRMvxDBB3y/ORAyShEIfVXlY/KFCboZQPiaxMvlRkDS+pMoxrg4Nn
 RX5caUd4UOG9IUFJOV9AnQGa94mQ7EfFOG+pfRob/nvHlNbXNxEvdpxQs
 bVe2px8xCu/AR9IwxHbQtvkDHWV51jVxb5Mz6uQlHZIrky865/jm7+G4F
 voVdDo+qMreZiCZGtPjNeyKsJAyGa0FGqxjme1H/D5b1412OfAUlFzN5/
 Zt5YLdiNs3rvLr6vNHxUtau97fhpXf7u7jx2yNdcODC4Tvc0RLdxjoN2K g==;
X-CSE-ConnectionGUID: 7ZuO0TbtSRaklkMd6hsLSw==
X-CSE-MsgGUID: NWW1+z1pRcmYE1mDsz2gcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52066749"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52066749"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 07:50:29 -0700
X-CSE-ConnectionGUID: wk6NYDuSTJ2AsjwoLdnVeA==
X-CSE-MsgGUID: xJ3zpnXtRxeZS7BURYqpCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152826191"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.200])
 by orviesa005.jf.intel.com with SMTP; 12 Jun 2025 07:50:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jun 2025 17:50:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 2/6] drm/i915/dsb: Provide intel_dsb_head() and
 intel_dsb_size()
Date: Thu, 12 Jun 2025 17:50:14 +0300
Message-ID: <20250612145018.8735-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
References: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 9 +++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h | 2 ++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 96baef5d5b1a..50d8c4900644 100644
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

