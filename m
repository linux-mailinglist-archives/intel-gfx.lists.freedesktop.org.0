Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190B78BAC57
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED8610FBF3;
	Fri,  3 May 2024 12:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g52FuJ4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2295210FBF3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739093; x=1746275093;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oiCPAgwNtPC3ivbc9JeAZ/Rg349lqKoL2uiAEb3Tg3I=;
 b=g52FuJ4al5b7xbKoi1OujS55xvHvKbttbbtFgLFfOKK7Kfm5x5Au4uPT
 pyhHZKPcqMUm1JZCoY9FnWTDeplL09q9M5c3cZV+gCxO68+8LeRUQYhtF
 d6+DQfGZgdWNokQwfO75qd1VsZnkyjyjkhEmnDZNs9QV62o1EqeeTL/2f
 d6aM1ZC+qbaPu6AzJwJfY8HH+uUtkNBS7BIuHB0B+NEqG/rCiQzOdPUGI
 52doUnwrDoKuaJjTihbqb3451ZMf0KtushvcUW4lcQWfJZrapolwGbB0j
 1SePbIb59KOc3igaVhl6evK/Zi0AEEzPLcWk6FkjBbqDjSKIcemjrMjwE w==;
X-CSE-ConnectionGUID: DLn/TznZTtiA5DqkgZ2WkA==
X-CSE-MsgGUID: zCT7werfT0y4iZiMaO6b/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372717"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372717"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:24:52 -0700
X-CSE-ConnectionGUID: cKcMLPzNQvitE4rqyGjc6g==
X-CSE-MsgGUID: 9Ux5b/D+S6mMdTcjucPgeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463549"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:24:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:24:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/35] drm/i915/bios: Define (almost) all BDB blocks
Date: Fri,  3 May 2024 15:24:14 +0300
Message-ID: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
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

I got curious about what gems (or turds) might be hiding
inside the BDB blocks we aren't parsing. So I undertook the
effort to dig up the definition for pretty much all of them.

Unfortunately I didn't find anything really interesting, but
might as well stick the definitions into the header for
posterity. And I do have a followup to intel_vbt_decode to
parse pretty much everything.

I left out a few VBIOS only blocks, as well as the obsolete
compression parameters block.

The details were dug up from varius sources:
- some came from various copies of the spec
- some were derived from VBIOS sources
- some I just had to reverse engineer by hand

And I still have a few VBTs with a bunch of completely unknown
blocks: one VLV with blocks 60-65, and one ADL with block 212.
No clue as of now what those might be.

Ville Syrjälä (35):
  drm/i915/bios: Define eDP DSC disable bit
  drm/i915/bios: Remove version number comment from DEVICE_HANDLE_EFP4
  drm/i915/bios: Indicate which VBT structures are based on EDID
  drm/i915/bios: Get rid of "LVDS" from all LFP data stuff
  drm/i915/bios: Rename SDVO DTD blocks a bit
  drm/i915/bios: Define "TV" child device handle
  drm/i915/bios: Flag "VBIOS only" VBT data blocks
  drm/i915/bios: Add version notes for some blocks
  drm/i915/bios: Define VBT block 3 (Display Toggle Option) contents
  drm/i915/bios: Define VBT block 4 (Mode Support List) contents
  drm/i915/bios: Define VBT block 5 (Generic Mode Table)
  drm/i915/bios: Define VBT blocks 6,7,8 (register tables) contents
  drm/i915/bios: Define VBT block 10 (Mode Removal Table) contents
  drm/i915/bios: Define VBT block 12 (Driver Persistent Algorithm)
    contents
  drm/i915/bios: Define VBT block 15 (Dot Clock Override Table) contents
  drm/i915/bios: Define ALM only VBT block 9 contents
  drm/i915/bios: Define VBT block 17 (SV Test Functions) contents
  drm/i915/bios: Define VBT block 18 (Driver Rotation) contents
  drm/i915/bios: Define VBT blocks 16,29,31 (Toggle List) contents
  drm/i915/bios: Define VBT blocks 19,30,32 (Display Configuration
    Removal Table) contents
  drm/i915/bios: Define VBT block 20 (OEM Customizable Modes) contents
  drm/i915/bios: Define VBT block 21 (EFP List) contents
  drm/i915/bios: Define VBT block 24 (SDVO LVDS PnP ID) contents
  drm/i915/bios: Define VBT block 25 (SDVO LVDS PPS) contents
  drm/i915/bios: Define VBT block 26 (TV Options) contents
  drm/i915/bios: Define VBT block 28 (EFP DTD) contents
  drm/i915/bios: Define VBT block 45 (eDP BFI) contents
  drm/i915/bios: Define VBT block 46 (Chromaticity For Narrow Gamut
    Panel) contents
  drm/i915/bios: Define VBT block 51 (Fixed Set Mode Table) contents
  drm/i915/bios: Define VBT block 55 (RGB Palette Table) contents
  drm/i915/bios: Define VBT block 57 (Vswing PreEmphasis Table) contents
  drm/i915/bios: Define VBT block 50 (MIPI) contents
  drm/i915/bios: Define VBT block 55 (Compression Parameters)
  drm/i915/bios: Define VBT block 252 (int15 Hook)
  drm/i915/bios: Define VBT block 253 (PRD Table) contents

 drivers/gpu/drm/i915/display/intel_bios.c     | 229 +++---
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 714 +++++++++++++++---
 5 files changed, 742 insertions(+), 207 deletions(-)

-- 
2.43.2

