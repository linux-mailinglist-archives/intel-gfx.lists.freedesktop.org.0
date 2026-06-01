Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOmSM1I7HWoqWQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 09:57:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA6D61B2A8
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 09:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D896B112F38;
	Mon,  1 Jun 2026 07:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a7MPY6Vm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F0D112F33;
 Mon,  1 Jun 2026 07:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780300623; x=1811836623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JXF9GFBpyw0W1WSDTg+1dKwD/Z7X7hsvaa+/WRD35QQ=;
 b=a7MPY6VmDd5uRxstpIyLU6Uihn6PeqpQq7aS/niCmcFgO0ZK5wBQLfwz
 9+wDZUq/mitFH5HdMTOBK8EzihbYLrI2BKscRczaHAu2tUJrhMSvhZcJ1
 FY0pk6BIhKglf+Q6OLCNR7ASyode/bxTwV/HaCPSxaUbXiRMvgFE9VlDd
 YK1jR9lbt15B4cC7XwFWqbdWU6ZXZAhgJXaSRMRkw24o9ZqClEdDmqSyO
 EHNJ/PUPfCkcLABdjX85ZpEeBShanGlyEEgUkzW8V2Ry0b841jvGDU5HW
 hJzVqFYeAch8utm1d/ngaXYZd+6DQDwF62xWPJ9OhjTyEh8Yd+YCfK6j5 w==;
X-CSE-ConnectionGUID: 1BtYBmWvQNabIH4yy3yGfQ==
X-CSE-MsgGUID: vA/pkG7mR9SVuIAN4MK4Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84941103"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="84941103"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 00:56:44 -0700
X-CSE-ConnectionGUID: yf7nknBxT+i7QeomWcKKCg==
X-CSE-MsgGUID: fye77l8xQeKQfb10J3Wfdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="243601825"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy) ([10.245.245.124])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 00:56:43 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v3 1/4] drm/i915/display: harden masks in
 HSW_AUD_PIN_ELD_CP_VLD macros
Date: Mon,  1 Jun 2026 10:55:53 +0300
Message-ID: <20260601075631.3102348-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260601075631.3102348-1-luciano.coelho@intel.com>
References: <20260601075631.3102348-1-luciano.coelho@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 6DA6D61B2A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HSW_AUD_PIN_ELD_CP_VLD has a 4-bit field per transcoder for
TRANSCODER_A..TRANSCODER_D only (bits 0..15).  Any other transcoder
value (TRANSCODER_EDP, TRANSCODER_DSI_*, INVALID_TRANSCODER) is not
valid here.

This is not a problem with the current implementation, because trans
is always valid when these macros are called, but it's more robust to
mask the index to the low 2 bits so the shift is always well-defined.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio_regs.h | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index 4c31844d21df..f3d2a99c03d0 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -109,12 +109,20 @@
 #define _HSW_AUD_EDID_DATA_B		0x65150
 #define HSW_AUD_EDID_DATA(trans)	_MMIO_TRANS(trans, _HSW_AUD_EDID_DATA_A, _HSW_AUD_EDID_DATA_B)
 
+/*
+ * HSW_AUD_PIN_ELD_CP_VLD has a 4-bit field per transcoder for
+ * TRANSCODER_A..TRANSCODER_D only (bits 0..15).  Any other transcoder
+ * value (TRANSCODER_EDP, TRANSCODER_DSI_*, INVALID_TRANSCODER) is not
+ * valid here.  Mask the index to the low 2 bits so the shift is
+ * always well-defined.
+ */
 #define HSW_AUD_PIPE_CONV_CFG		_MMIO(0x6507c)
 #define HSW_AUD_PIN_ELD_CP_VLD		_MMIO(0x650c0)
-#define   AUDIO_INACTIVE(trans)		((1 << 3) << ((trans) * 4))
-#define   AUDIO_OUTPUT_ENABLE(trans)	((1 << 2) << ((trans) * 4))
-#define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
-#define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
+#define   __AUDIO_TRANS_SHIFT(trans)	(((trans) & 0x3) * 4)
+#define   AUDIO_INACTIVE(trans)		REG_BIT(__AUDIO_TRANS_SHIFT(trans) + 3)
+#define   AUDIO_OUTPUT_ENABLE(trans)	REG_BIT(__AUDIO_TRANS_SHIFT(trans) + 2)
+#define   AUDIO_CP_READY(trans)		REG_BIT(__AUDIO_TRANS_SHIFT(trans) + 1)
+#define   AUDIO_ELD_VALID(trans)	REG_BIT(__AUDIO_TRANS_SHIFT(trans))
 
 #define _AUD_TCA_DP_2DOT0_CTRL		0x650bc
 #define _AUD_TCB_DP_2DOT0_CTRL		0x651bc
-- 
2.53.0

