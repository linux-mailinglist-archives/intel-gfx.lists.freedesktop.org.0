Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9C2C490E3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 20:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B5B10E300;
	Mon, 10 Nov 2025 19:31:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OU8BLvzz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D6610E4BE;
 Mon, 10 Nov 2025 19:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762803105; x=1794339105;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZOAqO7cmbz3y+DWlIvFUmkt6IIGLZHTdDs1+bw1uMVU=;
 b=OU8BLvzz4CpKAgdB6n7i1APQvt8fWWs66TCqA8+yJEhvxnjuI3oEI6c0
 99WI6G/1TdqOy1V+hzxIOnY52oNvmeTHWxqIjrEZrXZDXiQt2rtBypklz
 JHIHu9vpIAjSHX1ox+UkFJcZVidaZOwutY1CMoIrn7vXi3jdMA57GQ0NN
 DOHA+i4w0coduk29VLpgA/cfIAcnUgFFL+qkWJEqednPAjncFj5WO74DD
 qUNLu5RsB526RyoIlELgWqvQtg6HW3fchAMVZZymv7WKlkK9ZjpEADYPs
 /c6X5GPAfPg/b3ib7NRfJBlQLM+N3IaQe64+/vI9BZ6qZAplhYQaf5TOh w==;
X-CSE-ConnectionGUID: oiLH7MfYRB2Cra1bdOhRKw==
X-CSE-MsgGUID: TXI5g/zPQAeikypjOAUnPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64895243"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="64895243"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:31:45 -0800
X-CSE-ConnectionGUID: Dc4Db6kBR2CS8gyvcBW7gg==
X-CSE-MsgGUID: ABqrRO2sQOeQ2t7iX0Hmew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188715048"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 11:31:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 0/4] drm/{i915,
 xe}/irq: clarify display and parent driver interfaces
Date: Mon, 10 Nov 2025 21:31:35 +0200
Message-ID: <cover.1762803004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

Add irq .enabled and .synchronize parent driver calls, and clean up
irq/error init/reset handling.

Jani Nikula (4):
  drm/{i915,xe}/display: move irq calls to parent interface
  drm/{i915,xe}/display: duplicate gen2 irq/error init/reset in display
    irq
  drm/i915/display: convert the display irq interfaces to struct
    intel_display
  drm/i915/display: shorten the intel_display_irq_regs_* function names

 .../gpu/drm/i915/display/intel_display_irq.c  | 198 +++++++++++-------
 .../drm/i915/display/intel_display_power.c    |   5 +-
 .../i915/display/intel_display_power_well.c   |  15 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   6 +-
 .../gpu/drm/i915/display/intel_lpe_audio.c    |   1 -
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 drivers/gpu/drm/i915/i915_irq.c               |  16 ++
 drivers/gpu/drm/i915/i915_irq.h               |   2 +
 drivers/gpu/drm/xe/Makefile                   |   2 -
 .../gpu/drm/xe/compat-i915-headers/i915_irq.h |   6 -
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  85 --------
 drivers/gpu/drm/xe/display/xe_display.c       |  18 ++
 include/drm/intel/display_parent_interface.h  |   8 +
 15 files changed, 178 insertions(+), 200 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_irq.h
 delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_irq.c

-- 
2.47.3

