Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C99A496B765
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 11:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D2910E721;
	Wed,  4 Sep 2024 09:51:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ua4cX5Lh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D6A10E200;
 Wed,  4 Sep 2024 09:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725443516; x=1756979516;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I+3QBWGBir4I1TGYNSY2XikL910IJCzD+pMxA/gc0Ss=;
 b=Ua4cX5Lhvl3v5BKmpBApRTYRLNr2Vr2j32ZuDYtdHLu1uOUDj4VDARo4
 xIybsKP2uKFa7zl0uUdGDssJnZ27OwlSmr9axL3H6G4dnMH4TZ/uX+9hc
 Z7LFmq9fSeFir79SOuJwPqGJgTPmzvzYui/yqfJmLBn0xHSXzPbTkxZip
 cqwVes2+rT6xlM+jkfr/C7gGW7vQdQU+ygUYdqEI122WMoJhhY0dAKGJw
 cKjZFqOYE5ouY3QaeDzZZBdz7j8On6QKOPT3WaDZzr/aoe9U1VeDMHFLk
 ljhDZ06m+yjk3c6Fy31HOxFKccPUI70RU2SbW+9ykGOb2lLl6qvISFsme w==;
X-CSE-ConnectionGUID: I9Ze6IyrR3qFOa62YC5ULQ==
X-CSE-MsgGUID: u1WTKNG/RvSNZ2JzRbyxXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="13365611"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="13365611"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:51:55 -0700
X-CSE-ConnectionGUID: mNeDL4oITV26rQaJoon6zQ==
X-CSE-MsgGUID: FDyRhXuIRcOZ/Xp9u2A+KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65456965"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:51:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 0/2] drm/i915/pciids: cleanups
Date: Wed,  4 Sep 2024 12:51:31 +0300
Message-Id: <cover.1725443418.git.jani.nikula@intel.com>
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

The (hopefully) non-controversial i915 specific cleanups from [1].

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1725297097.git.jani.nikula@intel.com

Jani Nikula (2):
  drm/i915/pciids: use designated initializers in INTEL_VGA_DEVICE()
  drm/i915/pciids: separate ARL and MTL PCI IDs

 .../drm/i915/display/intel_display_device.c   |  1 +
 drivers/gpu/drm/i915/i915_pci.c               |  1 +
 include/drm/intel/i915_pciids.h               | 39 ++++++++-----------
 3 files changed, 18 insertions(+), 23 deletions(-)

-- 
2.39.2

