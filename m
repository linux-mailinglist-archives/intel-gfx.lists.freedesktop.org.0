Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B94628411
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:37:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7F610E06B;
	Mon, 14 Nov 2022 15:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9EB10E06B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440257; x=1699976257;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NDlURUEJCW2oahfyT22DvWLqGPPlWU4rp4qsI62bmoA=;
 b=KwRZAsMkzRq/xGlc6noaInx7U1bfLDNek4VC1PYPrXasM70xjPLC1OY5
 fYKVrEc00tkLQenoQ2dBrgrq1pwVjJmtzmP9h9Jk25tkpx1VtMcm3vXZ6
 98GPov8744FeBbTZicvtemV6zf7fqYE64Z+zMfD6blSX3Z0oIwjnBTKrE
 eVnxYzNW+vGa0tIF7AoX2MDogiJyIX/wULl3z7g79ja75f7aBvOAHxacQ
 vQbAbD816EW9kPRwy/BIdtBHa0XMrqo6Mr0Hk2+OpU4iMaaFu4JmUP48d
 vkDXrRzXTZ3M6lx7rPBZAOxmwUmi5nDJlYMYZtCQB6IJJt7MKEWe0vSJ5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313147026"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="313147026"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968323"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968323"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:12 +0200
Message-Id: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/20] drm/i915: Finish (de)gamma readout
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

The gamma readout stuff was left half finished. No degamma
readout, and no readout whatsoever on ivb/bdw/skl/bxt.
Let's finish it.

Since we have the {pre,post}_csc_lut stuff this is fairly
easy to do now. The implementation of the LUT checker is
a bit more repetitive than I'd like but we an work on
shrinking it later.

There are some fixes/cleanups at the start, and while we're
in there let's also throw in the 10bit gamma mode for gen2/3.
At the end I also added a few patches to fix existing issues
with gamma vs. YCbCr/RGB limited range output.

v2: Mostly redone, only some of the readout implementations
    remain more or less unchange
v3: More work towards C8 palette readout, but disable the
    state checker for it now since we lack c8_planes readout

Ville Syrjälä (20):
  drm/i915: Clean up legacy palette defines
  drm/i915: Clean up 10bit precision palette defines
  drm/i915: Clean up 12.4bit precision palette defines
  drm/i915: Clean up chv CGM (de)gamma defines
  drm/i915: Reorder 12.4 lut udw vs. ldw functions
  drm/i915: Fix adl+ degamma LUT size
  drm/i915: s/gamma/post_csc_lut/
  drm/i915: Add glk+ degamma readout
  drm/i915: Read out CHV CGM degamma
  drm/i915: Add gamma/degamma readout for bdw+
  drm/i915: Add gamma/degamma readout for ivb/hsw
  drm/i915: Make ilk_read_luts() capable of degamma readout
  drm/i915: Prep for C8 palette readout
  drm/i915: Make .read_luts() mandatory
  drm/i915: Finish the LUT state checker
  drm/i915: Rework legacy LUT handling
  drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output
  drm/i915: Use gamma LUT for RGB limited range compression
  drm/i915: Add 10bit gamma mode for gen2/3
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_color.c    | 1137 ++++++++++++++---
 drivers/gpu/drm/i915/display/intel_color.h    |    8 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   33 +-
 .../drm/i915/display/intel_modeset_verify.c   |    2 +
 drivers/gpu/drm/i915/i915_pci.c               |   12 +-
 drivers/gpu/drm/i915/i915_reg.h               |   67 +-
 6 files changed, 1008 insertions(+), 251 deletions(-)

-- 
2.37.4

