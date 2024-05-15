Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2668C6602
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B0410E5A0;
	Wed, 15 May 2024 11:57:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZSjn9Bg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6967810E5A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774235; x=1747310235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LG6MN7xX6rUcI6N+ahGvYh76dSC5djrhWnMYcNodaas=;
 b=EZSjn9Bgl5uGtcYesYhPfbSOhIsWBdWCAOc1lsznEjs6o7U2ZBbS8wxK
 HAqYLhSfoJxfjuYjBzEv26p48iPpEeYQ5OS4mcedjlh0rvlyTFQ40vvAW
 9RyHFgwBf72C2NXK2slTF9ylv8aDy7u0lcvBGAbL4ogDtvW1XfPJeiiSg
 wkszUCC0tRHXmrUy6bPeXwHbSqKiDrDdXq4gXeBHKF6CgUpXeL+BQWbbd
 7ZIU5/MGm51QViPzV/H2vNGvFxGu859FMqaoJLQgxsC4LRmrsHT6lyuLl
 uMIjJnmHmouJpoIWvsqBbPkCetcqBTrO0qnycKsnlvjPObK9ZimEgPdA/ g==;
X-CSE-ConnectionGUID: K2Iqe/hCQyO0aJ3GCwUuCw==
X-CSE-MsgGUID: kNTDpeTFSE63oMfP/GrDlw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15604785"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="15604785"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:15 -0700
X-CSE-ConnectionGUID: bXbngA0nQMWH+sYI/e6n0A==
X-CSE-MsgGUID: z/i5NLbCSiuQKy8Pp+RXhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="30962309"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 4/8] drm/i915: pass dev_priv explicitly to CURPOS_ERLY_TPT
Date: Wed, 15 May 2024 14:56:44 +0300
Message-Id: <2263b6412e983026990f7f6730b0b1141be4fd0f.1715774156.git.jani.nikula@intel.com>
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
explicitly to the CURPOS_ERLY_TPT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c      | 4 +++-
 drivers/gpu/drm/i915/display/intel_cursor_regs.h | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 17039d37dc91..f8baf25c4a4f 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -543,7 +543,9 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
 		if (crtc_state->enable_psr2_su_region_et) {
 			u32 val = intel_cursor_position(crtc_state, plane_state,
 				true);
-			intel_de_write_fw(dev_priv, CURPOS_ERLY_TPT(pipe), val);
+			intel_de_write_fw(dev_priv,
+					  CURPOS_ERLY_TPT(dev_priv, pipe),
+					  val);
 		}
 
 		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index d0fa251ae8c4..0d1ee13ec066 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -69,7 +69,7 @@
 #define CURCNTR(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
 #define CURBASE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
 #define CURPOS(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
-#define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
+#define CURPOS_ERLY_TPT(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
 #define CURSIZE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
 #define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
 #define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
-- 
2.39.2

