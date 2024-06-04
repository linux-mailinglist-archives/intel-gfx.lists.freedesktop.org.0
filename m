Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D59978FB732
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE90A10E4FF;
	Tue,  4 Jun 2024 15:29:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZtQJXse";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E7A10E507
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514992; x=1749050992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c9M7qHtFCU6nBom97qRW2H7GS/U0g+SUIY/lGgIV+0I=;
 b=iZtQJXsebeWSgTj7vA/IZ8/78vuhDUT5E/t4m+OWlQlQ+Wh/lbYVcjqg
 S7OLjbSmxzIxj6ZkYnCEbdyKj4f02zHracxx/QxuAcIfEQzFW/geptCQW
 +SI5PP2fFrVUlc/QiznYGMb15+KkstdRyx5PWWhiuB6juMkokh8m7URUL
 pqvllT6uclhimkeMYq3aBT39XV6MlvAVeJNuX233XSbxAri7G1RFrhmAW
 jw9Ty8oLr+Q8LliZcGuxm73Seg4APlxx61/GmZD3PSOMPNk1UEKe/R0aT
 wjWoXc0rEKB5Rp7MW6zBK3j9DkyBNq7aBLM74Vzv6EeENW0h5zzv74Gh7 A==;
X-CSE-ConnectionGUID: 20aQWOfDRCKF+RqCcx4UAQ==
X-CSE-MsgGUID: jM7jWSyfTYKMFrdRghskQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949744"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949744"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:52 -0700
X-CSE-ConnectionGUID: vLDB8T5XTQ2vldDYaMDETw==
X-CSE-MsgGUID: RpYiDXHFRqK2Sz8GKXQNpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41714879"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 42/65] drm/i915: pass dev_priv explicitly to _DSPBADDR
Date: Tue,  4 Jun 2024 18:26:00 +0300
Message-Id: <d480b52b454cb3bc49f4e20b8bf973f252454e3a.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBADDR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8390294aea5b..bcaa7c5b0c40 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2309,7 +2309,7 @@
 #define _DSPBCNTR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)
 #define   DISP_ALPHA_TRANS_ENABLE	REG_BIT(15)
 #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
-#define _DSPBADDR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
+#define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
 #define _DSPBSTRIDE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
 #define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
 #define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
-- 
2.39.2

