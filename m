Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8441407DD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 11:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB236F4DD;
	Fri, 17 Jan 2020 10:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F476F4DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 10:24:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19913942-1500050 
 for multiple; Fri, 17 Jan 2020 10:24:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 10:24:18 +0000
Message-Id: <20200117102418.2954557-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Squelch kerneldoc complaints
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/display/intel_atomic.c:185: warning: Function parameter or member 'state' not described in 'intel_connector_needs_modeset'
drivers/gpu/drm/i915/display/intel_atomic.c:185: warning: Function parameter or member 'connector' not described in 'intel_connector_needs_modeset'

drivers/gpu/drm/i915/display/intel_fbc.c:1124: warning: Function parameter or member 'state' not described in 'intel_fbc_enable'
drivers/gpu/drm/i915/display/intel_fbc.c:1124: warning: Excess function parameter 'crtc_state' description in 'intel_fbc_enable'
drivers/gpu/drm/i915/display/intel_fbc.c:1124: warning: Excess function parameter 'plane_state' description in 'intel_fbc_enable'

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 2 ++
 drivers/gpu/drm/i915/display/intel_fbc.c    | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index c362eecdd414..cd9e755b6410 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -178,6 +178,8 @@ intel_digital_connector_duplicate_state(struct drm_connector *connector)
 
 /**
  * intel_connector_needs_modeset - check if connector needs a modeset
+ * @state: the state
+ * @connector: the connector
  */
 bool
 intel_connector_needs_modeset(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 88a9c2fea695..d3be6f619b31 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1111,8 +1111,7 @@ void intel_fbc_choose_crtc(struct drm_i915_private *dev_priv,
 /**
  * intel_fbc_enable: tries to enable FBC on the CRTC
  * @crtc: the CRTC
- * @crtc_state: corresponding &drm_crtc_state for @crtc
- * @plane_state: corresponding &drm_plane_state for the primary plane of @crtc
+ * @state: corresponding &drm_crtc_state for @crtc
  *
  * This function checks if the given CRTC was chosen for FBC, then enables it if
  * possible. Notice that it doesn't activate FBC. It is valid to call
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
