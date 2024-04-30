Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 726468B6F46
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0353110FB3F;
	Tue, 30 Apr 2024 10:11:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="biY5oYg3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7704210FB36
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471880; x=1746007880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HYOhC+F1LFQDVlIttHLlhq5vb/lDbYjoZ2LcP1aBxdg=;
 b=biY5oYg3AZqTRsRJUOSJ3iOGHRwAXGi4rO8P0FqDU3r2TzHm0xPOvaa3
 L0se3y2WdITipv2oM9dBOv8s6wTtLjnfLFE7kIguj1JKwZIQvA3svSW6s
 nb/KOIjmJcj17ohj8SMeWgxCMnZvg5PDX78BYinun7oFjmFzAiGt3b3Kf
 158InkDZfLTuobpoe2rdUy9R3TGuJc+tIaRZSojTWojEWHWZaGPpBHL6M
 rCZHifVPYA4lAMB405DzEJb8XymAyJyiQrGmnSiIWA6RfusFgFTm0TStu
 YJE0iTtxENHCz2aV8MoMmQFDII3j6umgdXRDe6hx6G6HxZ07mG/BemmDB Q==;
X-CSE-ConnectionGUID: /E5giZZqS2yutsxRYseO6A==
X-CSE-MsgGUID: j8YEBl4jTOql1vrXQQufEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32673123"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="32673123"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:19 -0700
X-CSE-ConnectionGUID: HVor6Q38TSS5Y8XhwtLbkA==
X-CSE-MsgGUID: 1+jX5xzuTDSEGawZNf+qlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26511301"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 13/19] drm/i915: pass dev_priv explicitly to _PSR2_SU_STATUS
Date: Tue, 30 Apr 2024 13:10:07 +0300
Message-Id: <dac8c4ab8b34220cdfc9d5f6109299a040ea1b40.1714471597.git.jani.nikula@intel.com>
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
explicitly to the _PSR2_SU_STATUS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index e6c62512512f..762fc0ad7eb5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -221,8 +221,8 @@
 
 #define _PSR2_SU_STATUS_A		0x60914
 #define _PSR2_SU_STATUS_EDP		0x6f914
-#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
-#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
+#define _PSR2_SU_STATUS(dev_priv, tran, index)	_MMIO_TRANS2(dev_priv, tran, _PSR2_SU_STATUS_A + (index) * 4)
+#define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(dev_priv, tran, (frame) / 3))
 #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
 #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
 #define PSR2_SU_STATUS_FRAMES		8
-- 
2.39.2

