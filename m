Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA92BA2FEB5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 01:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45B010E401;
	Tue, 11 Feb 2025 00:01:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UIs+rlri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E395B10E401
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 00:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739232101; x=1770768101;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Fd6gtnSDb7Mx+6f0/i6LYPhdAiJqKgRC3uxkoLFsnfU=;
 b=UIs+rlriuKnfczx7keuhuhVVpKekjM/76HKHACVZR4c/7Jyw6kz5fScD
 B0bWmUu3es5YfqB9x2Jhnr/KL4/ebR8VG03Mtcsgav6UzIc2Z7PHty4XZ
 xDat3vNyTwdjG+d+7E6y8SpaNt2qQh2nAKuSMUk8z2Jy2BPTRrEB0gWhQ
 svoDRflME7FnxWJVXgV7v/x8xcYcLQla7PBiH4fh91ZuAhnjSwlEn5T29
 XOvHoCwBSPvBwsevGgB6UaFgcrMTnV5H8F+aZRHOC1FbPx7QPLWZelVfj
 BhcWKnpVFFjHlDIgJQPAj8yJggPY6j1rXnnGii7b+n05OlZcm1pPxRt/t Q==;
X-CSE-ConnectionGUID: 2v1lRUm7SLeoj6pM0ZddvA==
X-CSE-MsgGUID: W66220GiS3CPVTgRwHqdvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27434844"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="27434844"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 16:01:41 -0800
X-CSE-ConnectionGUID: tC8VFVh+SNGwEQISGY56xA==
X-CSE-MsgGUID: gdiDbM/mRZuraZDkjFSR2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112558909"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 16:01:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2025 02:01:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915: Fix CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n build
Date: Tue, 11 Feb 2025 02:01:32 +0200
Message-ID: <20250211000135.6096-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
References: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
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

Looks like I missed one of myriad CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n
special cases when converting the intel_display_power_{get,put}()
code to use struct intel_display. Only noticed after the fact
when building a EXPERT=n kernel :/

Fixes: 5dcfda5cfa42 ("drm/i915: Convert intel_display_power_{get,put}*() to intel_display")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index b5d67b6c73cf..1e4e113999fb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -217,7 +217,7 @@ intel_display_power_put_async_delay(struct intel_display *display,
 	__intel_display_power_put_async(display, domain, wakeref, delay_ms);
 }
 #else
-void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
+void intel_display_power_put_unchecked(struct intel_display *display,
 				       enum intel_display_power_domain domain);
 
 static inline void
-- 
2.45.3

