Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 959766C47B8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:34:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B6A10E8F3;
	Wed, 22 Mar 2023 10:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891FF10E8F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679481285; x=1711017285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OpIohCV9mSvEJbVx+JWExw1ShEEITey9w9M4p7itJnY=;
 b=ki8azed5w3K/VBLHW7BV8D2gBpyCcmS82wBnub8mEjNF7P3U85CEyh+x
 qVGmjdUssNh44rkIZ+6F8yxVv+MyLB1ZWNH2whOi+MpV4L7O9VVYbYB/z
 m6/oLPWlrVGSijtE055YhVECaKOXI0BIm4lozVEnIwZSVMCvG7TJMdfsx
 jobZQR9S/38YHyme7JpPzB7caGukPFMetx1qCEWDCH0KyoYC0e5qkM+ce
 sr/q66P6dPfaJ247X56CUeAbJTUvL6HYzP5CGdl1TctIeI53nElIVV58U
 8PyO+h0IH6txnWi7EcCqVLt+s+0vgrUYPnNZmL2Z5c8GfzIPQxU83v4Mp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340716642"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340716642"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="746249886"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="746249886"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:34:11 +0200
Message-Id: <20230322103412.123943-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322103412.123943-1-jouni.hogander@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 5/6] drm/i915/psr: Check that vblank is long
 enough for psr2
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

Ensure vblank >= psr2 vblank
where
Psr2 vblank = PSR2_CTL Block Count Number maximum line count.

Bspec: 71580, 49274

v2: Use calculated block count number maximum line count

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4b7c946a9a25..b53c71c06105 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -968,6 +968,15 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
+	    crtc_state->hw.adjusted_mode.crtc_vblank_start <
+	    psr2_block_count_lines(intel_dp)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR2 not enabled, too short vblank time\n");
+		return false;
+	}
+
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
 		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
 		    !HAS_PSR_HW_TRACKING(dev_priv)) {
-- 
2.34.1

