Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A597FA7FEBE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3D410E666;
	Tue,  8 Apr 2025 11:15:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBm8l9us";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BDBA10E665;
 Tue,  8 Apr 2025 11:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110945; x=1775646945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9NLc9ijI3UkbFrHaG+rTqyOaV4ImwhGzQypbNWnZ/uI=;
 b=nBm8l9us9+fkXLBBXz9G703rEh6yVGPEItD0eEyVbvjDV3V6TGROQAPu
 1MDB2I7P+jh7QZGklYyu1uFsc2PWvzT11GXbWsBAfpAHMJqOOyuGixNH8
 aCtyT2k6q4TieIjw5lX4VTWiYFV9uQr4UrfwXp9Z7g6sUkk9/jt40HioY
 Y7JFQmHIMPTNeh0AIkBZuBNVK9mlVIQoJrKdi7NvkLziAzuMtiWzEGAIy
 mbKUhptP8TLf5wAnvdUpQ8HO/Da8yGPG0ydmCglQJ0vlrDBo2DUHchLYr
 llj+ttSLhBSfxJQZP4kPZAY98gaXg2CPqbaQBLXFw5P8GZ1TZSN1pKi39 Q==;
X-CSE-ConnectionGUID: G+OGXSJZSsyGod/kv7VjPw==
X-CSE-MsgGUID: CqZGxo7RT+Sw0Vb3NRG6SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655922"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655922"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:45 -0700
X-CSE-ConnectionGUID: 9YDHIen6Sxu9v18YmjeE9w==
X-CSE-MsgGUID: X9EY8u+wTry/YGeNOACSDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133209989"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:43 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH v2 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
Date: Tue,  8 Apr 2025 16:30:16 +0530
Message-Id: <20250408110022.1907802-6-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2cda6fc7857b..97ea3c655590 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -585,6 +585,19 @@ void intel_dsb_gosub(struct intel_dsb *dsb,
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

