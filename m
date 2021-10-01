Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9033D41EA4F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 12:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD606EDA4;
	Fri,  1 Oct 2021 10:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8508B6EDA4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 10:03:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="222187694"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="222187694"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 03:03:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="618992915"
Received: from kdoertel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.222.34])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 03:03:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Fri,  1 Oct 2021 13:03:16 +0300
Message-Id: <20211001100316.26441-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/reg: add AUD_TCA_DP_2DOT0_CTRL
 registers
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

For controlling the audio SDP split.

Bspec: 63837
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3a20a55d2512..0d2d89ea376b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9763,6 +9763,11 @@ enum {
 #define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
 #define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
 
+#define _AUD_TCA_DP_2DOT0_CTRL		0x650bc
+#define _AUD_TCB_DP_2DOT0_CTRL		0x651bc
+#define AUD_DP_2DOT0_CTRL(trans)	_MMIO_TRANS(trans, _AUD_TCA_DP_2DOT0_CTRL, _AUD_TCB_DP_2DOT0_CTRL)
+#define  AUD_ENABLE_SDP_SPLIT		REG_BIT(31)
+
 #define HSW_AUD_CHICKENBIT			_MMIO(0x65f10)
 #define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
 
-- 
2.30.2

