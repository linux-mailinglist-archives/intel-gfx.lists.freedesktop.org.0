Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91E6C4781
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:22:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858F910E8F3;
	Wed, 22 Mar 2023 10:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B8610E8E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679480554; x=1711016554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VMmY+gFqhw5bMQFguQ7zzGLCtHTK19lRmdxVxkfdLwI=;
 b=Lfd+SMh83PPwdWuo5WlxGNB5tEICkAI/KhOb3nkpJxN4Pp2nJagTmENG
 Spfe7s25cdvpS+O1KdjFEHCaNOyOce9j+AnJ6KLaOKgyQxKDodYXulnho
 F+AquTFd67uDe1Mry1CWRDohE2JpBfHr4q/MvCsAj/NuJMy187vJUpwwh
 GgC+YmQxGf3FSiS9lf3ZxrBEyQghqa6kFGrRL5f0RBARLeBueHj7iQGEr
 FcD8tlOX/3+mylPqsnaVAo0lp579FSBSkTtbQfMmI8ERpNjxf7Jn4WYji
 dLFfSY1NTZjGetiYYSgcL2dXJyCDesgZEb9nA8irxNFAX2tq0Lz5bbA+T g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340714797"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340714797"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="1011309823"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="1011309823"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:22:02 +0200
Message-Id: <20230322102204.116056-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322102204.116056-1-jouni.hogander@intel.com>
References: <20230322102204.116056-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/5] drm/i915/psr: Add helpers for block
 count number handling
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

Add helpers to make it more clear how PSR2_CTL[Block Count Number]
is configured.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index dfac546d983b..4b7c946a9a25 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -519,6 +519,17 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 	return val;
 }
 
+static int psr2_block_count_lines(struct intel_dp *intel_dp)
+{
+	return intel_dp->psr.io_wake_lines < 9 &&
+		intel_dp->psr.fast_wake_lines < 9 ? 8 : 12;
+}
+
+static int psr2_block_count(struct intel_dp *intel_dp)
+{
+	return psr2_block_count_lines(intel_dp) / 4;
+}
+
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -536,11 +547,10 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	val |= intel_psr2_get_tp_time(intel_dp);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		if (intel_dp->psr.io_wake_lines < 9 &&
-		    intel_dp->psr.fast_wake_lines < 9)
-			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
-		else
+		if (psr2_block_count(intel_dp) > 2)
 			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
+		else
+			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
 	}
 
 	/* Wa_22012278275:adl-p */
-- 
2.34.1

