Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EB04AE8B4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 06:12:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70F910E17E;
	Wed,  9 Feb 2022 05:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4F910E1D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 05:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644383521; x=1675919521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wxdUz6bf7UWMBBs7y8H1THME7zuFLz9ezlwjhdfOZ8o=;
 b=mT2+4lxeNUhliUxGz+G50Wk9QJL+Qpg7S39SKguEFsR5yPaJ3JCLqdf+
 umwf10+9ltlaqpqNNPqVSuPPXDViJZzYRmSzkRWz0XrfcLkTTG8SNeYig
 5h7kRerT8J0qP3nFpHA88sFBQ2wIz4Eo2oF3kHLsJqEhCnet74DJjdh7/
 0QlGe2HARJ2YGOBVASvZLD5UhjoPw3MfiiZruv6ahs/4lhoPpi6VlPkrF
 Ou4XjM5zhywS85sK6H38FM9rj0onvp3L8KBimBisO6N0YisHNSwIVfPNw
 s40xgk2VhIGwfxiUu+7A8w+ux5zvLufPTh7xIlMvewhnKpH/y6rOkauK6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="232686893"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="232686893"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:11:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="482206692"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:11:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 21:11:35 -0800
Message-Id: <20220209051140.1599643-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220209051140.1599643-1-matthew.d.roper@intel.com>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/gt: Drop duplicate register
 definition for VDBOX_CGCTL3F18
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

Due to some mistaken merge conflict resolution, we wound up with a copy
of VDBOX_CGCTL3F18 in both intel_engine_regs.h and intel_gt_regs.h.
Since this is a per-engine register, referenced relative to an engine's
base offset, drop the copy from intel_gt_regs.h

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index a6f0220c2e9f..e73c706e7f0d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -368,9 +368,6 @@
 #define NOPID		_MMIO(0x2094)
 #define HWSTAM		_MMIO(0x2098)
 
-#define VDBOX_CGCTL3F18(base)		_MMIO((base) + 0x3f18)
-#define   ALNUNIT_CLKGATE_DIS		REG_BIT(13)
-
 #define ERROR_GEN6	_MMIO(0x40a0)
 
 #define GEN8_FAULT_TLB_DATA0		_MMIO(0x4b10)
-- 
2.34.1

