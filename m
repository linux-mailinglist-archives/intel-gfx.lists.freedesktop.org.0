Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB87915700
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E813610E568;
	Mon, 24 Jun 2024 19:11:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJGYFQX0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84C710E55A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256263; x=1750792263;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lRIczeG+eZlcCjWqMkiHeZpeMNw13K+qD/9uFRiFsjc=;
 b=AJGYFQX09IFDcSoYlCOwB+Ht4rwiUwvWu8uU7X1esimMv+n4+hV6Th1l
 GJ69MaFGjt74awT4WrZi2UN0Cu1gLst4EZHD+U5rNDSm7+H+1HGGyJDOh
 fss+4sDpd640fyeVsXl931WS9lxyZBDAC8QYLKPaKRxgV0w/hXgnIWRTj
 q6wyxOmISnH5bRWfq/YOcpQmZlB6+L2oQ/A/4YC4mU9w3GwPsH/jaCv3p
 uDLy5eyuJRiE8O5xWhTZwrKWewObMTKCRbTV1tlJ6TtqKXUWot7ZUnr1T
 W+Qz35QftNQXo0JYneTzBB/A43msqdVENMxMFdvJKK8PwnCdaB94WYh/J Q==;
X-CSE-ConnectionGUID: 8U5fK/ZnQwKBQgzMbL98rA==
X-CSE-MsgGUID: 2rjKMc0bSwKDdXwB9ZijCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374212"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374212"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:11:03 -0700
X-CSE-ConnectionGUID: /AcrrhfiTICkGycq+ea/WA==
X-CSE-MsgGUID: bhwfXNUeRwevSrgojgltvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371983"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:11:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:11:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Date: Mon, 24 Jun 2024 22:10:28 +0300
Message-ID: <20240624191032.27333-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

In order to handle the DEwake tricks without involving
the CPU we need a mechanism by which one DSB can start
another one. Add a basic function to do so. We'll extend
it later with additional code to actually deal with
DEwake.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 42 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  3 ++
 2 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 092cf082ac39..4c0519c41f16 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -502,6 +502,48 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	return errors;
 }
 
+static void _intel_dsb_chain(struct intel_atomic_state *state,
+			     struct intel_dsb *dsb,
+			     struct intel_dsb *chained_dsb,
+			     u32 ctrl)
+{
+	struct intel_display *display = to_intel_display(state->base.dev);
+	struct intel_crtc *crtc = dsb->crtc;
+	enum pipe pipe = crtc->pipe;
+	u32 tail;
+
+	if (drm_WARN_ON(display->drm, dsb->id == chained_dsb->id))
+		return;
+
+	tail = chained_dsb->free_pos * 4;
+	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
+		return;
+
+	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
+			    ctrl | DSB_ENABLE);
+
+	intel_dsb_reg_write(dsb, DSB_CHICKEN(pipe, chained_dsb->id),
+			    dsb_chicken(state, crtc));
+
+	intel_dsb_reg_write(dsb, DSB_INTERRUPT(pipe, chained_dsb->id),
+			    dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
+			    dsb_error_int_en(display));
+
+	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
+			    intel_dsb_buffer_ggtt_offset(&chained_dsb->dsb_buf));
+
+	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
+			    intel_dsb_buffer_ggtt_offset(&chained_dsb->dsb_buf) + tail);
+}
+
+void intel_dsb_chain(struct intel_atomic_state *state,
+		     struct intel_dsb *dsb,
+		     struct intel_dsb *chained_dsb)
+{
+	_intel_dsb_chain(state, dsb, chained_dsb,
+			 0);
+}
+
 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			      int hw_dewake_scanline)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index d0737cefb393..e59fd7da0fc0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -45,6 +45,9 @@ void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
 				 struct intel_dsb *dsb,
 				 int lower, int upper);
+void intel_dsb_chain(struct intel_atomic_state *state,
+		     struct intel_dsb *dsb,
+		     struct intel_dsb *chained_dsb);
 
 void intel_dsb_commit(struct intel_dsb *dsb,
 		      bool wait_for_vblank);
-- 
2.44.2

