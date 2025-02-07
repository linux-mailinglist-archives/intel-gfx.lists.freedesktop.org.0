Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50328A2C117
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E219F10EABC;
	Fri,  7 Feb 2025 10:58:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UN6xAMOE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5098910EABB;
 Fri,  7 Feb 2025 10:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738925928; x=1770461928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NaKMljhdH+x+L/Xf2y9MXjLOeD6IJnFsFWG8szL0yGM=;
 b=UN6xAMOERPiJSOPFih7ufysgRsxICvnKJZ/9raCIkw2mn4Tbev/sXe1V
 tDckcDSMv+BthopSWMEKcHzMMlj+16rBilxN5E4rpaoS32/eGpSYiMjKy
 wt2uUN3Xcjg5YhfL0mIN/tvTaM6BwhO7Fb8JgXZ/E+umGHM5C9978dOna
 bINpNJV8zm0ZGduoSIcaD+cHQPDIQS8AxcW7DJD2YCciWlQv/s+PCk5It
 u/rrBQ89t0FH/5RU/QGUvAXeHsFHzcTEieBgh3yNX8sG7EbdpIQASDrEl
 3c2L2iUBNhn9LdpNtyZJK6d1rSDHoE95Mes2A02023Z1+G9FVISnl568N A==;
X-CSE-ConnectionGUID: +zuWiX72Sk2rcrYcj75aZQ==
X-CSE-MsgGUID: 4cHowcNlTH+GHZsA2r1ZGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43224061"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="43224061"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:58:48 -0800
X-CSE-ConnectionGUID: sdlsmdliR56xJR2wPK/0hg==
X-CSE-MsgGUID: 5/mW4n0FRsSzD2w0Pf0adw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148709092"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:58:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: [PATCH 4/3] drm/i915/hdcp: Make some functions static
Date: Fri,  7 Feb 2025 12:58:38 +0200
Message-Id: <20250207105838.179805-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738924826.git.jani.nikula@intel.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

With the debugfs implementation moved next to the implementation, we no
longer need to expose some of the functions. Make them static.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.h |  6 ------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 3d83db793baf..1aa4c0fd216f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -209,7 +209,7 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 }
 
 /* Is HDCP1.4 capable on Platform and Sink */
-bool intel_hdcp_get_capability(struct intel_connector *connector)
+static bool intel_hdcp_get_capability(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port;
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
@@ -265,7 +265,7 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 }
 
 /* Is HDCP2.2 capable on Platform and Sink */
-bool intel_hdcp2_get_capability(struct intel_connector *connector)
+static bool intel_hdcp2_get_capability(struct intel_connector *connector)
 {
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool capable = false;
@@ -279,9 +279,9 @@ bool intel_hdcp2_get_capability(struct intel_connector *connector)
 	return capable;
 }
 
-void intel_hdcp_get_remote_capability(struct intel_connector *connector,
-				      bool *hdcp_capable,
-				      bool *hdcp2_capable)
+static void intel_hdcp_get_remote_capability(struct intel_connector *connector,
+					     bool *hdcp_capable,
+					     bool *hdcp2_capable)
 {
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 76bd3996f636..3a7905551051 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -21,7 +21,6 @@ struct intel_encoder;
 struct intel_hdcp_shim;
 struct seq_file;
 enum port;
-enum transcoder;
 
 void intel_hdcp_atomic_check(struct drm_connector *connector,
 			     struct drm_connector_state *old_state,
@@ -39,11 +38,6 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 bool is_hdcp_supported(struct intel_display *display, enum port port);
-bool intel_hdcp_get_capability(struct intel_connector *connector);
-bool intel_hdcp2_get_capability(struct intel_connector *connector);
-void intel_hdcp_get_remote_capability(struct intel_connector *connector,
-				      bool *hdcp_capable,
-				      bool *hdcp2_capable);
 void intel_hdcp_component_init(struct intel_display *display);
 void intel_hdcp_component_fini(struct intel_display *display);
 void intel_hdcp_cleanup(struct intel_connector *connector);
-- 
2.39.5

