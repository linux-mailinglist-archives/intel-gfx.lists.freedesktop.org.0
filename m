Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2184245DF74
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 18:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0706E591;
	Thu, 25 Nov 2021 17:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0934B6E591
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 17:16:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="216253773"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="216253773"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 09:16:07 -0800
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="510372871"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 09:16:05 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Nov 2021 19:16:03 +0200
Message-Id: <20211125171603.1775179-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix DPT suspend/resume on
 !HAS_DISPLAY platforms
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The drm.mode_config state is not initialized in case of !HAS_DISPLAY
so taking the fb_lock and iterating the fb list won't work on those
platforms. Skip the suspend/resume with an explicit check for this.

Fixes: 9755f055f512 ("drm/i915: Restore memory mapping for DPT FBs across system suspend/resume")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 56755788547d2..963ca7155b064 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -183,6 +183,9 @@ void intel_dpt_resume(struct drm_i915_private *i915)
 {
 	struct drm_framebuffer *drm_fb;
 
+	if (!HAS_DISPLAY(i915))
+		return;
+
 	mutex_lock(&i915->drm.mode_config.fb_lock);
 	drm_for_each_fb(drm_fb, &i915->drm) {
 		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
@@ -207,6 +210,9 @@ void intel_dpt_suspend(struct drm_i915_private *i915)
 {
 	struct drm_framebuffer *drm_fb;
 
+	if (!HAS_DISPLAY(i915))
+		return;
+
 	mutex_lock(&i915->drm.mode_config.fb_lock);
 
 	drm_for_each_fb(drm_fb, &i915->drm) {
-- 
2.27.0

