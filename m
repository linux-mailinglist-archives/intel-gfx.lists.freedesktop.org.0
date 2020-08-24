Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D349424FBB6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 12:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368516E1CE;
	Mon, 24 Aug 2020 10:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973026E1CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 10:41:54 +0000 (UTC)
IronPort-SDR: GoODEv5m/gZX+ZboIxz9q4ZnXRmZ4rB+M9Ycwo53eCbVr6NRngnmeZ911ZmscKg028eup1FohA
 r4LZmDI480dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="153285900"
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="153285900"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 03:41:54 -0700
IronPort-SDR: eh4Fq+IWBhj6dVGp+2S7hBi5/kMac3g9N+Af03qFZ2tI55XwUvPiWR3LWQhdKfe8V4dfh9L807
 VBWXmfvoevWg==
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="473869513"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Aug 2020 03:41:52 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Mon, 24 Aug 2020 09:15:52 +0530
Message-Id: <20200824034556.26626-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] Fixing Possible Null Pointer Dereference
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

There is a possble Null Pointer dereference in intel_atomic.c and this
patch fixes the same by introducting a check to old_state, new_state
old_conn_state and new_conn_state variables.

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 630f49b7aa01..ab58f061c8a7 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -132,6 +132,9 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 		to_intel_digital_connector_state(old_state);
 	struct drm_crtc_state *crtc_state;
 
+	if (!(new_state && new_conn_state && old_state && old_conn_state))
+		return 0;
+
 	intel_hdcp_atomic_check(conn, old_state, new_state);
 	intel_psr_atomic_check(conn, old_state, new_state);
 
@@ -192,6 +195,8 @@ intel_connector_needs_modeset(struct intel_atomic_state *state,
 
 	old_conn_state = drm_atomic_get_old_connector_state(&state->base, connector);
 	new_conn_state = drm_atomic_get_new_connector_state(&state->base, connector);
+	if (!(old_conn_state && new_conn_state))
+		return 0;
 
 	return old_conn_state->crtc != new_conn_state->crtc ||
 	       (new_conn_state->crtc &&
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
