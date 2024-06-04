Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0358FB733
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473E810E507;
	Tue,  4 Jun 2024 15:29:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fi4wcFU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E46710E507
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514997; x=1749050997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xzmRz8YW7VHlwEQwIE3oVc5xITEuIb6lJ6cSoR2uX9o=;
 b=fi4wcFU1fVcnsj8LgpeNQIHTtLWPixJyvE7p0r13qtkOmzuYlhGo26jC
 K/W9iBEltyp/ptiTbXUfcarp7ECATsb/s2pIpXoR5/hhYujrRilIfFvcQ
 rSkkjJ0MD0RyLMbU2rGgpuDpq3rnCs1nlNw4LrFL5uC4xl+tz3Kt83PnZ
 sbweKNZeoULxpBerJyvJ6y57K7AGuJ+4yl4Snd0yg9SBs4KIYF0VpRVcN
 pS/oILkAPEC7YfJSq2UXEuGhxzYe4UKrLjSd6daEJuLgNnFp5jFVxuS2A
 2MvManPl5wHKPU3+MVgbhPFnDKuK9SV5HCMaQdYFWfdmdZMl01zdL6rhm A==;
X-CSE-ConnectionGUID: 0lSylgQNTFOxwxmJS8JCZA==
X-CSE-MsgGUID: TMwg5gH0QomdHnkw88LWBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949754"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949754"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:56 -0700
X-CSE-ConnectionGUID: m8Zo3GePQfy7qPaA/Is+oA==
X-CSE-MsgGUID: WBOfam+vQOaTxdb/9s5gXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41714897"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 43/65] drm/i915: pass dev_priv explicitly to _DSPBSTRIDE
Date: Tue,  4 Jun 2024 18:26:01 +0300
Message-Id: <f9232eb9c62e3daeb88f69374385e59e6395310d.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBSTRIDE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index bcaa7c5b0c40..7fd2d5e07b48 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2310,7 +2310,7 @@
 #define   DISP_ALPHA_TRANS_ENABLE	REG_BIT(15)
 #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
 #define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
-#define _DSPBSTRIDE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
+#define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
 #define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
 #define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
 #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
-- 
2.39.2

