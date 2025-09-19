Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEF0B8AFC3
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819F110EA75;
	Fri, 19 Sep 2025 18:50:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ediFCcn3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB08710EA73
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758307838; x=1789843838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e9+2Za0Ck/bIjIvlwjx7QbGsSmb6SbmkB/RKLvHtQhw=;
 b=ediFCcn3huJRvUtjawr0AGFmLGUIner1mZ/CRCOhEblsoQ/CfV0xPIUk
 43uB468v7UZj7oPy/4DMGSBRMDO10L+Xv0RWXzTholSyQsDvD5GfpqgqW
 OPBegsFZLu7H5M4Vpal9vkhou0DI1RoJBM94b6BXGyWFt7rhtHMBjr7u0
 le4ZwsZR4TEhMT6QF3jGaP/TqU27vXPJt9kIPqRUuY/JutOgWCGx6dGyf
 l/sxS21MwzO51TtEU1WHuhq2A7Tltu7NvFTi+M3IOvB/FsjOc0EYPWaZf
 n+EmpW2FWEj0i8o3AKYUT0rGmy9GW+aLcWFH5bRfva9/OIFYpXdZcbF5a g==;
X-CSE-ConnectionGUID: Ur/6x4iHSFaJJigww6VsLw==
X-CSE-MsgGUID: CJfDnmuOQEeFy/1jTh4Ibg==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="86097355"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="86097355"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:38 -0700
X-CSE-ConnectionGUID: 1OSYypfjTIOlXkiBvA7ozw==
X-CSE-MsgGUID: hYC4BCXfRp+6nRanPo7UQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175152970"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:36 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 4/6] drm/i915/pm: Do pci_restore_state() in switcheroo
 resume hook
Date: Fri, 19 Sep 2025 21:50:13 +0300
Message-ID: <20250919185015.14561-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
References: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since this switcheroo garbage bypasses all the core pm we
have to manually manage the pci state. To that end add the
missing pci_restore_state() to the switcheroo resume hook.
We already have the pci_save_state() counterpart on the
suspend side.

Arguably none of this code should exist in the driver
in the first place, and instead the entire switcheroo
mechanism should be rewritten and properly integrated into
core pm code...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 327e5fe7dfff..009f4e27cf49 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1346,6 +1346,8 @@ int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
 	if (ret)
 		return ret;
 
+	pci_restore_state(pdev);
+
 	ret = i915_drm_resume_early(&i915->drm);
 	if (ret)
 		return ret;
-- 
2.49.1

