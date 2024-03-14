Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0DB87B813
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 07:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97E310E339;
	Thu, 14 Mar 2024 06:52:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mCtAGwKE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D12610E339
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 06:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710399162; x=1741935162;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Bd6gOSmqFNlHUS2lGal5yp+lrXJlI67Mc6Mhq4esAuA=;
 b=mCtAGwKEMMFILXilIPPPG6lB715wUInq33Ow6/eslP3ldkoepZ9kdXU2
 1mnMijbToZTZBdeNjbJ0haZiVLSS5DpBBmx/4gFlNG3d+XZjOM4cpuv+j
 vwjZT8KSuwUl4UwuiJTJv1RvTTOvDka+5t5VQd/lrGltjorExNvkb9CFO
 6/NNBBR6nAn4MaXEsjJhtWTH9EPzMqNr6/pKdo6ZrIEFh/6yQOey2ZInu
 gR6OjKY+QWmELiljZAp2mhMS+y9L9IZ0toDLdeI0jv21cOOF72C+WVD14
 iAjoekSQBd3/DVMQlEJ+KRxlUjfPyiH2hthdEu2HvcJc9VRrE8y82gHfe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5805899"
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; 
   d="scan'208";a="5805899"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 23:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; d="scan'208";a="12076481"
Received: from rscales-mobl4.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.209.110])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 23:52:40 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: luca@coelho.fi,
	gustavo.sousa@intel.com
Subject: [PATCH] drm/xe/display: fix type of intel_uncore_read*() functions
Date: Thu, 14 Mar 2024 08:52:21 +0200
Message-Id: <20240314065221.1181158-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

Some of the backported intel_uncore_read*() functions used the wrong
types.  Change the function declarations accordingly.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index cd26ddc0f69e..ef79793caa72 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -25,15 +25,15 @@ static inline u32 intel_uncore_read(struct intel_uncore *uncore,
 	return xe_mmio_read32(__compat_uncore_to_gt(uncore), reg);
 }
 
-static inline u32 intel_uncore_read8(struct intel_uncore *uncore,
-				     i915_reg_t i915_reg)
+static inline u8 intel_uncore_read8(struct intel_uncore *uncore,
+				    i915_reg_t i915_reg)
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
 
 	return xe_mmio_read8(__compat_uncore_to_gt(uncore), reg);
 }
 
-static inline u32 intel_uncore_read16(struct intel_uncore *uncore,
+static inline u16 intel_uncore_read16(struct intel_uncore *uncore,
 				      i915_reg_t i915_reg)
 {
 	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
-- 
2.39.2

