Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 907304C36D3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 21:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5328010E65C;
	Thu, 24 Feb 2022 20:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3CF10E65C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 20:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645734198; x=1677270198;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nh1ztv8QRz70YRy0GK2B3BppJfuh+i77FDbLnfTvsLo=;
 b=VF15RRcg/dv0MNROq5ryDl9HWI7cpXW8+Lf8Ztox3Q8eBq+E2XjQyxC0
 4VNKP9LqDHrES0uPL3ZZ43AFI259xbrZXU6IjA+C1TkbxX0pnDegrOIqt
 Xf7HZc7GnrAOSLpCm0iZ0oGuBdM0onWqWiuEZyr7Ei0IBq0crsn7rvP5t
 y5+zgNaX6uQ8JRCAId+zOH07Tue5yA4dzKeuLVSdKP1vgyxGDZh8FBqQ5
 Ov9GrxBuXZwodt0wET9QUk+EhONSl9Yjb7tCExfqTluanv1c2DH27tfWs
 0iPxE6vyUJGzXi/8py1Rk/6JVNHCRjIIGCJiCg6etgG19rAqwfl8Qv9dR g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="251170456"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="251170456"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 12:23:17 -0800
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="548923452"
Received: from stetonwx-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.134.40.59])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 12:23:14 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 12:25:23 -0800
Message-Id: <20220224202523.993560-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Allow users to disable PSR2
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some users are suffering with PSR2 issues that are under debug or
issues that were root caused to panel firmware bugs, to make life of
those users easier here adding a option to disable PSR2 with kernel
parameters so they can still benefit from PSR1 power savings.

Using the same enable_psr that is current used to turn the whole
feature on or off and allowing user to select up to what PSR version
it should enable.
Right now users only set this parameter to 0 when they want to disable
PSR1 and PSR2 or don't add it at all leaving it to per-chip behavior
so it should not cause a bad impact on users.

v2:
- changing enable_psr values (Ville and Rodrigo)

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/4951
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
 drivers/gpu/drm/i915/i915_params.c       | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2e0b092f4b6be..9817ebd4c839e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -100,11 +100,15 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
 
 static bool psr2_global_enabled(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DISABLE:
 	case I915_PSR_DEBUG_FORCE_PSR1:
 		return false;
 	default:
+		if (i915->params.enable_psr == 1)
+			return false;
 		return true;
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index eea355c2fc28a..207b54a4e6ce7 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -94,7 +94,7 @@ i915_param_named_unsafe(enable_hangcheck, bool, 0400,
 
 i915_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "
-	"(0=disabled, 1=enabled) "
+	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
 	"Default: -1 (use per-chip default)");
 
 i915_param_named(psr_safest_params, bool, 0400,
-- 
2.35.1

