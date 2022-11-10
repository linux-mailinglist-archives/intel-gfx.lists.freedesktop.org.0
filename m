Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20527623D59
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:21:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8934C10E117;
	Thu, 10 Nov 2022 08:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9C310E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068507; x=1699604507;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rRSwWl1/8xfTXH3G55Mh/IEQimryH00BfFUaGv1IVnY=;
 b=PtE/sBPMkSW7At2e4wDz/75P3p9IwJvLG17tJlGuzRyhWaJGmjOcfoP8
 36yBtwFVkTL0H/MSiAefOfReFiI8rYNxB+Hct7oQaT7IwGva4AykFNF8H
 F6HvzsZ047JfKyHXZezhibWkf4yS41v5lD5REKdEeY/DuwAAUK0u8vBP3
 Mf03EEWfdUciE/pN7ZbjlnX0NgEHvRqL+vPYA5s20nAQHgk7FXPk1glf2
 Y0dLqbKSiAmka8lC5VcCjhbJTqrOpWKrGGCCdC/coPOrf4tsQfbhAs9ny
 QQLL0l7XrBBM7DnN8JJ/4kogl2jnXrRA/MobZA1c/4lhY3ZfD7TPcgjQB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647210"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647210"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:21:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085707"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085707"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:21:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:21:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:26 +0200
Message-Id: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/18] drm/i915: Finish (de)gamma readout
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
    remain more or less unchanged

Ville Syrjälä (18):
  drm/i915: Clean up legacy palette defines
  drm/i915: Clean up 10bit precision palette defines
  drm/i915: Clean up 12.4bit precision palette defines
  drm/i915: Clean up chv CGM (de)gamma defines
  drm/i915: Reorder 12.4 lut udw vs. ldw functions
  drm/i915: Fix adl+ degamma LUT size
  drm/i915: Add glk+ degamma readout
  drm/i915: Read out CHV CGM degamma
  drm/i915: Add gamma/degamma readout for bdw+
  drm/i915: Add gamma/degamma readout for ivb/hsw
  drm/i915: Make ilk_read_luts() capable of degamma readout
  drm/i915: Make .read_luts() mandatory
  drm/i915: Finish the LUT state checker
  drm/i915: Rework legacy LUT handling
  drm/i915: Use hw degamma LUT for sw gamma on glk with YCbCr output
  drm/i915: Use gamma LUT for RGB limited range compression
  drm/i915: Add 10bit gamma mode for gen2/3
  drm/i915: Do state check for color management changes

 drivers/gpu/drm/i915/display/intel_color.c    | 1082 ++++++++++++++---
 drivers/gpu/drm/i915/display/intel_color.h    |    8 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   33 +-
 .../drm/i915/display/intel_modeset_verify.c   |    1 +
 drivers/gpu/drm/i915/i915_pci.c               |   12 +-
 drivers/gpu/drm/i915/i915_reg.h               |   67 +-
 6 files changed, 965 insertions(+), 238 deletions(-)

-- 
2.37.4

