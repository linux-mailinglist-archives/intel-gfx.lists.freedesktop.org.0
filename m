Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D0C622A09
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:17:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14CF510E559;
	Wed,  9 Nov 2022 11:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7E510E559
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667992614; x=1699528614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CYUd0ePL4ATNaRzOcTZF9opVRQ4bGzBYIAGzvjmpBYM=;
 b=Q+fLj1gPjFdoEfTZ23FMzt0pueTBAKobsNvKKqmKl0AUjBDiFSHQA9xt
 x8hAko4gYVDt+7XWZicviqJjutpfB37RxO1JAEyeLypc0uVkV2MeMACUi
 id7hMsBeuo8wlUk5itZzrrYxYgD9OQybBA5PSGl4RD95uoSCsvl9yHvTB
 sLrD8CO8qiD2SRp14ltSVRJgdvzo8VqNznuRzSpT0K4zdEQJE73MZuCtn
 MxEfPo8peJnHDWipaCbGjkkAaP3YWB+8hVkqq3kprGtsXQRT0NfBmH/PY
 E1rIHZ6Hi8mXZlPTCb80AgpPXdEqHFb0+KshFl9DjJU1xftcPrTH/9sCr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312113369"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312113369"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:16:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636706989"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636706989"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 09 Nov 2022 03:16:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 13:16:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 13:16:43 +0200
Message-Id: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Fake dual eDP VBT fixes
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

Here's my take on fixing *some* of the issues around the
dual eDP VBTs floating around atm. I have now such a machine.

While the rest of the series does avoid the PPS confusions
the last patch is the only way I can get the HDMI port to
actually work.

Cc: Animesh Manna <animesh.manna@intel.com>

Ville Syrjälä (6):
  drm/i915: Introduce intel_panel_init_alloc()
  drm/i915: Do panel VBT init early if the VBT declares an explicit
    panel type
  drm/i915: Generalize the PPS vlv_pipe_check() stuff
  drm/i915: Try to use the correct power sequencer intiially on bxt/glk
  drm/915: Extend dual PPS handlind for ICP+
  drm/i915: Ignore LFP2 for now

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  87 ++++++++++---
 drivers/gpu/drm/i915/display/intel_bios.h     |  11 +-
 .../gpu/drm/i915/display/intel_connector.c    |   2 +-
 .../drm/i915/display/intel_display_types.h    |  10 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   9 ++
 drivers/gpu/drm/i915/display/intel_panel.h    |   1 +
 drivers/gpu/drm/i915/display/intel_pps.c      | 116 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 12 files changed, 198 insertions(+), 55 deletions(-)

-- 
2.37.4

