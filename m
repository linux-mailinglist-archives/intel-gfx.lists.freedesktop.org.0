Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D50510904
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB69310E4D3;
	Tue, 26 Apr 2022 19:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC2B10E4D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001547; x=1682537547;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XWai8sKJsrJIzrwBAreKA0nXDKQXpn0rxlWopY2ovu4=;
 b=lM69cgLiIRrqSPbJlyRgkAuZe/KjotLzdKwhy72IqWSfCrW+M2lR1TLz
 zhUuDHcjVvV3fsldPxTcX/uQaOALszc+Lu1/bm80e/TTMr6fhbTYVU0H4
 /DERaHDwtoPprRhtZWNuL3qQAyEt6Czy6VGmvYp1M9452thMW80ac+DjG
 2lTvtD+0uxkJADUDh0EgzXkRJEstwRifSHVIvgSxrY8Kz4yukqBYA9r7S
 i0PIWLSnt89eRQr/mGKXif8WMAky6NiypmlZrzhiTARoa/SAL3ABTpRMi
 okxrTFV7uxRPtKLJLM5onSJFRNoFQ9Uc6s2P5vDywazPb4JkI8sovc3yZ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="245622097"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="245622097"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="558493639"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 26 Apr 2022 12:32:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:04 +0300
Message-Id: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/18] drm/i915/bios: Rework BDB block
 handling and PNPID->panel_type matching
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

Several changes to our BDB block handling:

1)
The current way of trusting the version checks to avoid out of
bounds accesses to the BDB blocks is fragile. We might just get
the version check wrong, or the VBT may be corrupted/malicious.
So instead of doing blind accesses into the original data let's
make a copy of each block with a gauranteed minimum size.

2)
The LFP data table pointer stuff is a horrible mess currently.
Let's make that sensible by verifying the pointers ahead of
time, which allows us to trust them 100% when we acually
parse the actual data block.

3)
There's more stuff at the tail end of the LFP data block we
need to parse. The variable size of the fp_timing table makes
that a bit awkward, but with the pointer validation in place
it's not too horrible.

4)
Modern VBTs (seen it on TGL/ADL-P/CML so far) no longer include
the LFP data table pointers block (41) in the VBT. In order to
keep the rest of the code working as is we must therefore
generate the pointers block from scratch.

New stuff in v2:
- Make all the BDB block copies up front
- Split the VBT parsing into two parts and add the EDID
  PNPID->panel_type matching because many modern machines need it
v3:
- Some stuff already merged
- Split out a few things
- Address a bunch of review comments

Ville Syrjälä (18):
  drm/i915/bios: Reorder panel DTD parsing
  drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
  drm/i915/bios: Get access to the tail end of the LFP data block
  drm/i915/bios: Document the mess around the LFP data tables
  drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
  drm/i915/bios: Split parse_driver_features() into two parts
  drm/i915/bios: Split VBT parsing to global vs. panel specific parts
  drm/i915/bios: Don't parse some panel specific data multiple times
  drm/i915/pps: Split PPS init+sanitize in two
  drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
  drm/i915/bios: Do panel specific VBT parsing later
  drm/i915/bios: Extract get_panel_type()
  drm/i915/bios: Refactor panel_type code
  drm/i915/bios: Determine panel type via PNPID match
  drm/i915/bios: Parse the seamless DRRS min refresh rate
  drm/i915: Respect VBT seamless DRRS min refresh rate
  drm/edid: Extract drm_edid_decode_mfg_id()
  drm/i915/bios: Dump PNPID and panel name

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +
 drivers/gpu/drm/i915/display/intel_bios.c     | 490 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_bios.h     |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  35 +-
 drivers/gpu/drm/i915/display/intel_pps.h      |   1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  24 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   1 +
 include/drm/drm_edid.h                        |  21 +-
 13 files changed, 526 insertions(+), 72 deletions(-)

-- 
2.35.1

