Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4FA5F9D09
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 12:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863C110E48C;
	Mon, 10 Oct 2022 10:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC73410E48A;
 Mon, 10 Oct 2022 10:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665398932; x=1696934932;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SzQpjO3AD7VbRaujHUMiOLNJgzhUEtnElj0Be5PAlb0=;
 b=DQ/aUvtjvxVPoUwoS0yerss5zzP9Hp76R2lSFIYKQSos+2fvz9RhXEzp
 e1QKPXfrq3ysPty7RGXxO/y7rwN4d8WqP/JtgLnX1O0PPx+WAVn+pCCxf
 1w1245AHkKxeiNxBU7y4eG6sWr9Fp8uwx72UMeAlpQhd6Vrw2ge22nVQV
 OiFfWy6dstGBwTlPm/CtF6H7TpcsAJHhVqI7ScXjYExtpDFyOzaf5O7Id
 jaMIm31LDYRO9NfyXBMMEiHak8k7klud0Zrk7KSHZuTn26HdVJN6tryys
 HsJAsIot0OJqYNbDdhmBqz81raHz5X2EsXb+4EXyZYB0qBOO+pwNVVTbZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="291482748"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="291482748"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 03:48:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="620980623"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="620980623"
Received: from ikonopko-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.24.191])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 03:48:50 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 10 Oct 2022 11:48:40 +0100
Message-Id: <20221010104840.28026-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/module_load: fix resize-bar on
 DG1
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG1, as expected only has a fixed sized bar, so attempting to force the
BAR size should fail. Update the test to account for such devices, and
perform a skip, instead of failing.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6458
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_module_load.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/i915_module_load.c b/tests/i915/i915_module_load.c
index 4c72157c..6d74de58 100644
--- a/tests/i915/i915_module_load.c
+++ b/tests/i915/i915_module_load.c
@@ -422,7 +422,7 @@ igt_main
 
 		/* Test for lmem_bar_size modparam support */
 		lmem_bar_size = driver_load_with_lmem_bar_size(MIN_BAR_SIZE, true);
-		igt_assert_eq(lmem_bar_size, MIN_BAR_SIZE);
+		igt_skip_on_f(lmem_bar_size != MIN_BAR_SIZE, "Device lacks PCI resizeable BAR support.\n");
 
 		lmem_bar_size = driver_load_with_lmem_bar_size(0, false);
 
-- 
2.37.3

