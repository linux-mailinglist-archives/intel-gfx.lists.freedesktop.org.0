Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 806AE4EE495
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 01:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413F010E07C;
	Thu, 31 Mar 2022 23:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FDFF10E07C
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 23:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648768669; x=1680304669;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f7qnbPFUE41D/vNl+HMxk/lW+dH8hUgb3teIeeL+4Rs=;
 b=WWLc0gFjkF4COpuLLjUmia/ibWMZ2WKtv0i4fyenAqrGRoe3/Apph0wU
 PtWenlljjCYtiCaIi4EKwhUguChBO7afOP2vo3w5+IoTCBa31jgN7ICYo
 mvMvT/pi7QQZODb4KYVzJSsu05FwqOg+cZ1Hhmd/TpJOiHOEbwdUXW9jm
 byQrcSM5kqtNdmh3NYA3rSxSMDM5CO4o3lMXcCaz4YaWrcElayLx34Hoj
 babtVMQ/0Epftj+ThpSUkuAps2MU2qG/98vpiQIItcmhqml5d4j3/rQsS
 ZnlL+U9yEagQ6nl9F+KpbuXHf5fDEBiLZYX52uYUPuHf5tzLdeEOY//kE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="323160249"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="323160249"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 16:17:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="650488992"
Received: from mdadual-mobl.amr.corp.intel.com (HELO localhost)
 ([10.255.231.142])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 16:17:48 -0700
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Thu, 31 Mar 2022 16:17:37 -0700
Message-Id: <20220331231737.315957-1-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/hwconfig: Add DG2 support
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

v2:
 * Jordan: Drop stepping/skew checking as suggested by John.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Tested-by: Jordan Justen <jordan.l.justen@intel.com>
Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
index e0f65bdd1c84..79c66b6b51a3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -96,6 +96,8 @@ static bool has_table(struct drm_i915_private *i915)
 {
 	if (IS_ALDERLAKE_P(i915))
 		return true;
+	if (IS_DG2(i915))
+		return true;
 
 	return false;
 }
-- 
2.35.1

