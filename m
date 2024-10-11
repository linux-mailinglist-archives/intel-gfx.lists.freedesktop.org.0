Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B15A99A16B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:34:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87AE10EAAB;
	Fri, 11 Oct 2024 10:34:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VCKba9xX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4812410EAAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728642839; x=1760178839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vzSZ7a/dSZSMaA0eNHtlnOoUA+e60nSqqDPG6REj7ko=;
 b=VCKba9xXrBiLE/yeuEga7YP1RNgOaiJiQx5MLBNZCKnxOOn2PJc3yoVS
 FTHON434n3XCQs1XueAYVJIPxAuaCtO4l5MRLywZwbNVVJf08TICk4S5F
 K0uM1BTEVJ/MGP6PZXg4mc7/rg/8C+eNrmkSFVGrDIGa5QAJBEIU42Gn9
 cfSNP5MYfExM6YeyHKpYMtSyow03Ff8g0TGcfImgXTN1T3pjlkQVh79X0
 bWeYgNBmQcGM83WEc32cA2YA/0sryVpDjeAi9XUJAvfxsZuklTvW8Uapp
 ADqJjAmT+FpY0MBUO8xKk3YtMDTmolDwGhmOX9cZ8HHfjb1pJYXsOCjnB g==;
X-CSE-ConnectionGUID: AIs8jBktR/aWw8T5oTVkOg==
X-CSE-MsgGUID: ITWd93EsTEq34dj3cS3gLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38619591"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38619591"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:33:58 -0700
X-CSE-ConnectionGUID: JZ/ThuRrS/mNt+qORgcjkg==
X-CSE-MsgGUID: iuhqZd1TSsak7vBm97KLfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77341106"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa007.jf.intel.com with ESMTP; 11 Oct 2024 03:33:56 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v2 0/4] Implement Wa_14022698537
Date: Fri, 11 Oct 2024 16:02:46 +0530
Message-Id: <20241011103250.1035316-1-raag.jadav@intel.com>
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

This series implements Wa_14022698537 along with its prerequisites.
Detailed description in commit message.

v2: Introduce DG2_WA subplatform for workaround (Jani)
    Fix Wa_ID and include it in subject (Badal)
    Rephrase commit message (Jani)
    Move CPU whitelist to intel_wa_cpu.c
v1: https://patchwork.freedesktop.org/series/139628/

Raag Jadav (4):
  drm/i915/pciids: Refactor DG2 PCI IDs into workaround ranges
  drm/i915/dg2: Introduce DG2_WA subplatform
  drm/i915/wa: Introduce intel_wa_cpu.c for CPU specific workarounds
  drm/i915/dg2: Implement Wa_14022698537

 drivers/gpu/drm/i915/Makefile               |  1 +
 drivers/gpu/drm/i915/gt/intel_wa_cpu.c      | 34 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.h |  2 ++
 drivers/gpu/drm/i915/i915_drv.h             |  2 ++
 drivers/gpu/drm/i915/i915_reg.h             |  1 +
 drivers/gpu/drm/i915/intel_device_info.c    | 34 +++++++++++++++------
 drivers/gpu/drm/i915/intel_device_info.h    |  5 ++-
 include/drm/intel/i915_pciids.h             | 34 +++++++++++++++------
 9 files changed, 111 insertions(+), 20 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_wa_cpu.c

-- 
2.34.1

