Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C7B8958B8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBFA10FE0A;
	Tue,  2 Apr 2024 15:50:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gs2RqPbK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A9D10FE0A
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073020; x=1743609020;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zRqoVB0x9HNAifiB72OuF2GhzeyKqbXnEgR0k+L3Vk0=;
 b=Gs2RqPbKdFthWmsKczbOlXENuero54GST3rogw6P06p6VK25pxruV/LT
 4qPekyA/TPQ1PWEiX1Pw6kh4TA99Z5PA5bLVR4AtritfEU3Q/Hx0j4jJ+
 ZT76GQwL78Ihr5Md76oFnsO1trl13vUHlGreXKaHHDd2BTyjZcpMBOXyn
 JO1eCFW/gbo+ZcZTNP6JOK8hhUZm7wD2p5ClM1NuUhFfotVo/phKyaHEx
 ysCzAUHYxThFDrr1kyOyyIiKMPJhpBOqzxyEcklCfLOBRvCPLTFvSxJ4/
 uAKbAt9gSRAvup1BfIlOwF2ZUPiQJGGn/jjM8pg5JDFrldut8Fbfwx0ZL w==;
X-CSE-ConnectionGUID: Gt6rRt1kSvGRAdnMacaPEA==
X-CSE-MsgGUID: 1NT8vt9zRGuVwrURWw5XVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980780"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980780"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789456"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789456"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 00/14] drm/i915: Implemnt vblank sycnhronized mbus joining
 changes
Date: Tue,  2 Apr 2024 18:50:02 +0300
Message-ID: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Get rid of the full modeset requirement for changing mbus
joining. Things got quite a bit more complicated than
originally envisioned due to the dynamic cdclk/mdclk ratio.
Sadly we have to do a fairly careful dance between the
dbuf and cdclk code to make sure everything is programmed
in the correct sequence.

Stan did the grunt work, but the sequence vs. cdclk
updates was still not right so I finished that part.
I also reorganized the code quite a bit to make the
resulting patches more legible. And I tossed in more
debugs and whatnot so we can actually observe what
it's doing.

Quickly smoke tested on tgl and adl, and things seem
pretty decent. Unfortunately I don't have a LNL on me
right now so I haven't fully tested the mdclk/cdclk ratio
changes on real hw, but I did hack my adl to pretend that
the ratio changes with cdclk and double checked that the
logs look sensible for all the combinations of cdclk
increase/decrease and mbus join enable/disable.
So should work (tm) on real hw too.

v2: Be more careful with the cd2x pipe select (Gustavo)
    Split the intel_cdclk_is_decreasing_later() stuff
    to a separate patch (Gustavo)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>

Stanislav Lisovskiy (3):
  drm/i915: Loop over all active pipes in intel_mbus_dbox_update
  drm/i915: Use old mbus_join value when increasing CDCLK
  drm/i915: Implement vblank synchronized MBUS join changes

Ville Syrjälä (11):
  drm/i915/cdclk: Fix CDCLK programming order when pipes are active
  drm/i915/cdclk: Fix voltage_level programming edge case
  drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
  drm/i915/cdclk: Indicate whether CDCLK change happens during pre or
    post plane update
  drm/i915: Relocate intel_mbus_dbox_update()
  drm/i915: Extract intel_dbuf_mbus_join_update()
  drm/i915: Extract intel_dbuf_mdclk_min_tracker_update()
  drm/i915: Add debugs for mbus joining and dbuf ratio programming
  drm/i915: Use the correct mdclk/cdclk ratio in MBUS updates
  drm/i915: Use a plain old int for the cdclk/mdclk ratio
  drm/i915: Optimize out redundant dbuf slice updates

 drivers/gpu/drm/i915/display/intel_cdclk.c   |  99 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c |   5 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 344 ++++++++++++-------
 drivers/gpu/drm/i915/display/skl_watermark.h |   9 +-
 5 files changed, 284 insertions(+), 181 deletions(-)

-- 
2.43.2

