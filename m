Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1738A23309C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 12:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7959E6E8D0;
	Thu, 30 Jul 2020 10:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6D36E8D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 10:54:29 +0000 (UTC)
IronPort-SDR: ZbPmej1NvSnKw0UmztM4pfoATtjsRSP6WgrAFr4fg1Ib0uqTHDtTNXIpolyw/UWKJY8s/1+BWV
 HykBL484cxeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="151551468"
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="151551468"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 03:54:29 -0700
IronPort-SDR: SbDq+BdW0lizCb5/9jYuUr+5LpPPN7bIHjvP7MaE/ReiKQeTazt0M4VMcophtUV+cArNXhUIqC
 JHED2FAlpNbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,414,1589266800"; d="scan'208";a="435003209"
Received: from bhanu-nuc8i7beh.iind.intel.com ([10.145.162.210])
 by orsmga004.jf.intel.com with ESMTP; 30 Jul 2020 03:54:27 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: bhanuprakash.modem@intel.com,
	intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 00:19:30 +0530
Message-Id: <20200730184931.14049-2-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730184931.14049-1-bhanuprakash.modem@intel.com>
References: <20200730184931.14049-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] i915/debug: Expose crtc dither state via
 debugfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[Why]
It's useful to know the dithering state for IGT testing.

[How]
Expose the dithering state for the crtc via a debugfs file "dither".

Example usage: cat /sys/kernel/debug/dri/0/crtc-0/dither

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 784219962193..7174fce05e6e 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1650,13 +1650,30 @@ static const struct i915_debugfs_files {
 #endif
 };
 
+static int dither_state_show(struct seq_file *m, void *data)
+{
+	struct intel_crtc *crtc = to_intel_crtc(m->private);
+	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
+
+	seq_printf(m, "Dither: %u\n", crtc_state->dither);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(dither_state);
+
 void i915_debugfs_register(struct drm_i915_private *dev_priv)
 {
 	struct drm_minor *minor = dev_priv->drm.primary;
+	struct drm_device *dev = &dev_priv->drm;
+	struct drm_crtc *crtc;
 	int i;
 
 	i915_debugfs_params(dev_priv);
 
+	drm_for_each_crtc(crtc, dev)
+		debugfs_create_file("dither", S_IRUGO, crtc->debugfs_entry, crtc,
+				&dither_state_fops);
+
 	debugfs_create_file("i915_forcewake_user", S_IRUSR, minor->debugfs_root,
 			    to_i915(minor->dev), &i915_forcewake_fops);
 	for (i = 0; i < ARRAY_SIZE(i915_debugfs_files); i++) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
