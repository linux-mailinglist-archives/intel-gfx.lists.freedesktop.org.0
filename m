Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B602B9B5547
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C493B10E040;
	Tue, 29 Oct 2024 21:52:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVM+GBtk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D237410E040
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238741; x=1761774741;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FQJer0rWKDu8j9izVvUZ3Gb3NuarW7UF4bysNr9DSe8=;
 b=AVM+GBtkQqiuwf4ae6QpmFXaI8mjRzE1a/L3o7IyfPHeqsYoC0LwBXIZ
 PNsxExKtLMbahmuuVQe/PQCgW2U+R6AfSa0ULdN5On/h9HhpsD1Q+7yqb
 rP/vkzRXgNgLobbFilzSmugWosyxGtejA7DQHCSiIb6daHUkZctVWhTey
 9KhtLMDPdKLIK7trQNCD3L/Js3Je1stpV2V15ZVLJ2qNQ0k1W3RoSXcUF
 KzvArB44HWXOo5YmIOvp18dJ6FG43Sly4E6dZmhdIelArcnXTYSC8p8lx
 5MEeibvYmNcxOdjMeOfW9MDuZtclAvy7KB9apZCKui7f09P/UF0WKNQDS A==;
X-CSE-ConnectionGUID: DhscCEMhTDOmgTRExG44tg==
X-CSE-MsgGUID: Af6NYQqfSBulD8FNvQCZ1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275111"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275111"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:21 -0700
X-CSE-ConnectionGUID: JjEnlk/HTSKKwTFOvOyEbQ==
X-CSE-MsgGUID: s4N1rAsgS/OsZL/47b6j3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200195"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/11] drm/i915/cdclk: Declutter CDCLK code
Date: Tue, 29 Oct 2024 23:52:06 +0200
Message-ID: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

Declutter the CDCLK code a bit by moving a all the
foo_min_cdclk() things out into their respective files.

And I also reworked the "pixels per clock" and
guardband handling so that we don't have to repeat
essentially the same platform if-ladder two times.

TODO: the dsi and audio min_cdclk stuff could perhaps
      be more cleanly abstracted into some kind of
      encoder->min_cdlk() thing, but haven't really
      given this more than a cursory thought...

Ville Syrjälä (11):
  drm/i915: Introduce HAS_DOUBLE_WIDE()
  drm/i915/cdclk: Extract intel_cdclk_guardband() and intel_cdclk_ppc()
  drm/i915/cdclk: Extract hsw_ips_min_cdclk()
  drm/i915/cdclk: Extract intel_audio_min_cdclk()
  drm/i915/cdclk: Factor out has_audio check in intel_audio_min_cdclk()
  drm/i915/cdclk: Extract vlv_dsi_min_cdclk()
  drm/i915/cdclk: Factor out INTEL_OUTPUT_DSI check in
    vlv_dsi_min_cdclk()
  drm/i915/cdclk: Suck the compression_enable check into
    intel_vdsc_min_cdclk()
  drm/i915/cdclk: Drop pointles max_t() usage in intel_vdsc_min_cdclk()
  drm/i915/cdclk: Relocate intel_vdsc_min_cdclk()
  drm/i915/cdclk: Unify cdclk max() parameter order

 drivers/gpu/drm/i915/display/hsw_ips.c        |  16 +-
 drivers/gpu/drm/i915/display/hsw_ips.h        |   6 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  47 +++++
 drivers/gpu/drm/i915/display/intel_audio.h    |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 175 ++++--------------
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_device.h   |   1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  46 +++++
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  25 +++
 drivers/gpu/drm/i915/display/vlv_dsi.h        |   8 +
 12 files changed, 187 insertions(+), 145 deletions(-)

-- 
2.45.2

