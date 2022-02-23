Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D254C1C68
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:38:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718F510EAB2;
	Wed, 23 Feb 2022 19:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE7B10EAB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 19:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645645131; x=1677181131;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LupsMYQuszpMP6qKHXen7AIx+INFtl2PEP482hawPH4=;
 b=Qwvo9wJdR1tR/jj4CLy1kkfC7IzikG6mA+O/cwxGMmVR/sLWRuh7fFnk
 ag6lhAiFJzCXRySQgdymMVyTZNfRsFi3fGouLZT1YXPIht7Nd9ZRz5zrA
 k3kYPL09Y82VoB65kaiqPNOugWb4wxtzOY0jZyJ13jweSABwxr13GGwWB
 nn2dqzhwXE92pFxIpvbCcERe8PXwFwWDzAlNywfl7k9gjScbfQoe53ltO
 FGVxABUZ29zrakEoKxhrm7cCwN5+TiK3nSZ6rwayaieem3XW3Ahxtwiy2
 HfHXSVrsZ5o/58C5WZwRvf492sn2AIyiMNHBMRovSdBjUC5LMHdlhyZv3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="249645800"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="249645800"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:38:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="508573272"
Received: from zhixinxi-mobl2.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.48.190])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:38:49 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 11:41:03 -0800
Message-Id: <20220223194103.715109-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Allow users to disable PSR2
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

Some users are suffering with PSR2 issues that are under debug or
issues that were root caused to panel firmware, to make life of those
users easier here adding a option to disable PSR1 with kernel
parameter.

Using the same enable_psr that is current used to turn PSR1 and PSR2
off or on and adding a new value to only disable PSR2.
The previous valid values did not had their behavior changed.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/4951
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
 drivers/gpu/drm/i915/i915_params.c       | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2e0b092f4b6be..fc6b684bb7bec 100644
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
+		if (i915->params.enable_psr == 2)
+			return false;
 		return true;
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index eea355c2fc28a..a9b97e6eb3df0 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -94,7 +94,7 @@ i915_param_named_unsafe(enable_hangcheck, bool, 0400,
 
 i915_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "
-	"(0=disabled, 1=enabled) "
+	"(0=disabled, 1=enable up to PSR2 if supported, 2=enable up to PSR1) "
 	"Default: -1 (use per-chip default)");
 
 i915_param_named(psr_safest_params, bool, 0400,
-- 
2.35.1

