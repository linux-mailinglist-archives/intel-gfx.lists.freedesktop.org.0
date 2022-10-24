Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F1560B100
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 18:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB6210E432;
	Mon, 24 Oct 2022 16:15:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F6510E432
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 16:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666628117; x=1698164117;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EcmI18NUZsbh/AOBs9yNt8qhe+m+gGUdP0kZfyZnaQg=;
 b=J9Bb3LDAFhjD4ZGE38bIt04omP3Qtj8Yw9zvgXGNE0/orRp5J2osMbYM
 UT/l003Oj4CIOK/Y/veDdqSYDMHLcejrYgYwhYWdMh28BRULtAxoY2YHC
 zDaYBy7xpMBGWNrl7dIhLNzDh6FrY2a4krRdvNVH3TfcNJaJo94gd/JlR
 WGK0bUSwvtWV233jzqlepnmA3Hfbif+brn12v5ad/DO1z97Rba97ybA60
 6SCqRu7QNhOATqxWSEiYp2Bo1fC3R+kIFZge+YrYc2f4njrJ+NFCVSKL8
 KXQA59KdHReHc5tc5HFIVgNSxaXBJAHFOQ7OzBmU0GgDIiWgZC5iheURC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305073151"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="305073151"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 09:15:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="756625165"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="756625165"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga004.jf.intel.com with SMTP; 24 Oct 2022 09:15:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Oct 2022 19:15:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 19:15:09 +0300
Message-Id: <20221024161514.5340-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: Prep work for finishing
 (de)gamma readout
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

Add another layer of LUT blobs in order to make gamma
state readout/check possible on ilk-skl. As a bonus we
can also simplify the glk degamma vs. csc mess.

The actual state readout/checker stuff that we're
currently missing will follow later.

v2: Half the series alrady pushed, 
    minor fixes and rebase for the rest

Ville Syrjälä (5):
  drm/i915: Make ilk_load_luts() deal with degamma
  drm/i915: Introduce crtc_state->{pre,post}_csc_lut
  drm/i915: Assert {pre,post}_csc_lut were assigned sensibly
  drm/i915: Get rid of glk_load_degamma_lut_linear()
  drm/i915: Stop loading linear degamma LUT on glk needlessly

 drivers/gpu/drm/i915/display/intel_atomic.c   |   8 +
 drivers/gpu/drm/i915/display/intel_color.c    | 285 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_color.h    |   2 +
 .../drm/i915/display/intel_crtc_state_dump.c  |  12 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../gpu/drm/i915/display/intel_display_core.h |   5 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 .../drm/i915/display/intel_modeset_setup.c    |   6 +
 8 files changed, 216 insertions(+), 114 deletions(-)

-- 
2.37.4

