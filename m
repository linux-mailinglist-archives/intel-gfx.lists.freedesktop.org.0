Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3AD527F4E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 10:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3088E10FBC2;
	Mon, 16 May 2022 08:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22AD410FBC2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 08:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652688634; x=1684224634;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7nmViIWJ5CsZ9BD0soisnj9rifKrQQhGuhLcjv+H1h4=;
 b=VZAbfL5D6YSvg/sQ/vZqhupovEPSzZjcRXIIl1jJpzBp2nDU5Df3Mc3x
 Y23nXy0cdC3GO/vjEiUOgNXCXY2ImFYXMLG2fA9XLdPJ73on3Ck3cbVW1
 XAFSxAOeDE0KfdkMs75r1Fh/RAEcnTJU7baks0cAtxiV/Z1XdVNsIMXPi
 Ck5Li163gRwagXYsCD1Al/++nFKMzJT8m3wsY3JHMlNtsm72TPfujt3Az
 eQ8hdWW0XI8G2v1enQxpMvqkGzMXzCInWPuKMJ6MksBcQ0M7Pabeq+4T0
 ErG57CGCeie0YlT3ktK9VFRJzpBxKuiGrXASwZgjYzBTKMU1qxNV0lknI A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="270463972"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="270463972"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 01:10:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="522344945"
Received: from jrozansk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.130.253])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 01:10:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 May 2022 11:10:15 +0300
Message-Id: <20220516081015.1058987-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/overlay: remove redundant GEM_BUG_ON()
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

There's an early return for !engine->kernel_context.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index ee46561b5ae8..79ed8bd04a07 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1399,8 +1399,6 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 
 	overlay->i915 = dev_priv;
 	overlay->context = engine->kernel_context;
-	GEM_BUG_ON(!overlay->context);
-
 	overlay->color_key = 0x0101fe;
 	overlay->color_key_enabled = true;
 	overlay->brightness = -19;
-- 
2.30.2

