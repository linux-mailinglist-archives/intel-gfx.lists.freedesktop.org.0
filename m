Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E14DBA9140C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 08:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9C7B10EA3C;
	Thu, 17 Apr 2025 06:27:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtfKSar7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BC2F10EA3A;
 Thu, 17 Apr 2025 06:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744871269; x=1776407269;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=frNvRbxUjQ9PjDuNuQRa3Ng+NYyhWLpxc/Z/Ssi8T1g=;
 b=CtfKSar7d68GO4VKVOfEa4Vu/uXUoi0uJURpBlUjKcvHbBYDTGmGZpZH
 FATP6TrnyW/i3aBL7RhMYc7LXu0fNMstVcbrG+9PJNQv37rE44T0ih6Wz
 k1ilxWfitXrdBWn8WoIjdNuM4RXw5jhJLph1yWu9PwVHJqQX2VzugerQp
 jRkylMd6NTFQbQmFbs1X4Yu1pIO53J/UF9JWxd25tnZc6q0X4IQBoj6H7
 bJIxSx4LQl8yHQNTKPwq9kdzJ+A+QxA/xzl/QIk0r6ZO6PfEjpaR6puqZ
 vkpW9O/vw8k+CpzhEgn/kHWc6hYfzdzpK2/feJlhxHzW9mcgosa1ELjUg g==;
X-CSE-ConnectionGUID: tCz45+vTQ8GJqK5BzazRzA==
X-CSE-MsgGUID: rk1lpgAbTl2b8da42/YpUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="63980408"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="63980408"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 23:27:48 -0700
X-CSE-ConnectionGUID: yUk5e349Q12paYeGCTdWMw==
X-CSE-MsgGUID: eFEYOXZATcqBbl5PJfvIgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="161750321"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa001.fm.intel.com with ESMTP; 16 Apr 2025 23:27:47 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v6 0/2] Remove support for UHBR13.5
Date: Thu, 17 Apr 2025 11:42:45 +0530
Message-Id: <20250417-dprates-v6-0-e917782873ab@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN6bAGgC/3XOwWrDMBAE0F8JOldmLWllq6f+R+lBkda1oLbDS
 jENwf9eOVBqWnocmDfMXWTiRFk8n+6CaU05LXMN9ukkwujnd5Ip1iwUKAQDSsYL+0JZggk+0Fl
 1aFpR2xemIX0+ll7fah54mWQZmfy3N4DgQIM1ttGgO92CbKXn69xwM125jLeXNBf6aMIy7ZNjy
 mXh2+PbqvfhvzdWLUE6wtgH73oX42Fiv7Gaf5yprkOFGs8KbO9/Ozw68+OwuuD0gLb14JCObtu
 2L+pANLpRAQAA
X-Change-ID: 20250402-dprates-04caceb27541
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, imre.deak@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Changes in v6:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v5: https://lore.kernel.org/r/20250404-dprates-v5-0-c93f561a095e@intel.com

Changes in v5:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v4: https://lore.kernel.org/r/20250402-dprates-v4-0-752535b2068a@intel.com

Changes in v4:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v3: https://lore.kernel.org/r/20250402-dprates-v3-0-9e5d8ca989dd@intel.com

---
Arun R Murthy (2):
      drm/i915/display/dp: DG2 does not support UHBR 13.5
      drm/i915/display/dp: Remove the uhbr13.5 pll state values

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 26 --------------------
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +--
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 35 ---------------------------
 3 files changed, 2 insertions(+), 63 deletions(-)
---
base-commit: 8a0f86f7106709c73acb1477af9ad5f267d7a340
change-id: 20250402-dprates-04caceb27541

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

