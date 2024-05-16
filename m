Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23A28C7803
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A7910ED2C;
	Thu, 16 May 2024 13:56:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R0P/npwJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B75B810ED2C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867793; x=1747403793;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zHNvqwyc3sS41YA7FNRuom8Knsa/IfJpXCq7fLbJF9E=;
 b=R0P/npwJvZRaBiyCwiOjQ6lDSnSaQNN5s3zYnHjazPAA5zLyrpVlfNf1
 hGN2LFs9z2lPrQYYj/z9MBYVLjkQE9rWN5t2LX6AHuNe3ILskZpOUVIjm
 Lv9js0oHNKdOKH4ZG9AolugW/uzb8nXl5Od4dEg5SQkNS8u1p2plQx4kb
 NlHosIL3aehScGw/BHuTtOiyLtRixtAbz6yGtnuzsCjSkYfqnBSD+J1dX
 TtyDEcvabeG8eogN0dFB5EMJGK0T31z/rWMMuMdASwTWHCSa4sixSHjds
 Qxut8hgyW6aUiqkMC6lB+VdSbs7TTybpMJXJV+xTJOVX32qGBCKj6w41E A==;
X-CSE-ConnectionGUID: I/psP1f4RsSMhvvI7tmDZQ==
X-CSE-MsgGUID: FDofvAZiTd6rqdjrGwTsrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357177"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357177"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:33 -0700
X-CSE-ConnectionGUID: fv/eA6IpS+asVYrsPzq8ww==
X-CSE-MsgGUID: hnRHZxRkS1O3E6w0EHccew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435082"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/13] drm/i915: Add separate define for SEL_FETCH_CUR_CTL()
Date: Thu, 16 May 2024 16:56:12 +0300
Message-ID: <20240516135622.3498-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
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
index 270c26c2e6df..ab02d497fba6 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -95,4 +95,9 @@
 #define _CUR_BUF_CFG_B		0x7117c
 #define CUR_BUF_CFG(pipe)	_MMIO_PIPE((pipe), _CUR_BUF_CFG_A, _CUR_BUF_CFG_B)
 
+#define _SEL_FETCH_CUR_CTL_A	0x70880 /* mtl+ */
+#define _SEL_FETCH_CUR_CTL_B	0x71880
+#define SEL_FETCH_CUR_CTL(pipe)	_MMIO_PIPE((pipe), _SEL_FETCH_CUR_CTL_A, _SEL_FETCH_CUR_CTL_A)
+#define   SEL_FETCH_CUR_CTL_ENABLE	REG_BIT(31)
+
 #endif /* __INTEL_CURSOR_REGS_H__ */
-- 
2.44.1

