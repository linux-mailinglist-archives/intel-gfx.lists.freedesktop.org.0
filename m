Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EECC64568E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A048110E1A1;
	Wed,  7 Dec 2022 09:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FD310E18E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405702; x=1701941702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S+4b8wyVgAbrPTX0vkWJr/jhyWLTUycIUMeWERJCoV8=;
 b=hc4YXWCHjmMD5inxia4/alPok8fy09y9k9ygps5yK7780jWsHIqQvTjp
 5uw6mMDUwWB88C6/f1WlOvOKhhclVshHncZ8+6oMDflQ6EJ08QmWw8G6p
 Dzp+ecTX0WNmioJmktQ0lQ655q56lz4bzhpK4Ca2ujTJgYDPdur1mBb40
 P1jxDwkMuJ7f2QnZyYnYimgDLSz07l6pU8hHrL0lPxh6oduE/iExZei6H
 crvyZIX6E2BOUxsYOSp6TjwbkThPKBm9HqMF7G00Riffzr+8koxtuw419
 1UdqIsDQD+ng64eJNbPiDvN7vA6+RiOfiHUtUcCqoaYgPLLkJrrlh3Dk0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="300268300"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="300268300"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="891732801"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="891732801"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 11:34:43 +0200
Message-Id: <75ae3f2945912f908df2444d4f0ab97a23b89897.1670405587.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670405587.git.jani.nikula@intel.com>
References: <cover.1670405587.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915/backlight: drop
 DISPLAY_MMIO_BASE() use from backlight registers
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
Cc: Jani Nikula <jani.nikula@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

None of the remaining backlight registers that use DISPLAY_MMIO_BASE()
are used on VLV/CHV, which are the only platforms that have non-zero
base. Just drop the DISPLAY_MMIO_BASE() use, reducing the implicit
dev_priv references.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight_regs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
index 02bd1f8201bf..d0cdfd631d75 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
@@ -21,7 +21,7 @@
 #define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
 
 /* Backlight control */
-#define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
+#define BLC_PWM_CTL2	_MMIO(0x61250) /* 965+ only */
 #define   BLM_PWM_ENABLE		(1 << 31)
 #define   BLM_COMBINATION_MODE		(1 << 30) /* gen4 only */
 #define   BLM_PIPE_SELECT		(1 << 29)
@@ -44,7 +44,7 @@
 #define   BLM_PHASE_IN_COUNT_MASK	(0xff << 8)
 #define   BLM_PHASE_IN_INCR_SHIFT	(0)
 #define   BLM_PHASE_IN_INCR_MASK	(0xff << 0)
-#define BLC_PWM_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
+#define BLC_PWM_CTL	_MMIO(0x61254)
 /*
  * This is the most significant 15 bits of the number of backlight cycles in a
  * complete cycle of the modulated backlight control.
@@ -66,7 +66,7 @@
 #define   BACKLIGHT_DUTY_CYCLE_MASK_PNV		(0xfffe)
 #define   BLM_POLARITY_PNV			(1 << 0) /* pnv only */
 
-#define BLC_HIST_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
+#define BLC_HIST_CTL	_MMIO(0x61260)
 #define  BLM_HISTOGRAM_ENABLE			(1 << 31)
 
 /* New registers for PCH-split platforms. Safe where new bits show up, the
-- 
2.34.1

