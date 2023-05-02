Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB1E6F476A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E07B10E59F;
	Tue,  2 May 2023 15:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA9310E59B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041899; x=1714577899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4t7YTg9dkgjuORv06GbTmWANGf2pkCgj3b8pe9U2RVg=;
 b=bQeiThg+SjZJJF96Q91tJR3ztdANx3PsRzrTTUh6vN0dk86IH0uXw6yd
 X5bCBCeiV1VXafB16z+tSYmfw4/ohL4ABXFYhkGuKY3hIwAJaiAzvvsix
 Tpb8PlFHJZTgDhg0gd6j1f56+Xb7QXd1UHE8oz/E7MQmP/43A9wSXytWd
 Z8Lh1njqLFmjCIiAAMB6eWw3n+1pO+cwMHYJfhTULes3Juu7vYiv07OVt
 JqIuGP0AGp5YAxzTIrfXfqUmT0tfwclyw64ptnNEHV+KguPt8vaF0432W
 gBNHvhVIZ8wsuO1YQHzYuytzNDZk9vvIqfQ1vuCreqUb/vU4cQDmM1LI0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889378"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889378"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="807896289"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="807896289"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:24 +0300
Message-Id: <20524292b002800975d82d23b5bd47da878f1733.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/24] drm/i915/error: fix
 i915_capture_error_state() kernel-doc
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

drivers/gpu/drm/i915/i915_gpu_error.c:2174: warning: Function parameter or member 'dump_flags' not described in 'i915_capture_error_state'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f020c0086fbc..04ad30274896 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2162,7 +2162,7 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
  * i915_capture_error_state - capture an error record for later analysis
  * @gt: intel_gt which originated the hang
  * @engine_mask: hung engines
- *
+ * @dump_flags: dump flags
  *
  * Should be called when an error is detected (either a hang or an error
  * interrupt) to capture error state from the time of the error.  Fills
-- 
2.39.2

