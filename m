Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E7B545896
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B98D12B9A3;
	Thu,  9 Jun 2022 23:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B5412B23B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 23:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654816872; x=1686352872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/UjAsU4BrNtsvL8oVXyL9yoKM/rAc5ZVt/cjm7q3IyQ=;
 b=EqNLU5uMPw9+1fj3Dovd+GJMMaIE2O/fMGwbysfSyvVFF0VL92yIo0RQ
 LdKb6NiguFR5mL5EP32Ji759UA8QLTbBO3R3BDAtFP/GMngS6vXHtzRRv
 L1t+VVWBfVzFL68xsOhqkhkIl2F/tC4cz7DtPpdAv7r9yH2R8BJU8Kr6D
 EgUG11iXwH/DMot90v6vetTR7d7Wkbgb96ccHQZe52zs6KpfbzYBbb3ol
 pNp7ujNdg+Bo7NMniLCOCfhlBnvgaypOThO3hN9ru+BCuY9dko6Nk49qN
 zIf5AEEyxpH0xl/aWGqE7K9YPvX0uD0ajBE3LNJyM6gefsGwxOns+K/+l g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277481341"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="277481341"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="908586515"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 16:21:12 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jun 2022 16:19:55 -0700
Message-Id: <20220609231955.3632596-16-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] HAX: drm/i915: force INTEL_MEI_GSC and
 INTEL_MEI_PXP on for CI
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Both are required for HuC loading.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index e7fd3e76f8a2..a6576ffbc4dc 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -48,6 +48,8 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
+	select INTEL_MEI_GSC
+	select INTEL_MEI_PXP
 	select BROKEN # for prototype uAPI
 	default n
 	help
-- 
2.25.1

