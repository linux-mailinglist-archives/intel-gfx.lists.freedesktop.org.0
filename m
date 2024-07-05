Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E45928B01
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86ABF10EBF1;
	Fri,  5 Jul 2024 14:53:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mOOG7s+4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D406010EBF1;
 Fri,  5 Jul 2024 14:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191233; x=1751727233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NmmGmKyKT7psmcRp9FZ6mO4TR337aAdB8UmMk6R4Sk4=;
 b=mOOG7s+4UZaVJ8wmgrP0/SI5af/I9CT6joF9jA4bV0ExQzGx/HR7HZEa
 g1syKst3nSAr4ZZuZPg081IPijeVTVqlcVRQtXy3nKS60Q61CI7yXVW8C
 J1tDaNwx1vdDV78adyuOYp/wwznjpADJQpqkBlBYzYTNRY5cXRv15AGsj
 LQ3jKg/6ldqOlrf6214+HrSGcf60lsf2hWOpmGmKuD57lPFlnBdFnwvRW
 VZJauiyrwvZAHliM1nPTCr9JlS1w7ZqGIESyEDcuz0Rr1wKcVodGvX1VA
 3vS/CCjiEDiyFbO6le/xelzDqGgezUw7ewoT4mB1I1qR/1JRl/HCfc4u1 g==;
X-CSE-ConnectionGUID: QkoBDJm/QXKnPVVQc1TtpQ==
X-CSE-MsgGUID: zgF2NZvvTAaMWElrHA/Hew==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204883"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204883"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:53 -0700
X-CSE-ConnectionGUID: vy04t6zMSMyjryFhY06s9g==
X-CSE-MsgGUID: PwFJ/PhBQNiThDOdhsPkjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864643"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 19/20] drm/i915/fbdev: Adjust fbdev stolen mem usage heuristic
Date: Fri,  5 Jul 2024 17:52:53 +0300
Message-ID: <20240705145254.3355-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

Replace the "1/2 of stolen size" fbdev fb size heuristic with
something a bit more clever, that is ask the FBC code how much
stolen mem it would like to have avaialable for its CFB use.

TODO:
- This doesn't account for the fact that FBC's idea
  usable stolen size might differ from other users of stolen
- Would be nice to share the code with xe, but need to
  figure out how to abstract the stolen size and
  dgpu/lmem stuff

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 0a6445acb100..29f3241c9270 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -16,12 +16,11 @@ bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	/*
-	 * If the FB is too big, just don't use it since fbdev is not very
-	 * important and we should probably use that space with FBC or other
-	 * features.
-	 */
-	return i915->dsm.usable_size >= size * 2;
+	if (size > i915->dsm.usable_size)
+		return false;
+
+	/* try to ensure FBC has enough stolen to do its job well */
+	return i915->dsm.usable_size - size >= intel_fbc_preferred_cfb_size(&i915->display);
 }
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-- 
2.44.2

