Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 249258FB73D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2738F10E516;
	Tue,  4 Jun 2024 15:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSRTrbNI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25BB10E509
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515027; x=1749051027;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1lwJSozuQesCahQRbxN7Q4h5aUixXv8gpC4IkgJvD0w=;
 b=jSRTrbNIX/QQ3S/AnHzXXentYTYJJLWKUMgFuVMD34tHQcz6//HmhC/1
 haVuTLMXkvh0vQYkU+XnWeF0y+uYGxPxIC1XPYHqMnyd7a0HHsPtJNciR
 ESU8ufmz3/isWBpjtSFsSxoOPO0A0gfsT+ZPo2otK8TMibkYMXPYlYlPs
 0V+oRnfwx2mnurg/KBSSUonG0GxDC16wAEN/9/FRedfbxCr/cK1Qzlhvh
 8rEMUQzuxzCSaqoENxR6B9afHWjw4tSg7I3kBO0XnMzq6fO5c0ngshlsy
 h4lRTC+3IajmOl2KitN7wJ03iwOjer9seDQfDzonBndgO1KeIozD2TuFd A==;
X-CSE-ConnectionGUID: FKmpHkB0TyydnQv/IraF7g==
X-CSE-MsgGUID: kbFOwjU2ShS5pQqmIKaRCw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31605429"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31605429"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:24 -0700
X-CSE-ConnectionGUID: Qt5SlOwwS4+x/RUobC8xiw==
X-CSE-MsgGUID: Ib07YOTtQXidTxYl+UVe+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37145056"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 49/65] drm/i915: pass dev_priv explicitly to _DSPBSURFLIVE
Date: Tue,  4 Jun 2024 18:26:07 +0300
Message-Id: <5f05ab9ecfb07c8261c8b5ddea3472259ee1a788.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBSURFLIVE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 03c7b55e1bd3..62cb456568e5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2316,7 +2316,7 @@
 #define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
 #define _DSPBTILEOFF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
 #define _DSPBOFFSET(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
-#define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
+#define _DSPBSURFLIVE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
 
 /* ICL DSI 0 and 1 */
 #define _PIPEDSI0CONF		0x7b008
-- 
2.39.2

