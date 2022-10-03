Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B1E5F2FB7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486C410E331;
	Mon,  3 Oct 2022 11:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8578010E327
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664796802; x=1696332802;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Su/5NDLsJvWqGTzaEtUxYmfilCO4EERJX3GGydl7/80=;
 b=It/Bx2h7aF29U7xtT6tYJRDFV1Rz1fTYY1ZEmRzJgyBk8SVUWcRtetnF
 lTAqNzzNWoopSJRzYOEQvL5bUI7/nPl/dkvG6X0tRcvylmhO6Qn5lJp5e
 AH3Ga0xV6oVaRndH1AXCAuHSrGvmLthrxXKnxMZlwEpL9X60Z/NE8xb7X
 GheER7veTkCxRAdY/l4ZqNz/xKefIn2UsRv3CjwDO7QiWShxnNSDPRP49
 n7uMvDu8WtalaUhg3eq5GZABjNRbmjhMobC2fOhAVuSzmrDBcHX1iE2Df
 7zy0+O9dx1IYB6tkt+VnXcLR//s6/OUoHE5sw4ZT6I3rpe9VSKHKWnNr0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="364455146"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="364455146"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:33:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618701106"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618701106"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:33:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:33:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:32:48 +0300
Message-Id: <20221003113249.16213-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
References: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915: Tighten DRRS capability
 reporting
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

Only report DRRS capability for the connector if its fixed_modes
list contains at least two modes capable of seamless DRRS switch
between them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 41cec9dc4223..d18c56cf957d 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -147,10 +147,25 @@ int intel_panel_get_modes(struct intel_connector *connector)
 	return num_modes;
 }
 
+static bool has_drrs_modes(struct intel_connector *connector)
+{
+	const struct drm_display_mode *mode1;
+
+	list_for_each_entry(mode1, &connector->panel.fixed_modes, head) {
+		const struct drm_display_mode *mode2 = mode1;
+
+		list_for_each_entry_continue(mode2, &connector->panel.fixed_modes, head) {
+			if (is_alt_drrs_mode(mode1, mode2))
+				return true;
+		}
+	}
+
+	return false;
+}
+
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 {
-	if (list_empty(&connector->panel.fixed_modes) ||
-	    list_is_singular(&connector->panel.fixed_modes))
+	if (!has_drrs_modes(connector))
 		return DRRS_TYPE_NONE;
 
 	return connector->panel.vbt.drrs_type;
-- 
2.35.1

