Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD59525C8D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 09:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4843D10E9A3;
	Fri, 13 May 2022 07:51:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7F210E988
 for <Intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 07:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652428304; x=1683964304;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nR/QuPnBANbvCiJcg1hdekmFKyPWNqFUmMpVNxGq2BI=;
 b=G8F50NJG0rHiHI9a2Ey9OJ5P0mRCiP+BC29QIQ9kpflQzIEOrojHKWC/
 eEcZi8O7NEZDyhPHq1TegBvhpMEJoIXxysyssReYuhsAJKi8/Zr/tP0mJ
 c7ZLUhg54YKDkOcIn+CfVpZ9+s1lmSH7BW/1gWUh01ZcjgmJzJZuSNY6k
 XhftD1WBc61KyftAUfibluhHg3Lg3cyWPDy+DqeLHWqvNXBI6e0RMW+Oo
 MOXA2+QM0PRqBFya2qYykoAyscAxVgWsFKkX3dAYDRqRgbMscVFw/gJme
 iMdHTulUGhaaATJUCq4XVRTBiG9GSDPg9vNWNi8Bq0vw7iLOBP4keoKSF w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="356672729"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="356672729"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 00:51:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="595100429"
Received: from cpazx-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.209.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 00:51:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 08:51:36 +0100
Message-Id: <20220513075136.1027007-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915: Fix CFI violation with show_dynamic_id()
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

From: Nathan Chancellor <nathan@kernel.org>

When an attribute group is created with sysfs_create_group(), the
->sysfs_ops() callback is set to kobj_sysfs_ops, which sets the ->show()
callback to kobj_attr_show(). kobj_attr_show() uses container_of() to
get the ->show() callback from the attribute it was passed, meaning the
->show() callback needs to be the same type as the ->show() callback in
'struct kobj_attribute'.

However, show_dynamic_id() has the type of the ->show() callback in
'struct device_attribute', which causes a CFI violation when opening the
'id' sysfs node under drm/card0/metrics. This happens to work because
the layout of 'struct kobj_attribute' and 'struct device_attribute' are
the same, so the container_of() cast happens to allow the ->show()
callback to still work.

Change the type of show_dynamic_id() to match the ->show() callback in
'struct kobj_attributes' and update the type of sysfs_metric_id to
match, which resolves the CFI violation.

Fixes: f89823c21224 ("drm/i915/perf: Implement I915_PERF_ADD/REMOVE_CONFIG interface")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/gpu/drm/i915/i915_perf.c       | 4 ++--
 drivers/gpu/drm/i915/i915_perf_types.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0a9c3fcc09b1..1577ab6754db 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4050,8 +4050,8 @@ static struct i915_oa_reg *alloc_oa_regs(struct i915_perf *perf,
 	return ERR_PTR(err);
 }
 
-static ssize_t show_dynamic_id(struct device *dev,
-			       struct device_attribute *attr,
+static ssize_t show_dynamic_id(struct kobject *kobj,
+			       struct kobj_attribute *attr,
 			       char *buf)
 {
 	struct i915_oa_config *oa_config =
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 473a3c0544bb..05cb9a335a97 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -55,7 +55,7 @@ struct i915_oa_config {
 
 	struct attribute_group sysfs_metric;
 	struct attribute *attrs[2];
-	struct device_attribute sysfs_metric_id;
+	struct kobj_attribute sysfs_metric_id;
 
 	struct kref ref;
 	struct rcu_head rcu;
-- 
2.32.0

