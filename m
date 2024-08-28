Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438DE9625D5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 13:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D242F10E39D;
	Wed, 28 Aug 2024 11:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a8ywGDrb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E825010E39D
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 11:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724843969; x=1756379969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fh6N6oJw9Kee4cz4TJ7ltZ9EMif3b+mqbY/ge3B8YT4=;
 b=a8ywGDrbV4EmCzghadE4j4b8FFU1B9EWN/3jf+LfArpDzzYlXIn3gHzb
 vzBBGm1cjmP19J1+ClKKnVU0G8gkpdGrfT84t60TqssGkHtflY/6jHeT3
 rVrUocHbvBQG1vI1MixQUjJamMFUaw/HmPMbmow0M9XckDWJsdzRcph5O
 PddyntepBZb23cge7KOAigGZ11JMIF0bZOvEmeIyzl9UEPiTycMHe5b4G
 R+nqWxES9mBU9GxsIdCLwQtcknXcFuZh+1hKQMZNZY8PA0FBtEjeI2c/W
 WXCAryvOWL1rGuT7QodRKwQG3CbBGI6ycYUMQi10zIdwYaeNNSmWTTzmY A==;
X-CSE-ConnectionGUID: mTC0U/DzQP23BznOq8jLrQ==
X-CSE-MsgGUID: Y2sWLJXsS0izSmg7j+Ce9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23171975"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23171975"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:19:28 -0700
X-CSE-ConnectionGUID: AlqHy8GYTIOXAVc6BUhEiw==
X-CSE-MsgGUID: riG+KvxbTtOU713BfwNDVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="67553209"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:19:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Daniel Veter <daniel.vetter@ffwll.ch>
Subject: [PATCH 2/2] drm/i915: deprecate the i915.modeset module parameter
Date: Wed, 28 Aug 2024 14:19:09 +0300
Message-Id: <2c63e2048eed64f728478fbcfc84f51c7f3212e6.1724843853.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724843853.git.jani.nikula@intel.com>
References: <cover.1724843853.git.jani.nikula@intel.com>
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

The i915.modeset parameter doesn't really provide any useful benefit
over the nomodeset kernel parameter. Anything that i915.modeset does can
be achieved via nomodeset or not probing i915 at all.

Unfortunately, the i915.modeset parameter is widely referenced on
various forums, and removing it is not that simple. Start off by
deprecating it in the module parameter documentation, and logging a
warning message on non-default values.

Cc: Daniel Veter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_module.c | 6 ++++++
 drivers/gpu/drm/i915/i915_params.c | 3 +--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 3397c2368ed8..7ed6d70389af 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -29,6 +29,12 @@ static int i915_check_nomodeset(void)
 	 * nomodeset boot option.
 	 */
 
+	if (i915_modparams.modeset == 0)
+		pr_warn("i915.modeset=0 is deprecated. Please use the 'nomodeset' kernel parameter instead.\n");
+	else if (i915_modparams.modeset != -1)
+		pr_warn("i915.modeset=%d is deprecated. Please remove it and the 'nomodeset' kernel parameter instead.\n",
+			i915_modparams.modeset);
+
 	if (i915_modparams.modeset == 0)
 		use_kms = false;
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 316e55f3e87b..37746dd619fd 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -64,8 +64,7 @@ struct i915_params i915_modparams __read_mostly = {
  */
 
 i915_param_named(modeset, int, 0400,
-	"Use kernel modesetting [KMS] (0=disable, "
-	"1=on, -1=force vga console preference [default])");
+	"Deprecated. Use the 'nomodeset' kernel parameter instead.");
 
 i915_param_named_unsafe(reset, uint, 0400,
 	"Attempt GPU resets (0=disabled, 1=full gpu reset, 2=engine reset [default])");
-- 
2.39.2

