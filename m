Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B12621811
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A545410E4A2;
	Tue,  8 Nov 2022 15:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0760B10E486
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920984; x=1699456984;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yk7M/Sp332blOeghyC5jITasGKcxG4/uPjKzd+P/ZsY=;
 b=co2NmXuvVsXY++54nzdtcrseoLZ6MjAEzqLekRm8lBsfgzw7g+qZrFcy
 zx2zhzKjOyHtcx8DL5hK7xIYU2K/jTe3NQdLEIxpkj4tiS4kIFvrKQ8KJ
 I1lT2taFYvZJVG324T8XsGEaxGKVSVJyk7Iv5eraVSOmKRCrD+dEMniLr
 aworILg3h7GTeFjGHSHF3oyPrEcVZgbqT8GhXzJv1SPWc6fFgDF8a5Qmj
 NFmZmov855KgS2uINYxvZMayPc9ssj9M7gURlK76GnT4Kc0O9RNBpI9tb
 f5vN/q8cYAgP5RYwILwi7x1BDIjE3EftiYAB7n8DdHlbRqqfRaG9+lvbZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718736"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718736"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590529"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:18:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:18:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:24 +0200
Message-Id: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/15] drm/i915: ELD precompute and readout
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Second attempt at ELD precompute + readout.

v2:
- get rid of the hw ELD buffer entirely on !g4x
- actually use the precomputed ELD in acomp .get_eld()
- more cleanups/etc. here and there

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>

Ville Syrjälä (15):
  drm/i915/audio: Don't program the hardware ELD buffer on ilk+
  drm/i915/audio: Don't program the hardware ELD buffer on hsw+
  drm/i915/audio: Unify get_saved_enc()
  drm/i915/audio: Realign some function arguments
  drm/i915/audio: Introduce a struct for the acomp audio state
  drm/i915/audio: Precompute the ELD
  drm/i915/audio: Don't enable audio with bogus ELD
  drm/i915/audio: Hardware ELD readout
  drm/i915/sdvo: Precompute the ELD
  drm/i915/sdvo: Only use "presence detect" for has_audio readout
  drm/i915/sdvo: Do ELD hardware readout
  drm/i915/audio: Hook up ELD into the state checker
  drm/i915/audio: Include ELD in the state dump
  drm/i915/audio: s/ilk/ibx/
  drm/i915/audio: Clean up the PCH type checks

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +
 drivers/gpu/drm/i915/display/intel_audio.c    | 343 +++++++++---------
 drivers/gpu/drm/i915/display/intel_audio.h    |   7 +
 .../drm/i915/display/intel_crtc_state_dump.c  |  17 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |  43 +++
 .../gpu/drm/i915/display/intel_display_core.h |   9 +-
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  40 +-
 12 files changed, 298 insertions(+), 179 deletions(-)

-- 
2.37.4

