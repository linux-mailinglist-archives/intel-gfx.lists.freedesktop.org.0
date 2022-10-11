Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F00C5FB8D6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF0E10E98C;
	Tue, 11 Oct 2022 17:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FFAF10E986
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507719; x=1697043719;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mGesguKPD7g2BG91eTLDEq49u4Cy+x/0Z+ChwtHRK0M=;
 b=jF8+EJJl1/G5mze/K/BLzJLq9c65USdWFiQiNEJ+uSQ10DUFOXALaLpo
 OpxGCh2MrSrhdnCd3lEEcIHrzQ30xiQqUvC2TpLkdFM80AQU0nDLg3jF5
 QlYLJy37v8JMUFjlBHtrIUKMhUa+aOXPoEqKMNj8SOAXVrE+kfoBCqK1E
 XGWItNLlEpRrL48LczuECKEN4MX30vpC/szxT6ziTP1pKQdR2dpLYtlGT
 02QUgQ3l2pOCxpzh8Jj6EgoNq/cFamXqbKKEzGs/Y+5L8+S5k2fNcjP9E
 o5YP27olGFx0KbLBWWGXetN9rfyPWo+7BOBqMZCk/YrvqtnN8BMTOzy5p w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="291885236"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="291885236"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:00:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621475218"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621475218"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2022 10:00:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:00:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 19:59:49 +0300
Message-Id: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/22] drm/i915: ELD precompute and readout
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

There was some discussion around ELD precompute, so I
decided to have a quick look at hooking that up. Unfortunately
the i915 audio code is a bit of a mess so ended up with
a patchbomb of cleanups. Sorry about that.

The actually interesting stuff is at the end of the series.
The precumpute+readot+state checker is pretty self explanatory
stuff for the most part.

But I think we need to decide what to do with the hardware
ELD buffer in general. It's totally busted atm on HSW 
(and I'd expecpt BDW as well), but we had no idea since
we had no readout+state checker for it. 

So do we try to salvage it (I guess to mainly act as some
kind of "did we enable audio correctly?" canary) or do we
just stop programming it outright? And on which platforms
could we do that?

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>

Ville Syrjälä (22):
  drm/i915/audio: s/dev_priv/i915/
  drm/i915/audio: Nuke leftover ROUNDING_FACTOR
  drm/i915/audio: Remove CL/BLC audio stuff
  drm/i915/audio: Exract struct ilk_audio_regs
  drm/i915/audio: Use REG_BIT() & co.
  drm/i915/audio: Unify register bit naming
  drm/i915/audio: Protect singleton register with a lock
  drm/i915/audio: Nuke intel_eld_uptodate()
  drm/i915/audio: Read ELD buffer size from hardware
  drm/i915/audio: Make sure we write the whole ELD buffer
  drm/i915/audio: Use u32* for ELD
  drm/i915/audio: Use intel_de_rmw() for most audio registers
  drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+
  drm/i915/audio: Do the vblank waits
  drm/i915/audio: Precompute the ELD
  drm/i915/audio: Hardware ELD readout
  drm/i915/sdvo: Extract intel_sdvo_has_audio()
  drm/i915/sdvo: Precompute the ELD
  drm/i915/sdvo: Do ELD hardware readout
  drm/i915/audio: Hook up ELD into the state checker
  drm/i915/audio: Include ELD in the state dump
  hax: drm/i915/audio: Make HSW hardware ELD buffer sort of work

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +
 drivers/gpu/drm/i915/display/intel_audio.c    | 792 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_audio.h    |   7 +
 .../gpu/drm/i915/display/intel_audio_regs.h   |  88 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  17 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |  43 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  54 +-
 12 files changed, 608 insertions(+), 409 deletions(-)

-- 
2.35.1

