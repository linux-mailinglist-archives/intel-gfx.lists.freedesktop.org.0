Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1737E5A21BD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 09:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC66610E6D0;
	Fri, 26 Aug 2022 07:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1447310E6C4;
 Fri, 26 Aug 2022 07:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661498697; x=1693034697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tNrDF+VW6PM6JHNCHYVv4gQo1VKsEdTZPVz2k1b5zZU=;
 b=g+HU8KFPE4oFSo/IV+VOcazFWl9hXCLYuD56tIJ65Hm/3stwkYG8xmLO
 RBYSBpfqtJP4EKEwoyi55yGK/mSMdOFH6ff99l52HiVIs8vWnONKeofFy
 wPBEUO4ekGpMwcjH5D9ANeUOhUVUHoegO7T9Q1p1MB0/uP29nimwkaz2k
 k1Yer/vsgdxz2Hl/IgYvSj7yT6OSNuY88S8thA5SibO5RbeW83z3P0UKz
 qGx5gYvUEWDSYqq/vAP4r5P1t1CUhNeEMpgZefw8dmEEULbdcvARX8U9j
 hUk+ttejsp+06YVDZTVQ/LYcv6F4LPInZiNQVA8/S91n/p2dbriVlcSQH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="295224963"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="295224963"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 00:24:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="699755947"
Received: from jaoriord-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.12.186])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 00:24:51 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 26 Aug 2022 10:24:38 +0300
Message-Id: <20220826072438.147598-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Remove log size module parameters
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the module parameters for configuring GuC log size.

We should instead rely on tuning the defaults to be usable for
reporting bugs.

Fixes: 8ad0152afb1b ("drm/i915/guc: Make GuC log sizes runtime configurable")
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  7 +++----
 drivers/gpu/drm/i915/i915_params.c         | 12 ------------
 drivers/gpu/drm/i915/i915_params.h         |  3 ---
 3 files changed, 3 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 3a2243b4ac9f..909e5079657b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -79,9 +79,9 @@ static void _guc_log_init_sizes(struct intel_guc_log *log)
 		}
 	};
 	s32 params[GUC_LOG_SECTIONS_LIMIT] = {
-		i915->params.guc_log_size_crash,
-		i915->params.guc_log_size_debug,
-		i915->params.guc_log_size_capture,
+		GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE,
+		GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE,
+		GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE,
 	};
 	int i;
 
@@ -90,7 +90,6 @@ static void _guc_log_init_sizes(struct intel_guc_log *log)
 
 	/* If debug size > 1MB then bump default crash size to keep the same units */
 	if (log->sizes[GUC_LOG_SECTIONS_DEBUG].bytes >= SZ_1M &&
-	    (i915->params.guc_log_size_crash == -1) &&
 	    GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE < SZ_1M)
 		log->sizes[GUC_LOG_SECTIONS_CRASH].bytes = SZ_1M;
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 06ca5b822111..6fc475a5db61 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -171,18 +171,6 @@ i915_param_named(guc_log_level, int, 0400,
 	"GuC firmware logging level. Requires GuC to be loaded. "
 	"(-1=auto [default], 0=disable, 1..4=enable with verbosity min..max)");
 
-i915_param_named(guc_log_size_crash, int, 0400,
-	"GuC firmware logging buffer size for crash dumps (in MB)"
-	"(-1=auto [default], NB: max = 4, other restrictions apply)");
-
-i915_param_named(guc_log_size_debug, int, 0400,
-	"GuC firmware logging buffer size for debug logs (in MB)"
-	"(-1=auto [default], NB: max = 16, other restrictions apply)");
-
-i915_param_named(guc_log_size_capture, int, 0400,
-	"GuC error capture register dump buffer size (in MB)"
-	"(-1=auto [default], NB: max = 4, other restrictions apply)");
-
 i915_param_named_unsafe(guc_firmware_path, charp, 0400,
 	"GuC firmware path to use instead of the default one");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index f684d1ab8707..2733cb6cfe09 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -61,9 +61,6 @@ struct drm_printer;
 	param(int, invert_brightness, 0, 0600) \
 	param(int, enable_guc, -1, 0400) \
 	param(int, guc_log_level, -1, 0400) \
-	param(int, guc_log_size_crash, -1, 0400) \
-	param(int, guc_log_size_debug, -1, 0400) \
-	param(int, guc_log_size_capture, -1, 0400) \
 	param(char *, guc_firmware_path, NULL, 0400) \
 	param(char *, huc_firmware_path, NULL, 0400) \
 	param(char *, dmc_firmware_path, NULL, 0400) \
-- 
2.37.2

