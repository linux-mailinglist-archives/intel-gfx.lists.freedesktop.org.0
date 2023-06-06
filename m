Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 206D0724CD3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E3D10E3AA;
	Tue,  6 Jun 2023 19:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CB810E3A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078936; x=1717614936;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mLRl2XF+szxW+ejv7TZ3L3flq0S2yNg2yQBw1MMTzV8=;
 b=Xe5IpLnt7T5YHu0Iig9DSzQSJ9e/EhuTJBlANCyh8c7QsJ4xLZHwq9Dw
 375nKV742uyHadqYj0o5qf9mHbOMD+ok3iOxcZ1s8lfXlB/lcRMGwOl7+
 5p+q+RPvA+S9sKG634Ob3qVGG5FmQVwQaASTj4zdn3K1uvN62b6jOuQGQ
 vzLbLFNyVnn5Az+CzGrTSpmsnmJ2ROcDgfMw3IY+D5fjCsTpQzTy/LGdm
 vEPlBu/oQjKwdMqKIOVRClvU4wTnN7zhmrr5wz1+0DBjtsAy2K6/+/EWX
 WorwrpXLLcY5XnPY3V/ffgKcNIaoFyaVvBTZvx2WNo7BrOpsHSPJG72fm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146313"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146313"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187087"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187087"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:54 +0300
Message-Id: <20230606191504.18099-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/19] drm/i915/dsb: Introduce
 intel_dsb_reg_write_masked()
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

Add a function for emitting masked register writes.

Note that the mask is implemented through bvyte enables,
so can only mask off aligned 8bit sets of bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  2 ++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 4ef799c087b4..6be353fdc7fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -234,6 +234,24 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 	}
 }
 
+static u32 intel_dsb_mask_to_byte_en(u32 mask)
+{
+	return (!!(mask & 0xff000000) << 3 |
+		!!(mask & 0x00ff0000) << 2 |
+		!!(mask & 0x0000ff00) << 1 |
+		!!(mask & 0x000000ff) << 0);
+}
+
+/* Note: mask implemented via byte enables! */
+void intel_dsb_reg_write_masked(struct intel_dsb *dsb,
+				i915_reg_t reg, u32 mask, u32 val)
+{
+	intel_dsb_emit(dsb, val,
+		       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
+		       (intel_dsb_mask_to_byte_en(mask) << DSB_BYTE_EN_SHIFT) |
+		       i915_mmio_reg_offset(reg));
+}
+
 void intel_dsb_noop(struct intel_dsb *dsb, int count)
 {
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 5a08bc21beda..983b0d58ad44 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -19,6 +19,8 @@ void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
+void intel_dsb_reg_write_masked(struct intel_dsb *dsb,
+				i915_reg_t reg, u32 mask, u32 val);
 void intel_dsb_noop(struct intel_dsb *dsb, int count);
 void intel_dsb_commit(struct intel_dsb *dsb,
 		      bool wait_for_vblank);
-- 
2.39.3

