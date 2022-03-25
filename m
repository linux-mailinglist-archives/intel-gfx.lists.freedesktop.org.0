Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3274E6B86
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 01:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C176310E118;
	Fri, 25 Mar 2022 00:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D48C10E118
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 00:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648167692; x=1679703692;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=19hJJWkXm/LYVSherWrLzpKsPVSh89fYyHKtPJYygkQ=;
 b=BCRyS+GvkWcdE+HDXSf+89r8UfKlBfObXRbC5eam1CSy4SSXy/+uKwc1
 nKPZBEczasuMw60FWZ4c6NSFgxGNWz7139/c2TElpMUwy2GCDw4PgMTMH
 ccbSrQlTYWRp5bgumvgsyylUM+iWPFYWG09+LuU7DYQx0HejBIIvkTv9h
 qe1fD/LmZkkgtReKb7nmafUCrCbY2Ifre4WF6BzhmWHn4DocOPOCd5W4F
 NNiRRnLN13yCFvOq+Gx3+gVZ5w3SuTKjy8TRtpD0ODIdXFrsOiJjTqhZW
 hIeVbVrO/dYifcdY7DU4oqOTXRDtGcO2K7uIhxuPv97La4DqPPIYYUTz+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="321717554"
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="321717554"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 17:21:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="520005875"
Received: from dillonfo-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.59.70])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 17:21:29 -0700
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Thu, 24 Mar 2022 17:21:15 -0700
Message-Id: <20220325002115.103036-1-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hwconfig: Add DG2 support
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Rodrigo Vivi <rodrigo.vivi@intel.com>

DG2 support for hwconfig tables varies by both SKU and stepping.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Tested-by: Jordan Justen <jordan.l.justen@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
index e0f65bdd1c84..b34833cca44a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -96,6 +96,8 @@ static bool has_table(struct drm_i915_private *i915)
 {
 	if (IS_ALDERLAKE_P(i915))
 		return true;
+	if (IS_DG2_G11(i915) || IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A2, STEP_FOREVER))
+		return true;
 
 	return false;
 }
-- 
2.35.1

