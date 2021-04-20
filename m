Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BCB365985
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 15:09:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6246E50E;
	Tue, 20 Apr 2021 13:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154906E50E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 13:09:03 +0000 (UTC)
IronPort-SDR: o/H5mKrzl3Ky9SLUvpjbTjY5buRlsmiuvgPCTTOoqP12UtyOo0oWT6ThW/QwUZBThXwTqm02Hn
 RniMJgl+VoLg==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="193379068"
X-IronPort-AV: E=Sophos;i="5.82,236,1613462400"; d="scan'208";a="193379068"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:09:02 -0700
IronPort-SDR: M/T2E15i9gCHmnc2I7IZBIwWyGvgB7cM+nzYA1RuNjJ9MJgiFVhR6HpoaC4PSh4bygfLEXhXxa
 Gh9bxiQT0S/w==
X-IronPort-AV: E=Sophos;i="5.82,236,1613462400"; d="scan'208";a="426920318"
Received: from karunatx-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.35.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:08:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Apr 2021 16:08:53 +0300
Message-Id: <20210420130853.10573-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Rename pm_ prefixed
 functions names
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
Cc: jani.nikula@intel.com, Hsin-Yi Wang <hsinyi@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Hsin-Yi Wang <hsinyi@chromium.org>

pm_resume and pm_suspend might be conflict with the ones defined in
include/linux/suspend.h. Rename all pm_* to igt_pm_* in selftests since
they are only used here.

v2 by Jani:
- Use igt_ prefix instead of i915_ to avoid colliding with existing
  i915_pm_* functions
- Rename all pm_ prefixed functions in the file

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index dc394fb7ccfa..152d9ab135b1 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -87,14 +87,14 @@ static void simulate_hibernate(struct drm_i915_private *i915)
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
-static int pm_prepare(struct drm_i915_private *i915)
+static int igt_pm_prepare(struct drm_i915_private *i915)
 {
 	i915_gem_suspend(i915);
 
 	return 0;
 }
 
-static void pm_suspend(struct drm_i915_private *i915)
+static void igt_pm_suspend(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
@@ -104,7 +104,7 @@ static void pm_suspend(struct drm_i915_private *i915)
 	}
 }
 
-static void pm_hibernate(struct drm_i915_private *i915)
+static void igt_pm_hibernate(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
@@ -116,7 +116,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
 	}
 }
 
-static void pm_resume(struct drm_i915_private *i915)
+static void igt_pm_resume(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref;
 
@@ -148,16 +148,16 @@ static int igt_gem_suspend(void *arg)
 	if (err)
 		goto out;
 
-	err = pm_prepare(i915);
+	err = igt_pm_prepare(i915);
 	if (err)
 		goto out;
 
-	pm_suspend(i915);
+	igt_pm_suspend(i915);
 
 	/* Here be dragons! Note that with S3RST any S3 may become S4! */
 	simulate_hibernate(i915);
 
-	pm_resume(i915);
+	igt_pm_resume(i915);
 
 	err = switch_to_context(ctx);
 out:
@@ -183,16 +183,16 @@ static int igt_gem_hibernate(void *arg)
 	if (err)
 		goto out;
 
-	err = pm_prepare(i915);
+	err = igt_pm_prepare(i915);
 	if (err)
 		goto out;
 
-	pm_hibernate(i915);
+	igt_pm_hibernate(i915);
 
 	/* Here be dragons! */
 	simulate_hibernate(i915);
 
-	pm_resume(i915);
+	igt_pm_resume(i915);
 
 	err = switch_to_context(ctx);
 out:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
