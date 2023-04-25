Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEE16EE0A8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8A210E6FA;
	Tue, 25 Apr 2023 10:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5848B10E6F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420099; x=1713956099;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jM6BjKhbke4Hz6o5cRx4jgoy7y79X3BXA5fRafkRHf0=;
 b=J+aTsB36L4HW0jJxTqYdynbk5Go4DKw0sz9NcQ2iFrrBmhRWA5/sw7s5
 06u/fIPblfmKM+q4Zjp4SfMABbrqL2MuiscU2ju9jehee9bwycLPC0C8M
 CfyTPT4VgjMT88dyd6oxnQK74MPLaSJNrJUaZmMgWmhsDa48mTzErLKKn
 dL14RVCqoWdp0TlMiJ0B4XOco886jqsLa1Cy8FYTvZ9t1bOBLZ3KtehPN
 PFN5jcLP3p6VjJgbEDXLXNFdE2Swmm8Gq6Rw9RpDEMUqmunDGnvYoKZo4
 6+Q/Tf88dM+QShy3QzSkPTFqphNmclDvXLkzg/2E7DWkQsWPJ7OcCpvOG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019600"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019600"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367339"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367339"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:54:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:54:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:38 +0300
Message-Id: <20230425105450.18441-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/14] drm/i915/dsi: Do display on sequence
 later on icl+
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

Doing the init OTP and display on DSI sequences back to back
doesn't really make any sense (a single sequence would suffice
then). Move the display on sequence to be done just before
backlight on, which is also what Windows does.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d424d30a01e8..97b889f2b0e2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1139,7 +1139,6 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 	}
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 
 	/* ensure all panel commands dispatched before enabling transcoder */
 	wait_for_cmds_dispatched_to_panel(encoder);
@@ -1240,6 +1239,8 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
+
 	/* step7: enable backlight */
 	intel_backlight_enable(crtc_state, conn_state);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
-- 
2.39.2

