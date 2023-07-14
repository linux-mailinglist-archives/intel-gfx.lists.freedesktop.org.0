Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDB3753B12
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 14:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DAB810E87E;
	Fri, 14 Jul 2023 12:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FD410E87E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 12:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689338101; x=1720874101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TzUHuuQ+s1NkemoCcTBuD4YVYaYqwdItyayU2p4RLng=;
 b=HGIUCyjorUjwrKhpMSNRC1qv4tI0YBxNU2rOWk2OfFFSCLZAFTzH1p2A
 UnZs5rupw0G+8006Php0ogaHbtzp2KejfRHgQReHsih5D8+wnNgORbhvk
 TCKEGL0/wuum4w//NUzeeb5LA8iLqDJaV0sDg+d52nEcBHtod20xR+Zmi
 yegV+63tYmxtlpHMDBCNZ1j1UzMdTqzsEMv+XVmhbSaueuCj74u+k28G2
 Swv1Dhg9iUrCGByfbpMPJazMY8z2MKI7blgDMOS6FeyFIa8kNlY2VNbX7
 54ZTGG2MQzBI6eRXOHZAFzZKuEcSnkM+Z/EzaKBA7TR5HdxQUcYQrfmzj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345059558"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="345059558"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 05:34:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="846437381"
X-IronPort-AV: E=Sophos;i="6.01,205,1684825200"; d="scan'208";a="846437381"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 14 Jul 2023 05:34:57 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jul 2023 15:34:56 +0300
Message-Id: <20230714123456.19153-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Start using plane scale factor for
 relative data rate
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

BSpec 68907 clearly instructs us to use plane scale factor when calculating
relative data rate to be used when allocating DDB blocks for each plane.
For some reason we use scale factor for data_rate calculation, which is
used for BW calculations, however we are not using it for DDB calculations.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 7d9578ebae556..60a492e186ab8 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -212,6 +212,7 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	int width, height;
+	unsigned int rel_data_rate;
 
 	if (plane->id == PLANE_CURSOR)
 		return 0;
@@ -241,7 +242,11 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 		height /= 2;
 	}
 
-	return width * height * fb->format->cpp[color_plane];
+	rel_data_rate = width * height * fb->format->cpp[color_plane];
+
+	return intel_adjusted_rate(&plane_state->uapi.src,
+				   &plane_state->uapi.dst,
+				   rel_data_rate);
 }
 
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
-- 
2.37.3

