Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 562E86EA9DB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE1510E0B0;
	Fri, 21 Apr 2023 12:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01E5910E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078591; x=1713614591;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eqYoHaKwCquqpnyTruwl2zJk9M4j7ZhE3T/cMrg77o4=;
 b=jnoUWCpH8/cTlqlD+1Pse2f6JlhgOIITsGWi7xFxo0FwIlbNUspMk9yV
 Hu6Bysi4gb0k3LR1FjO0+e8f8be8f4JdRgTKejEUtDRzJoeCva81JSmEy
 yzjm/+RZkLZSXUbT0lntiSnvrLGfCEB9TWgRaGpMRUaKWEwi2cbNc3QP9
 rWhqm8fSqTuHOmt8hOGbrF0zbXeCmspEnxQTSV3yNfVv2ra5OMCdUY1jx
 P/cMrj0jNb3vJup82jA8E/Yo/KSryQCih2ICP14eu8IS/EI/eGrZzWUQH
 9MgGvOKnyy5gFWY5VkAzO4phVZjLulLJYBDxLjU367GEGDsJBrXaGqLos Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900048"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900048"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725395"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725395"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:02:54 +0300
Message-Id: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/psr: Restore HSW/BDW PSR1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix all the obvious issues affecting HSW/BDW PSR1 and
restore it back to life.

The PC8+ vs. init_clock_gating() problem also affects
some non-PSR workarounds as well.

Ville Syrjälä (13):
  drm/i915: Re-init clock gating on coming out of PC8+
  drm/i915/psr: Fix BDW PSR AUX CH data register offsets
  drm/i915/psr: Wrap PSR1 register with functions
  drm/i915/psr: Reintroduce HSW PSR1 registers
  drm/i915/psr: Bring back HSW/BDW PSR AUX CH registers/setup
  drm/i915/psr: HSW/BDW have no PSR2
  drm/i915/psr: Restore PSR interrupt handler for HSW
  drm/i915/psr: Implement WaPsrDPAMaskVBlankInSRD:hsw
  drm/i915/psr: Implement WaPsrDPRSUnmaskVBlankInSRD:hsw
  drm/i915/psr: Do no mask display register writes on hsw/bdw
  drm/i915/psr: Don't skip both TP1 and TP2/3 on hsw/bdw
  drm/i915/psr: Allow PSR with sprite enabled on hsw/bdw
  drm/i915/psr: Re-enable PSR1 on hdw/bdw

 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../drm/i915/display/intel_display_power.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |   4 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 195 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  17 +-
 drivers/gpu/drm/i915/i915_irq.c               |  14 ++
 drivers/gpu/drm/i915/i915_pci.c               |   4 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |  11 +
 9 files changed, 214 insertions(+), 43 deletions(-)

-- 
2.39.2

