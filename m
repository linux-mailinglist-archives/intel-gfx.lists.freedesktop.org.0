Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1879A6B29
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44E510E51F;
	Mon, 21 Oct 2024 13:55:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="isObckYL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACDA10E51F;
 Mon, 21 Oct 2024 13:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518952; x=1761054952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p83u157weH66jkTd1BNhPxPUQQsEUgJLLy/mWpjKaZg=;
 b=isObckYL973ko3g/2GQJaQgqo811tCAMeiHERGP2mpVj6XhGcaPio6w3
 MGngby8NpPUj5ZKQ+0oTlcyugS8inQ+EPqwJhj/0/rntO8Do+dL0QideG
 B205/hAey+WnXK8ziUNzTi5WZLJQliVfiyTuEItA97lbn9mY6NkAYQjmb
 mXPqh76qHUsEBpuVIInRkohPQSdptZ372HGE+gDzKG6vsSSSmpYZELwGA
 CZSxb98cujUN3KkDN096G7LJHvyFVfMAoo4TEM+NhQmJowtpsaPOKeFGq
 YoCEM8mpweKS/LVv/4mu7rJieyr+n/FIJoht9WrXbvdSzyzhOe3DNnYes g==;
X-CSE-ConnectionGUID: Kt1QbQ5DRUmm0W+4RjGovg==
X-CSE-MsgGUID: QCY9QeMFQ8ul/mcKk8KTiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28443953"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="28443953"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:42 -0700
X-CSE-ConnectionGUID: 8UwYwK99RI6ESraGRFM4Fg==
X-CSE-MsgGUID: V/fmhK8jTV2NcUDNzxSbrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79480456"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 14/15] drm/i915/vga: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Date: Mon, 21 Oct 2024 16:54:15 +0300
Message-Id: <f311ea0801853bf4aaee6dea9ce66a22f28e1009.1729518793.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729518793.git.jani.nikula@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Switch to using the new display->platform.<platform> members for
platform identification in display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 2c76a0176a35..fd18dd07ae49 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -16,9 +16,7 @@
 
 static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	if (display->platform.valleyview || display->platform.cherryview)
 		return VLV_VGACNTRL;
 	else if (DISPLAY_VER(display) >= 5)
 		return CPU_VGACNTRL;
-- 
2.39.5

