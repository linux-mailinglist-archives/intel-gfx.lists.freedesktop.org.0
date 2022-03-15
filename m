Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E31A54D9C2A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B95310E417;
	Tue, 15 Mar 2022 13:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0D810E417
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350884; x=1678886884;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w9moGOU5p3Pspf4eHsAxuyOof2vAnvUVZcBX4epvx20=;
 b=HWDt5fNqMVWioYXps+bqccMm7OOBts6vdNuc3BZA+a7zoOj7nsFcL1au
 St1FswUO6N825BGME8BYNEwHobuoeO3wHL9gJfPUaILW31gFt2J+++jxw
 lCEh552lDCmv+sOgj5Xw0xSHacutcR8j2DJUOnxySvHmZFRjI3y/Ytvac
 Qtt0wM1TCo1wCZcQdNbpWq6zfT7ShNqY7hJGX1FAEIhpNVv6+pshsZqBm
 wo/xQpw5oXA0QL8JLR3WKQFCRZ7tGf76k84dIynRykf/+HzNMzGKlQPWa
 k8jP1n2fgC2KT/JyxO+DAwyPbCZdKZ5bTOmuu4DNGfDYupr10giQjqYYK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342725445"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="342725445"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="690193052"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 15 Mar 2022 06:28:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:28:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:46 +0200
Message-Id: <20220315132752.11849-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Fix DRRS frontbuffer_bits handling
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

Now that DRRS can operate on multiple pipes we need to make sure
one pipe doesn't throw away the other pipe's frontbuffer_bits before
said pipe can handle them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index e1b41b772521..e9d622fe66b3 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -258,7 +258,7 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 }
 
 static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
-					  unsigned int frontbuffer_bits,
+					  unsigned int all_frontbuffer_bits,
 					  bool invalidate)
 {
 	struct intel_crtc *crtc;
@@ -267,6 +267,8 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 		return;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		unsigned int frontbuffer_bits;
+
 		cancel_delayed_work(&crtc->drrs.work);
 
 		mutex_lock(&crtc->drrs.mutex);
@@ -276,7 +278,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
-		frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
+		frontbuffer_bits = all_frontbuffer_bits & INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
 		if (invalidate)
 			crtc->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
 		else
-- 
2.34.1

