Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C193CA5D012
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6071110E67B;
	Tue, 11 Mar 2025 19:56:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XFV6lt+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0803C10E685
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 19:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741723000; x=1773259000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lCkGaChBWAS+HeQ8oV2kMXWKEoka5XdT3ILfEAMiBVA=;
 b=XFV6lt+kpsjKRXuPCQPNkfVKFvlRJaRCScVkRpMywvL2ce5TFgX4u+9P
 7RrdeHOCj6nyJneKT6+fJfmkjiTL8nPMALBE+FuZhWGikdPtu6Dl3v97p
 ajP2UV637s1YivZZMNS+6srADbrhe6sGg9UFHCuJsCvHc7gWHvl3DJLCX
 FCi477wmhvvq0FJbJk6tEnHMYBBmgGE4iYWddzFGrD1qM/xyTix69s8Ag
 RLAjpCqRVQKlKBNg/+U/NkCIRdwk+yb30FGCfp+8hTVPbPExVICuXh5gU
 TRJjZroTNy67wK1wDzJi764fFfE7T/Rl4cBydUnaD3p8oYJFM0uW5IOeM g==;
X-CSE-ConnectionGUID: QBYNPaofRIqJqOtLwGfI/A==
X-CSE-MsgGUID: XfGYHZ5BSTifJVgFXnSIZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60183858"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60183858"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:56:40 -0700
X-CSE-ConnectionGUID: MEuXUNy6QYWLdH5q6S2wMg==
X-CSE-MsgGUID: ter+6boqQKyuxtAoyxhHZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125617231"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:56:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:56:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 4/6] drm/i915/pm: Do pci_restore_state() in switcheroo
 resume hook
Date: Tue, 11 Mar 2025 21:56:22 +0200
Message-ID: <20250311195624.22420-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 995205e24ebf..a199e21c7bb4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1340,6 +1340,8 @@ int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
 	if (ret)
 		return ret;
 
+	pci_restore_state(pdev);
+
 	ret = i915_drm_resume_early(&i915->drm);
 	if (ret)
 		return ret;
-- 
2.45.3

