Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 252068FB73F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7D510E51F;
	Tue,  4 Jun 2024 15:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nj7U/VtD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D4310E515
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515020; x=1749051020;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dgrx/ZvmVzMK6fLtBHk1g7/JQk2wqizp4IwVcAaGj7o=;
 b=nj7U/VtD4ytuJMAipy8CNMPYS13VR30lomkEGnGVoJPleuwE95H6L205
 afxxgM1KFue7AeOUzprWjo+Hsvb6EtyecjJwObOiQqpqz0KIoCZVK+dS+
 cWpskcK1D+L/TmxgRgbi311LO7uO2ktI+J881PKaJF8TmWNeiYNzGBy7g
 34NFkVEEAFzmVbmLsTsIpZMJcSu+6Xr5tf1IQSbnet894xtnWP6VPdpLJ
 9QVrJPWjBc+uANXDSH7CqBbDwuqfjVDLUSsNXfQxmdLTKfv5hvhD4AzVE
 WbYijJdVY3x1fYlELH1n5K21NM4BUzstN/4MjNIG7niXitezMDNcTL+Kd g==;
X-CSE-ConnectionGUID: p7RS4gd6R9Kz/cIteEj87g==
X-CSE-MsgGUID: XDNMOBypSEiV/RFFYPnnxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31605421"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31605421"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:20 -0700
X-CSE-ConnectionGUID: TVJGH6ERTJyWLStWlNAGiQ==
X-CSE-MsgGUID: k5QUkiYvQvic6fd6aY+xTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37145023"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 48/65] drm/i915: pass dev_priv explicitly to _DSPBOFFSET
Date: Tue,  4 Jun 2024 18:26:06 +0300
Message-Id: <8db09895ce17ce120da163d52bf78587da4d9359.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBOFFSET register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7c4251f62411..03c7b55e1bd3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2315,7 +2315,7 @@
 #define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
 #define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
 #define _DSPBTILEOFF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
-#define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
+#define _DSPBOFFSET(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
 #define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
 
 /* ICL DSI 0 and 1 */
-- 
2.39.2

