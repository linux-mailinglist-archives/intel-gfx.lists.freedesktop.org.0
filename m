Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 364574D3E6D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B6510E631;
	Thu, 10 Mar 2022 00:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E4010E5EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873323; x=1678409323;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OAGOzEoKfxzkhtjfrRiRKgTwnWmjzjR4Z7GfA62ElvI=;
 b=Lvy0jgGQInaKZ7y5VJo75hSvwjAIARIhzti061XsYGvAkib3aK50eh7H
 M9uvBzJOxUIJd/TOmb59rbwQ0kEInjXtu5q/bBP1p590ngEyjfHI4YEZH
 /Qhm9C5dITvqZuV4H6WDhwFbVW0i1AzywyyO+QLaUvlEYhXer9Nd2xxV1
 WFjCSyD9iFU/Re4HdWrSSATW2bCdSV9ZDs1tVw1TmIa8aZ+8aUAswXCuC
 8LtG9qefR+xzwqJQYr53lv5juqaBe12TBHnHmDc4z6Sx7fQkybMasiCVi
 z99Mxf5gayTiajiXlf348q8SE9kXlfxnA1lUz0wfL++S4HHcDNbEiQ+6g A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="253956472"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="253956472"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="632810809"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 09 Mar 2022 16:48:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:48:02 +0200
Message-Id: <20220310004802.16310-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915: Implement static DRRS
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

Let's start supporting static DRRS by trying to match the refresh
rate the user has requested, assuming the panel supports suitable
timings.

For now we stick to just our current two timings:
- fixed_mode: the panel's preferred mode
- downclock_mode: the lowest refresh rate mode we found
Some panels may support more timings than that, but we'll
have to convert our fixed_mode/downclock_mode pointers
into a full list before we can handle that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.c  |  8 +++++---
 drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++--
 3 files changed, 34 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index af659320c02e..9bd958377a54 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4599,6 +4599,17 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 			num_modes++;
 		}
 	}
+	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
+	    intel_connector->panel.downclock_mode) {
+		struct drm_display_mode *mode;
+
+		mode = drm_mode_duplicate(connector->dev,
+					  intel_connector->panel.downclock_mode);
+		if (mode) {
+			drm_mode_probed_add(connector, mode);
+			num_modes++;
+		}
+	}
 
 	if (num_modes)
 		return num_modes;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 5b2eb55c1340..dc1733c9abab 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -383,7 +383,7 @@ intel_drrs_init(struct intel_connector *connector,
 		return NULL;
 	}
 
-	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS) {
+	if (dev_priv->vbt.drrs_type == DRRS_TYPE_NONE) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
 			    connector->base.base.id, connector->base.name);
@@ -399,8 +399,10 @@ intel_drrs_init(struct intel_connector *connector,
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
-		    connector->base.base.id, connector->base.name);
+		    "[CONNECTOR:%d:%s] %s DRRS supported\n",
+		    connector->base.base.id, connector->base.name,
+		    dev_priv->vbt.drrs_type == DRRS_TYPE_SEAMLESS ?
+		    "seamless" : "static");
 
 	return downclock_mode;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 127ad9643360..6ddbb69dcfdc 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -49,14 +49,30 @@ const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
 {
-	return connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
+
+	/* pick the one that is closer in terms of vrefresh */
+	/* FIXME make this a a list of modes so we can have more than two */
+	if (fixed_mode && downclock_mode &&
+	    abs(drm_mode_vrefresh(downclock_mode) - drm_mode_vrefresh(mode)) <
+	    abs(drm_mode_vrefresh(fixed_mode) - drm_mode_vrefresh(mode)))
+		return downclock_mode;
+	else
+		return fixed_mode;
 }
 
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *fixed_mode)
 {
-	return connector->panel.downclock_mode;
+	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
+
+	if (downclock_mode &&
+	    drm_mode_vrefresh(downclock_mode) < drm_mode_vrefresh(fixed_mode))
+		return downclock_mode;
+	else
+		return NULL;
 }
 
 int intel_panel_compute_config(struct intel_connector *connector,
-- 
2.34.1

