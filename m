Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 676A94F6C14
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 23:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9CAB10E081;
	Wed,  6 Apr 2022 21:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3237710E081
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 21:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649279058; x=1680815058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jo6RzejUnO77YPO6ehFBESQZKIEvnFtfzj5NG0VUZW8=;
 b=GCE4atUuv7DSF29JpiWdAY+gWr/5sM92DJWRm4rgWPLb60GTvPwrcRtV
 yuo9xZYMt7LBRSbrGilMGyVomTsrQ9IUVSJozCdJdJIZN2htlfZaqnYyV
 4vjSi1lCsdIxW6QkWkD3lF8Wb3xuWjgFFbKLJxZN0BNbAKfNSQB0dVnic
 hibEiIBdUtJIvUpyYDEzs5JEoRYNe/AgZn9CgxXJ2ZqPIbDSLLSS9tNDl
 /F/+EsVQSx9fiI7NZF2rmVdR0Edo36Q8pdDiwQMR1AoFj06cbe7zjs9c6
 uB288wiFpdBPrZFI+e0V42+GNffudivOnANOiGr/mXRWMbbU1R8avqRXY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="261332522"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="261332522"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 14:04:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="722673145"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 14:04:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Apr 2022 14:05:40 -0700
Message-Id: <20220406210540.493610-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix warnings about PSR lock
 not held
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

Commit 3b6f409547fb ("drm/i915/display/psr: Lock and unlock PSR around
pipe updates") did not took into account async flips with PSR1 and
PSR2 HW tracking, causing PSR lock not be held and causing warnings
when intel_psr2_program_trans_man_trk_ctl() is executed.

So here taking the PSR lock before the earlier return in
intel_pipe_update_start/end().

Cc: Jouni Högander <jouni.hogander@intel.com>
Reported-by: Imre Deak <imre.deak@intel.com>
Fixes: 3b6f409547fb ("drm/i915/display/psr: Lock and unlock PSR around pipe updates")
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a5439182d5ae4..4442aa355f868 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -487,6 +487,8 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
 	DEFINE_WAIT(wait);
 
+	intel_psr_lock(new_crtc_state);
+
 	if (new_crtc_state->do_async_flip)
 		return;
 
@@ -507,8 +509,6 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 						      VBLANK_EVASION_TIME_US);
 	max = vblank_start - 1;
 
-	intel_psr_lock(new_crtc_state);
-
 	if (min <= 0 || max <= 0)
 		goto irq_disable;
 
@@ -634,6 +634,8 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	ktime_t end_vbl_time = ktime_get();
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
+	intel_psr_unlock(new_crtc_state);
+
 	if (new_crtc_state->do_async_flip)
 		return;
 
@@ -685,8 +687,6 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	local_irq_enable();
 
-	intel_psr_unlock(new_crtc_state);
-
 	if (intel_vgpu_active(dev_priv))
 		return;
 
-- 
2.35.1

