Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBA64C149C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED5D010F6A8;
	Wed, 23 Feb 2022 13:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541BD10F6B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645624061; x=1677160061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DR6brSlB893Xqp27CVa0vKgHrE4QZqymRB2qBuL+POc=;
 b=hbaePG20fofBABw2wq5XMl/IeHkGuDebArNX4HEOuei5VQJyLqa+wBKV
 l3dkNpQ9O1l/5eb2Ko/PrN60pb4ePCqKF2W8t9bB1/dpY2kiSm749hvuF
 XnNY/f+7NjsZMbhYAP0w4Y2zkAt2KwRyDT0hqHwivORtMgGpQS+OSpNul
 io7fEecOo8aGNuKy5yLPrT4g90B2flbIy8serx7ObR2Hfxe7hvALDR6Re
 b9ThfiMyZDmP2Vz0xlYI/TBM+7+R9khA+DPAJkQiN0/7iK04UK5MTya2X
 fnbxv5dhUBrteOKL5qsNOKHzeapI+LpP4j9nNWxfX8JRr/ussv6GPw7yX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="315191664"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="315191664"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:47:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="591707509"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga008.fm.intel.com with ESMTP; 23 Feb 2022 05:47:39 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 22:00:10 +0800
Message-Id: <20220223140010.16030-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220215062321.832-1-ville.syrjala@linux.intel.com>
References: <20220215062321.832-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915: Fix cursor coordinates on bigjoiner slave
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Adjust the cursor dst coordinates appripriately when it's on
the bigjoiner slave pipe. intel_atomic_plane_check_clipping()
already did this but with the cursor we discard those results
(apart from uapi.visible and error checks) since the hardware
will be doing the clipping for us.

v2: fix compile error

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Tested-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2ade8fdd9bdd..3e80763aa828 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -152,6 +152,9 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 	/* Use the unclipped src/dst rectangles, which we program to hw */
 	plane_state->uapi.src = src;
 	plane_state->uapi.dst = dst;
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
+		drm_rect_translate(&plane_state->uapi.dst,
+				   -crtc_state->pipe_src_w, 0);
 
 	ret = intel_cursor_check_surface(plane_state);
 	if (ret)
-- 
2.31.1

