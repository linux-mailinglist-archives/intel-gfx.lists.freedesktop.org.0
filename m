Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABBF7BF23C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 07:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4160410E188;
	Tue, 10 Oct 2023 05:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B97110E188
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 05:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696916065; x=1728452065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ApoJho782O8eDWn0bW2LVk5cyoPeRlkdgxZoH2fTSEU=;
 b=e1TCogx5B3yBD8nNEm4v2AToNJeoOsB/oQ9o9xxEPBDPOPOK8ch6V9ni
 gDRgVjcVR94z8quOKdT50wrs4s3eam7brTDsoWOrKt5W88jWhONDTmlxQ
 7IjGSAiYj7WV38coJTsntIazhXmIKIuLDIYW5546tGyvVWFyPIuNxPyM0
 tzCk1FMmPsNxwY0gzK41b0+j5uYBSvJpH8yOB2a61nb+FRxTsPgflJOO0
 kFFVBVcrZpXhYR7QbM/URG9Ch5LSHSst0FsMDGRAvv55S21bqiNMvxm2u
 Lz+A/Qs6+Y95fz/cEwWiL1UBWY7UTg5/fvrRZuLVyrsp4ira9vfIEbcz4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="415311377"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="415311377"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 22:34:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823646855"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="823646855"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 09 Oct 2023 22:34:23 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:02:09 +0530
Message-Id: <20231010053208.691260-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231009095946.655337-1-suraj.kandpal@intel.com>
References: <20231009095946.655337-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Fixes: 2745bdda2095 ("drm/i915: Stop clobbering old crtc state during state check")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

