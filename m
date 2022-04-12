Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16584FCEF4
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 07:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AF010E695;
	Tue, 12 Apr 2022 05:26:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1678B10E695
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 05:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649741183; x=1681277183;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PIdrMYOXjZs7CfaQq6Cqdf3Q5vH9VUPpOJqP3bXiAkE=;
 b=Wv08btf3Pv1nKzA4sTJFV04WF+vrpXDY0EXrOv/ZLLurq75tQEuC89EK
 fzBszltzMaMnrWANT9PU9bmeiDmrCLz5C5CLkOjgSvOo8bdvdMVBKb8i+
 xqFhrm+oINL2hmzdoU4JGEMZO4wnwbcpH8HHFWfDGDDSvUGSeZ3RZS20A
 vH7PZb3jPwTuAiXte1zPKLkdP2TJd0ywKFbb9zLvcsgR1h4+s+wIBKy94
 uukMfr8l9yfKWqvaHL8tjWd10RZUJ1yGDlgFdy/qJ4NGcy9gsGNsY8GjS
 vYWwaTlm/GwSpitxgJUAo1+NI4EJkS+Of6f8eWzlgpWngaBcE+dcrGTwo g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="262459755"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="262459755"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 22:26:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="699676060"
Received: from sgulgule-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.214.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 22:26:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Apr 2022 08:25:42 +0300
Message-Id: <20220412052542.681419-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Check EDID before dpcd for possible
 HDR aux bl support
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Filippo Falezza <filippo.falezza@outlook.it>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have now seen panel (XMG Core 15 e21 laptop) avertizing support
for Intel proprietary eDP backlight control via DPCD registers, but
actually working only with legacy pwm control.

This patch adds panel EDID check for possible HDR static metadata and
does detection from DPCD registers only if this data block exists.

Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface (only SDR for now)")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5284
Cc: Lyude Paul <lyude@redhat.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Tested-by: Filippo Falezza <filippo.falezza@outlook.it>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 97cf3cac0105..f69e185b58c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -108,6 +108,19 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	int ret;
 	u8 tcon_cap[4];
 
+	/*
+	 * If we don't have HDR static metadata there is no way to
+	 * runtime detect used range for nits based control. For now
+	 * do not use Intel proprietary eDP backlight control if we
+	 * don't have this data in panel EDID. In case we find panel
+	 * which supports only nits based control, but doesn't provide
+	 * HDR static metadata we need to start maintaining table of
+	 * ranges for such panels.
+	 */
+	if (!(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
+	      BIT(HDMI_STATIC_METADATA_TYPE1)))
+		return false;
+
 	intel_dp_wait_source_oui(intel_dp);
 
 	ret = drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0, tcon_cap, sizeof(tcon_cap));
-- 
2.25.1

