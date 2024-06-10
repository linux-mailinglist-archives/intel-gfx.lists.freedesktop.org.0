Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5542C901972
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 04:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB8210E309;
	Mon, 10 Jun 2024 02:58:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqUx68c0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0875010E308
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 02:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717988326; x=1749524326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w1ZBcwKkc77VGaVIs0lWtKCqKoTaNuashXALoiixRjk=;
 b=PqUx68c0WQ+rRuYrjV0tuGae0WBJSxDDbfvCOTIN98jsAqqqWLEE+bHD
 eMwL7VXK43PWx3ox5Y45VSMIX1TDN83OEIu+FRFfW/oW3yf+aZgNXR925
 2m00uO+DipRDZZWuOFmRTmD2R8MvoHaNsmIlcQPwE7BnvFkVBKLzqp8B2
 gXM+gEEh0iyj4C65Vf8c2GXw5s8F0FHmWZxn3cJHwkIhxRmbiRvsvmEWi
 uChvMnYn+01qSam050+hX5EKo884IRBsGfYQ17CeAeMxnoOjVFua41Gpi
 trhbN4Zn1QNds7pyK1cYHLWocC5MuJN7ogCbIEmVPwvRGB6/1SAjBGfDE A==;
X-CSE-ConnectionGUID: KSGRO4rUQaOsL7qHQY4eyw==
X-CSE-MsgGUID: oFH7AC1eSBq/WmW+gmfnVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14812992"
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="14812992"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2024 19:58:45 -0700
X-CSE-ConnectionGUID: SBV/vtEJT966HmKae8PjTA==
X-CSE-MsgGUID: VMuylFLXS0OZzQIMkj7y/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,226,1712646000"; d="scan'208";a="38842894"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 09 Jun 2024 19:58:44 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v15 4/9] drm/i915: Update trans_vrr_ctl flag when cmrr is
 computed
Date: Mon, 10 Jun 2024 08:18:20 +0530
Message-Id: <20240610024825.823096-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610024825.823096-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add/update trans_vrr_ctl flag when crtc_state->cmrr.enable
is set, With this commit setting the stage for subsequent
CMRR enablement.

--v2:
- Check pipe active state in cmrr enabling. [Jani]
- Remove usage of bitwise OR on booleans. [Jani]
- Revert unrelated changes. [Jani]
- Update intel_vrr_enable, vrr and cmrr enable conditions. [Jani]
- Simplify whole if-ladder in intel_vrr_enable. [Jani]
- Revert patch restructuring mistakes in intel_vrr_get_config. [Jani]

--v3:
- Check pipe active state in cmrr disabling.[Jani]
- Correct messed up condition in intel_vrr_enable. [Jani]

--v4:
- Removing RFC tag.

--v5:
- CMRR handling in co-existatnce of LRR and DRRS.

--v7:
- Rebase on top of AS SDP merge.

--v8:
- Remove cmrr_enabling/disabling and update commit message. (Ankit)

--v9:
- Revert removed line(Ankit).

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c      | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  2 ++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index d2f854d9d18b..19b364074de0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -282,8 +282,14 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 
-	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
-		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (crtc_state->cmrr.enable) {
+		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+			       trans_vrr_ctl(crtc_state));
+	} else {
+		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
index 20267ec12f5a..6ed0e0dc97e7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
@@ -122,4 +122,6 @@
 #define _TRANS_CMRR_N_HI_A			0x604FC
 #define TRANS_CMRR_N_HI(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
 
+#define VRR_CTL_CMRR_ENABLE			REG_BIT(27)
+
 #endif /* __INTEL_VRR_REGS__ */
-- 
2.25.1

