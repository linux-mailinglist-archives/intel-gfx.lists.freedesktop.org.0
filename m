Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4AFA7859B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF37B10E1ED;
	Wed,  2 Apr 2025 00:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JBeSwFpd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EB6D10E1BB;
 Wed,  2 Apr 2025 00:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553348; x=1775089348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E13rsEPnFbn4439/YySIfXIwKK9qjUT2p/ffpxqtSOo=;
 b=JBeSwFpdpHobymRtPGRvxv77itBrW08EOfLajt/oGEdTECbVz+ZkIuD2
 O71fqaapzxxT4JAinGBD/h6VxnE6INN9IB3Qo8lmFk5WvZ2kxq1hsm2o5
 y9c57CVBdmzopcDj9BebvWfa6tayRPXb7O6z4WsCZTA3BV2GVeMeEeng0
 23TInyvJ/5LT/9aF+mEEgy66yghUL/UWik1FsnH3N4aTPmwXDi0wDLpy7
 mwE5teIqnbj0mL9OA4T4ISQdNPGYZt6ahunD2LPP0Bej3v9mrhXxHCpNF
 8khZf/hxvPT3Zy/lLQaveR8ncFaC4dHjcjpg435E3/n+O2wfOAUONFc/4 A==;
X-CSE-ConnectionGUID: WePpcMPWQKur4XWIiOTuHA==
X-CSE-MsgGUID: AznnGE2cQ/Wu7ILTwNCvMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021940"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021940"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:28 -0700
X-CSE-ConnectionGUID: vlGZ97u8TyaBzT06An9vkQ==
X-CSE-MsgGUID: YSt5UhMyT2GbDrWjKPhILg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729586"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915: Remove unused dpt_total_entries()
Date: Wed,  2 Apr 2025 03:22:05 +0300
Message-ID: <20250402002209.24987-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

dpt_total_entries() is not used anywhere. Remove it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 2bf4ad6a0fdf..b505b52e93f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -32,8 +32,6 @@ i915_vm_to_dpt(struct i915_address_space *vm)
 	return container_of(vm, struct i915_dpt, vm);
 }
 
-#define dpt_total_entries(dpt) ((dpt)->vm.total >> PAGE_SHIFT)
-
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
 {
 	writeq(pte, addr);
-- 
2.45.3

