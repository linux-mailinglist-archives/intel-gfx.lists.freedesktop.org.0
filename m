Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1151928B02
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A57D10EBF8;
	Fri,  5 Jul 2024 14:53:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TJS8aqVv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78B110EBF8;
 Fri,  5 Jul 2024 14:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191236; x=1751727236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lMUzAyGiU+cLcSh4TCaPH8WYbAeZe+weHQiUp0aSrvo=;
 b=TJS8aqVvcZUhtYEjJKgRNq6lw3hCDKzNhdiuRFjr8/KGJVx+fRy1IVXG
 6ndu8EYOxXu8esMoY75AEQH5aIUAtl/HzNuk8057Qh0JU5UKYUOeWbuph
 J+yrwdHGjLqJQGZ9pXVSIdO5MJJT+seAkvbFEN/H/RW71GESAIyPY7Q2e
 8yYB677ev+Jc95QMZ4KFkW9VtLwFcFKjxgNXuqeiY8cDKk9bBt9TDe5L5
 djtUJMFt+/R4LLmJncFzj1lpubeTW3S7y4jfVwp6BWCyptsC1HE73ZQY3
 O0FzGVhMUc5qAmusqzR4wp88JNSA51XXttiz3YoGcHBbZhXoB60y+ztHe w==;
X-CSE-ConnectionGUID: jU3evtrWS0+/pWcVbYxd8A==
X-CSE-MsgGUID: yi+gfQWSQWqRuiwVaLOpIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204887"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204887"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:56 -0700
X-CSE-ConnectionGUID: VqoZeFeERAK8SgsaAMfaRA==
X-CSE-MsgGUID: w3bCYf9yR9CiT0dLP4xoaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864651"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 20/20] drm/xe/fbdev: Adjust fbdev stolen mem usage heuristic
Date: Fri,  5 Jul 2024 17:52:54 +0300
Message-ID: <20240705145254.3355-21-ville.syrjala@linux.intel.com>
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
- Would be nice to share the code with i915, but need to
  figure out how to abstract the stolen size and
  dgpu/lmem stuff

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index f67bc0fd803b..62e1d176b07f 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -24,12 +24,11 @@ bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
 	if (!stolen)
 		return false;
 
-	/*
-	 * If the FB is too big, just don't use it since fbdev is not very
-	 * important and we should probably use that space with FBC or other
-	 * features.
-	 */
-	return stolen->size >= size * 2;
+	if (size > stolen->size)
+		return false;
+
+	/* try to ensure FBC has enough stolen to do its job well */
+	return stolen->size - size >= intel_fbc_preferred_cfb_size(&xe->display);
 }
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-- 
2.44.2

