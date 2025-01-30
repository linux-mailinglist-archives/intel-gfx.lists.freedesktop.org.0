Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF03A233FD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 19:45:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1966F10E089;
	Thu, 30 Jan 2025 18:45:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVI9+rV2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E2610E089;
 Thu, 30 Jan 2025 18:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738262724; x=1769798724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c8M5s5C/Cn5mx+qroKlABoSaor0aIj8KEsc3xV6qNM0=;
 b=FVI9+rV2jHh9U16qK0W6xzIfwpNsuiX40JHlIcDqvM7CZ0UpYmAYvJAf
 NtZrfR1pzE4iI6y8ZeOn/GS7xRTfqHKstZzPPHf9LrdU79NeijO0wge5v
 t0/mLeOS9vhfjP6zODXi2uAb9z2ugT/LnJQ4bVHL2/zsJ0C/eZTk1zwCT
 n2iANOfZSigPL2loaARtE6EIUjNaErP2ayWDepbfQd7MlkX2NwUtYXawH
 fdVGYikk6bd7RtQC+un25GBZA619nrrx0h5eaYYMvbTTTVIsm+tlJ97t4
 vL3EyKmlhvXdO3IsTyhQTdeqzSHLNPmE6U1Ru91uoLkisJNyRIgGSzxeO g==;
X-CSE-ConnectionGUID: H2OOmZzwRtyy8q2dnZcYlg==
X-CSE-MsgGUID: QWTjaHtgSzeURBckUwgzGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38068230"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="38068230"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 10:45:24 -0800
X-CSE-ConnectionGUID: u5pM/kooTBKDE3gk4K3+WA==
X-CSE-MsgGUID: UircItbBS6ivLoh/n47Pyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="109561266"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Jan 2025 10:45:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jan 2025 20:45:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/dsb: Introduce intel_dsb_poll()
Date: Thu, 30 Jan 2025 20:45:16 +0200
Message-ID: <20250130184518.22353-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
References: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
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

Add a functiuon for emitting a DSB poll instruction. We'll allow
the caller to specify the poll parameters.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  3 +++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2f2812c23972..b68ee125afae 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -452,6 +452,25 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
 			   start, end);
 }
 
+void intel_dsb_poll(struct intel_dsb *dsb,
+		    i915_reg_t reg, u32 mask, u32 val,
+		    int wait, int count)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	enum pipe pipe = crtc->pipe;
+
+	intel_dsb_reg_write(dsb, DSB_POLLMASK(pipe, dsb->id), mask);
+	intel_dsb_reg_write(dsb, DSB_POLLFUNC(pipe, dsb->id),
+			    DSB_POLL_ENABLE |
+			    DSB_POLL_WAIT(wait) | DSB_POLL_COUNT(count));
+
+	intel_dsb_noop(dsb, 5);
+
+	intel_dsb_emit(dsb, val,
+		       (DSB_OPCODE_POLL << DSB_OPCODE_SHIFT) |
+		       i915_mmio_reg_offset(reg));
+}
+
 static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index da6df07a3c83..4511d1a1a187 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -54,6 +54,9 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
 				 int lower, int upper);
 void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 			    struct intel_dsb *dsb);
+void intel_dsb_poll(struct intel_dsb *dsb,
+		    i915_reg_t reg, u32 mask, u32 val,
+		    int wait, int count);
 void intel_dsb_chain(struct intel_atomic_state *state,
 		     struct intel_dsb *dsb,
 		     struct intel_dsb *chained_dsb,
-- 
2.45.3

