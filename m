Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CA982C30F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 16:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B0310EB4F;
	Fri, 12 Jan 2024 15:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BEAA10EB44
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 15:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705074554; x=1736610554;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=exPt4er6ZLZmTfzxwcn4fzhIIzfjpljCy2c+wBC2gH0=;
 b=KCKFXBLUhmX//Fke4qJWAOrwkDs+yx9RP22TShwcNbpKiKPypAl2itAF
 javhxW4sjlbkVPw+h2SB9ZacuC/JTvvYSGym4iXifN/SDeF7FH2Mli3HL
 MYvLWE5SvR8/y3+Vi9i2C6njbYuO4odAIcm626EP82sAUj42U6wxC/uTS
 kkhgzVcniPvzT5S3p3YVq2QjGdWH8Ze5u1I/YdmOdadtGlMgXvZgv38Ae
 /VwJAgst6QsNU0eW6OSGd5JswwdOaHOQe7hEfFu8kkXDaZtSlbQDypr6e
 XWMspNGHXcSFNNu4nLGK1HLaEWx4S3DeUg4gWh2Iw923S0MhDVRkVKmXt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="6287607"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; 
   d="scan'208";a="6287607"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 07:49:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="17434504"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 07:49:11 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Drop -Wstringop-overflow
Date: Fri, 12 Jan 2024 07:49:12 -0800
Message-Id: <20240112154912.1775199-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-Wstringop-overflow is broken on GCC11. In future changes it will
be moved to the normal C flags in the top level Makefile (out of
Makefile.extrawarn), but accounting for the compiler support.

Just remove it out of i915's forced extra warnings, preparing for the
upcoming change and avoiding build warnings to show up.

Fixes: 2250c7ead8ad ("drm/i915: enable W=1 warnings by default")
References: https://lore.kernel.org/all/45ad1d0f-a10f-483e-848a-76a30252edbe@paulmck-laptop/
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e777686190ca..c13f14edb508 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -17,7 +17,6 @@ subdir-ccflags-y += $(call cc-option, -Wunused-const-variable)
 subdir-ccflags-y += $(call cc-option, -Wpacked-not-aligned)
 subdir-ccflags-y += $(call cc-option, -Wformat-overflow)
 subdir-ccflags-y += $(call cc-option, -Wformat-truncation)
-subdir-ccflags-y += $(call cc-option, -Wstringop-overflow)
 subdir-ccflags-y += $(call cc-option, -Wstringop-truncation)
 # The following turn off the warnings enabled by -Wextra
 ifeq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
-- 
2.40.1

