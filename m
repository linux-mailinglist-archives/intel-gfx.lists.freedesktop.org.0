Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCA2557C86
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D59210ED03;
	Thu, 23 Jun 2022 13:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A88310ED62
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989762; x=1687525762;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tbeXfVq7ZwP47zCG1tOZfxBi7BJgsdG91DkY6r72eIY=;
 b=UOT/FiGOwrqYhrVwobAO+27Ap4z0i7icxygpSh4mISQgY7ho8A9X3AWw
 eRrhO0oR79fT4xawX0sr/GDwzLrClLoCkOzZRPup3oH3rZTlgNWEaOCCs
 tUcIENXV1TcjhfKbdmkEqgP+zYwZwZYff1acCmIaCXhYnE/7flC0NI+3N
 1waSmyK/ojey/7taFNojbqLjNZFD06drLX1kXWqgCXAvz7fDkjJrX25Qd
 w7442ZIHG/atCHT7uJYiaUOlqRnUMj9Qmnjwbr7+76oa5kf5aKxJEcer3
 o/0buFVc+0s8jtSqMsYS6FbzDaf4QGtpWCW4L0mcsUlaNkYzZrneydkGZ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="261144526"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="261144526"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="615569494"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 23 Jun 2022 06:09:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:57 +0300
Message-Id: <20220623130900.26078-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Use _MMIO_TRANS2() where
 appropriate
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop hand rolling _MMIO_TRANS2() and just use the real thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b3fe01aaeba8..8bcde74e9217 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -164,10 +164,9 @@
 #define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display.pipe_offsets[(pipe)] - \
 					      INTEL_INFO(dev_priv)->display.pipe_offsets[PIPE_A] + \
 					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
-#define _TRANS2(tran, reg)		(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \
-					 INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \
-					 DISPLAY_MMIO_BASE(dev_priv) + (reg))
-#define _MMIO_TRANS2(tran, reg)		_MMIO(_TRANS2(tran, reg))
+#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \
+					      INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \
+					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
 #define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
 					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
 					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
@@ -2171,7 +2170,7 @@
  */
 #define _SRD_CTL_A				0x60800
 #define _SRD_CTL_EDP				0x6f800
-#define EDP_PSR_CTL(tran)			_MMIO(_TRANS2(tran, _SRD_CTL_A))
+#define EDP_PSR_CTL(tran)			_MMIO_TRANS2(tran, _SRD_CTL_A)
 #define   EDP_PSR_ENABLE			(1 << 31)
 #define   BDW_PSR_SINGLE_FRAME			(1 << 30)
 #define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	(1 << 29) /* SW can't modify */
@@ -2217,11 +2216,11 @@
 
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
-#define EDP_PSR_AUX_DATA(tran, i)		_MMIO(_TRANS2(tran, _SRD_AUX_DATA_A) + (i) + 4) /* 5 registers */
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) + 4) /* 5 registers */
 
 #define _SRD_STATUS_A				0x60840
 #define _SRD_STATUS_EDP				0x6f840
-#define EDP_PSR_STATUS(tran)			_MMIO(_TRANS2(tran, _SRD_STATUS_A))
+#define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(tran, _SRD_STATUS_A)
 #define   EDP_PSR_STATUS_STATE_MASK		(7 << 29)
 #define   EDP_PSR_STATUS_STATE_SHIFT		29
 #define   EDP_PSR_STATUS_STATE_IDLE		(0 << 29)
@@ -2248,13 +2247,13 @@
 
 #define _SRD_PERF_CNT_A			0x60844
 #define _SRD_PERF_CNT_EDP		0x6f844
-#define EDP_PSR_PERF_CNT(tran)		_MMIO(_TRANS2(tran, _SRD_PERF_CNT_A))
+#define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(tran, _SRD_PERF_CNT_A)
 #define   EDP_PSR_PERF_CNT_MASK		0xffffff
 
 /* PSR_MASK on SKL+ */
 #define _SRD_DEBUG_A				0x60860
 #define _SRD_DEBUG_EDP				0x6f860
-#define EDP_PSR_DEBUG(tran)			_MMIO(_TRANS2(tran, _SRD_DEBUG_A))
+#define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(tran, _SRD_DEBUG_A)
 #define   EDP_PSR_DEBUG_MASK_MAX_SLEEP         (1 << 28)
 #define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
 #define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
@@ -2329,7 +2328,7 @@
 
 #define _PSR2_SU_STATUS_A		0x60914
 #define _PSR2_SU_STATUS_EDP		0x6f914
-#define _PSR2_SU_STATUS(tran, index)	_MMIO(_TRANS2(tran, _PSR2_SU_STATUS_A) + (index) * 4)
+#define _PSR2_SU_STATUS(tran, index)	_MMIO_TRANS2(tran, _PSR2_SU_STATUS_A + (index) * 4)
 #define PSR2_SU_STATUS(tran, frame)	(_PSR2_SU_STATUS(tran, (frame) / 3))
 #define PSR2_SU_STATUS_SHIFT(frame)	(((frame) % 3) * 10)
 #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
-- 
2.35.1

