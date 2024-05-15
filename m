Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 161948C6603
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8136E10E7F5;
	Wed, 15 May 2024 11:57:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGDWfeNS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC9E10E790
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774239; x=1747310239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LW+cBBpfl37sB1vAscZl5y/Fv6flmjO7hRVT7ae0ox8=;
 b=jGDWfeNSqrtIJymSd8avldBmSIZ2eybczgf7H1gmru1xc9pc7kmrMeaq
 sMJJQzzGTJjOAxexvSbtp4MJconzHQuI0qkkIZ6Dl3dS12aVIZp9VhIvU
 j+EAr94gL3eRqgf1p6ZEHHQS02HvTeDTsYFRPmlFLzJ2hU9ffIX3AL/OW
 1vaC+ZXbsYWjfiZrK3Cv4uqc+wjAlARi8ExsZEo/qonXYbcmy7EP3PUxk
 qfPP2icxwxNg46/FWgmyZuo1ajh9IYzcUd3lY39bRufFl2PS+18TCqGyO
 qJ6RWhQOls8oN6XjiZhglDobiAcTiv2ZxtCmCHobg4RlbxlKyEUBnlvp+ g==;
X-CSE-ConnectionGUID: 3tW9lJHrT9Cicy8n13NFNw==
X-CSE-MsgGUID: TGXZqBMPTZGK8/P5HdlHMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15604787"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="15604787"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:19 -0700
X-CSE-ConnectionGUID: usoMloYaR3arsAlQraAaIA==
X-CSE-MsgGUID: EFrnL1LrSo2S+5hfqCQ25A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="30962313"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 5/8] drm/i915: pass dev_priv explicitly to CURSIZE
Date: Wed, 15 May 2024 14:56:45 +0300
Message-Id: <521ca44416eb95dcfcf4bfbc32ac7f9371aeaf5d.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
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
explicitly to the CURSIZE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_cursor_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index f8baf25c4a4f..8553f6164760 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -297,7 +297,7 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 	    plane->cursor.cntl != cntl) {
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), 0);
 		intel_de_write_fw(dev_priv, CURBASE(dev_priv, PIPE_A), base);
-		intel_de_write_fw(dev_priv, CURSIZE(PIPE_A), size);
+		intel_de_write_fw(dev_priv, CURSIZE(dev_priv, PIPE_A), size);
 		intel_de_write_fw(dev_priv, CURPOS(dev_priv, PIPE_A), pos);
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), cntl);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index 0d1ee13ec066..7c3a76f5151d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -70,7 +70,7 @@
 #define CURBASE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
 #define CURPOS(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
 #define CURPOS_ERLY_TPT(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
-#define CURSIZE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
+#define CURSIZE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
 #define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
 #define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
 #define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
-- 
2.39.2

