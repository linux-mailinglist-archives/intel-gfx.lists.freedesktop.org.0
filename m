Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 703F972EE4D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 23:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E165310E3E6;
	Tue, 13 Jun 2023 21:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A3B010E3E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686693246; x=1718229246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ok7Kbwm3T/u8J2faXX4MPX88newM+gbAeDMpD6uElBM=;
 b=DswQL/4qSADwH4oz8f1GQicqdPkpojBrFZVcmM5pcjVax59HDEjNFud+
 Lq7ZAjKEwtYGvvSH1fJ5hQfRToi1i/8mmOqTjE6hFBfQht/plWMcd8T/x
 6gVUQ2prEApG87CkXs3kZssGjiRqn590Z8ryTaYMy+IlSHD7zcEk0uKty
 fT/4PDqQUSaaG23brqpt2HcsQ3XKRddfdMgkH3/SWSHtwATacw1WgnCJv
 cf53FbQbzNuCnN6KBgXNkO3v9DmpbDwB6pgMe0Em8XWYShzQMqrf+FCoC
 O1nHYw/+emWDEkdPungRIf9fqo3zYDbBzvz8J87L6kdU1GLXXZwWJuC73 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338813918"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338813918"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741604234"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="741604234"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:54:04 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jun 2023 14:52:44 -0700
Message-Id: <20230613215245.1551145-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
References: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Make
 intel_crtc_get_vblank_counter use no trace hw reads
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

intel_crtc_get_vblank_counter is used in many places in the display
tracing infrastructure. For a clean execution of the tracing assignment,
ensure that any necessary HW reads would not further trigger another trace,
to prevent nesting of trace events.

Suggested-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f5659ebd08eb..55f3389fa220 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -103,7 +103,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	 * we get a low value that's stable across two reads of the high
 	 * register.
 	 */
-	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
+	frame = intel_de_read64_2x32_notrace(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
 
 	pixel = frame & PIPE_PIXEL_MASK;
 	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
@@ -125,7 +125,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 	if (!vblank->max_vblank_count)
 		return 0;
 
-	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
+	return intel_de_read_notrace(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
 }
 
 static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
@@ -324,7 +324,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 		 * We can split this into vertical and horizontal
 		 * scanout position.
 		 */
-		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
+		position = (intel_de_read_fw_notrace(dev_priv, PIPEFRAMEPIXEL(pipe)) &
+			    PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
 
 		/* convert to pixel counts */
 		vbl_start *= htotal;
-- 
2.34.1

