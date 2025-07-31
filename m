Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C08B1731C
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 16:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5F910E068;
	Thu, 31 Jul 2025 14:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zu5h8Rkw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A5610E068;
 Thu, 31 Jul 2025 14:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753971700; x=1785507700;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+wGilvk7r7nkHOIsjOSAm3MHOwO55MC0IhWP+vnW6UU=;
 b=Zu5h8RkwSBVieS8wspD+YyHlqVbcWjtPYJfRpm/9otDkq+HhmCxD3B5P
 qAxtG/58/DP//We4ZGYrBplEk/V3e0G+a6375okGNKus4+93XzJtB9MU3
 oVVZC/V3IwCfR98oc9hLTW4DMy1FZmae2ARzcFNpEcGi6EWSsBsy2oPbU
 izT5J+LQpfYJ6fXyiV5tUCYBoXu/S/Mq3uRoSFj4g+ECx1aGGR8DavIQv
 iox0kkWbIhczXj/UUcJVXxqk4Ba1RIw5DtVpC2Dw5YZjF29qMbo4WJ1ep
 YgMSHQL1Y4FR1P7XZ8I1wxwJ8Q7SWl63ZT9vALcytYvqhS4eU6WDh+l8k Q==;
X-CSE-ConnectionGUID: Bd9Hcg3qQCOFO9ymauxzfg==
X-CSE-MsgGUID: /y1BZm5hRSyF6kGEM9gh7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66992201"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66992201"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:33 -0700
X-CSE-ConnectionGUID: XpRxapoxRfOuKzMX0S+j0A==
X-CSE-MsgGUID: 7NkYDqRcQmSTWdwInGDjig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167453016"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915 and drm/xe: remove fsb/mem freq cleanups
Date: Thu, 31 Jul 2025 17:21:20 +0300
Message-Id: <cover.1753971617.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Main goal here is to remove the fsb_freq, mem_freq, and is_ddr3 members
from drm_i915_private and xe_device.

Jani Nikula (5):
  drm/i915/dram: add intel_fsb_freq() and use it
  drm/i915/dram: add intel_mem_freq()
  drm/i915/rps: use intel_fsb_freq() and intel_mem_freq()
  drm/i915/dram: bypass fsb/mem freq detection on dg2 and no display
  drm/i915/dram: move fsb_freq and mem_freq to dram info

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 13 +++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 11 ++--
 drivers/gpu/drm/i915/i915_drv.h               |  2 -
 drivers/gpu/drm/i915/soc/intel_dram.c         | 54 +++++++++++--------
 drivers/gpu/drm/i915/soc/intel_dram.h         |  5 +-
 drivers/gpu/drm/xe/xe_device_types.h          |  1 -
 8 files changed, 54 insertions(+), 36 deletions(-)

-- 
2.39.5

