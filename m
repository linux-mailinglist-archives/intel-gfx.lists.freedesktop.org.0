Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D779978079
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 14:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABBDA10ED11;
	Fri, 13 Sep 2024 12:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fvhhoWdu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD25010ED12;
 Fri, 13 Sep 2024 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726231928; x=1757767928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bpQI0arrornf81uGBGTg4p1YEFSS03LF54F1ZbZuhg4=;
 b=fvhhoWdun+mSret9GrR4AavLA0EwBVtrdDwHDxWZuBSFdxposSMrXwxn
 qdKr7UlV0j2DlvM6coO5rmvE6URRXzNFpZb+hdmgWp/IKykqCR6Wze6mx
 E/lqYWrh9zoPBW1tbrp+CbitVlD3AysxiQZLoz7bvGk6hiAR6O+4cw7Ri
 i/3nUfWTTjHx34VQtMvKiaROt4tpW2bsh7Jcbje7uukBu4VBNPHGoyy/Q
 92IWzMLL9uI8MqELbn0c37B0oiTayjgiAaFnQ8Tde6z5B+O6ktbS7RwQi
 lxPmDfyArkc0mCikb2P+07SFKo9O7i9hgJV2xDxkXb7ShqLQgyZTmDM3e Q==;
X-CSE-ConnectionGUID: 8DfkUcwhQD+1nswkumxXhg==
X-CSE-MsgGUID: /gWI2hHwRJO4NGOnZD9Wbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="36507784"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="36507784"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:52:08 -0700
X-CSE-ConnectionGUID: heBwza/xStihOl3zGyCNsQ==
X-CSE-MsgGUID: EHpziEZVTmixhXSBXpAcMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="68544767"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:52:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/debugfs: remove superfluous
 kernel_param_lock/unlock
Date: Fri, 13 Sep 2024 15:51:54 +0300
Message-Id: <330360c3b27aaff1cdb132f1500ba68de9300508.1726231866.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726231866.git.jani.nikula@intel.com>
References: <cover.1726231866.git.jani.nikula@intel.com>
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

We're not actually accessing the module params here anymore. The locking
is completely unnecessary.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 246fece628d6..b5fc7cc8020a 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -76,10 +76,8 @@ static int i915_capabilities(struct seq_file *m, void *data)
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
-	kernel_param_lock(THIS_MODULE);
 	i915_params_dump(&i915->params, &p);
 	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
-	kernel_param_unlock(THIS_MODULE);
 
 	return 0;
 }
-- 
2.39.2

