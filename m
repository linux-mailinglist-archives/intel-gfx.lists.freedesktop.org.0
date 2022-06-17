Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C45C54FBB8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D2A10F3F4;
	Fri, 17 Jun 2022 16:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9911D10EB0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655484958; x=1687020958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0OQuYGWVKByy4Frewne+GIi+ZtZg1CAeaca1K+Nh1E4=;
 b=FRjU+edq24Ne8XaNjWQE5chPKXYULfm4IEU5mrEW4ugJC27SksU8cPH9
 k/ojabfA0cuc0ovEJF+i59/i/9pkxgoGSsVUSj+6Gc7QjHs26i5oCJLIh
 xKjaHwVGZxe1wP+2lIq54Z2flHDlYk7Fcq2WnJeRMAfwDGvxMrht3x0fy
 WT2ViQrnr2wsenXzVmMRnotEKQPKcJpokJF+ulpALkFeVkEkVmY5hWOqP
 BrAT8GxNKkW7PzjAT8YWUCmJ0q6XXeSsP2K91Wu61AdgvYALfNKycT2HI
 ECpa+EJOvBr64BLCXkRjEE0zsRAcgiA3iQ9KljadpmlaULc+ZDGmoxVXX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279544703"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279544703"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="675523109"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 17 Jun 2022 09:05:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:05:07 +0300
Message-Id: <20220617160510.2082-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/16] drm/i915: Add
 intel_panel_highest_mode()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a function to get the fixed_mode with the highest clock.
The plan is to use this for the link bw calculation on seamless
DRRS panels so that we alwasy end up with the same link params
regardless of the requested refresh rate. This will allow fastset
to do seamless refresh rate changes based on userspace request
instead of having to go for a full modeset.

TODO: the function name isn't great

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 237a40623dd7..c738de27e49b 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -114,6 +114,21 @@ intel_panel_downclock_mode(struct intel_connector *connector,
 	return best_mode;
 }
 
+const struct drm_display_mode *
+intel_panel_highest_mode(struct intel_connector *connector,
+			 const struct drm_display_mode *adjusted_mode)
+{
+	const struct drm_display_mode *fixed_mode, *best_mode = adjusted_mode;
+
+	/* pick the fixed_mode that has the highest clock */
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+		if (fixed_mode->clock > best_mode->clock)
+			best_mode = fixed_mode;
+	}
+
+	return best_mode;
+}
+
 int intel_panel_get_modes(struct intel_connector *connector)
 {
 	const struct drm_display_mode *fixed_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index b087c0c3cc6d..eff3ffd3d082 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -31,6 +31,9 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode);
+const struct drm_display_mode *
+intel_panel_highest_mode(struct intel_connector *connector,
+			 const struct drm_display_mode *adjusted_mode);
 int intel_panel_get_modes(struct intel_connector *connector);
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
-- 
2.35.1

