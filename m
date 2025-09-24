Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486EBB9AE72
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 18:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70EF10E013;
	Wed, 24 Sep 2025 16:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VV2lQoPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A33B10E013;
 Wed, 24 Sep 2025 16:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758732247; x=1790268247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WMaf8AojQ8qG0u5L8+wll0n3i5df0JLWd+GW2uAnS6Q=;
 b=VV2lQoPIDMIo2Z0mlbOtP7slJI9BsYE8JHaaQ7Sn15ZQ/zuf/9WzyAvS
 GIimtycVlGMfmAcFRRs0UnzbrAXpLSl8JWSMHEjqfn3k/KHZvmYdiibyt
 JPQA4Q8kw7Y1nhVmAx8sYNSe4Ro4VgHfHbz4fJL4xwtCt4vgELq1Wwlwq
 OCj9aj5lrJMpvM31SDN3EmnQyVkaJlDvGzJt+cDwC7arhbEIsq31rjw/7
 mUDUWjBEFkTK9Mo3E7GX20tOfEHmBZ2kccv4KwT5IT5jBP+8OJnWwZwOc
 37Aqe/mS/idbH32fwYeAk/p7Zi4ba9w/KXsO8DbeiRWS4FRncSF+qQpp0 A==;
X-CSE-ConnectionGUID: bc8yV5K8Txew2dN8Zl+2cA==
X-CSE-MsgGUID: tBBO7gLlSSeyKg/YY3YbQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72137978"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72137978"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:07 -0700
X-CSE-ConnectionGUID: umm9XC6VR9qmcl5fW8O9bg==
X-CSE-MsgGUID: DmiuJ17TSgOjflxgvi6wEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177515447"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 09:44:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 04/11] drm/xe/stolen: switch from BUG_ON() to WARN_ON() in
 compat
Date: Wed, 24 Sep 2025 19:43:33 +0300
Message-ID: <d14c693a3387a5d89bb88e81349639b5ec5663fb.1758732183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758732183.git.jani.nikula@intel.com>
References: <cover.1758732183.git.jani.nikula@intel.com>
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

We're pretty much never supposed to be using BUG_ON(). Switch to
WARN_ON().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index 2c77457837e4..be249f51231d 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -51,7 +51,8 @@ static inline int i915_gem_stolen_insert_node(struct xe_device *xe,
 					      u32 size, u32 align)
 {
 	/* Not used on xe */
-	BUG_ON(1);
+	WARN_ON(1);
+
 	return -ENODEV;
 }
 
-- 
2.47.3

