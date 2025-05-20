Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8D0ABD195
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 443FA10E57C;
	Tue, 20 May 2025 08:14:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzX1UIqY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D7810E573;
 Tue, 20 May 2025 08:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728850; x=1779264850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CP2k5dHBxguLU4R4w8TK/b/Bj9kb2BnRrShrssfBLUE=;
 b=lzX1UIqYrFXWXNcpzYgEo64SodQuKILwQZX5VgqSHpOaJMSyO5TeIerQ
 4bfhWLGEzUOnoNW446vqacde5g6P1raoWjDdoYbsR9hsF88NqxDrwZApp
 eXQIEdwrPpKdwJ3t/zzgUK+7hvEPTSAv+7uqVLWo4RMYM+KDv0ko6ecd3
 wmjzt1I6KUwWuQ+8TVIiM/bhjGG0SWzOImZ3pTM1bhd0d6mChueTHKfXM
 +695iqff3YSUCTBBHgi6p9m7g93LjH9wdUjCTMRVsqCepaO2EbvJQkiNU
 Y9PusK7a0yZLdG9lzzMFRKvIBC3SVgblu9MZJ22Uldy21HvQGss89c38a A==;
X-CSE-ConnectionGUID: TCqUHU7HQ9iyWg0zwJSJ2g==
X-CSE-MsgGUID: zQ2VhTCRRaSqRaWcKX9Jgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764840"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48764840"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:10 -0700
X-CSE-ConnectionGUID: iN2XUKjeQ7S9+O8EaoaKOA==
X-CSE-MsgGUID: JKw28mskSyGm+3nWvJMeCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144476008"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:14:08 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
Date: Tue, 20 May 2025 13:25:31 +0530
Message-Id: <20250520075537.4074010-6-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
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

A DSB buffer which will be used for GOSUB execution does not need
the DEWAKE mechanism but still need to be 64 bit aligned. Add helper
to finish preparation of a dsb buffer to be executed with GOSUB
instruction.

v2: Add a cacheline of noops at the end of GOSUB buffer (Ville)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dad483d4b1cf..8e54fb5b1eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -590,6 +590,19 @@ void intel_dsb_gosub(struct intel_dsb *dsb,
 	intel_dsb_align_tail(dsb);
 }
 
+void intel_dsb_gosub_finish(struct intel_dsb *dsb)
+{
+	intel_dsb_align_tail(dsb);
+
+	/*
+	 * "All subroutines called by the GOSUB instruction
+	 *  must end with a cacheline of NOPs"
+	 */
+	intel_dsb_noop(dsb, 8);
+
+	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
+}
+
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 8b2cf0a7b7e6..6900acd603b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -31,6 +31,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
+void intel_dsb_gosub_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-- 
2.25.1

