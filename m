Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A475D97222A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BF110E64B;
	Mon,  9 Sep 2024 18:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AGEfqzgv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 995FA10E647;
 Mon,  9 Sep 2024 18:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908358; x=1757444358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z/47Kosq/Zw8ZRVnvAV6y+oac/MhiLOsDEH155Gh/eg=;
 b=AGEfqzgvzLytpWSBWrMQAEjBfJNY6kmfjrjQt6QnFLYtdhiYjHE9s9Je
 GeyPbuFlfT84kBOYGOjM4jSPhGyFzb6t29rhwigw8I4FVHdcgPz9uCYuj
 dQewuuG26GOBxLrGEsWNfI4DIQB60xsV6Q+UjTh/F9EsMVAoP3e3M0faW
 1oBvhdftXiuEx9asj//HczUVOfr1HD7AOX7XjLhhaR3NF8FqlIh0MSm1Z
 pSIYELCJpwPa3uJLELpHIMBKSKaSHzf0Im0W0FzV41NLf7MJgt586jo+3
 jDlVDumIulmtzV+8o3zI3d1o91eSKOl+OA5YrWktRe7Zqup2jLLJmX3Nh A==;
X-CSE-ConnectionGUID: NaJVyXKhS5ShmUle73xB8g==
X-CSE-MsgGUID: B9LjAnP8QTqOKNCljvhRow==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24499599"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24499599"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:18 -0700
X-CSE-ConnectionGUID: kLDt38rJT/ak0O9LdqUbMA==
X-CSE-MsgGUID: 5oq/JnWjS7mA7dGewcRKwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="90037632"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/11] drm/i915/reg: fix g4x pipe data/link m/n register style
Date: Mon,  9 Sep 2024 21:58:53 +0300
Message-Id: <523f825c9334b0c189dc7a72f06dffb7f5c736b5.1725908152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725908151.git.jani.nikula@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
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

Adhere to the style described at the top of i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7a6ca695bb6a..a1f86b32efac 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1554,16 +1554,16 @@
  */
 #define _PIPEA_DATA_M_G4X	0x70050
 #define _PIPEB_DATA_M_G4X	0x71050
-
+#define PIPE_DATA_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_M_G4X, _PIPEB_DATA_M_G4X)
 /* Transfer unit size for display port - 1, default is 0x3f (for TU size 64) */
 #define  TU_SIZE_MASK		REG_GENMASK(30, 25)
 #define  TU_SIZE(x)		REG_FIELD_PREP(TU_SIZE_MASK, (x) - 1) /* default size 64 */
-
 #define  DATA_LINK_M_N_MASK	REG_GENMASK(23, 0)
 #define  DATA_LINK_N_MAX	(0x800000)
 
 #define _PIPEA_DATA_N_G4X	0x70054
 #define _PIPEB_DATA_N_G4X	0x71054
+#define PIPE_DATA_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_N_G4X, _PIPEB_DATA_N_G4X)
 
 /*
  * Computing Link M and N values for the Display Port link
@@ -1575,15 +1575,12 @@
  * The Link value is transmitted in the Main Stream
  * Attributes and VB-ID.
  */
-
 #define _PIPEA_LINK_M_G4X	0x70060
 #define _PIPEB_LINK_M_G4X	0x71060
+#define PIPE_LINK_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_M_G4X, _PIPEB_LINK_M_G4X)
+
 #define _PIPEA_LINK_N_G4X	0x70064
 #define _PIPEB_LINK_N_G4X	0x71064
-
-#define PIPE_DATA_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_M_G4X, _PIPEB_DATA_M_G4X)
-#define PIPE_DATA_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_N_G4X, _PIPEB_DATA_N_G4X)
-#define PIPE_LINK_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_M_G4X, _PIPEB_LINK_M_G4X)
 #define PIPE_LINK_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_N_G4X, _PIPEB_LINK_N_G4X)
 
 /* Pipe A */
-- 
2.39.2

