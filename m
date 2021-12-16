Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0812A478077
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 00:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F2510E26D;
	Thu, 16 Dec 2021 23:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC57D10EE20
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 23:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639696890; x=1671232890;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oT5tx3Uoss/sgyS+aCC9Twa04HrB5T89zwNp6f6aho4=;
 b=XezT7ZYP1/x4Iyf1NY3t7sFcAxRUQBmJEODhFxI9CK80SGZl6LhhoWia
 ROImqnzWf1V9XEw+Ca/S6bphZSxJXtgCQTZtDzX2QQGgaCVcBMKha7fgq
 mxygUMCy1iAnJnIcWpPcYFdhJ58k+f85uGxucikSvBwDhsBmgDNWoSiQG
 IZgjADV68DTlxOMBIAhjh8zJ1dLbh1sT21/C4q5J+6w+bZbO8d5r+we0e
 NMlP45VdpbTSBTPUa6FAp6InS8rG5PdUj1wieqiiM1gLnaqvJV/L9kute
 EQiGr9xK+b+4iamfKZbfXTCm4tOpVJogcdI4laxTtLASFcxJZXVb02wyU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="303004224"
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="303004224"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 15:21:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,212,1635231600"; d="scan'208";a="506536736"
Received: from hchegond-ivm1.jf.intel.com ([10.54.81.90])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 15:21:30 -0800
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Dec 2021 15:21:24 -0800
Message-Id: <20211216232124.1298010-1-harish.chegondi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix possible NULL pointer
 dereferences in i9xx_update_wm()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check return pointer from intel_crtc_for_plane() before dereferencing
it, as it can be NULL.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index bdf97a8c9ef3..c7a4d8d971d7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2373,7 +2373,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	else
 		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_A);
 	crtc = intel_crtc_for_plane(dev_priv, PLANE_A);
-	if (intel_crtc_active(crtc)) {
+	if (crtc && intel_crtc_active(crtc)) {
 		const struct drm_display_mode *pipe_mode =
 			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
@@ -2403,7 +2403,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	else
 		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_B);
 	crtc = intel_crtc_for_plane(dev_priv, PLANE_B);
-	if (intel_crtc_active(crtc)) {
+	if (crtc && intel_crtc_active(crtc)) {
 		const struct drm_display_mode *pipe_mode =
 			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
-- 
2.31.1

