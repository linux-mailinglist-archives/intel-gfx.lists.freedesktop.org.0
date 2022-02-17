Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BA84B9AA7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 09:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EC010EA08;
	Thu, 17 Feb 2022 08:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6324710EA0E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 08:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645085442; x=1676621442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FXDvVl8HF75nfa98LAJhgTSnpprpf5sTEbeE0JAN304=;
 b=KuSEng0CZbbhqoSwK/i9JpvHmEjNlueB9Wf7+BsuVzPNXLrnAlFsMpHe
 IGwBFwo4tafrKlRdf5XlWRZuDjo+6LY2JC+9lnhB5GD5A69M9Nmxfp1iT
 9LWk/xawFzQ1kLWfgI2UqXyrjmFE5FEgZ1/jwSmivxod+ypGTPZq9A1Pr
 QrK6l696iFlvQjRq2cqnFjTapsc7kIqYfx5CqOOcj0ZBIldGJ4tGKarFc
 zKTDdeWPbJhY+lpY4DNZtd28rsNfp1LHpIvBwhj56Z6Nx2RRuLpnBnnNx
 pviN/k0njljPT44hTMHq9Oj3TXa2dwuxjqJFUM7NNeqeSj0t0jwgLwnzz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248418365"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="248418365"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:10:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="776994724"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga005.fm.intel.com with ESMTP; 17 Feb 2022 00:10:41 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 16:22:46 +0800
Message-Id: <20220217082246.2631-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220215062321.832-1-ville.syrjala@linux.intel.com>
References: <20220215062321.832-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix cursor coordinates on bigjoiner
 slave
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Tested-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 67633f9f0e4a..de5c8617f585 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -157,6 +157,9 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 	/* Use the unclipped src/dst rectangles, which we program to hw */
 	plane_state->uapi.src = src;
 	plane_state->uapi.dst = dst;
+	if (crtc_state->bigjoiner_slave)
+		drm_rect_translate(&plane_state->uapi.dst,
+				   -crtc_state->pipe_src_w, 0);
 
 	ret = intel_cursor_check_surface(plane_state);
 	if (ret)
-- 
2.17.1

