Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3918A2B65
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 11:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2695E10F545;
	Fri, 12 Apr 2024 09:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NZxcE7Zx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A13EA10F545;
 Fri, 12 Apr 2024 09:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712914922; x=1744450922;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZFeaDPTGwOZhqQ4Uzst2bdt2gu91F5F1OTdesQZVgEM=;
 b=NZxcE7ZxT0yj0X3VWPRt5WTmBsVGIEM/YtgbqwAfD9k3GdLd2uDJn4Ls
 wE0rDYW9LdfuQsITnBEuxBscCDkDOFc1b7GYsN4FzXzIKfHBSQCrdD+Gv
 SYc085bDqhSQLgzopWkOICgBAO37JZm6I3Bt2cDAsDx3x9tc96BxKxr71
 6gn65kaXRiV5be+1c9rdrkN6zKoCqfjzd/fkj8lIDWKQ3CVgVrZ54W4fn
 0PPuXkI7GF2FXZwFpjRU90sVN/ijiprX/mlSc+/+h6OwvEtnJXlF77i7l
 19gQzIbM5/rkuBBjtjlaNCMijLHJ4qnP89ro8aJuHmtP8CmNfLTB+COPz w==;
X-CSE-ConnectionGUID: IOhJOcYISLi+eJa5/Az0tA==
X-CSE-MsgGUID: D8IkI+kzQIK6v7yauclY5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12156395"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="12156395"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:02 -0700
X-CSE-ConnectionGUID: L8xmN5yNTwWI/N1IbvDkkQ==
X-CSE-MsgGUID: gtITOFemTWqlqgt55vqcnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25841355"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.215.209])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:41:59 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v5 0/4] drm/i915/display: DMC wakelock implementation
Date: Fri, 12 Apr 2024 12:41:44 +0300
Message-Id: <20240412094148.808179-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
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

Hi,

This is the seventh version of my series, the fifth as a proper
patchset.

These are the changes:

In v5:
   * add DOC to i915.rst;
   * Removed duplicate paragraph in main DOC section;
   * Fixed comment-style in intel_dmc_wl_get().

In v4:
   * removed the call to init from the first patch (gets added later);
   * added a flag to check if the wakelock is taken in DMC, so we
     don't try to take it again if get() is called while the work is
     queued;
   * changed the copyright year to 2024;
   * added __intel_dmc_wl_supported() to make checks easier;
   * check if supported also on init;
   * check if DMC is loaded before enabling;
   * removed a couple of stray debugging messages.

In v3:
   * Fixed some checkpatch issues.

In v2:
  * Enable/disable the wakelocks on DC5-6 entry and exit instead of on
    DMC load and unload;
  * Added bspec link to the commit message;
  * A bunch of other small changes;
  * For the complete list of changes and discussions, please look at
    the patchset in patchwork:
    https://patchwork.freedesktop.org/series/128628/

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/display: add support for DMC wakelocks
  drm/i915/display: don't allow DMC wakelock on older hardware
  drm/i915/display: add module parameter to enable DMC wakelock
  drm/i915/display: tie DMC wakelock to DC5/6 state transitions

 Documentation/gpu/i915.rst                    |   9 +
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_de.h       |  97 ++++++-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_driver.c   |   1 +
 .../drm/i915/display/intel_display_params.c   |   5 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 .../i915/display/intel_display_power_well.c   |   7 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |   4 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 262 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  31 +++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 13 files changed, 419 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h

-- 
2.39.2

