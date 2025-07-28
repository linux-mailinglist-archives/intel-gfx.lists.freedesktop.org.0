Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73767B138D6
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 12:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFACF10E34C;
	Mon, 28 Jul 2025 10:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvVbqIrL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD7610E34C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jul 2025 10:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753698081; x=1785234081;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6Qjs5GjNuqstWjk5WdJatT26W3xPfTX269FZZ4z4Z60=;
 b=MvVbqIrLBOTn4qLOnxw9SBA8GazSjbv4lZtBREeOD76kIRAv4jCiaeAQ
 mPGq6AmcIl76dwAAAXnsCkpkXtddGPfhFLAlngG9D/0dltmCg/wdmKrEp
 DS6XNnmDAjvVZBsHHp6Bms2AISV3HIRBVqNByseklPWsZlI6nwMOIO9Po
 RBuRFqV2b2/DlA3C+aS4dGsCnc7eRq7oPkXfm4p8sJHPQpEoTQU/f42Lz
 YaxGUaDU915X1i8ApBwnL+vV/3h5AMdnLS43VR71GooIE4iEEpTJQGZ0G
 UpcipelFWNegK/DEEag5TBMw0/jNb2EXVx9efzSVLh66ff4z6MOUiTGMB g==;
X-CSE-ConnectionGUID: cM9MpzrkT8K0UFwyTYkVgQ==
X-CSE-MsgGUID: 1F2CE5xYQdCkQdBAHZ9kBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="56091511"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="56091511"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 03:21:20 -0700
X-CSE-ConnectionGUID: 8br6P3ooSv+/69Vxfo/AAg==
X-CSE-MsgGUID: LjYMgv06T+ursQR5fKEfXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="167789036"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.225])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 03:21:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/display: remove superfluous <linux/types.h> includes
Date: Mon, 28 Jul 2025 13:21:13 +0300
Message-Id: <20250728102113.238730-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Commit f7a9dc796567 ("drm/i915/scaler: Use intel_display as argument to
skl_scaler_max_src_size") added superfluous includes. Remove them.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.h | 2 --
 drivers/gpu/drm/i915/display/skl_scaler.h | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
index 2f075748a34e..c1bb0d1f344e 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.h
+++ b/drivers/gpu/drm/i915/display/intel_pfit.h
@@ -6,8 +6,6 @@
 #ifndef __INTEL_PFIT_H__
 #define __INTEL_PFIT_H__
 
-#include <linux/types.h>
-
 enum drm_mode_status;
 struct drm_display_mode;
 struct drm_connector_state;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 692716dd7616..e3b35d2c13be 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -5,8 +5,6 @@
 #ifndef INTEL_SCALER_H
 #define INTEL_SCALER_H
 
-#include <linux/types.h>
-
 enum drm_mode_status;
 struct drm_display_mode;
 struct intel_atomic_state;
-- 
2.39.5

