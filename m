Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C077729C75
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094C010E6AF;
	Fri,  9 Jun 2023 14:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E792E10E6AD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320048; x=1717856048;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xu1KOMAlAD8zFumZYAMBS7Azr9thzreq2hKHRaTYiSA=;
 b=FlpEDEBInu8EccOR+zDS+no9Ab+hTC/K15HnHP/+FU2eqJLl1KT2OZah
 frbUDx75M2oGk++KSZwjqnYtL4jQ89cvbker+6apcSXClJ23WGS7owpfn
 KsuW5WnxZwjTKZ1WbxGOjdU2iWeF0xRZ+cMpBM5dHR0/Dpjy94aSXuZ/v
 jXzHXh7r9/i7KUH6raKJ+7/4PTvG/MhtrJlsPDXI74H3zz3WH8gC6CS+v
 +Gli6givW3yTD7m3hTluP/o12Ttsv5Zi50jTy/E8FMh+F0mMbUm9Ve3Pz
 RFF5hVjHxlil1vZWW0KgLA4SLKFRSvuzPeuNF/tdpm5qY02+9FCkiXl1w g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966273"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966273"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183017"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183017"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:51 +0300
Message-Id: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/13] drm/i915/psr: Restore HSW/BDW PSR1
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

v2: Rebase (due to irq code movement mostly)
    Deal with review comments wrt. the AUX setup

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
  drm/i915/psr: Re-enable PSR1 on hsw/bdw

 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 .../drm/i915/display/intel_display_device.c   |   4 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  14 ++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 196 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  18 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |  11 +
 9 files changed, 217 insertions(+), 41 deletions(-)

-- 
2.39.3

