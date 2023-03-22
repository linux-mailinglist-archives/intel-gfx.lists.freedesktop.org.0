Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D03406C47BA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:34:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E06310E904;
	Wed, 22 Mar 2023 10:34:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6394F10E8EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679481283; x=1711017283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VMmY+gFqhw5bMQFguQ7zzGLCtHTK19lRmdxVxkfdLwI=;
 b=B7xy8I4CkNofpqwCUQnVvVvJyv51lzXyfmTkmVdg9MJ88lSONrFLtJL5
 o5Zib89t/JSi9FsYSA5lrJQwvDrWLm1m8fIH0fIR0OiteYR3bFvlOiYw6
 8wBtPhWHGFhtRgLUJwAOxr7X7gp7LHIAS/R+J98Ipbb8Nu+siRUD3xq7U
 BMJMZOYGr8qIdbYm10OqIE+o2/0DtHuqLakjbm08ajo1kYNYxFGUDGKn2
 LiW56IGZAMa9oQib1DyxAfZUSsPkAgWlemtQjVROoEgqoVVvLF9IumMav
 MjX293TySBw1l2J1Yh1Q9z8mNOUfweu3texwVtzp0jf1x2vxeKrIixO6R w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340716639"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340716639"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="746249879"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="746249879"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:34:10 +0200
Message-Id: <20230322103412.123943-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322103412.123943-1-jouni.hogander@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/6] drm/i915/psr: Add helpers for block
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

