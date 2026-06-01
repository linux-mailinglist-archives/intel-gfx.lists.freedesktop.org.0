Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHljMjFAHWq8XgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:17:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B53E61B577
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44831112F65;
	Mon,  1 Jun 2026 08:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YtglJIX2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1FA4112F58;
 Mon,  1 Jun 2026 08:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780301871; x=1811837871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JXF9GFBpyw0W1WSDTg+1dKwD/Z7X7hsvaa+/WRD35QQ=;
 b=YtglJIX2PkUFTFSvQqymAFSYX8XscQnGFno/gzuY95+Ztjokey2Bv5Gc
 cKmbqvZICQog+IcxZ5E++Z/I1bC4E+WZksimOheuHdWh74phk5rMAlbYk
 i/Fq/V8InHGho/+5zF5ea/EJuvi1/bq0GjRxq2q6Xu7ai7xc7woM2JpJO
 C/jneXEIrAySk4CfxPEfgcIXideaJEqI2/UKtBN3X4Yyx79syvChsa6AA
 uvZTq6o/FawQrr8jIdvkMsFC/L6mrMULHeWaev2jI+FR4GFnGs3xRSDLS
 9HnrNueOPhT2ERjY3qvsIvPtjIM4KYGa6g0G+2aC//fevvA7WkxiN/7zk g==;
X-CSE-ConnectionGUID: OAaaLmRkQZuziSRAn1Lw2g==
X-CSE-MsgGUID: HFP/DckBQ7KqokoKYBUapg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80786185"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="80786185"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:17:42 -0700
X-CSE-ConnectionGUID: 8b/C3keMThyz33d4r9BK8g==
X-CSE-MsgGUID: C/myh6F/SlSG6FVEIRU3Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="248602100"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy) ([10.245.245.124])
 by fmviesa005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 01:17:41 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v4 1/4] drm/i915/display: harden masks in
 HSW_AUD_PIN_ELD_CP_VLD macros
Date: Mon,  1 Jun 2026 11:14:32 +0300
Message-ID: <20260601081730.3146922-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260601081730.3146922-1-luciano.coelho@intel.com>
References: <20260601081730.3146922-1-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: 5B53E61B577
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

