Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EA68CD300
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C85F10E564;
	Thu, 23 May 2024 13:00:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="julM+vAd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E0110E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469209; x=1748005209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OGzddQIWnImwSLNYWJxeON9JE/TmALvFQHNV1sUb8Go=;
 b=julM+vAdZwNnpCyDvGTLISI2H9MYg57QBe5Vr/GbXheenDAwVMErKsn8
 FVYQSgWUJwMLLEwRbiZgyXmeTnZWqeeckr+ylPrz8rp+/PGWALoUMc8CS
 jMli1NbiGdiFeiqP1bpDIwZeFCfmE+0DnsV66Wj2rSdItyPKCOcPLHcuf
 903eCehSCB9gzVpm5JRdr05htjs+oWqfrGO2RDi0dRqgVc+JIBG18VH5r
 xugdHcp3GJnMtcchxtexV5LPb83sqqc+N/5l584tgKGEuufLu+qFc3Fkz
 RuTwa9x7VnXXiNV5ucb2Qfg4MfEyhomLnu7ekBd5AW8QuNTBFE8cCPpTt Q==;
X-CSE-ConnectionGUID: Z1z+cGHgQR2HxQ/kAwHnhw==
X-CSE-MsgGUID: /Ren5cWHRVGmWqm8YdcI9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164695"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164695"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:05 -0700
X-CSE-ConnectionGUID: 4Ybi/0JuSLK61zU9rgXOLQ==
X-CSE-MsgGUID: 4p+5SyVySwq7x3xYFlBM9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731698"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 04/16] drm/i915: pass dev_priv explicitly to DSPLINOFF
Date: Thu, 23 May 2024 15:59:32 +0300
Message-Id: <922b6b0795787b335bd3d5b0541bd30dc2c19dd5.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the DSPLINOFF register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 4 ++--
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 79280fe2662d..ba76c952a656 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -485,7 +485,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, DSPOFFSET(i9xx_plane),
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
-		intel_de_write_fw(dev_priv, DSPLINOFF(i9xx_plane),
+		intel_de_write_fw(dev_priv, DSPLINOFF(dev_priv, i9xx_plane),
 				  linear_offset);
 		intel_de_write_fw(dev_priv, DSPTILEOFF(i9xx_plane),
 				  DISP_OFFSET_Y(y) | DISP_OFFSET_X(x));
@@ -1041,7 +1041,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 					       DSPTILEOFF(i9xx_plane));
 		else
 			offset = intel_de_read(dev_priv,
-					       DSPLINOFF(i9xx_plane));
+					       DSPLINOFF(dev_priv, i9xx_plane));
 		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
 	} else {
 		offset = 0;
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index a68d7b228187..e222c0333d19 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -47,7 +47,7 @@
 #define DSPADDR(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
 
 #define _DSPALINOFF				0x70184 /* i965+ */
-#define DSPLINOFF(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPALINOFF)
+#define DSPLINOFF(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPALINOFF)
 
 #define _DSPASTRIDE				0x70188
 #define DSPSTRIDE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
-- 
2.39.2

