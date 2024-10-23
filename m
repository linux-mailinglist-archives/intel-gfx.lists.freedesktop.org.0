Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA349AD6E9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE2910E87D;
	Wed, 23 Oct 2024 21:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FS7y7U4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014E010E1A6;
 Wed, 23 Oct 2024 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720027; x=1761256027;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AoT4BueZclBuWyM80tDOgvms8MGZuLBwt3c5tKlEzOQ=;
 b=FS7y7U4MwqTn7DNn2uVtRuyc9pvdyLSAUOdA4Gg91qYVjphlXnbsvrrw
 y2ocpmC1Sr4BOnW6VjkScJrBukn3IKiE8ckj8U++Dy446e+2BztrEruxT
 B0NlWsKwFrYMp5U8Ps9RzdgjQUxvLFXUJnstxv+Mzm+7CXO5Ie3kvV+Ti
 DZzZ4SNKH2y9oAqhgGpHw8vdt0F6enCmlE2uKsGWB8bO17N7MzIjx2Hzs
 l9XCAJbry3I4aZ8G7dgobSmt4aeGKJziRgsaTRXlMv+JaNmz7aJyvEWjY
 As0QA8Mm6VoB0lKiIy7h/ZpoXWmLt29f1pIrMq1sfhbzPAbIPFzVee1tq Q==;
X-CSE-ConnectionGUID: RAI3eQy8RSKG1JZ57fAhZw==
X-CSE-MsgGUID: 0yoGZ+rSQQ+7jWJg9dHdEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54732009"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54732009"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:06 -0700
X-CSE-ConnectionGUID: JT4F1XNeQZqCEeAaE88buQ==
X-CSE-MsgGUID: Xgz4AqR1TLazP9MWh3XkCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809808"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 11/12] drm/i915/xe3lpd: Skip disabling VRR during modeset
 disable
Date: Wed, 23 Oct 2024 14:47:00 -0700
Message-Id: <20241023214701.963830-12-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Spec does not request to disable VRR in the modeset disabling
sequence for DP and HDMI for xe3_lpd.

Bspec: 68848
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 124e094a9999..bc35327b37d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1310,9 +1310,11 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (intel_crtc_vrr_disabling(state, crtc)) {
-		intel_vrr_disable(old_crtc_state);
-		intel_crtc_update_active_timings(old_crtc_state, false);
+	if (DISPLAY_VER(dev_priv) < 30) {
+		if (intel_crtc_vrr_disabling(state, crtc)) {
+			intel_vrr_disable(old_crtc_state);
+			intel_crtc_update_active_timings(old_crtc_state, false);
+		}
 	}
 
 	if (audio_disabling(old_crtc_state, new_crtc_state))
-- 
2.25.1

