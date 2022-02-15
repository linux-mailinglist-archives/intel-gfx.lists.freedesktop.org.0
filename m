Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D7F4B7456
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2515710E509;
	Tue, 15 Feb 2022 18:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C50A10E509
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949934; x=1676485934;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uhG7qCG5Tw8TwdRDyu2hSv2uSiCzF5HrOQNCWm31EgI=;
 b=IsWc1l3AsXzLmub7jmAzF0OAHoyIM3Rptt64g69d3tvBcBjxnQ8jRI6e
 zOLu1WY9ylNN2fSZoZv14fXKvwe9UHOPL+jq23//ngAU8vSiq28qTs2ST
 tTy5FpUy7w3cg5k23oH/A4XVmDOt0lbvTykP5E0MunpiUdAGJqJNUZyva
 rTpvGOWJSSr6ulzh60J9ADovU+xX8t8C3MYkuytzK79/QMrBo5kbj7e86
 v6ck6FwSGe67jftm0PZpTGfIalWBF8w55s7wYMAnUPoO4qxPQjxArrQhi
 rJweVeMjFZksWrYgw2tfbRYXsOJ9pXTSUNAoG7Ku+s4HnSjqGZVJgYV3F g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="275001545"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="275001545"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="632939110"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 15 Feb 2022 10:32:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:31:57 +0200
Message-Id: <20220215183208.6143-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915: Fix cursor coordinates on
 bigjoiner slave
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

v2: Rebase due to bigjoiner bitmask usage

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
2.34.1

