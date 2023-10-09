Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A05A7BD7D5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 12:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3C210E25D;
	Mon,  9 Oct 2023 10:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E383410E25B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 10:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696845707; x=1728381707;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SS0NcrGE6A0e7HYXbc/TXLg9obsfYcCR0VW8Ix8Bu8Q=;
 b=LG0mHGKO5+3GRaqS6u/CRPKOpgjMAy4PQjtN0qgzIrvF7u/cveFBqNtK
 QBzxr3Rxx7RQq0jkKS4I9Qz26RAnGQMypAxjas+idfTBv9MfDJPFlnJ6f
 /efBntGtPQdBTmFeuR959kSuPSV65RSTQuDo62TqR8MO1gF5aRyb+5dZX
 HT2zfU1TTk2g3KxgbBhTLPzJB0O+4r0cgcQzJpkNYnD8omPRwbWyHTt6b
 IvHkcJ2dOOm6C3SzrF5lqa7OYIZAu4JW4FT4SM5swjR671salxMxuU8ts
 Ol4HPIZsHgNwyOJSjg7k7xXf73Dv3QvI8ixYd396WKuPCU+5jauwoAZdp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="374436190"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="374436190"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:01:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="823281801"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823281801"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 09 Oct 2023 03:01:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 15:29:46 +0530
Message-Id: <20231009095946.655337-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
 verify_crtc_state
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

Free hw_crtc_state in verify_crtc_state after we are done using
this or else it's just a resource leak.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 303eb68fec11..5e1c2c780412 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -214,7 +214,7 @@ verify_crtc_state(struct intel_atomic_state *state,
 	}
 
 	if (!sw_crtc_state->hw.active)
-		return;
+		goto destroy_state;
 
 	intel_pipe_config_sanity_check(hw_crtc_state);
 
@@ -224,6 +224,9 @@ verify_crtc_state(struct intel_atomic_state *state,
 		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
 		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
 	}
+
+destroy_state:
+	intel_crtc_destroy_state(&crtc->base, &hw_crtc_state->uapi);
 }
 
 void intel_modeset_verify_crtc(struct intel_atomic_state *state,
-- 
2.25.1

