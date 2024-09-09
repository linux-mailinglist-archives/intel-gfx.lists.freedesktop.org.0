Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23526971912
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DF910E432;
	Mon,  9 Sep 2024 12:15:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K+JeYtKk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AD110E421;
 Mon,  9 Sep 2024 12:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884149; x=1757420149;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wpd31bGO1vUSLnj1u7O0cxk+YwoqhUlY3QHzx2K3Y0g=;
 b=K+JeYtKk8N+YTCXdYWZjQvA6RrWuDyULbfm7XXFlNlqMzR99Il0kW4+O
 s0m4ZRqNVZAz8DMA9BSakXsj3qPgca3znbusekqWvpOzoBfP/9aNApQrN
 dh6l58eTyAmryJMyXZeTpo82qPCwGMUGRov6oQE5Wc4NotuCJVincCJug
 kr9PQngSsWSkxyji4PQxwnEt6cA1GgWlFL5cmMrQyq3zxVb7OpsdYla1N
 omgezp7lJRrgjugrk2lMWpZw5O5tluWspCuyD+OJYw9CadXVKJKi/UQMX
 0MZNM5kGyWmpyOjZi2v1q7NYski2mc6LGmEKtTWtZyHLZHlRlBYGW0uPY A==;
X-CSE-ConnectionGUID: 02p+R8i/THWh1Olv6to+tA==
X-CSE-MsgGUID: CQAlR+scSNGSiT5wbu2xxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="27500860"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="27500860"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:49 -0700
X-CSE-ConnectionGUID: wfAgUTXsT1KV7coNkRmzgw==
X-CSE-MsgGUID: K0iZOnvaTVCyAgvfbzP4ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="67383610"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:15:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/8] drm/i915/pps: hide VLV/CHV PPS pipe stuff inside
 intel_pps.c
Date: Mon,  9 Sep 2024 15:15:35 +0300
Message-Id: <cover.1725883885.git.jani.nikula@intel.com>
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

v2 of [1], and largely changed to isolate VLV/CHV stuff too.

There are a couple of stragglers accessing intel_dp->pps directly, but
this is progress.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1725458428.git.jani.nikula@intel.com


Jani Nikula (8):
  drm/i915/pps: add vlv_ prefix to pps_pipe and active_pipe members
  drm/i915/pps: only touch the vlv_ members on VLV/CHV
  drm/i915/pps: add vlv_pps_pipe_init()
  drm/i915/pps: add vlv_pps_pipe_reset()
  drm/i915/pps: add vlv_pps_port_disable()
  drm/i915/pps: rename vlv_pps_init() to vlv_pps_port_enable()
  drm/i915/pps: add vlv_pps_backlight_initial_pipe()
  drm/i915/pps: move vlv_active_pipe() to intel_pps.c

 drivers/gpu/drm/i915/display/g4x_dp.c         |  32 +---
 drivers/gpu/drm/i915/display/g4x_dp.h         |   5 -
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  20 +--
 drivers/gpu/drm/i915/display/intel_pps.c      | 156 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_pps.h      |  10 +-
 6 files changed, 128 insertions(+), 99 deletions(-)

-- 
2.39.2

