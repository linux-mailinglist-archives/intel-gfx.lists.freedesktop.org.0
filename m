Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8135250B8AA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 15:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD1710F7D0;
	Fri, 22 Apr 2022 13:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549AA10F7D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 13:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650634643; x=1682170643;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jzkUwVkZIKoYKhTKBjdsYDu39ZsOBLNRNs0XCZceWKw=;
 b=O2WnRyC9upQ/gq/eHyvG1+pK9OzYzPy89lcfjsFje+f70/irkbkSEibI
 h8S8vBKPK8OWBC2Jb6UUVdkXDi+BNQLXKeeeN9HiWfzUV8oLgkbAPmvVD
 LLlwYcvkjgXcwcViKlOjYQN9jl0MDNPLuBAsFNrFv2caVQ+ghDcumawgt
 thk1vkHFLo2puPgBs4rUjBGVZsD9OOPOm4GrMfXTP7pv1RLcIG9zpKPSI
 Sc1r0XnX6VjwuSRYAEghKoojmPsV7LB1kOssRglQoluR4XXB5oV/Ca+lO
 cUPFHJ10DcHbsqQ8F5qXdo/32vgctmhCNP4LITezF5Y25y7lmptD8gy4T w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="325131159"
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="325131159"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 06:37:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="577896411"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 06:37:20 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Apr 2022 19:07:52 +0530
Message-Id: <20220422133752.1370964-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC] drm/i915/rc6: Access RC6 regs with forcewake
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
Cc: chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To access RC6 related MMIO regs use intel_uncore_write(), which grabs
forcewake if reg requires a forcewake.

Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index b4770690e794..9edaad3f19b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -55,7 +55,7 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
 
 static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
 {
-	intel_uncore_write_fw(uncore, reg, val);
+	intel_uncore_write(uncore, reg, val);
 }
 
 static void gen11_rc6_enable(struct intel_rc6 *rc6)
-- 
2.25.1

