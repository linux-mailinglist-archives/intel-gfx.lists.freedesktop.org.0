Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B89C862C3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 18:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE29610E454;
	Tue, 25 Nov 2025 17:17:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GRcSd/f4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A7B10E410;
 Tue, 25 Nov 2025 17:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764091072; x=1795627072;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ykJWMfvr1+uZWHd+Szj3FepUTTxGroPib27B6HBQq2Q=;
 b=GRcSd/f4esR7fZxUqNCnR+rtr0AnNKI7Suv03XPw9OK+YjBTS1oviFXS
 TwHMnkyG2fTOcv0npwQmPRCocqcJPqzEtK8tMKl+YBMT6DQWZc+xqq4p8
 2spTeJDbIICQaOXsnvY2GUMMv2W9KHiVU/EIWyzRQ8OvTFKg7mpv38QFk
 OB87OhRnCQ92fKKBt3o3JY6cCCryA6yD/j2IurThE1bFKVzlVDV+u52KK
 Y7ZG5TobjWUEcAyjGQH5IVyOipsUAh4RuT5zuAtL4r+R/gQMKUUQ695Hu
 uzKHmY2pxe7RpqnLHdd2XRIRrLWLkA52eX50kRMOZDvqgTqQXJ1bQwZkK A==;
X-CSE-ConnectionGUID: fGBQPzjZTzyvKShyUTbOAg==
X-CSE-MsgGUID: Ja47Llg/SUSzpuiBhPN4oQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="77593426"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="77593426"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:17:52 -0800
X-CSE-ConnectionGUID: OG0S6HlwRSiVjSVB4EUvPA==
X-CSE-MsgGUID: L0ymc5utSwaS0LF/3b1DOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="197807393"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:17:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] drm/i915/hdcp: call HDCP GSC hook via parent interface
Date: Tue, 25 Nov 2025 19:17:42 +0200
Message-ID: <cover.1764090990.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Move more stuff to the parent interface. HDCP GSC is different for both
i915 and xe, add it to the interface.

Jani Nikula (2):
  drm/i915/hdcp: move i915 specific HDCP GSC implementation to i915
  drm/{i915,xe}/hdcp: use parent interface for HDCP GSC calls

 drivers/gpu/drm/i915/Makefile                 |  5 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 22 ------
 .../drm/i915/display/intel_hdcp_gsc_message.c | 78 +++++++++----------
 drivers/gpu/drm/i915/display/intel_parent.c   | 24 ++++++
 drivers/gpu/drm/i915/display/intel_parent.h   | 10 +++
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 .../intel_hdcp_gsc.c => i915_hdcp_gsc.c}      | 22 ++++--
 drivers/gpu/drm/i915/i915_hdcp_gsc.h          |  9 +++
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 25 ++++--
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.h      |  9 +++
 include/drm/intel/display_parent_interface.h  | 13 ++++
 13 files changed, 143 insertions(+), 82 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 rename drivers/gpu/drm/i915/{display/intel_hdcp_gsc.c => i915_hdcp_gsc.c} (89%)
 create mode 100644 drivers/gpu/drm/i915/i915_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_hdcp_gsc.h

-- 
2.47.3

