Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288AB69541C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2741A10E75C;
	Mon, 13 Feb 2023 22:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC7B10E753
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328781; x=1707864781;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BvQsMU0dLR73UREyS4Nlp6Yz8kEAvkz7bIa5NEwug0U=;
 b=LoJQiEqApZKMjQV6zx95bDKvN4YsGquJNKtFqvOw6ks7Rmhkn96dVF0q
 KMQ9yM+rxITvPglF/4yTdH9ZX0748U6SBLaF2E2tQSE3XgvVX8Ai1edfw
 PQcCWCXHcrS4r3SfyR97jciJHV3YKEIeF35iuDeM5Z84blbQodUqqe38P
 l8k/lPCABbg1WZnRdoRTKX6t3JSWQ3ULZ8pn0UAq/FQ/4sr/hiqb0hPmK
 sX53SprVrA36VHg/9vOC2e3nGuH7Hf7FHawbv/2FRSDXiDudsaNmJlEd0
 uLjEqpVG76PDqyCybWJUyuIzo3ghGbb1GiK3D8K4JIfKHbLLRQRTEUcwE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237363"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237363"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766394"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766394"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:52:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:52:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:46 +0200
Message-Id: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: Transcoder timing stuff
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

Bunch of transcoder registers stuff. Mostly fallout
from hacking on DSB.

Ville Syrjälä (12):
  drm/i915: Rename intel_ddi_{enable,disable}_pipe_clock()
  drm/i915: Flatten intel_ddi_{enable,disable}_transcoder_clock()
  drm/i915: Give CPU transcoder timing registers TRANS_ prefix
  drm/i915: s/PIPECONF/TRANSCONF/
  drm/i915: Dump blanking start/end
  drm/i915: Define the "unmodified vblank" interrupt bit
  drm/i915/psr: Stop clobbering TRANS_SET_CONTEXT_LATENCY
  drm/i915: Add local adjusted_mode variable
  drm/i915: Define transcoder timing register bitmasks
  drm/i915: Configure TRANS_SET_CONTEXT_LATENCY correctly on ADL+
  drm/i915: Sprinkle some FIXMEs about TGL+ DSI transcoder timing mess
  drm/i915: Remove pointless register read

 drivers/gpu/drm/i915/display/icl_dsi.c        |  45 +--
 drivers/gpu/drm/i915/display/intel_crt.c      |  46 +--
 .../drm/i915/display/intel_crtc_state_dump.c  |  16 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  59 ++--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 312 ++++++++++--------
 .../i915/display/intel_display_power_well.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  30 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  19 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/gvt/display.c            |  16 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  18 +-
 drivers/gpu/drm/i915/i915_reg.h               | 219 ++++++------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  70 ++--
 17 files changed, 473 insertions(+), 413 deletions(-)

-- 
2.39.1

