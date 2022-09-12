Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B575B5920
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C671B10E3A7;
	Mon, 12 Sep 2022 11:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01F910E39B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981503; x=1694517503;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pPqU9X7KrynXolwsVpK5cbnGQW+NDQfvS3Xfcc4sOJA=;
 b=bIsXUNEh4Z2hycPigEW+QLEYN80JX6QFLGTahIlbs2soQUMrcrUC84zp
 dXZ3BYCduLaM/HcKMNJwp9BjE/EZtbdeCQQ62d155HvkR8KNnNm5JOYmW
 OSZr3SmAJavp/vyYpY7od6bh6qIcAAZzHPXgaOwsbWh1SepTF3mR6oSmt
 Y+KkPq/isfM33hpEBPpVUGFL4o2fhxOJIZ7CVOUdH4KT4s9RqDp/S6EQQ
 XhWSlrkjhJ3Gq63pvwuPU8NZuZiRpOMXl3UT4vAAYa7sKhXIugFzHs3kt
 b8NJKjVj2Ei/OjbHrboxxQckDnD5nMlnC5MrkOyBW+atvr1Futi1WL4U5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="280858368"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="280858368"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678044002"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 12 Sep 2022 04:18:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:01 +0300
Message-Id: <20220912111814.17466-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/15] drm/i915: Clean up
 transcoder_to_stream_enc_status()
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

Drop the pointless middle man variable and just return the
correct thing directly.  And while at it change the return
type to u32 since this is a register value we're returning.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 88689124c013..35360dd543ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -19,28 +19,20 @@
 #include "intel_hdcp.h"
 #include "intel_hdcp_regs.h"
 
-static unsigned int transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
+static u32 transcoder_to_stream_enc_status(enum transcoder cpu_transcoder)
 {
-	u32 stream_enc_mask;
-
 	switch (cpu_transcoder) {
 	case TRANSCODER_A:
-		stream_enc_mask = HDCP_STATUS_STREAM_A_ENC;
-		break;
+		return HDCP_STATUS_STREAM_A_ENC;
 	case TRANSCODER_B:
-		stream_enc_mask = HDCP_STATUS_STREAM_B_ENC;
-		break;
+		return HDCP_STATUS_STREAM_B_ENC;
 	case TRANSCODER_C:
-		stream_enc_mask = HDCP_STATUS_STREAM_C_ENC;
-		break;
+		return HDCP_STATUS_STREAM_C_ENC;
 	case TRANSCODER_D:
-		stream_enc_mask = HDCP_STATUS_STREAM_D_ENC;
-		break;
+		return HDCP_STATUS_STREAM_D_ENC;
 	default:
-		stream_enc_mask = 0;
+		return 0;
 	}
-
-	return stream_enc_mask;
 }
 
 static void intel_dp_hdcp_wait_for_cp_irq(struct intel_hdcp *hdcp, int timeout)
-- 
2.35.1

