Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538C585D6A2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 12:18:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B78D10E570;
	Wed, 21 Feb 2024 11:18:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PwXE7lfR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3596F10E570
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 11:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708514302; x=1740050302;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XcDYFH4OVDYigws6W+0o7iJy8XwnS7uEZV6181Nlkfw=;
 b=PwXE7lfRXem9b7rqg1sLHIDu1pbHeaHOMrBjzO7gXh3iuO5Ot5tzmcA5
 Q+JUUkYoDZB1o7W5sCU30hs1+f1oTVAD1ELn+DeKNcSpgPDTPs019UXAb
 sMpbCf2AXOXP/4mEjlkFdIY2bDQd31fMvsQVaIihtE0H8CjGWl9lFUvAN
 1Ikyv0X8grXwPjciH+5nDEBahxnedu7zyqPY1ppe06IWakLEnZ8NorOqp
 uFuAtG7e+0QC3/BH5xquzq7om5KcZha0bi4WXh5L4IeyD0EsR8bP4v4iE
 Xc15bBBbpEUQfyee1Q2nagiilE/CXHkCeSrs7Z24LA7UK2ou/Wz6uBxzA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="6482635"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="6482635"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 03:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="35885198"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 03:18:19 -0800
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Subject: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
Date: Wed, 21 Feb 2024 16:42:23 +0530
Message-ID: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.43.0
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

If the connected panel supports both DRRS & PSR, driver gives preference
to PSR ("DRRS enabled: no"). Even though the hardware supports DRRS,
IGT treats ("DRRS enabled: yes") as not capable.

Introduce a new entry "DRRS capable" to debugfs i915_drrs_status, so
that IGT will read the DRRS capability as "DRRS capable: yes".

Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 6282ec0fc9b4..169ef38ff188 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -299,6 +299,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)
 static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct intel_crtc *crtc = m->private;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_crtc_state *crtc_state;
 	int ret;
 
@@ -310,6 +311,11 @@ static int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)
 
 	mutex_lock(&crtc->drrs.mutex);
 
+	seq_printf(m, "DRRS capable: %s\n",
+		   str_yes_no(crtc_state->has_drrs ||
+			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
+			      intel_cpu_transcoder_has_m2_n2(i915, crtc_state->cpu_transcoder)));
+
 	seq_printf(m, "DRRS enabled: %s\n",
 		   str_yes_no(crtc_state->has_drrs));
 
-- 
2.43.0

