Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E8C5396E0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA73B10E442;
	Tue, 31 May 2022 19:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A238510E36D
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654024746; x=1685560746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2fYolit8b+D5xtqq9t90uyK2fXlS43cJZ/2g4dOV4to=;
 b=RMmH4AMLcbmhHyBd6awsjmHUBUi5AFmbD3y2kO1AuwoCtmRUq8vBkjtp
 PygZE9VJTVPFu18zdHTwSHVftAvDdkUKp7APLg9JrF8oGU4cMEgdRhECv
 f6CldlqjtwxVSQmWzKShs7hob44EhUcPB6a3VVVPXZXVVUw4pbuDkWOtE
 a9Ld5w3/q/irDGbSLIyTQ5vS2qxqgozjQF0+QXwxkoxrRInekj+M6jhWv
 ivDwV+KlRimesps2/8Pa5zlZpO62VajytXggwhlkpVdh/v0NaoPL2wF2/
 91jXvhGATC4s9m665VgDsrvj040qRXulCz3mgx32CpB/5i/wfCZPeCU+O g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="275366058"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="275366058"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:18:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="581230037"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 31 May 2022 12:18:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 22:18:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 22:18:40 +0300
Message-Id: <20220531191844.11313-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
References: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915: Print out rejected fixed modes
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

To help with debugging DRRS/VRR panel init let's dump out all
the fixed modes we rejected for whatever reason.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index d055e4118558..f55e4eafd74e 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -217,6 +217,10 @@ static void intel_panel_destroy_probed_modes(struct intel_connector *connector)
 	struct drm_display_mode *mode, *next;
 
 	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] not using EDID mode: " DRM_MODE_FMT "\n",
+			    connector->base.base.id, connector->base.name,
+			    DRM_MODE_ARG(mode));
 		list_del(&mode->head);
 		drm_mode_destroy(&i915->drm, mode);
 	}
-- 
2.35.1

