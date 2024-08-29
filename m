Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C839A9648F3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAA810E6DD;
	Thu, 29 Aug 2024 14:48:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W+iiR4k6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57AF210E6DC;
 Thu, 29 Aug 2024 14:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942885; x=1756478885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NnaEklE+wlO4lJZHqS9j8Km7d1jkYzLm0gnEJN6bPvo=;
 b=W+iiR4k64myaLN1lnNPkeiiYjBYprrC+9Pxh02yV95Ojwjf0xdumu/4a
 v2VvSTtPKkaR2KzaV9JWiu209omBec1TiRiRFoc1LJ9wDcKapUM6U021Z
 2Ftp1TOnk+Txs/Jkq6nkbDEGY//+QrLPEf9QSAbyZpY1S4c+U+4PLyMGl
 ErsOGMjvZbOBjsHWfsN4NeAyObyk4BEpf81nj2HdZNv2+R8sb6eD3CZhh
 7rkm5xI82QO9iLhlSl/Lz9ujqn9Eauyzh492DVJFvAhh2hd+q+wCd3aPT
 uIKz5dF3WB8wvU8JqebQX1uHVwga4iSYAzYqyl/6u8na1vdQTCCv8XEnf A==;
X-CSE-ConnectionGUID: /+xcYQFrSIaOd0vTk7cLgA==
X-CSE-MsgGUID: siEc6uU2Rty9PZ7VK4EgQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23059227"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23059227"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:05 -0700
X-CSE-ConnectionGUID: 0lhYbeBYQx2MAT6rA9lcCw==
X-CSE-MsgGUID: m0i8h8kGTpaLL3OGGQw8xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63923334"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 0/6] drm/xe & drm/i915: drvdata usage changes follow-up
Date: Thu, 29 Aug 2024 17:47:42 +0300
Message-Id: <cover.1724942754.git.jani.nikula@intel.com>
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

Follow-up to [1].

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1723129920.git.jani.nikula@intel.com

Jani Nikula (6):
  drm/i915 & drm/xe: save struct drm_device to drvdata
  drm/i915: support struct device and pci_dev in to_intel_display()
  drm/i915/audio: migrate away from kdev_to_i915()
  drm/i915/hdcp: migrate away from kdev_to_i915() in bind/unbind
  drm/i915/hdcp: migrate away from kdev_to_i915() in GSC messaging
  drm/xe/display: remove unused compat kdev_to_i915() and pdev_to_i915()

 drivers/gpu/drm/i915/display/intel_audio.c    | 34 ++++++----
 .../drm/i915/display/intel_display_types.h    |  8 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 +--
 .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  8 ++-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  7 --
 drivers/gpu/drm/xe/xe_device.h                |  8 ++-
 drivers/gpu/drm/xe/xe_pci.c                   |  2 +-
 10 files changed, 94 insertions(+), 54 deletions(-)

-- 
2.39.2

