Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E2F9974D5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 20:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF55E10E137;
	Wed,  9 Oct 2024 18:22:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="npmoK3C6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0288710E137
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 18:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728498147; x=1760034147;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=avRaREy6gVLho7ve0ZUncI5/UBqbKN/LvGNNaHw7J2M=;
 b=npmoK3C6hoz/GbqR1eBf+ZL2sO9ljq6ggABuKEUwdXdNYxqwaIw0qZXq
 aaQdNqHF+FsmavbjPyCc4hU2PqbhxUXfLJb7swHJoQ1YNmMsb4fo4XPRy
 RrZYn/0LwRhuxCrjQPc+YY/h32O9wIgNdbBH9++h7P3J6LIsSZkzdwwuk
 MsXWUe48eqnj3LYHB6eHG5Nrz8l5z5Kt0V5v6JEJ/HBtCjVSNs9n6wSnc
 KMqI0VH7EQ7wr3UAvkc6+BdQF486SPtyLBa/eABjifIYcVJL0g0zzyyA+
 cfYgyJGnVy+GYi2UITsoz9ojlqB3BlO0Cc+yIp94X+OMCyKD1jym0RGzG w==;
X-CSE-ConnectionGUID: bvHbGOvPSiybeJ8K9hkAEg==
X-CSE-MsgGUID: JArSNI0kRA2kLgdbNm9iAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15439010"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="15439010"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 11:22:27 -0700
X-CSE-ConnectionGUID: cS8Du36oTdWMf+6nyvsMCg==
X-CSE-MsgGUID: nkCyLkoISjqkRpZ/SBr8BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76430428"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 11:22:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 21:22:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915: Disable scanout VT-d workaround for TGL+
Date: Wed,  9 Oct 2024 21:22:04 +0300
Message-ID: <20241009182207.22900-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
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

TGL+ should no longer need any VT-d scanout workarounds.
Don't apply any.

Not 100% sure whether pre-SNB might also suffer from this. The
workaround did originate on SNB but who knows if it was just
never caught before that. Not that I ever managed to enable
VT-d any older hardware. Last time I tried on my ILK it ate
the disk!

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2afd10bbe7b8..7c25060e5f32 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8694,5 +8694,5 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
 {
-	return DISPLAY_VER(i915) >= 6 && i915_vtd_active(i915);
+	return IS_DISPLAY_VER(i915, 6, 11) && i915_vtd_active(i915);
 }
-- 
2.45.2

