Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8288CD30B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA0510E5DC;
	Thu, 23 May 2024 13:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eI/UJNWW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2060110E539
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469237; x=1748005237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/UlkE+mhZRZ1cTXfSzkI2k+CTIQdUXoktOYTa/H4zos=;
 b=eI/UJNWWc3r/OiITj4NV6esNweyis7fof5LqH5m/kW0RD6D7DB6MSUO+
 vWiySItrMxuQalTrjK60qbphXbLT4O7GziBbLosggbcBt3I28y3dX+TOt
 N2HhKZ453m3GAF0uBPJAJ+xKhSeGPS+yEGzNKkHQG1f/Ft4jzzjk0RtnF
 Jt/36PMux6/1pnElIU2j5lwlKPQvKLHf4MHakBJ2seMk7lU+vJg33qaKf
 nlb4zr8wVb0aMv3cga7USirG72f/zWrQspiaSCiHXa3wIy+hbiseFpgzI
 RkHREDNiwAQO20YYU++qK0HYgy2BvhTfZEFHqHoHFx+NHqhVDf3i7szBe A==;
X-CSE-ConnectionGUID: yvrbVBX9R+C6KVnuHLxv7A==
X-CSE-MsgGUID: QXM9nGt8Rle233yeknQkNQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16610035"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16610035"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:37 -0700
X-CSE-ConnectionGUID: h+A0iyk1SaeivB8sjzfxqQ==
X-CSE-MsgGUID: jvnQix6FSwaIZHhsH66Bmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33672370"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 12/16] drm/i915: pass dev_priv explicitly to DSPGAMC
Date: Thu, 23 May 2024 15:59:40 +0300
Message-Id: <542455204f62182a46fa2cb16ad6b0648c72f612.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPGAMC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 22a550c8b41a..f67c5a2bb6b9 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -84,7 +84,7 @@
 #define DSPSURFLIVE(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
 
 #define _DSPAGAMC				0x701E0 /* pre-g4x */
-#define DSPGAMC(plane, i)			_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
+#define DSPGAMC(dev_priv, plane, i)		_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
 
 /* CHV pipe B primary plane */
 #define _PRIMPOS_A		0x60a08
-- 
2.39.2

