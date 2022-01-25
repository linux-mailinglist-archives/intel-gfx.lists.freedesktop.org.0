Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6739A49BB54
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 19:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C7310E41A;
	Tue, 25 Jan 2022 18:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1AA10E41A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 18:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643135470; x=1674671470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d2CHGhdaT48fQUtBkH3/SvyTBOiGuz8z8u5IbT518Mw=;
 b=DmB3et9sD1Lniz8Z78Vc/ZoO1jfVL4FYMczOcvsFNLEqJAgwsYop+9BS
 t500AZMHdYufqJhgSpJIWDSbGHE5CZSBOSkUtesmUzgoLzDXrJFBsenfx
 oOZLDQSo9xiCHu8t6musjXZv+3wJMscEjVuFtnym/8FR7ii2yTZfUiX1V
 oDgf69DnDdHbSAblDFd8J7B3/7loYI50t0bgozE5o2rR2J29S+FkTGfIS
 /qEiqQxj48kMIx1/Ek9JEnVJ+CMFRdrf4h7GDGNSwzcRPkUX7yShjm0Sz
 exHQrbIhhgdnZvmGWBMlP2GPfLYx7yFy12WRkfLIMHtk78nFdomrH0g+R g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246321768"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="246321768"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 10:30:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="532507637"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 10:30:57 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 10:31:42 -0800
Message-Id: <20220125183142.850325-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix header test for !CONFIG_X86
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
Cc: Siva Mullati <siva.mullati@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Architectures other than x86 have a stub implementation calling
pr_err() and WARN_ON_ONCE(). The appropriate headers need to be
included, otherwise the header-test target will fail with:

  HDRTEST drivers/gpu/drm/i915/i915_mm.h
In file included from <command-line>:
./drivers/gpu/drm/i915/i915_mm.h: In function ‘remap_io_mapping’:
./drivers/gpu/drm/i915/i915_mm.h:25:2: error: implicit declaration of function ‘pr_err’ [-Werror=implicit-function-declaration]
   25 |  pr_err("Architecture has no %s() and shouldn't be calling this function\n", __func__);
      |  ^~~~~~
  HDRTEST drivers/gpu/drm/i915/i915_trace.h
./drivers/gpu/drm/i915/i915_mm.h:26:2: error: implicit declaration of function ‘WARN_ON_ONCE’ [-Werror=implicit-function-declaration]
   26 |  WARN_ON_ONCE(1);
      |  ^~~~~~~~~~~~

Fixes: 67c430bbaae1 ("drm/i915: Skip remap_io_mapping() for non-x86 platforms")
Cc: Siva Mullati <siva.mullati@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_mm.h b/drivers/gpu/drm/i915/i915_mm.h
index 76f1d53bdf34..ea19c8d60168 100644
--- a/drivers/gpu/drm/i915/i915_mm.h
+++ b/drivers/gpu/drm/i915/i915_mm.h
@@ -6,6 +6,8 @@
 #ifndef __I915_MM_H__
 #define __I915_MM_H__
 
+#include <linux/bug.h>
+#include <linux/printk.h>
 #include <linux/types.h>
 
 struct vm_area_struct;
-- 
2.34.1

