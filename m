Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F689738A5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1FC10E7D6;
	Tue, 10 Sep 2024 13:29:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JiYj6mKM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD1A10E7D4;
 Tue, 10 Sep 2024 13:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974972; x=1757510972;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iD1/IMMgtH5OPEU6lDo5euM5OB//erOLiOtQTVdiA3w=;
 b=JiYj6mKMMo3TsI63dZCru35PK9fbGRvr1RirJ+a9xmOGZnK5B7sbF3CS
 OGeCILJci6rH/98cwY+pPy5PhRfVAv77488NyGEbNmgZ2Z1D28uxyp8R0
 xb8TE8tBfEjiPE279yTks8wW6MTscA/1QDJBpyp+SDX5JdOvUDYPM/FBc
 R2Fpf8ouk2REY4qFjSBr8jSU3bhApibPGzJfSoNlkj8Kqabhr5+TWzmHm
 D/csIVh+bJJodEniuzXMGbdqDYDRadlxdbWLrncbDPOfCnmRmGSJuYwBB
 YyQ7yLXp6KQwoVu/vy66Q7xDRPZBLWxrNaxQAVAYwKXwAyI5wcWfRMBR6 w==;
X-CSE-ConnectionGUID: fynZCzPeRjW4zKyDvZLxUw==
X-CSE-MsgGUID: 02pdPjKrQuCX8UlsVnAXqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24870347"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24870347"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:32 -0700
X-CSE-ConnectionGUID: h0JTv+MTSFqlnKJVJLHffQ==
X-CSE-MsgGUID: iJ/s1C00R+Kp/Tvifem2+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67796197"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 06/11] drm/i915/reg: fix PCH transcoder timing indentation
Date: Tue, 10 Sep 2024 16:28:50 +0300
Message-Id: <f56e48a927692cec382e292602e0fa68e37f3b93.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
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

Adhere to the style described at the top of i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2f09145b9791..1eede96a5415 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3292,13 +3292,13 @@
 
 #define HSW_STEREO_3D_CTL(dev_priv, trans)	_MMIO_PIPE2(dev_priv, trans, _HSW_STEREO_3D_CTL_A)
 
-#define _PCH_TRANS_HTOTAL_B          0xe1000
-#define _PCH_TRANS_HBLANK_B          0xe1004
-#define _PCH_TRANS_HSYNC_B           0xe1008
-#define _PCH_TRANS_VTOTAL_B          0xe100c
-#define _PCH_TRANS_VBLANK_B          0xe1010
-#define _PCH_TRANS_VSYNC_B           0xe1014
-#define _PCH_TRANS_VSYNCSHIFT_B 0xe1028
+#define _PCH_TRANS_HTOTAL_B		0xe1000
+#define _PCH_TRANS_HBLANK_B		0xe1004
+#define _PCH_TRANS_HSYNC_B		0xe1008
+#define _PCH_TRANS_VTOTAL_B		0xe100c
+#define _PCH_TRANS_VBLANK_B		0xe1010
+#define _PCH_TRANS_VSYNC_B		0xe1014
+#define _PCH_TRANS_VSYNCSHIFT_B		0xe1028
 
 #define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _PCH_TRANS_HTOTAL_B)
 #define PCH_TRANS_HBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HBLANK_A, _PCH_TRANS_HBLANK_B)
-- 
2.39.2

