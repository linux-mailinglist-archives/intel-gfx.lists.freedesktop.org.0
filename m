Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F175AA1595C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E3210E32A;
	Fri, 17 Jan 2025 22:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fhosriCP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A005910E25B;
 Fri, 17 Jan 2025 22:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151688; x=1768687688;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zLEQAnHsRGxKPD4c2heUW/GqWtZMQv93+HGcvCw/a+w=;
 b=fhosriCPTh4uXVPjEWz2YgwPCKog3h5rDLu+or16lGtsI5dEnwce3o5k
 cXP4Sm/D4U6Az0GX0B2VvHfIU8XxESlVpB6LFMMqDmuwYgDtwNr2M6m/d
 UBpTVMuDbfMKp9ekyCMxdTRj1Vsr7BB+XT7ykMYdgyww7GTkd9zboembU
 IWoEXF0QPmUJ1L9nc3Z1ykummWPFgD03sr81MEVsBhj+oGCPpjmpv+Tfs
 AGTmFsCh2GVSGLaihA/4yWLfMV83T6pNWihastXRwxWP6D2RYouSuEouR
 PF2Z02UE9ppmIf6nyAtAygWIP+mt2d045gpEP+rL6dAcxa2dgRUCoPUxY Q==;
X-CSE-ConnectionGUID: F3hXR0ERT/O99wI42K4lBA==
X-CSE-MsgGUID: eG43pGXfRGu7ipNQSlL5oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48188779"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="48188779"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:08 -0800
X-CSE-ConnectionGUID: nf2RrOTqTYGukR7wELP1PQ==
X-CSE-MsgGUID: u/+Omv7fTqmYnEhOf9M26A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="110915378"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.126])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/dmc_wl: Introduce debugfs interface
Date: Fri, 17 Jan 2025 19:06:51 -0300
Message-ID: <20250117220747.87927-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
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

The DMC wakelock code needs to keep track of register offsets that need
the wakelock for proper access. If one of the necessary offsets are
missed, then the failure in asserting the wakelock is very likely to
cause problems down the road.

A miss could happen for at least two different reasons:

- We might have forgotten to add the offset (or range) to the relevant
  tables tracked by the driver in the first place.

- Or updates to either the DMC firmware or the display IP that require
  new offsets to be tracked and we fail to realize that.

To help capture these cases, let's introduce a debugfs interface for the
DMC wakelock. The debugfs exports a file for looking up untracked
offsets and another for defining extra ranges to be tracked by our
driver during runtime, without the need of edit+re-compile+re-load
cycle.

See the added documentation and commit message for details.

Gustavo Sousa (4):
  drm/i915/dmc_wl: Pass offset instead of reg to range table iterator
  drm/i915/dmc_wl: Add debugfs for untracked offsets
  drm/i915/dmc_wl: Add extra_ranges debugfs
  drm/i915/dmc_wl: Enable the debugfs only with enable_dmc_wl_debugfs=1

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_params.c   |   5 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  23 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   |   2 +
 .../drm/i915/display/intel_dmc_wl_debugfs.c   | 517 ++++++++++++++++++
 .../drm/i915/display/intel_dmc_wl_debugfs.h   |  36 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 9 files changed, 581 insertions(+), 7 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h

-- 
2.48.0

