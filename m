Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C81E4633EA8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 15:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63CEC10E0C8;
	Tue, 22 Nov 2022 14:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5D7410E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 14:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669126588; x=1700662588;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hqqgo+/LzYuUGSPRlWEqh1nHc1Q8ELeuVhtWyyXd24s=;
 b=S3WRKnlVtJAOfayDVlE8XTe0C4Z7RaTS9vavjAAWy+7I9dStJfR0OO3S
 hzeXfLdOjDmK6jhZRPkAP2Wv9LO1lRNj5DluAFnEmGraX3mUVmf/eRV7h
 +I3/8794x9p+aaFgdRe8c92HKgCaYg9ftsvVwzzYIkJatwvaykkaHgTF0
 uhEkQrf7XGBXetrBraNFG0A/IUfCJYYFu3zVWjucbYaxWe2JpF46WjlKm
 yKrRUbc8WBktsorIAGiD7vkOzACSuPbuhz86RORH1aWaL8RjaiRZqBZW6
 sBdXwVMWYAA0vYgep+ZKZCMiLuThM7YiQvFX0GRUc+4kK+smwP5GfC5Uq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="314972103"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="314972103"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 06:16:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="635556080"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="635556080"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 06:16:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 16:16:16 +0200
Message-Id: <20221122141616.3469214-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: make default_lists const data
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The default_lists array should be in rodata.

Fixes: dce2bd542337 ("drm/i915/guc: Add Gen9 registers for GuC error state capture.")
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 1d49a7ec0bd8..1c1b85073b4b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -170,7 +170,7 @@ static const struct __guc_mmio_reg_descr empty_regs_list[] = {
 	}
 
 /* List of lists */
-static struct __guc_mmio_reg_descr_group default_lists[] = {
+static const struct __guc_mmio_reg_descr_group default_lists[] = {
 	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
 	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
 	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
-- 
2.34.1

