Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D167764AF71
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 06:50:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594E410E1A8;
	Tue, 13 Dec 2022 05:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA0F10E1A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 05:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670910600; x=1702446600;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bD5fPcO/ibP3ueJx/Pe8WgKStzlQOjVUatp2x8mSyas=;
 b=GkhgK8CkLzfSe4IwpWwNaorQe90VPH6ElYlImZI/hCNAIa6bBybsp5Ul
 AYy4p6nJhw0sZ4epV0k2fPctdlw6CS1d03r3JjgOPLF+lhPbYA48HwY+D
 Imsu5k3kyBQoAZy0MunC5v5rJZeGyZapMY2bKXT/zaC2h1AVIDnDST20T
 swtqHXfJRU6GnUFeKgrrhczXGEYnUGi4+/S8CCTZL3i1AhCKYcHaa0C6/
 Rb3pi4j/E7ghAJSahGLAr6E73sJo8Dc6L8cFOuUPYww8mlA7aYbdYGlsH
 7LuIHO0p/QlZjc6F8GAjSA5j6YKzLGxYdVLkutZocD/1rI/+5POUKBkRv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="297728612"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="297728612"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 21:49:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="598712529"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="598712529"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 21:49:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Dec 2022 11:21:06 +0530
Message-Id: <20221213055106.2044535-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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

There are cases, where devices have an HDMI1.4 retimer, and TMDS clock rate
is capped to 340MHz via VBT. In such cases scrambling might be supported
by the platform and an HDMI2.0 sink for lower TMDS rates, but not
supported by the retimer, causing blankouts.

So avoid enabling scrambling, if the TMDS clock is capped to <= 340MHz.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index efa2da080f62..c124fe667bc0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2244,6 +2244,11 @@ static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_state)
 		!is_power_of_2(crtc_state->uapi.encoder_mask);
 }
 
+static bool source_can_support_scrambling(struct intel_encoder *encoder)
+{
+	return intel_hdmi_source_max_tmds_clock(encoder) > 340000;
+}
+
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
@@ -2301,7 +2306,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->lane_count = 4;
 
-	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >= 10) {
+	if (scdc->scrambling.supported && source_can_support_scrambling(encoder)) {
 		if (scdc->scrambling.low_rates)
 			pipe_config->hdmi_scrambling = true;
 
-- 
2.25.1

