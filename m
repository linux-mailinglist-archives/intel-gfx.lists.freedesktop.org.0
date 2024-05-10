Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0147D8C2313
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600CA10E7C8;
	Fri, 10 May 2024 11:22:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PRXdquDL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 938A310E7C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 11:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715340148; x=1746876148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DHFp1pMAf4jn3YC4dQcVH9sPwtXO81t8qwJGZ8gs50Q=;
 b=PRXdquDLHcDCrlzoJsuxwdysc2x/vDk/LgKgcbvFJwxnP93Rm8S9ywX0
 MCEaRaw7hpviPRgyrxbhQneWqbtYtyU0wVJltiGzqSxEHEvW2Rv5eMN2L
 9cSxk9bwdM4PccdngWdvcrU3Uk4frHCFwqWKfq74ggkl0Fs9nSO48kt1e
 10xSlQFxf21KZ9D74xWzpmcSngg9ivyGkDCMpQVrZLn9ncKwOQtNHawpJ
 93wzJQp/emibCMbhWpJ4qJ9VM4gB9F9AMfSYYlmdy7TJ2k+2jsk442t48
 NEUyOfYTb31h5MILk7nXWZIwWlTnmgJPdboFliAnR+UElBk0jZWd4rs4R Q==;
X-CSE-ConnectionGUID: 99d8aBpdSoy9nShsflDc0w==
X-CSE-MsgGUID: Vh6kmzvFTCelMuqSREciaA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21987619"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="21987619"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:27 -0700
X-CSE-ConnectionGUID: yd3V4ZdVRbugWwI21SHS2A==
X-CSE-MsgGUID: D0M+F7HfSu+AtUBi90yjrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29590308"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 04:22:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/8] drm/i915/pciids: PCI ID macro cleanups
Date: Fri, 10 May 2024 14:22:13 +0300
Message-Id: <cover.1715340032.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is a spin-off from [1], including just the PCI ID macro cleanups,
as well as adding a bunch more cleanups.

BR,
Jani.

[1] https://lore.kernel.org/all/cover.1715086509.git.jani.nikula@intel.com/


Jani Nikula (8):
  drm/i915/pciids: add INTEL_PNV_IDS(), use acronym
  drm/i915/pciids: add INTEL_ILK_IDS(), use acronym
  drm/i915/pciids: add INTEL_SNB_IDS()
  drm/i915/pciids: add INTEL_IVB_IDS()
  drm/i915/pciids: don't include WHL/CML PCI IDs in CFL
  drm/i915/pciids: remove 11 from INTEL_ICL_IDS()
  drm/i915/pciids: remove 12 from INTEL_TGL_IDS()
  drm/i915/pciids: don't include RPL-U PCI IDs in RPL-P

 arch/x86/kernel/early-quirks.c                | 19 +++---
 .../drm/i915/display/intel_display_device.c   | 20 +++---
 drivers/gpu/drm/i915/i915_pci.c               | 13 ++--
 drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
 include/drm/i915_pciids.h                     | 67 ++++++++++++-------
 5 files changed, 71 insertions(+), 51 deletions(-)

-- 
2.39.2

