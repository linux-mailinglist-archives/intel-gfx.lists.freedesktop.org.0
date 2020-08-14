Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FF324474C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F54E6EB1C;
	Fri, 14 Aug 2020 09:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE40B6EB1C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:14 +0000 (UTC)
IronPort-SDR: CNe5Vtm4snxUQil86CTAQOQGro0uAWZ34DTa9zSz4imZXhcZBEFaDvLR5PkezG+6Lb8XNGPtUr
 pu+dz8QD0wig==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026594"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026594"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:14 -0700
IronPort-SDR: f+z6pN2oI7lN8jG51cPcW8YltwXVs+ANHkVhjNqo9XWgO00ZN8oN+XhckN3qS40hfqNkI3OUrP
 ptATs2EhZS3Q==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068631"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:13 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:48 +0530
Message-Id: <20200814024950.26830-6-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200814024950.26830-1-nischal.varide@intel.com>
References: <20200814024950.26830-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] Critical KlockWork Error - Fixes -
 intel_tv.c - Possible NullPointerDereference1
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
Cc: Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

---
 drivers/gpu/drm/i915/display/intel_tv.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 777032d9697b..862ea94ffdae 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1842,14 +1842,17 @@ static int intel_tv_atomic_check(struct drm_connector *connector,
 	old_state = drm_atomic_get_old_connector_state(state, connector);
 	new_crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);
 
-	if (old_state->tv.mode != new_state->tv.mode ||
-	    old_state->tv.margins.left != new_state->tv.margins.left ||
-	    old_state->tv.margins.right != new_state->tv.margins.right ||
-	    old_state->tv.margins.top != new_state->tv.margins.top ||
-	    old_state->tv.margins.bottom != new_state->tv.margins.bottom) {
+	if (old_state && new_state && new_crtc_state) {
+
+	    if (old_state->tv.mode != new_state->tv.mode ||
+		    old_state->tv.margins.left != new_state->tv.margins.left ||
+		    old_state->tv.margins.right != new_state->tv.margins.right ||
+		    old_state->tv.margins.top != new_state->tv.margins.top ||
+		    old_state->tv.margins.bottom != new_state->tv.margins.bottom) {
 		/* Force a modeset. */
 
 		new_crtc_state->connectors_changed = true;
+	    }
 	}
 
 	return 0;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
