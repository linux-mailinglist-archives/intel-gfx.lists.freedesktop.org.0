Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC8B71832A
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 15:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FD910E4EC;
	Wed, 31 May 2023 13:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ECB410E4E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 13:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685540893; x=1717076893;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=asMm79vceNFxySRvEq211roNCZPU0rYNr/OVWRf3NZE=;
 b=JpslniTlz3u0ZUTIJrTPPPsndOKhs9flis9AT/YSBoUmMTAwKu0Jzyy1
 icAmfaf4p/Iwse+hODF/Ek44cPMkXRvFv4MMZl5en6+nn8u8vkWXFqFpY
 jAQuv+a4F0fb9L6yBcNCy4xOi3Q8VydRiqwmYiMvJlgXtzOyVIC6Lf8pW
 InXnKSPew/5idzDVXIGnMaS0oJaBv5PvhiUGD22BAkmSWEhM52SevtVXV
 Iw1Bydxn7D+NKbGLKVsky+xxtVF/UaQzN55OnSkLjmH6cw5Ofajkx3aeN
 OmLJIuxdxJv56PkZZI/+zuyN0SBsNwFSJWVrVLV7r2xGAtM89pSH9sHUw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421008242"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="421008242"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 06:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736679914"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736679914"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 31 May 2023 06:48:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 May 2023 16:48:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:48:00 +0300
Message-Id: <20230531134806.23065-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915: Remove bogus DDI-F from
 hsw/bdw output init
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

HSW/BDW don't have DDI-F so don't go looking for one.

Seems to have been accidentally left behind when the
skl+ stuff got split out in commit 097d9e902068
("drm/i915/display: remove strap checks from gen 9").

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f51a55f4e9d0..4f158c428937 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7466,8 +7466,6 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_ddi_init(dev_priv, PORT_C);
 		if (found & SFUSE_STRAP_DDID_DETECTED)
 			intel_ddi_init(dev_priv, PORT_D);
-		if (found & SFUSE_STRAP_DDIF_DETECTED)
-			intel_ddi_init(dev_priv, PORT_F);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
-- 
2.39.3

