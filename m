Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E70D8B6F44
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7717B10FAF6;
	Tue, 30 Apr 2024 10:11:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LsASLF/n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE2410FAF6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471869; x=1746007869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=60WRL3/mlQm+ps0JjSp+3NXNNA4qYI34PtasRkLnSfQ=;
 b=LsASLF/n/+kKDF7p0UmyW3rGRJIXY0iUgrKo0WgnYvLB8xbLjsjYlnyr
 UYqCT8i8ck5DdUrajw92mS9hNsR9l0foVXQ5PDqbW9fqF99FAh0dRKJHK
 5nqS2G9UXwKvyI0ZTzWIFJwfhgzuciyubrtW6AkJ6sdIG3PyXhHPYSYV3
 0Wxhbzoo8NgBAUqlpw3Vk/bV3XbtrMxAl5nK1hKGi3pk3cWEPzaHXgnqu
 zG+E7kGfTZj1YeXBeIlmS6okHDGpIC/M+YYJpIvWJBC5ifqXYkj+PqbfZ
 kelpkXy9nUYGyBsl3TL2Etg4QQ82hSo6pOA0PfIVW8b/9Li+xQMDvRWND A==;
X-CSE-ConnectionGUID: M6NC3j9HTFGi3NodxknEfg==
X-CSE-MsgGUID: mStz+zHLQmG60KkwUJzm5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10043824"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10043824"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:09 -0700
X-CSE-ConnectionGUID: /+jaw5GeSWCMED2P/bdb4Q==
X-CSE-MsgGUID: q3wOqR6lQsimI7/RgLEL9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26281451"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 11/19] drm/i915: pass dev_priv explicitly to PSR_EVENT
Date: Tue, 30 Apr 2024 13:10:05 +0300
Message-Id: <9bc5819afa46416eb8f12ac050ed4d3bcde34b63.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
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
explicitly to the PSR_EVENT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 4 +++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 156660ab7adf..2dca9957a06b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -415,7 +415,9 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		if (DISPLAY_VER(dev_priv) >= 9) {
 			u32 val;
 
-			val = intel_de_rmw(dev_priv, PSR_EVENT(cpu_transcoder), 0, 0);
+			val = intel_de_rmw(dev_priv,
+					   PSR_EVENT(dev_priv, cpu_transcoder),
+					   0, 0);
 
 			psr_event_print(dev_priv, val, intel_dp->psr.psr2_enabled);
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 785e4f9e7828..817bc372bf35 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -195,7 +195,7 @@
 #define _PSR_EVENT_TRANS_C			0x62848
 #define _PSR_EVENT_TRANS_D			0x63848
 #define _PSR_EVENT_TRANS_EDP			0x6f848
-#define PSR_EVENT(tran)				_MMIO_TRANS2(dev_priv, tran, _PSR_EVENT_TRANS_A)
+#define PSR_EVENT(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _PSR_EVENT_TRANS_A)
 #define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		REG_BIT(17)
 #define  PSR_EVENT_PSR2_DISABLED		REG_BIT(16)
 #define  PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN	REG_BIT(15)
-- 
2.39.2

