Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F86513D14
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 23:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B098410E478;
	Thu, 28 Apr 2022 21:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D638410E272
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 21:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651180220; x=1682716220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lfJ4/R92bgIN+wrn4zUzbPD4HIJbE6l8ZWidB6IYoeY=;
 b=Gtpccxuf76eyXgNC2kHNeI9XllOqAfQpWz01ucG3gFZieWdEs0YrUM17
 wV6E/3au0b2DV0kdMvy+2gubOp2WRxx4ePMPT/bQCuZtp50vsyM5fK9vk
 RJ0EpKGmlbMOcfF7XAlvLvrT7aibBuN0FcKioBeh/U4FsfX5QhGOFEwb9
 UhD1/n3V6MG3FvC1HrVKIhyOpEAbbG63vi+WcYWVwLSgtCIA1r0vdn4oP
 qwY14WYIiAuEEDKs1Fz4kGSjfRS4MUw57neMnkL2QkbeEJnL6eiQiQ+KZ
 hsagFRNiR841L4BLJS6I0cTCVpmUbEBNxmeZR9robR25AKiwVBG4hqvQv g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="266581196"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="266581196"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:10:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="581644236"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 14:10:18 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 14:10:57 -0700
Message-Id: <20220428211058.399630-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220428211058.399630-1-jose.souza@intel.com>
References: <20220428211058.399630-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Allow DRRS to be enabled
 during driver load
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

When driver takes over display from firmware it does some checks and
if possible it tries to avoid a modeset to improve user boot
experience.

But even if DRRS is supported it was being left disabled as
intel_crtc_copy_fastset() was overwritten new state with the old one
(hardware readout).

So here checking if platform has only one set of m_n registers that
can change on the fly between high and low clock, if yes we can keep
DRRS enabled.

Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  7 ++++--
 drivers/gpu/drm/i915/display/intel_drrs.c    | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h    |  2 ++
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0decf3d242372..17d0cad9e1686 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7086,8 +7086,11 @@ static void intel_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_stat
 	 */
 	new_crtc_state->fdi_m_n = old_crtc_state->fdi_m_n;
 	new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
-	new_crtc_state->dp_m2_n2 = old_crtc_state->dp_m2_n2;
-	new_crtc_state->has_drrs = old_crtc_state->has_drrs;
+
+	if (!intel_drrs_crtc_copy_fastset(old_crtc_state, new_crtc_state)) {
+		new_crtc_state->dp_m2_n2 = old_crtc_state->dp_m2_n2;
+		new_crtc_state->has_drrs = old_crtc_state->has_drrs;
+	}
 }
 
 static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 04bc296761be0..c6509c29e942b 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -305,3 +305,27 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
 	mutex_init(&crtc->drrs.mutex);
 	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
 }
+
+/**
+ * intel_drrs_crtc_copy_fastset - Handles crtc state copy during fastsets when
+ * new state has DRRS.
+ * @old_crtc_state: old crtc state
+ * @new_crtc_state: new crtc state
+ *
+ * Handle crtc state copy during fastsets trying to keep DRRS enabled.
+ * That can be done in platforms that supports change the dp_m_n register on
+ * the fly between high and low clocks.
+ *
+ * Returns true if crtc copy was already handled otherwise returns false.
+ */
+bool intel_drrs_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_state,
+				  struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(old_crtc_state->uapi.crtc->dev);
+
+	/* m2_n2 register needs to already be set */
+	if (intel_cpu_transcoder_has_m2_n2(i915, new_crtc_state->cpu_transcoder))
+		return false;
+
+	return true;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 3ad1be1ad9c13..749ac717db063 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -24,5 +24,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
 void intel_crtc_drrs_init(struct intel_crtc *crtc);
+bool intel_drrs_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_state,
+				  struct intel_crtc_state *new_crtc_state);
 
 #endif /* __INTEL_DRRS_H__ */
-- 
2.36.0

