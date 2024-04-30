Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB758B6F40
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341D510FA74;
	Tue, 30 Apr 2024 10:10:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bi/TDyMr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B020210FA74
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471851; x=1746007851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ooSmhRUiqE3j+SmfF7UjenlB4JRCB3g8mnSpzW6yJNI=;
 b=Bi/TDyMr3bDDz2tLGkMN117rxYK8O9oSauqqY1igiyl4hmNHZddmPbmO
 CzHD7zR0v3XxjUeaqnO15fwC0ibImgcH0jX3DH12DXUHZ6QJzJhdkcObf
 +N0cNvIQrYsBjAsZa0zCtNskiy3e/wozaIgtpG+KQ6fRW4Lf0tqqtUiJt
 B3iME2okOYp6x/JcqPJRwaZkdxjloWjOFIWK0iOb9pKGchALxjCtBkUby
 jFaPyzjfC+h2RPDVL2cx2AEU4F5pY6VdZ88M03sDC5VMg3FfzES8K0Bm1
 jPbZ0xZRbwgUN97IjZSUt1goVh11ZywY21d1nIl2ST0tcvui/hOGvJaPU g==;
X-CSE-ConnectionGUID: N+KPCmX4Qm+mCpoRikHUog==
X-CSE-MsgGUID: viiwHiDdSF2QhC/Htbfdtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27619579"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27619579"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:51 -0700
X-CSE-ConnectionGUID: Z7Fr1cFyRAS3LbPw7UiTzA==
X-CSE-MsgGUID: NbnXj6MbQ4qmai2AwfJjLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26424738"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 07/19] drm/i915: pass dev_priv explicitly to EDP_PSR_STATUS
Date: Tue, 30 Apr 2024 13:10:01 +0300
Message-Id: <4aaa0187b16d2b96b5b4b1d775d7349c9fc28c7c.1714471597.git.jani.nikula@intel.com>
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
explicitly to the EDP_PSR_STATUS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5fe9feddc0e0..1a52a69e1906 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -296,7 +296,7 @@ static i915_reg_t psr_status_reg(struct drm_i915_private *dev_priv,
 				 enum transcoder cpu_transcoder)
 {
 	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_STATUS(cpu_transcoder);
+		return EDP_PSR_STATUS(dev_priv, cpu_transcoder);
 	else
 		return HSW_SRD_STATUS;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 6a6d7de901bc..4f3e58076a48 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -101,7 +101,7 @@
 #define HSW_SRD_STATUS				_MMIO(0x64840)
 #define _SRD_STATUS_A				0x60840
 #define _SRD_STATUS_EDP				0x6f840
-#define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_STATUS_A)
+#define EDP_PSR_STATUS(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_STATUS_A)
 #define   EDP_PSR_STATUS_STATE_MASK		REG_GENMASK(31, 29)
 #define   EDP_PSR_STATUS_STATE_IDLE		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 0)
 #define   EDP_PSR_STATUS_STATE_SRDONACK		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 1)
-- 
2.39.2

