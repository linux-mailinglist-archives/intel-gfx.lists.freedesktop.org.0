Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAEA5180E6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5216210F817;
	Tue,  3 May 2022 09:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4013610F820
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569857; x=1683105857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fo30c48GBOW/78YLqeQZAxUs5nIpCxpLWhzdLHQfrM0=;
 b=IGGX5y4REGqDi2gcM1VHkCU9hFzI4n34EYZJ6rGW2imDRNHFaRedj+XK
 4i5bx2LsML4Lfg20xoqajcoo2T/7pP7W7AVfTf1OYyQxV8u08+thdp8bz
 4TvoyoD2PCPI8YeDJrYVBHa07ejuxLAJcKLSUS0uTxWVK300E9gpZpknz
 4X1yyIb4UA5OjKmIZUcDHaLs/7RrwsgTSNT6fvhtAOGxUWwn7rErxdDiJ
 /QlgNyJ5+B62vqdJEkPogMuMsibXBC1XCptp0URW/6t9xG8SJv1KMlloi
 On6QOW7Wne39CESswu+6uCtnnW3R7FtEIv/gcaNA88bwejFIXTwDiLL0y A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="249415475"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="249415475"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="562142053"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:46 +0300
Message-Id: <2ac1c55f94a08d5e72c0b518d956a11002ec85c1.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/20] drm/edid: reset display info in
 drm_add_edid_modes() for NULL edid
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If a NULL edid gets passed to drm_add_edid_modes(), we should probably
also reset the display info.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index bc43e1b32092..1dea0e2f0cab 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5697,6 +5697,7 @@ static int drm_edid_connector_update(struct drm_connector *connector,
 	u32 quirks;
 
 	if (edid == NULL) {
+		drm_reset_display_info(connector);
 		clear_eld(connector);
 		return 0;
 	}
-- 
2.30.2

