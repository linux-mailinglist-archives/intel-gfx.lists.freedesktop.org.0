Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AC5A43F0C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 13:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1372E10E661;
	Tue, 25 Feb 2025 12:17:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SHSBlzjk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE5910E667;
 Tue, 25 Feb 2025 12:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740485869; x=1772021869;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jhnJaq/SzmEJ/6flr09V+NFXAb8AZaQDuZzGnlq+Bqg=;
 b=SHSBlzjkm5SnlGND/dh6P+07bh0P+sfQc4Y9JMS8GLFQ2BjfspqhzrfS
 SdTeBK/g+wKrq6+/5kqTZ7mFYBbwyny3Z/CpB7xx0RbRiRsnTmcmiYsZ6
 OEyvAj9dikP3Lpbx+IXCjHqA5lEtwgRm/Z+oLvJ5cFEz6WonVKxNSrh0r
 Hlpok0cXDtEqpL+aIRz6ZJl8aGmLldpg0TPUGl8iJvW1OsMukardKo8qV
 fDi0J6fPX9NZX0PbI6yyzPN/il1cUZwRg78sImyQ+bqYtiNm8WI9yNWdi
 JOFcZEejejVMSQFcXn2udskmpyatFAPHXvEfMrRbirUyNjOILtsvbSkXJ A==;
X-CSE-ConnectionGUID: eYrb+KKcQvCZSOtQ7AydcA==
X-CSE-MsgGUID: OSwEksY8RMOOJNcd/Qdp3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="66658440"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="66658440"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 04:17:49 -0800
X-CSE-ConnectionGUID: qw5ek+TBTXibRl6yby9NjA==
X-CSE-MsgGUID: u7cC/yrsQXGTly3bmIGjbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147271847"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 04:17:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/power: move runtime power status info to power
 debugfs
Date: Tue, 25 Feb 2025 14:17:42 +0200
Message-Id: <20250225121742.721871-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The i915 core debugfs has no business looking at power domain guts for
runtime power status. Move the info to the more appropriate place.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 drivers/gpu/drm/i915/i915_debugfs.c                | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 396930937d98..96346b33d7e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2317,6 +2317,9 @@ void intel_display_power_debug(struct intel_display *display, struct seq_file *m
 
 	mutex_lock(&power_domains->lock);
 
+	seq_printf(m, "Runtime power status: %s\n",
+		   str_enabled_disabled(!power_domains->init_wakeref));
+
 	seq_printf(m, "%-25s %s\n", "Power well/domain", "Use count");
 	for (i = 0; i < power_domains->power_well_count; i++) {
 		struct i915_power_well *power_well;
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 1c2a97f593c7..0d9e263913ff 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -411,9 +411,6 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 	if (!HAS_RUNTIME_PM(dev_priv))
 		seq_puts(m, "Runtime power management not supported\n");
 
-	seq_printf(m, "Runtime power status: %s\n",
-		   str_enabled_disabled(!dev_priv->display.power.domains.init_wakeref));
-
 	seq_printf(m, "GPU idle: %s\n", str_yes_no(!to_gt(dev_priv)->awake));
 	seq_printf(m, "IRQs disabled: %s\n",
 		   str_yes_no(!intel_irqs_enabled(dev_priv)));
-- 
2.39.5

