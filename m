Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D30B8CE939
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 19:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C05810EAE8;
	Fri, 24 May 2024 17:33:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSklf0/O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8BF910EAE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 17:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716572036; x=1748108036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BnZHFhSxkiRp4Z+FlQIMK9CBzFZjgvL1QvtispVG5hU=;
 b=RSklf0/Oi1+tpWOzzlYdDaPLG1H7iFdI6BZomQIb10iQdn/MDn4MBNYe
 N9ZTQJ9F/hhfYWJ4CIg8CgpVi9Id/plWV6eb5nk5z9O/fQ16pdjwn0yrT
 eMZwBcKms/i+8BurH8kEdfwmkLFuy3xpBN3PPCrHShIQp29DS7yYafDKg
 g4H3Ekpj7p8bQMRl6Nu1rz9eo3MYycORw1ZDWrvnGYuULkgjdD5i+E4gi
 LslvCjRJaFDx88AdoZ4x11PDhASz1tco/SdFFZocNUg3dN4WFhsOCuYLF
 5JotWBvAn0+OqIWjzv1hWBR6uzauHZGYll2fP0RAcj0Fk7i0WXhPlbhDo A==;
X-CSE-ConnectionGUID: v5m2ZpZxRIucozDq5kA+9A==
X-CSE-MsgGUID: 2gh9gb7+QXKEHIqMVeGcsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="11683955"
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="11683955"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 10:33:52 -0700
X-CSE-ConnectionGUID: 817EQYv9QQCZ04hmF4wkVQ==
X-CSE-MsgGUID: KUR8jjgnTZOqwq1WndHyXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="34196686"
Received: from unknown (HELO localhost.localdomain.iind.intel.com)
 ([10.49.75.6])
 by fmviesa010.fm.intel.com with ESMTP; 24 May 2024 10:33:51 -0700
From: "Chen, Angus" <angus.chen@intel.com>
To: andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com,
 tejas.upadhyay@intel.com
Subject: [PATCH v3] drm/i915/mtl: Update workaround 14018575942
Date: Fri, 24 May 2024 17:33:49 +0000
Message-Id: <20240524173349.89123-1-angus.chen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZlB5cUduM_Hw2Spi@ashyti-mobl2.lan>
References: <ZlB5cUduM_Hw2Spi@ashyti-mobl2.lan>
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

The WA should be extended to cover VDBOX engine. We found that
28-channels 1080p VP9 encoding may hit this issue.

v3: update the WA number and explain the reason why
    this workaround is needed
v2: add WA number
v1: initial version

Signed-off-by: Chen, Angus <angus.chen@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d1ab560fcdfc..05d56103ddab 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1586,6 +1586,14 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 */
 	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
 
+	/*
+	 * Wa_14018575942
+	 *
+	 * Issue is seen on media KPI test running on VDBOX engine
+	 * especially VP9 encoding WLs
+	 */
+	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+
 	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
-- 
2.34.1

