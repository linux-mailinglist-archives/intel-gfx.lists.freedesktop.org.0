Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D40382EA74
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B339910E43D;
	Tue, 16 Jan 2024 07:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82D510E43D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391856; x=1736927856;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=axaKpnmCsS3sYu4emc++0iASzhu5ND6DoPquhjoybCU=;
 b=az3qeOONht8wN2UUtw1EKvUuQbp5PB4MIlI5BwvlTSOl5SMe22dNcYOH
 mEnEfVV+fViX2URAkWgjY+qX9YAWUWplv7ifAdqIzqoSL71RXfY+PqBc2
 0koJNmtyh31u73FKY4nLWTjXikI8ZF8JbYHRlMq1UtWvFYkNK6AKXetIq
 bYA2iodVeXBQX8tUb6JzXYOaKQ58AXlTRXItU7+IG988j5x0HdLTEfWJu
 ebUdIFj0Pqz3q0wdLufzmfUQpgAUgJIEjCfl23m/YEZWAjJDKw1rU+tag
 svcCX2sCY3fkfAqvZirK5LH3/o3J4HmTc3Bn+os0KLSGRHF1Pdh24v/Ff g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948789"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948789"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776947058"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776947058"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 16/16] drm/i915: Annotate more of the BIOS fb takeover
 failure paths
Date: Tue, 16 Jan 2024 09:56:36 +0200
Message-ID: <20240116075636.6121-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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

Annotate a few more of the failure paths on the initial
BIOS fb takeover to avoid having to guess why things
aren't working the way we expect.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 00e194ee129a..d9a356d5661b 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -167,14 +167,19 @@ initial_plane_vma(struct drm_i915_private *i915,
 	 */
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
-	    size * 2 > i915->dsm.usable_size)
+	    size * 2 > i915->dsm.usable_size) {
+		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
+	}
 
 	obj = i915_gem_object_create_region_at(mem, phys_base, size,
 					       I915_BO_ALLOC_USER |
 					       I915_BO_PREALLOC);
-	if (IS_ERR(obj))
+	if (IS_ERR(obj)) {
+		drm_dbg_kms(&i915->drm, "Failed to preallocate initial FB in %s\n",
+			    mem->region.name);
 		return NULL;
+	}
 
 	/*
 	 * Mark it WT ahead of time to avoid changing the
-- 
2.41.0

