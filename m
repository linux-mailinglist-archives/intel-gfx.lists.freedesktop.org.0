Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E136EA5F2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 10:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9169210E2AC;
	Fri, 21 Apr 2023 08:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA5A10E2AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 08:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682066124; x=1713602124;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zSRylyCOfzWTacmb6NyC7YxDchEBJMx04Qg5SS5mu2g=;
 b=gz0/lH0h7AWauRxI+Q5Uxwyg3GE/nKcs5UlwW8WFITLTi/QZI8uSxTWU
 ppvItLNAm8oA4EitSwUHC1IoY+H7js8tG13NxplkCnlxbmJDVyZ6ZlHne
 IMiad/dBy9CkRgH3KnEupbHNON+cZh6PPhUNRztwQDvBjLBfanw1I3EJQ
 AnRLyCpOydTNH+JpeL9vzUBQ7foGdG0skQ9ZSQUuxvWYUrHROWsIWQkha
 aaYBkovr3UsWueDZncUJGYclD/ZUzVyu4H/8n9nKFsOb6pTV2Ovu5Lyie
 Q+HZCpMsTWflpUDdb38K/gRbI+tfDh2qrHfBD8i2U5H90mNDbdPvNJ1l5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="345963240"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="345963240"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 01:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="642434548"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="642434548"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga003.jf.intel.com with ESMTP; 21 Apr 2023 01:35:21 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 11:35:20 +0300
Message-Id: <20230421083520.14486-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Copy c10 phy pll sw state from
 master to slave for bigjoiner
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

We try to verify pll registers in sw state for slave crtc with the hw state.
However in case of bigjoiner we don't calculate those at all, so this verification
will then always fail.
So we should either skip the verification for Bigjoiner slave crtc or copy sw state
from master crtc.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf391a6cd8d6..83c98791fea3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4556,6 +4556,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 	drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
 		      &master_crtc_state->hw.adjusted_mode);
 	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
+	slave_crtc_state->cx0pll_state = master_crtc_state->cx0pll_state;
 
 	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
 
-- 
2.37.3

