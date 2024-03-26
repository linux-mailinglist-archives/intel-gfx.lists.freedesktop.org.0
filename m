Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D38088BF63
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 11:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E11110E495;
	Tue, 26 Mar 2024 10:29:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YqH07IHO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D51810E495
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 10:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711448956; x=1742984956;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oblElngaoPl6W/sW19iWts4ehLki39SVaLPyYVPJ3vs=;
 b=YqH07IHOrM/C0k1sH8IEetEXUn5NqTIE/wwCPTMLa+oCqGe52DskqijC
 We3WR5yVO1IQY0QzULW/f0oRWQwn9UN+4zfJtOZf+YZQa/zJRueeFixy5
 S5JzStlR8lPV5atr9Lx1DED5TENk6Az7odKpuYgB1URWlbCjMLTQocJr3
 kkVzxLTG6aM+UKA9gfPk+oE3wyeghHjIh0mgEH1gR1y3+LK09jsUrAUiF
 EcDs3J3wnO90Z54LVbCHC/Tdq7I2xAxQIec1O9Fpd9WmhzdJMyAaozsL7
 yLLrQ1rXOGGzSKyW4XZdljxbTKDFE23yMw7001RMRJw2AOqhCRoaP8lu1 w==;
X-CSE-ConnectionGUID: DfCdntejQfe98iUHJMU99g==
X-CSE-MsgGUID: P7pIiaEATXqCsgYOeMoSwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="10269705"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="10269705"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20575973"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:29:11 -0700
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 radhakrishna.sripada@intel.com, clinton.a.taylor@intel.com,
 matthew.s.atwood@intel.com, dnyaneshwar.bhadane@intel.com,
 haridhar.kalvala@intel.com, shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915: Add new PCI IDs to DG2 platform in driver
Date: Tue, 26 Mar 2024 16:02:41 +0530
Message-Id: <20240326103241.3832494-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.25.1
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

New PCI IDs are added in Bspec for DG2 platform, add them in driver

Bspec: 44477
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 include/drm/i915_pciids.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 28a96aa1e08f..85ce33ad6e26 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -711,7 +711,9 @@
 	INTEL_VGA_DEVICE(0x5692, info), \
 	INTEL_VGA_DEVICE(0x56A0, info), \
 	INTEL_VGA_DEVICE(0x56A1, info), \
-	INTEL_VGA_DEVICE(0x56A2, info)
+	INTEL_VGA_DEVICE(0x56A2, info), \
+	INTEL_VGA_DEVICE(0x56BE, info), \
+	INTEL_VGA_DEVICE(0x56BF, info)
 
 #define INTEL_DG2_G11_IDS(info) \
 	INTEL_VGA_DEVICE(0x5693, info), \
-- 
2.25.1

