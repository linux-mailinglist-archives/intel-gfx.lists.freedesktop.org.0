Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB16E8CA119
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 19:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CDA10E0A1;
	Mon, 20 May 2024 17:15:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SGey0fu4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63DC510E0A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 17:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716225302; x=1747761302;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=heubBOq7g6E5RgambBs/TtL3umyJDtRAhFQ3uNtRpLY=;
 b=SGey0fu4QANsmr96+U/sqopEcLcYNNFiP1ony+O6u/7krUOl3O/DjlFR
 flzh2igTsYZNXUXZNc7DxdVg7gdTpFRe29IVp8jLjw1RrSlMScmIOv25z
 YLkoqBvxcyvi+Z1/hxO+xiVzYybLhgvq+NeGaaiG1bSjTtnFOwZ5XS+Ak
 XllkkAJ8vCUgDssmf2CE0LKfop1oKxoTRrNMZz8z3WEIc/TFRj8RBKsg3
 tOxUdFehsQmjGidTaB27ojIGOBBoZnVA5Yo+iRvLpznefIQ7lNeIOdg1h
 A4rS7patvvwjj+mZiAcSDhXAh3J0KdlnKoAIsams9zZJ0qF/EMnFyIvI0 w==;
X-CSE-ConnectionGUID: NWnZmyw+QAiUxNRauupg3g==
X-CSE-MsgGUID: KWDvYZyHT4GTILBiHYLdfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12557674"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="12557674"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 10:15:02 -0700
X-CSE-ConnectionGUID: /yDHdj61TEG3R3sB/+Odgg==
X-CSE-MsgGUID: kcLeLTBrTWWHfJ3jcWqqzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32596533"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 May 2024 10:15:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2024 20:14:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/13] drm/i915: Add separate define for SEL_FETCH_CUR_CTL()
Date: Mon, 20 May 2024 20:14:59 +0300
Message-ID: <20240520171459.9661-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-4-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-4-ville.syrjala@linux.intel.com>
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

Split the cursor stuff from the rest of the selective fetch
plane registers so that we can collect all cursor registers
in intel_cursor_regs.h. Also take the opportunity to rename
the registers to match the spec.

v2: Pass the correct register offset fpr pipe B (Jani)
    s/mtl+/tgl+/ as that's where this was introduced
    Drop the bogus SEL_FETCH_CUR_CTL_ENABLE bit, the contents
    actually match the normal CUR_CTL register

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_cursor_regs.h | 5 +++++
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c780ce146131..b44809899502 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -508,7 +508,7 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
+	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), 0);
 }
 
 static void wa_16021440873(struct intel_plane *plane,
@@ -523,7 +523,7 @@ static void wa_16021440873(struct intel_plane *plane,
 	ctl &= ~MCURSOR_MODE_MASK;
 	ctl |= MCURSOR_MODE_64_2B;
 
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), ctl);
+	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
 
 	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, pipe),
 		       PIPESRC_HEIGHT(et_y_position));
@@ -548,7 +548,7 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
 					  val);
 		}
 
-		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+		intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe),
 				  plane_state->ctl);
 	} else {
 		/* Wa_16021440873 */
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index 270c26c2e6df..e58930ff32ea 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -95,4 +95,9 @@
 #define _CUR_BUF_CFG_B		0x7117c
 #define CUR_BUF_CFG(pipe)	_MMIO_PIPE((pipe), _CUR_BUF_CFG_A, _CUR_BUF_CFG_B)
 
+/* tgl+ */
+#define _SEL_FETCH_CUR_CTL_A	0x70880
+#define _SEL_FETCH_CUR_CTL_B	0x71880
+#define SEL_FETCH_CUR_CTL(pipe)	_MMIO_PIPE((pipe), _SEL_FETCH_CUR_CTL_A, _SEL_FETCH_CUR_CTL_B)
+
 #endif /* __INTEL_CURSOR_REGS_H__ */
-- 
2.44.1

