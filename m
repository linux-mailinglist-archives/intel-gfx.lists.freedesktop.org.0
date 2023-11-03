Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA6B7DFEB5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 06:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE6310E07A;
	Fri,  3 Nov 2023 05:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 673FD10E07A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 05:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698989194; x=1730525194;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z7eLLiZ+sAKGJVrEBoyym2MCanBuVumS+i2s2+rr0bI=;
 b=Ba9g6ev4iocIyTIk7WE7vWpJohCenuSwGs6EXajcFcudsy10W0/XUIsw
 Ya2OyOjj6ZeQ/cxpBzw/FQFQbNVoOwjp/etlC/SailJPPrx1DQPhCOcRa
 tAnH38GAlzgRGhjwt8RXiRqky1NaLcUs50/Ly/8MP3Rrl6xT0UzdcsXqU
 xBsCI0Sd3TG4lrRPLGZwDIMfAV/dpsdwq+5q605Fs3gdCviv+N+xy8xmZ
 CyXTSuQroW+uPmI8dMjp6bvqJbk1FlDOv4gsQa0ZnVwjTz170ZdvmG6Qh
 KV3nshu3an+fQ7P5937QLM/3TMrWGnirbHa5Xi5I4IBbu6uPlE4TNXA+c w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1814690"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1814690"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 22:26:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="827377078"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="827377078"
Received: from gyu3-linux2.itwn.intel.com ([10.5.252.85])
 by fmsmga008.fm.intel.com with ESMTP; 02 Nov 2023 22:26:32 -0700
From: Gareth Yu <gareth.yu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Nov 2023 13:29:59 +0800
Message-ID: <20231103052959.3537-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.42.0.rc0.25.ga82fb66fed
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of all GTs
 for debugfs
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
Cc: Gareth Yu <gareth.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Print another SSEU information addition to the first one.

Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc : Matt Roper <matthew.d.roper@intel.com>
Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c   | 13 ++++++++++---
 drivers/gpu/drm/i915/i915_gpu_error.c |  6 +++++-
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index e9b79c2c37d8..b5914a2c0597 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -63,13 +63,16 @@ static int i915_capabilities(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
+	struct intel_gt *gt;
+	unsigned int i;
 
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
 
 	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
 	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
 	i915_print_iommu_status(i915, &p);
-	intel_gt_info_print(&to_gt(i915)->info, &p);
+	for_each_gt(gt, i915, i)
+		intel_gt_info_print(&gt->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
 	kernel_param_lock(THIS_MODULE);
@@ -783,9 +786,13 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
 static int i915_sseu_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_gt *gt = to_gt(i915);
+	struct intel_gt *gt;
+	unsigned int i;
+
+	for_each_gt(gt, i915, i)
+		intel_sseu_status(m, gt);
 
-	return intel_sseu_status(m, gt);
+	return 0;
 }
 
 static int i915_forcewake_open(struct inode *inode, struct file *file)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b4e31e59c799..2adc317af944 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -722,9 +722,13 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
 			      struct intel_gt_coredump *gt)
 {
 	struct drm_printer p = i915_error_printer(m);
+	struct drm_i915_private *i915 = gt->_gt->i915;
+	struct intel_gt *gt_n;
+	unsigned int n;
 
 	intel_gt_info_print(&gt->info, &p);
-	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
+	for_each_gt(gt_n, i915, n)
+		intel_sseu_print_topology(gt_n->i915, &gt_n->info.sseu, &p);
 }
 
 static void err_print_gt_display(struct drm_i915_error_state_buf *m,
-- 
2.42.0.rc0.25.ga82fb66fed

