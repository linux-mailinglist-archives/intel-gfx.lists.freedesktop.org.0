Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D529AF50E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6B110E99C;
	Thu, 24 Oct 2024 22:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ro9DFGyH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE42C10E3C9;
 Thu, 24 Oct 2024 22:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729807679; x=1761343679;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OlbSmgYFCp6kPY5rHwOvB8io/h5G8sKMV9OU9yIhRMA=;
 b=Ro9DFGyHd/33qu4wVCKmBYR8JlgGSj/mxc5GG9JiZ/GqWVpIVbz4Np8a
 Eb7jelNJ7cLEgPhYW1VCVaXXa2JNfvqhJoq/AFl1hp56/3seB9YZ2gcFu
 EWRiCPmzepZ6whDKVsxPSagp1LO7bweAQRhdnRRMNn1D7CKxMwf4i3fdS
 BnQWXl9hkHEGKEYUdMkorSJfQsLBEjMY/73FPOZIBG/rX/CfGuMzSfwxM
 mts4eGl7cZcmff0Aj2VkjOpH/BQaY9VxHLgw6nwjgxguu/tDWQ3XIxXIZ
 htoN7FnEwdihcdv1GEMGNZxnoybIlIfKRNwDXh8GEJUJsKLJ5vrsiYocy A==;
X-CSE-ConnectionGUID: Ce3OE6SZTW+RCkgXDs5hSQ==
X-CSE-MsgGUID: /kvTQwW9T2GdgLlQtm4qmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29367639"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="29367639"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
X-CSE-ConnectionGUID: /NfnxKWcSUiSO5p27UZR5Q==
X-CSE-MsgGUID: hzU0TD+CRxapZGzl0GJwxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="84687966"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 07/11] drm/i915/xe3lpd: Move async flip bit to PLANE_SURF
 register
Date: Thu, 24 Oct 2024 15:07:48 -0700
Message-Id: <20241024220752.714457-8-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024220752.714457-1-clinton.a.taylor@intel.com>
References: <20241024220752.714457-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
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

From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

The async flip moved from PLANE_CTL to PLANE_SURF for Xe3_LPD.

Bspec: 69853,69878
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c  | 13 +++++++++----
 .../gpu/drm/i915/display/skl_universal_plane_regs.h |  1 +
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a0a7ed01415a..60ca4f8c4a3c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1567,17 +1567,22 @@ skl_plane_async_flip(struct intel_dsb *dsb,
 	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
-	u32 plane_ctl = plane_state->ctl;
+	u32 plane_ctl = plane_state->ctl, plane_surf;
 
 	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
+	plane_surf = skl_plane_surf(plane_state, 0);
 
-	if (async_flip)
-		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+	if (async_flip) {
+		if (DISPLAY_VER(display) >= 30)
+			plane_surf |= PLANE_SURF_ASYNC_UPDATE;
+		else
+			plane_ctl |= PLANE_CTL_ASYNC_FLIP;
+	}
 
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
 			   plane_ctl);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
-			   skl_plane_surf(plane_state, 0));
+			   plane_surf);
 }
 
 static bool intel_format_is_p01x(u32 format)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 4ddcd7d46bbd..ff31a00d511e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -159,6 +159,7 @@
 							_PLANE_SURF_2_A, _PLANE_SURF_2_B)
 #define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
 #define   PLANE_SURF_DECRYPT			REG_BIT(2)
+#define   PLANE_SURF_ASYNC_UPDATE		REG_BIT(0)
 
 #define _PLANE_KEYMAX_1_A			0x701a0
 #define _PLANE_KEYMAX_2_A			0x702a0
-- 
2.25.1

