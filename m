Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9A476E826
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 14:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6138110E604;
	Thu,  3 Aug 2023 12:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB0210E600
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 12:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691065633; x=1722601633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DrjH56tle5C6gpGs4qjSMa6QAOx3muGE9raxlPAYLf8=;
 b=dvQ8eVcJ+uEG15Hh5La0bn1rNpGgyOTuRjHBVdUwva+jZ6Z+1Olg5STY
 Jf1sl2ODWz0JWtp1iExOz20cZzsQZaXuqBbvsg26l5IHDOENjijGr89+q
 lHXFVKvaFAkZ1p3V4uAsE7JRFuAibNcB6/JGAjIcFWm7JN8uIQPBs/P7N
 2Zs/nN8r77sqUd+gWmI8EOdK4FCIl0jzjiy00oSpDui269Qymnrju2s+i
 6K1za8SkVw+T1Fd5OkofNkvk4zxLzOCWjbegipCfyMXN6uQ5qW55iIXik
 0yKFGPCJ2bjmeMf4VAmrDfdI8a6C6TYafpedYrozISgQ8QbD+e0zaVYqe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="372596581"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="372596581"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 05:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="799545622"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="799545622"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 05:27:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 15:27:06 +0300
Message-Id: <20230803122706.838721-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/sdvo: fix panel_type initialization
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
Cc: jani.nikula@intel.com, =?UTF-8?q?Tomi=20Lepp=C3=A4nen?= <tomi@tomin.site>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 3f9ffce5765d ("drm/i915: Do panel VBT init early if the VBT
declares an explicit panel type") started using -1 as the value for
unset panel_type. It gets initialized in intel_panel_init_alloc(), but
the SDVO code never calls it.

Call intel_panel_init_alloc() to initialize the panel, including the
panel_type.

Reported-by: Tomi Leppänen <tomi@tomin.site>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8896
Fixes: 3f9ffce5765d ("drm/i915: Do panel VBT init early if the VBT declares an explicit panel type")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.1+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 8298a86d1334..b4faf97936b9 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2752,7 +2752,7 @@ static struct intel_sdvo_connector *intel_sdvo_connector_alloc(void)
 	__drm_atomic_helper_connector_reset(&sdvo_connector->base.base,
 					    &conn_state->base.base);
 
-	INIT_LIST_HEAD(&sdvo_connector->base.panel.fixed_modes);
+	intel_panel_init_alloc(&sdvo_connector->base);
 
 	return sdvo_connector;
 }
-- 
2.39.2

