Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8289ECBAE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E8710E07B;
	Wed, 11 Dec 2024 12:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1LfO09N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2DEE10E07B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733918585; x=1765454585;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ggELSbXx+4DfmrUmLTJP/MxK7ZaIQDfMGnPLJA+8rRc=;
 b=O1LfO09NFyuAxEccyPPLxg/VNRuwBkqDCyMe+gODxLjyy1S5xXsZiUbv
 0JMoT91BIHkgNwB3LC92LsRlLS5yVuOY2hzpZZPkXyS30Ba+/oYFbgHuI
 ENuySAlyb+2A8VsVw4ZhOJyJ6FpifHqJoPkLJI4L5LkDODKJiNGGH4IIG
 6y0O1ZI37GCAAx6UkEnoE653R31wQSGnQ4qje7g3s+3SDS59A8AVpOLLt
 2zI/z3Oo4qSGQXIP/5WS9cH0GILjrBJ0g1IsvinuMRzORczKYbZJlMANK
 XaHyuUPpn0HrIBHP1Ii0/FizXYfeGl3dF03SZiCZc3t7HqsCaQRDeaezn A==;
X-CSE-ConnectionGUID: UKDiDVXVTzq1RZHdyd2VrQ==
X-CSE-MsgGUID: TIEtylYiTOOHrHhu04Wnjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="33614183"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="33614183"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:01:34 -0800
X-CSE-ConnectionGUID: 1SAeH8l4TtqMXkibqOTtww==
X-CSE-MsgGUID: Xj3eh39PQzOG9iFQCf4bSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="100836939"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa003.jf.intel.com with ESMTP; 11 Dec 2024 04:01:32 -0800
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v4 0/4] Implement Wa_14022698537
Date: Wed, 11 Dec 2024 17:29:48 +0530
Message-Id: <20241211115952.1659287-1-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
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

This series implements Wa_14022698537 for DG2 along with its prerequisites
in i915. Detailed description in commit message.

v1: https://patchwork.freedesktop.org/series/139628/

v2: Introduce DG2_WA subplatform for workaround (Jani)
    Fix Wa_ID and include it in subject (Badal)
    Rephrase commit message (Jani)
    Move CPU whitelist to intel_wa_cpu.c

v3: Rework subplatform naming (Jani)
    Move CPU file out of gt directory (Riana)
    Rephrase CPU file description (Jani)
    Add kernel doc, re-order macro (Riana)
    Move workaround to i915_pcode_init() (Badal, Anshuman)

v4: Spell fix and nits (Riana)
    Update tags and rebase

Raag Jadav (4):
  drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
  drm/i915/dg2: Introduce DG2_D subplatform
  drm/i915: Introduce intel_cpu_info.c for CPU IDs
  drm/i915/dg2: Implement Wa_14022698537

 drivers/gpu/drm/i915/Makefile            |  1 +
 drivers/gpu/drm/i915/i915_driver.c       | 15 +++++++
 drivers/gpu/drm/i915/i915_drv.h          |  2 +
 drivers/gpu/drm/i915/i915_reg.h          |  1 +
 drivers/gpu/drm/i915/intel_cpu_info.c    | 44 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_cpu_info.h    | 13 ++++++
 drivers/gpu/drm/i915/intel_device_info.c |  9 ++++
 drivers/gpu/drm/i915/intel_device_info.h |  5 ++-
 include/drm/intel/pciids.h               | 55 ++++++++++++++++++------
 9 files changed, 131 insertions(+), 14 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.c
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.h

-- 
2.34.1

