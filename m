Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A578FB730
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46AB810E500;
	Tue,  4 Jun 2024 15:29:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WPJU5gBV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8999D10E4FF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514987; x=1749050987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HDYPJX1NewAGRf/HbIZ3bmM8fV1S3RkTsLmcR5SyuDU=;
 b=WPJU5gBVTBPijFWeIaic6sey3dKpZE9FaukWnRPd1VDi8XbCYqQEL+0u
 KCAgmF454EsgwmGg2oGH66rrAJu4bSufu26XWZuDTLNKXunWE2JYJ1/4d
 YIrkC8ziIGRGcAUHztBjQLNxwDbWHNKOPDjOi3sRGNJufZBDp93BYqKbK
 rid+38swzKyGlWKX8kBOYu/nGqPCxwZxY8rFNC0fd+sqN6TlYFACnF0M2
 7Kt7Fp76etxzZLP5nEBLUU7H/Hc/UhgNQzJE4AvGs9yQuNGjJ6LRCqEhz
 GX6ME9EVg0r1qEAdvTLHk70G6Get9i7GCUeGFkn7M7OwPUHN3c+vBxVqv Q==;
X-CSE-ConnectionGUID: xIjoeomhRfSgT8BwXJlm+A==
X-CSE-MsgGUID: B8Lqr31YSQ2/cogF2Fc4Fw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949724"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949724"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:47 -0700
X-CSE-ConnectionGUID: 1FvOrlAaTcuuSfmWvsvf2A==
X-CSE-MsgGUID: BkfjmKSbSP6cYV6zQwZAXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41714861"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 41/65] drm/i915: pass dev_priv explicitly to _DSPBCNTR
Date: Tue,  4 Jun 2024 18:25:59 +0300
Message-Id: <3ed06769b934187d7a60d11f479d4adfa68fa469.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBCNTR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fb1dc6f5e903..8390294aea5b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2306,7 +2306,7 @@
 
 
 /* Display B control */
-#define _DSPBCNTR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)
+#define _DSPBCNTR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)
 #define   DISP_ALPHA_TRANS_ENABLE	REG_BIT(15)
 #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
 #define _DSPBADDR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
-- 
2.39.2

