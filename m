Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EF64B635D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 07:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D9010E1E2;
	Tue, 15 Feb 2022 06:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF98E10E1E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 06:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644906204; x=1676442204;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nHGAeVpLv5YNGCvpKEykjQhmy7NWJ4T1/YVbqqKvC5k=;
 b=fKCsjNK2g2GvzMTaM124oVxYaMotf0dzRMba1/4expzEcG7abEKsQkAu
 /MgLQcRJhuieS4FZ0wTsGAsjvWG+qp7sO9NAX/nJNz6KKImbofR0sO1eR
 4YgwSeEtH6HXRfbHmdrr+Wzbl9EX5htYYF7OtS0+cvhgsCVlMO2ktFpm2
 BVq2N9S0lPhc0OAdqWty5S6MPiX8jcbT3Nn63zg3Fc3wQ4N9ZlJe7FaWK
 F/oG2L7slmo1wz2T4Uy4nMaGDUC+eyXBO7/wpQ7t6KiVqXwV7SnLshMUk
 bmD/9uEm6OrzgiXATjKITFnV7gCUQVMaXWhfH0c5avTybLWeeRl3mpdSG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="336687696"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="336687696"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 22:23:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="528652093"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 14 Feb 2022 22:23:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 08:23:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 08:23:21 +0200
Message-Id: <20220215062321.832-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
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
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2ade8fdd9bdd..5b600679674f 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -152,6 +152,9 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
 	/* Use the unclipped src/dst rectangles, which we program to hw */
 	plane_state->uapi.src = src;
 	plane_state->uapi.dst = dst;
+	if (crtc_state->bigjoiner_slave)
+		drm_rect_translate(&plane_state->uapi.dst,
+				   -crtc_state->pipe_src_w, 0);
 
 	ret = intel_cursor_check_surface(plane_state);
 	if (ret)
-- 
2.34.1

