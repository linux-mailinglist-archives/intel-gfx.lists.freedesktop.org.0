Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A084E965E54
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0ED010E03B;
	Fri, 30 Aug 2024 10:15:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IZ5d7r9Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F41E89349;
 Fri, 30 Aug 2024 10:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012956; x=1756548956;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DT4QGeaUxiB1KbG7WytITzt8iPsan5q1vE/hRn1C0bM=;
 b=IZ5d7r9YSpLIK3LNidc5rgxjsQiNCqADPMaLh5bK/ubeq6L4vAeW4JH4
 W8Hepr90RR2jak9Esa3HjDvcGtJLKJ7DTWef3UzcKgxbCvUPs8sP6vCAN
 ghktSNFMo3CO3aKqlgrkpKrvBjm9pBjWirSWNpbXRkjYJaJFqNP2jV/D+
 b48X0IIFSjABkEfV+p1j05m8v1+xaHrAHBaYHyZxaSc8Eh3zfmuT5F2zz
 kymrJzoGtia3vPvFqGwP+UDxbJNb1/2aaScWdmQwOim7ZfSBuuGyDrypp
 nBT4Hxk2r/faVFK1W1o4bToXCHAvYf8DUG71Ggl1C1BVeJ93gNq711QWE A==;
X-CSE-ConnectionGUID: N7zMwyW3SSq58yBJ0NC/pg==
X-CSE-MsgGUID: MvNUA5r1SI+IT9V2sprqiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23164387"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23164387"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:15:55 -0700
X-CSE-ConnectionGUID: gFyHBIP8QL+kE/6ew+3ZuQ==
X-CSE-MsgGUID: qNzwk6orQlGA1fEoPQpWzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68252412"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:15:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/11] drm/i915/display: hdmi and dp related struct
 intel_display conversions
Date: Fri, 30 Aug 2024 13:15:37 +0300
Message-Id: <cover.1725012870.git.jani.nikula@intel.com>
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

More of the same, this time with the goal of hiding dp_to_i915().

Jani Nikula (11):
  drm/xe/display: use xe && 0 to avoid warnings about unused variables
  drm/i915/hdmi: convert to struct intel_display
  drm/i915/dp: convert g4x_dp.[ch] to struct intel_display
  drm/i915/dp: convert intel_dp_tunnel.[ch] to struct intel_display
  drm/i915/dp: convert intel_dp_aux.[ch] to struct intel_display
  drm/i915/dp: convert intel_dp_link_training.[ch] to struct
    intel_display
  drm/i915/pps: pass intel_dp to pps_name()
  drm/i915/pps: convert intel_pps.[ch] to struct intel_display
  drm/i915/psr: convert intel_psr.[ch] to struct intel_display
  drm/i915/ddi: stop using dp_to_i915()
  drm/i915/dp: hide dp_to_i915() inside intel_dp.c

 drivers/gpu/drm/i915/display/g4x_dp.c         | 152 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  13 +-
 .../i915/display/intel_display_power_well.c   |  15 +-
 .../drm/i915/display/intel_display_reset.c    |   7 +-
 .../drm/i915/display/intel_display_types.h    |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 114 +--
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |   4 +-
 .../drm/i915/display/intel_dp_link_training.c | 105 +--
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  77 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.h    |  11 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   9 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 500 ++++++-----
 drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 -
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   6 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 563 ++++++------
 drivers/gpu/drm/i915/display/intel_pps.h      |  10 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 848 +++++++++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   6 +-
 27 files changed, 1314 insertions(+), 1177 deletions(-)

-- 
2.39.2

