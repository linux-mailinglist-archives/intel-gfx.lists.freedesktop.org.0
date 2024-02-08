Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4215284E3D7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36C110E8D1;
	Thu,  8 Feb 2024 15:18:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TBHcqmE5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF3E10E8D1
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405480; x=1738941480;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NYnSofws3Kg8ALTgRNj1VakbZDoDN0sGz3EbtHlAAs0=;
 b=TBHcqmE54mcZjV1qHtP5a/+fnU36FrUDv12Kw09Zd8bJFzkx6bk+kqcE
 H0xUVL/B6rZzKMBfYpBT0d09zmGPvGXq+B6EE6haGeNXW6zYU6kZs2Zfb
 o7YNdcaeIThEAnF29Ti2VYjoQaq48sU4/vXp4rGgVuywMNoKytmegI05h
 vuglmugWRsuJmsED7hxS2k48LiDt4jAHAoG0hChgcBvT8Yy9X8eZUY1n8
 UAhOLgBWjagWMTSoaIasK7X/iPGnH31yqo/O9SsNrlxs6jgTf2mL1gEpg
 3HlMCQz3+ZFvHjF3BmGzdXxhU9zyfLFEXCuleodKXOfZPmvyoNkH6ZKu0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219282"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219282"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:18:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863677"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863677"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/13] drm/i915/dvo/ns2501: Nuke pointless casts
Date: Thu,  8 Feb 2024 17:17:19 +0200
Message-ID: <20240208151720.7866-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The dvo 'dev_priv' is void* so no need for and explicit cast.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/dvo_ns2501.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
index a724a8755673..32fd4aa27598 100644
--- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
+++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
@@ -551,7 +551,7 @@ static void ns2501_mode_set(struct intel_dvo_device *dvo,
 			    const struct drm_display_mode *adjusted_mode)
 {
 	const struct ns2501_configuration *conf;
-	struct ns2501_priv *ns = (struct ns2501_priv *)(dvo->dev_priv);
+	struct ns2501_priv *ns = dvo->dev_priv;
 	int mode_idx, i;
 
 	DRM_DEBUG_KMS
@@ -655,7 +655,7 @@ static bool ns2501_get_hw_state(struct intel_dvo_device *dvo)
 /* set the NS2501 power state */
 static void ns2501_dpms(struct intel_dvo_device *dvo, bool enable)
 {
-	struct ns2501_priv *ns = (struct ns2501_priv *)(dvo->dev_priv);
+	struct ns2501_priv *ns = dvo->dev_priv;
 
 	DRM_DEBUG_KMS("Trying set the dpms of the DVO to %i\n", enable);
 
-- 
2.43.0

