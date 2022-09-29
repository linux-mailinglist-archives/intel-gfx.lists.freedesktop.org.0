Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB53D5EEEA2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427DB10E993;
	Thu, 29 Sep 2022 07:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045C710E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435734; x=1695971734;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QZNzWkKHnxfUjIWUOFjq1wjat9BJmHhUVcYmZ8d3tmM=;
 b=iEMcVbYw+j4BOriWk+Ru6iDQtINAd1AI6lJILCCgM/rop3CMZqoWrpVB
 6sYN9yFc4XmAD2hoJoM4l8SMd/thKNTRxAGWtYBcTnUtNRFvzguxdbKIx
 45vB1/W0kIH3znb6Wj44LGna18h2BYqjCw1dLVxtpptDIjJXc/F5NuCbw
 IgqXkWRhj2dKbVBlkD2Ky+Lt1SGwT2II0ny326d1PkTdQd45HolUcMAhZ
 Xt6JkbWKBCwSs/5eIt/Zg8D3EBV6GWti4XJq19Z6FQLdVLbe5hdY0tFH0
 6rf69XDZ1FViEEQWbuB2J6EfGKHtZJuI8IAqDz/w9LcFBFepEh/sUu+v3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="303302723"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="303302723"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="867274429"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="867274429"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 29 Sep 2022 00:15:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:14 +0300
Message-Id: <20220929071521.26612-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: Simplify the
 intel_color_init_hooks() if ladder
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

Get rid of the funny hsw vs. ivb extra indentation level in
intel_color_init_hooks().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ddfe7c257a72..ce8a4be9b292 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2238,12 +2238,11 @@ void intel_color_init_hooks(struct drm_i915_private *dev_priv)
 			dev_priv->display.funcs.color = &skl_color_funcs;
 		else if (DISPLAY_VER(dev_priv) == 8)
 			dev_priv->display.funcs.color = &bdw_color_funcs;
-		else if (DISPLAY_VER(dev_priv) == 7) {
-			if (IS_HASWELL(dev_priv))
-				dev_priv->display.funcs.color = &hsw_color_funcs;
-			else
-				dev_priv->display.funcs.color = &ivb_color_funcs;
-		} else
+		else if (IS_HASWELL(dev_priv))
+			dev_priv->display.funcs.color = &hsw_color_funcs;
+		else if (DISPLAY_VER(dev_priv) == 7)
+			dev_priv->display.funcs.color = &ivb_color_funcs;
+		else
 			dev_priv->display.funcs.color = &ilk_color_funcs;
 	}
 }
-- 
2.35.1

