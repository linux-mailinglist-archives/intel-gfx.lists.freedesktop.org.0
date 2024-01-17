Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B29830BBD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 18:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5457A10E728;
	Wed, 17 Jan 2024 17:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C0589151
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 17:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705511465; x=1737047465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DvAoFwHNqxU+rONsRw/Br6TRN3wf2IPCEq9lQgjhGGU=;
 b=A5zpHdSB6o8GxCe6tSgcFIljExBy37x4ZSAGgT/k2VtQBaTw8ULbKewV
 sIrG0+H9qsWG0tkMPBTHJLwYmGw93OcO+nl/FJEnpmOjwGROgpUjGAa+i
 cyV88AZlKxXtbz7ZqQJY+RHpt4F1Pwmu3ZFQi+XPBRvGWQdSF7yz5rGwx
 1VCkJ0o9e4ThxhEqtpTaUA0Wjfk4rQOEFa8Ix3pT8/rue4rjaveuCJngZ
 u4kxmMCOm/1IEdkuo6Aa9/lVbHFJaSk9kzdc5mhWu7nSnUss3SkUf1+v6
 f98yOC016a6z+uDh4STPYgmDf/LYXy27+sfHr5ztiR4xX2KIF4ALKWnvZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="431376647"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="431376647"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 09:11:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="787835670"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="787835670"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 09:11:02 -0800
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [i-g-t 1/1] drm/i915/display: Dump display parameters to
 i915_display_capabilities
Date: Wed, 17 Jan 2024 22:35:03 +0530
Message-Id: <20240117170503.3884942-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
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

Include Display parameters in i915_display_capabilities debugfs.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6f2d13c8ccf7..1eb296b5c38a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -625,6 +625,10 @@ static int i915_display_capabilities(struct seq_file *m, void *unused)
 	struct drm_i915_private *i915 = node_to_i915(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
 
+	kernel_param_lock(THIS_MODULE);
+	intel_display_params_dump(i915, &p);
+	kernel_param_unlock(THIS_MODULE);
+
 	intel_display_device_info_print(DISPLAY_INFO(i915),
 					DISPLAY_RUNTIME_INFO(i915), &p);
 
-- 
2.40.0

