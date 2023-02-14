Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A0D696550
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 14:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBB610E8DC;
	Tue, 14 Feb 2023 13:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2CA10E8EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 13:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676382465; x=1707918465;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a6DW008nCAfeb0f7soPHJjqcH/ay5A4GGQyMtLtiQbw=;
 b=FPutb26DG+NXSNHHjcdJ4I+LxVGjyuIHNqZK2PxU82Gx2rQroauLSg7W
 JDBCHnYkKl2VmXmI4ytafK5bsUb8nN9OonkPAXJgljmat/W9A7KnK5YAW
 5BrL2U1QEeVbHBv7IizjBlTua1f04pFDFwAzUy+peh4O8JLWiGDG/bMiE
 MuVp0Y0fWz7Tae/r29pRgyzPPPl3lZiEWSFVO4ofAWDfCsEnYsMCdl237
 o0McJBPm1nJgrGHMun1tsu7hn3s3nVhloiC62WprOriUKNwEx7w4x/Hru
 KTRMw6b23cxBPgXYNTQUnfkTkZrSgFwZfcuO0sXmYxwBisvFVOX3bHdNq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311519656"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311519656"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 05:47:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699540849"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699540849"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 14 Feb 2023 05:47:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 15:47:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 15:47:38 +0200
Message-Id: <20230214134739.25077-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Don't hide function calls with
 side effects
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

Hiding a function call with side effects inside the
variable declaration block is a bit rude. Make it
stand out more.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index d1d54870aefd..e196da8c8f71 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1614,8 +1614,9 @@ static void intel_pwm_disable_backlight(const struct drm_connector_state *conn_s
 static int intel_pwm_setup_backlight(struct intel_connector *connector, enum pipe pipe)
 {
 	struct intel_panel *panel = &connector->panel;
-	int ret = panel->backlight.pwm_funcs->setup(connector, pipe);
+	int ret;
 
+	ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 	if (ret < 0)
 		return ret;
 
-- 
2.39.1

