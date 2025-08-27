Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9685CB38099
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 13:11:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D8910E7B5;
	Wed, 27 Aug 2025 11:11:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i3wKfA/8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C367E10E7B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 11:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756293084; x=1787829084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JuSv1NRqrlblne2PH4Z9gCPY4N15KSMq4bJAtG83FsI=;
 b=i3wKfA/8hAcSBt/YXIhZeBOBroC78dBVoCCfW8bdd6L8drzEYki16EYv
 T3VUyLaWEKmNNsaFG32N7oX3mrmLECz97m1/bQqPM5fRUuG0RIh+g3Bmx
 g2ANb6tcoBDpYIvoTDVzLsfRI9JrTLIMtUK+OEgYMLxIlZVB4Qx8UgTy1
 IAjR50ReZXGZyBZ+TRyXCboD3lIdNcvWYmqykaOcV4SQrNijlnUIw0WI8
 EZYZDZ+B+/x2r8Jsky6yt81IUYfNgQ8KpUR95KhsFBG4ahOvmmpz7VCVq
 CytECAflUZ3dQgw71RL+qMB3K7Dme8+afU704hhDXNGBpmCr73XhQx52a A==;
X-CSE-ConnectionGUID: ow78w4UAQVOj741tOYmdrQ==
X-CSE-MsgGUID: 9YA+uliWSxS5OPn/KGDBpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58252534"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58252534"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 04:11:23 -0700
X-CSE-ConnectionGUID: orbQfruNRQW9zihXxkUi7Q==
X-CSE-MsgGUID: 8yB9YexYSmOgtRFK32EiMQ==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.119])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 04:11:22 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2] drm/i915: use REG_BIT on FW_BLC_SELF_* macros
Date: Wed, 27 Aug 2025 14:10:40 +0300
Message-ID: <20250827111109.401604-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
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

Use REG_BIT() instead of open coding the shift in the FW_BLC_SELF_*
macro definitions to avoid potentially typing them as 'int'.

For example, this happens when we pass them to _MASKED_BIT_ENABLE(),
because of the typeof() construct there.  When we pass 1 << 15 (the
FW_BLC_SELF_EN macro), we get typeof(1 << 15), which is 'int'.  Then
the value becomes negative (-2147450880) and we try to assign it to a
'u32'.

In practice this is not a problem though, because when we try to
assign -2147450880 to the u32, that becomes 0x80008000, which was the
intended result.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

In v2:
   * changed to use REG_BIT() instead (Jani)


 drivers/gpu/drm/i915/i915_reg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b283b25d8368..b4188e94c9a2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -412,9 +412,9 @@
 #define FW_BLC		_MMIO(0x20d8)
 #define FW_BLC2		_MMIO(0x20dc)
 #define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
-#define   FW_BLC_SELF_EN_MASK      (1 << 31)
-#define   FW_BLC_SELF_FIFO_MASK    (1 << 16) /* 945 only */
-#define   FW_BLC_SELF_EN           (1 << 15) /* 945 only */
+#define   FW_BLC_SELF_EN_MASK      REG_BIT((31)
+#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
+#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
 #define MM_BURST_LENGTH     0x00700000
 #define MM_FIFO_WATERMARK   0x0001F000
 #define LM_BURST_LENGTH     0x00000700
-- 
2.50.1

