Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1439A5A37F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:59:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF8610E4C3;
	Mon, 10 Mar 2025 18:59:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fo5uc1Aq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC6410E4C3;
 Mon, 10 Mar 2025 18:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741633143; x=1773169143;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=9IRJgCq97NEIRaygcnLXOR8ZFvg++x8aCH5YEYawlqU=;
 b=Fo5uc1AqA+XZKr6rurPhLSWuPPPMJ9OELqMriuA6zbPj9v4Rcdv81aKc
 mXLByHwpB8EH6xX8/7ytEyMob8cvpmLyejbWxz7fWL3iqrgqCRkXrCY1m
 sTltHNTi9eH7JgTclEHyYhrZLNCD/iCYZrc1oV0purtN7jZlN2A0yPJrQ
 wvDQFc73mhSj6HFEU3/hy8luocPHu4eeCMCXCaXqqcGM6QeOMi8pbMKmd
 XaKQGzF/k9XpU5EzrEmNcFAv1e0I1ocqBw7i11MH3nmjOk1o7t8CpbLVw
 22sQRYVQCdMQMtERDkUBcckZSjzT05s292ASc+j6zWt6vTyOvY/mlce41 g==;
X-CSE-ConnectionGUID: LfmKMrkcRuiT8lu0bJEOIA==
X-CSE-MsgGUID: pl8bbyrvQLubut0QLuZl8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42777533"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42777533"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:59:02 -0700
X-CSE-ConnectionGUID: 2xA7Bt+QQmys3x8SE3hPhQ==
X-CSE-MsgGUID: CRxD0SbqS3SmnJ821l78wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="120005941"
Received: from iherna2-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.31])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:59:01 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v4 0/3] drm/i915/xe3lpd: Update bandwidth parameters
Date: Mon, 10 Mar 2025 15:57:57 -0300
Message-Id: <20250310-xe3lpd-bandwidth-update-v4-0-4191964b034d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADU2z2cC/5XPvQ6CMBQF4Fchnb2kP1bByfcwDoXeShOgpC1VQ
 3h3gUUWB8cznC/nTCSgtxjIJZuIx2SDdf0SjoeM1I3qHwhWL5lwyiXlvIAXinbQUKleP62ODYy
 DVhHBUMZkWda0FkiW9uDR2Ncm3+5LNt51EBuPauexM5NCSpofRUlLYPAYQ1TJ5cGNQV1tH7HNa
 9etYGNDdP69LU18Zf9F1hlJfJuCnn/eSQIoyKKqsGDmJCuzd+Z5/gBRdafjOQEAAA==
X-Change-ID: 20250228-xe3lpd-bandwidth-update-f011599c0c3e
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Bandwidth parameters for Xe3_LPD have been updated with respect to
previous display releases. Encode them into xe3lpd_sa_info and use that
new struct.

Since we are touching intel_bw.c, also take the opportunity convert it
to intel_display.

Changes in v2:
  - Fix typo in patch #2.

Changes in v3:
- Squash patches #1 and #2 into a single one and modify it to convert
  intel_bw.c internally to intel_display (new patch subject is
  "drm/i915/display: Convert intel_bw.c internally to intel_display").
- Add a new patch #2 to convert intel_bw.c externally to intel_display.
- Link to v2: https://lore.kernel.org/r/20250217153550.43909-1-gustavo.sousa@intel.com

Changes in v4:
- Prefer intel_uncore_read() for MCHBAR registers. (Ville)
- Link to v3: https://lore.kernel.org/r/20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com

---
Gustavo Sousa (3):
      drm/i915/display: Convert intel_bw.c internally to intel_display
      drm/i915/display: Convert intel_bw.c externally to intel_display
      drm/i915/xe3lpd: Update bandwidth parameters

 drivers/gpu/drm/i915/display/intel_bw.c            | 441 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_bw.h            |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c         |   3 +-
 .../gpu/drm/i915/display/intel_display_driver.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  10 +-
 drivers/gpu/drm/i915/i915_driver.c                 |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c            |   2 +-
 7 files changed, 246 insertions(+), 223 deletions(-)
---
base-commit: 335577160971c946611913d1a8e88ee7b00ae804
change-id: 20250228-xe3lpd-bandwidth-update-f011599c0c3e

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>

