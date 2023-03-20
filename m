Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E31436C22CD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:34:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4788C10E675;
	Mon, 20 Mar 2023 20:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0812810E675
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679344454; x=1710880454;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YVsG+zciXkbBgIc/RuciSXmtFZysnDVBNiS6aG1BYog=;
 b=nLWNZuZ4L3jaZgaZGRT6xh6J82Glxha+b0xci7nhOZVE7q/racqh29pW
 8L0nU0k1wvDe2Ur3mnKwLm0ET3cbtS7X1oWCOirjDh811fpus7kcj4iZg
 mxXGhIvDxWIs7Diza53eE4+jwSjmQz0F/E3Ko24pVl3CNTnA0fyiCRmGd
 1plcS3o7g1Ra1jZg18RLUcpmmkeCHyQGI2EzSh83ZcYJU/CClRHqEWuT8
 eBbdjB8I4M1NzYIPhUIgz+adwujOq+2csFuQNL0Pr9L2mIEZlXMIQ22HS
 w0axaz5BNG6458i13cZCk61pdVKGeVX7PvnsSxlMzCXKshH9Gs8EkhzyV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327148305"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327148305"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:34:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770339246"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770339246"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:34:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:34:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 22:33:52 +0200
Message-Id: <20230320203352.19515-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/vrr: Allow VRR to be toggled
 during fastsets
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

Now that VRR enable/disable are called from convenient places
it is trivial to allow it to change state during fastsets.
Make it so.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7542
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cefd9f2e1331..07743b2d2ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5849,7 +5849,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(splitter.link_count);
 	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
 
-	PIPE_CONF_CHECK_BOOL(vrr.enable);
+	if (!fastset)
+		PIPE_CONF_CHECK_BOOL(vrr.enable);
 	PIPE_CONF_CHECK_I(vrr.vmin);
 	PIPE_CONF_CHECK_I(vrr.vmax);
 	PIPE_CONF_CHECK_I(vrr.flipline);
-- 
2.39.2

