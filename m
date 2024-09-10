Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A93FB9730CB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 12:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F148310E75B;
	Tue, 10 Sep 2024 10:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTkDNg9d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D2D10E757;
 Tue, 10 Sep 2024 10:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725962663; x=1757498663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hlrDlmeRwgd/9V5fJZmSIg045xdEvI12B0y+1l/kdsE=;
 b=WTkDNg9dAAI8idDVuNys9mdXPkAGK42YsyBaKITALyn4HLIzD3ed8BQ/
 Qk8a40U9D3V4TtKJ7dlmM9coID6vw8POg1lCu9byzfquYnY4Wr+sd0zlk
 hRZ5628Pc3CiOFRyqIP1ychM4/vPvoqvbcc7g29rgUcfHKA0+1tJrDw7l
 R2C4nJmwmF3wJXcVSrmiia7/fa4cpIBg/siBTYWzgHDL7K36N9UivVam1
 GcwEbK4i5mzBMEBW98HUXA4csWT9lGC28ULmlHI1XlsfWEoqjABYvmQpl
 JM4CVue65fktFG5A7O79nwYpTXItHU0nNuZj6sKV5ZjvMo2e5P2IVvYwA A==;
X-CSE-ConnectionGUID: zyGmjWZTSw6Ccn/NoznyWA==
X-CSE-MsgGUID: b9FlFe/iRme5kJiRj+j1lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="50112819"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="50112819"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 03:04:23 -0700
X-CSE-ConnectionGUID: NF0jpK81Q2G1GFy605rN4A==
X-CSE-MsgGUID: +k8+Ci7tSMSZgOXDaeTl+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71762375"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 03:04:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@intel.com, Nathan Chancellor <nathan@kernel.org>,
 Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>
Subject: [PATCH 5/8] drm/imagination: annotate pvr_fw_version_packed() with
 __maybe_unused
Date: Tue, 10 Sep 2024 13:03:41 +0300
Message-Id: <190e4eefef6c5e62052a01af0084c69361e216ef.1725962479.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725962479.git.jani.nikula@intel.com>
References: <cover.1725962479.git.jani.nikula@intel.com>
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

Building with clang and and W=1 leads to warning about unused
pvr_fw_version_packed(). Fix by annotating it with __maybe_unused.

See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused static
inline functions for W=1 build").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Cc: Frank Binns <frank.binns@imgtec.com>
Cc: Matt Coster <matt.coster@imgtec.com>
Cc: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/imagination/pvr_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imagination/pvr_drv.c b/drivers/gpu/drm/imagination/pvr_drv.c
index 1a0cb7aa9cea..684a9b9a2247 100644
--- a/drivers/gpu/drm/imagination/pvr_drv.c
+++ b/drivers/gpu/drm/imagination/pvr_drv.c
@@ -220,7 +220,7 @@ pvr_ioctl_get_bo_mmap_offset(struct drm_device *drm_dev, void *raw_args,
 	return ret;
 }
 
-static __always_inline u64
+static __always_inline __maybe_unused u64
 pvr_fw_version_packed(u32 major, u32 minor)
 {
 	return ((u64)major << 32) | minor;
-- 
2.39.2

