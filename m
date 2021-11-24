Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A66545B929
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FBA76E84E;
	Wed, 24 Nov 2021 11:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384146E84E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:36:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235079255"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235079255"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:36:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="475088737"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 24 Nov 2021 03:36:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:36:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:33 +0200
Message-Id: <20211124113652.22090-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/20] drm/i915/fbc: Eliminate racy
 intel_fbc_is_active() usage
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

The ilk fbc watermark computation uses intel_fbc_is_active() which
is racy since we don't know whether FBC will be enabled or not at
some point. So let's just assume it will be if both HAS_FBC()
and the modparam agree.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 01fa3fac1b57..18fbdd204a93 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3369,13 +3369,8 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 	}
 
 	/* ILK: LP2+ must be disabled when FBC WM is disabled but FBC enabled */
-	/*
-	 * FIXME this is racy. FBC might get enabled later.
-	 * What we should check here is whether FBC can be
-	 * enabled sometime later.
-	 */
-	if (DISPLAY_VER(dev_priv) == 5 && !merged->fbc_wm_enabled &&
-	    intel_fbc_is_active(&dev_priv->fbc)) {
+	if (DISPLAY_VER(dev_priv) == 5 && HAS_FBC(dev_priv) &&
+	    dev_priv->params.enable_fbc && !merged->fbc_wm_enabled) {
 		for (level = 2; level <= max_level; level++) {
 			struct intel_wm_level *wm = &merged->wm[level];
 
-- 
2.32.0

