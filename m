Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 185146F476F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6BF10E375;
	Tue,  2 May 2023 15:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E9110E598
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041913; x=1714577913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JLBL8qaD6gsQaVHn8/lXy2vv0GTJi00C/oMZvuvHuxw=;
 b=Pwq2dFzoRB9wmOtXD7a6d/MWppYJESQlrXP5/H/ThgASziHtYUGZ6g8P
 xwIQM1sCfY5xN+kE6GDTS2/S93iO2d8LNqj8ITkBaeQAce1maP+SFXTOj
 9Eo909E3adwCp8XFT7/x8DRC4ZE9ewQSSQymrp1Fy9X11my6HGQ1aPhxP
 iRxN8j8guSV1fCpRM2/QeX1MCwhApkoANRh7tYqECVmTLVDonlndt4rR9
 IuKtzM3Mh5sQmIFwJ3+CJwjYJZ3qg81KGTRmTa2f0YH7IpqFdu8lioqeE
 utJHjeLD3zMv9qkRGXcc+2OX2a2nQfbCLeSO6JYIlIo7HwS3rnXR2FoSQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337554091"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="337554091"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="728976716"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="728976716"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:27 +0300
Message-Id: <a2a81f9ee78591def0534c81a63dbc652c44bbd3.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/24] drm/i915/gem: fix function pointer member
 kernel-doc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

You can't document function pointer member as functions.

drivers/gpu/drm/i915/gem/i915_gem_region.h:25: warning: Incorrect use of kernel-doc format:          * process_obj - Process the current object
drivers/gpu/drm/i915/gem/i915_gem_region.h:35: warning: Function parameter or member 'process_obj' not described in 'i915_gem_apply_to_region_ops'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_region.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.h b/drivers/gpu/drm/i915/gem/i915_gem_region.h
index 2dfcc41c0170..8a7650b27cc2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.h
@@ -22,9 +22,7 @@ struct i915_gem_apply_to_region;
  */
 struct i915_gem_apply_to_region_ops {
 	/**
-	 * process_obj - Process the current object
-	 * @apply: Embed this for private data.
-	 * @obj: The current object.
+	 * @process_obj: Process the current object
 	 *
 	 * Note that if this function is part of a ww transaction, and
 	 * if returns -EDEADLK for one of the objects, it may be
-- 
2.39.2

