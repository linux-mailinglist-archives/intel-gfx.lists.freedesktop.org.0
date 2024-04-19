Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C998AAC5E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 12:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0461D10EA14;
	Fri, 19 Apr 2024 10:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQLVAp7y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEF710EA14
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 10:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713521054; x=1745057054;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KrUv/ceiLQ4+LQ5nzk8HYA+SigXjOUwU6Jdz9N5m7oc=;
 b=WQLVAp7y/d6A3XTcEGG03jhllHYr2PikBseZrpzuqmGpvDocx7v+wvCt
 4ZPkd7JD1D3gQgomwQip4T5ydeiDSpcuphlrhaGNw8FbbBKN6GR9cW5k5
 GkDWQYXAgSukedP1bS7Qkp3GzPvcELYnvbYWjY1jZXL4xZHqBtStrrNr/
 FkIsXRPLcv1M0hs41Cvcm0/U7xDSJjbKKyn8rMf1lvS0esekpUAFoEXIn
 xi5IEDIk65QEWffYW24yUKM7KS6H28rXJoc3Q7s+v2JojqqdhUy3tDo4k
 Tj0mB/dArrVzysR+Sdl7/wpJBValYupSCrj5RJxr0ukFkoms8TLFJ4N16 g==;
X-CSE-ConnectionGUID: +Zpx8r2/SnW4yc/QLgCtpQ==
X-CSE-MsgGUID: 198PSA3hRzaF5zd9lmAwaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20256631"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20256631"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:13 -0700
X-CSE-ConnectionGUID: tPWGcWcKRN2vC7d8UokqGQ==
X-CSE-MsgGUID: VsrCcYk8RyKPuZ1+4BdapA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23316257"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/4] drm/i915/dsi: stop relying on implicit dev_priv
 variable
Date: Fri, 19 Apr 2024 13:04:02 +0300
Message-Id: <cover.1713520813.git.jani.nikula@intel.com>
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

v2 of [1], using struct intel_display * rather than struct
drm_i915_private *.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1712766927.git.jani.nikula@intel.com

Jani Nikula (4):
  drm/i915/dsi: remove unused _MIPIA_AUTOPWG register definition
  drm/i915/dsi: add VLV_ prefix to VLV only register macros
  drm/i915/dsi: unify connector/encoder type and name usage
  drm/i915/dsi: pass display to register macros instead of implicit
    variable

 drivers/gpu/drm/i915/display/intel_display.c |   8 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 467 +++++++++----------
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c   |  22 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h  | 327 +++++++------
 4 files changed, 407 insertions(+), 417 deletions(-)

-- 
2.39.2

