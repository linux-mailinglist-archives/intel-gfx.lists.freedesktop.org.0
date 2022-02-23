Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 384154C0C72
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 07:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA5710EA85;
	Wed, 23 Feb 2022 06:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7058610EA85
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 06:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645596726; x=1677132726;
 h=from:to:cc:subject:date:message-id;
 bh=pXAbMSgQ+aA6I9uVofzBVLQeWR8qaP1IB1Dl4343sw8=;
 b=NlGeoDAE7M3qMGb9NxUnakYHETgWVrMJVddlq7jqdnkeyW6Inbj/LyOe
 0UT1zwxGawqJ0UawoxSCa3S2qasTp990+n7B9CKlmx+mdPJ1VtCrOviqk
 Zuh8MhyzwujMGPJpEVVZlkgc+VY0ArrEHLaLnaExdRADMC9GK0o8NrO8T
 3v+6bwzzgQK8FkEJRb4mPofRnoF2+hRe4XWTpqIbLpaODguLsGEtdb7Ru
 Zrvs68u+crQpxSUWpvjg0ExzErx5/79ARpz5Tk6U69CzWZxpKULvP0Ce1
 FL01im58lyPy7aT+E5Aj5uO4u0qCqf2KkzEKF1M+e6IEyLwg+J6wJKibP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="251629288"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="251629288"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 22:12:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="639194176"
Received: from srr4-3-linux-116-skandpal.iind.intel.com ([10.190.238.57])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2022 22:12:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 11:50:41 +0530
Message-Id: <20220223062043.8337-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [RFC PATCH 0/2] Patches to enable writeback in i915
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These patches introduce the set of definitions and functions to
enable writeback functionality using the interrupt mechanism in
i915 driver.
They work on top of the previous set of patch series floated by me which
is still in review and can be found below
https://patchwork.freedesktop.org/series/99610/

Suraj Kandpal (2):
  drm/i915: Define WD trancoder for i915
  drm/i915: Enabling WD Transcoder

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  78 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  15 +
 .../drm/i915/display/intel_display_types.h    |  17 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
 drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
 .../gpu/drm/i915/display/intel_wb_connector.h |  20 +
 drivers/gpu/drm/i915/display/intel_wd.c       | 769 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wd.h       |  70 ++
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_irq.c               |   8 +-
 drivers/gpu/drm/i915/i915_pci.c               |   7 +-
 drivers/gpu/drm/i915/i915_reg.h               | 133 +++
 14 files changed, 1127 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h

-- 
2.17.1

