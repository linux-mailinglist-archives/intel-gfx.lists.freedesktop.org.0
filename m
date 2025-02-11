Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4C1A31965
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEAF10E75E;
	Tue, 11 Feb 2025 23:19:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T0Rh12ut";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1201210E75E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739315996; x=1770851996;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PR1RbcjZY3KABvc+FWD1US4s11b6m/6oOkzlzJOAKXc=;
 b=T0Rh12utsrgoQpZzmPm4Rpa9NaDW8oFNo6xM8m8ZPPtfondSam1iNUds
 Snpl4VW6+wHmQANt5BGHFHHyBc28IKnHS56KlKP1mVaxL4nuysdqDrLb+
 JQqWayHOsok43NvpySKzqKabQexs5KXC2YpUD5lpRlsuHdebsO4lZ41lj
 v0uGS0a7t0L6NQClN1D3rvbIH+FyLTcJ8w6aYjpZG07TIeHXlEzjUh4mg
 vZzCf0m4AYtTsBjhSdDREAYP7aGdBtZ3JNoYh5IUyCjGdhH9Wi6LaySz9
 cNu1GKG5re5cY3f9fH+NwrtrKc6dqDx3x5YK2BybRx4rSRRjcAOtZidSn g==;
X-CSE-ConnectionGUID: MXS8V3lbQQObzYc/4DdmEA==
X-CSE-MsgGUID: gT253oKqQWmnQq7Tsr/7oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820130"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820130"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:19:55 -0800
X-CSE-ConnectionGUID: 9a3wQ3QUTfijA5S3s4Drxg==
X-CSE-MsgGUID: sPBtz45US5CV6qfYdJffHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870883"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:19:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:19:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915: Document which RING_FAULT bits apply to which
 platforms
Date: Wed, 12 Feb 2025 01:19:32 +0200
Message-ID: <20250211231941.22769-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The RING_FAULT bits have change a bit over the years. Document
which platforms use which bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 764424d48a25..1d318993a652 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -326,10 +326,10 @@
 							    _RING_FAULT_REG_VCS, \
 							    _RING_FAULT_REG_VECS, \
 							    _RING_FAULT_REG_BCS))
-#define   RING_FAULT_ENGINE_ID_MASK		REG_GENMASK(16, 12)
-#define   RING_FAULT_GTTSEL_MASK		REG_BIT(11)
+#define   RING_FAULT_ENGINE_ID_MASK		REG_GENMASK(16, 12) /* bdw+ */
+#define   RING_FAULT_GTTSEL_MASK		REG_BIT(11) /* pre-bdw */
 #define   RING_FAULT_SRCID_MASK			REG_GENMASK(10, 3)
-#define   RING_FAULT_FAULT_TYPE_MASK		REG_GENMASK(2, 1)
+#define   RING_FAULT_FAULT_TYPE_MASK		REG_GENMASK(2, 1) /* ivb+ */
 #define   RING_FAULT_VALID			REG_BIT(0)
 
 #define ERROR_GEN6				_MMIO(0x40a0)
-- 
2.45.3

