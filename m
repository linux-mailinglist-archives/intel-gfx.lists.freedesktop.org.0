Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B35638F15
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 18:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F3A10E772;
	Fri, 25 Nov 2022 17:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A33810E772
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 17:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669397519; x=1700933519;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j2sZJdgHwRNydObwtgcFAQdtizv+lbxjhuTdSX0rlS4=;
 b=O09J0kh7fL2UuAJuKDJKGLTud+b1ZHwQAASv+umtO/RGVYk9xjJwTTCD
 c2repTI2vV0nXC2RTmXuKBkBcFwIXNLVIZKKJJMjz9GZ1APT/wP62aLmg
 RoxSnHavls20r+Xl2XOY5wd2At9wOC3pTJpc+bcJkSxrhiIJAn5/l/6ls
 UcxFgWzn6utF5hjF71s6uOJKFC635YO45QQKlTJXNL6hbR36MRqrKI6Ub
 fTZxOfQZam7Wk3tTnMc+QrHxopvu7vjlU5wn5vv1fnwF8MUyxhU3sQ9u1
 9of18ytDWSQMtyVEWWMeQqNAF6vsmkSM0NU+zKDp7gcyFzS7AltOeGO91 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="315674608"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="315674608"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 09:31:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="706124254"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="706124254"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2022 09:31:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Nov 2022 19:31:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 19:31:47 +0200
Message-Id: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: Fake dual eDP VBT fixes
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

Here's my take on fixing *some* of the issues around the
dual eDP VBTs floating around atm. I have now such a machine.

Main changes in v2:
- deal with the ICP-ADP second PPS pin muxing
- Improve debugs all over

With this my T14 gen3 now boots without WARNs, and we also
remember to turn off the bogus second PPS that BIOS turned on.
The one thing that doesn't work is HDMI port B that aliases
with the second bogus eDP in the VBT, but fixing that
mess is going to take a lot more work.

Ville Syrjälä (9):
  drm/i915: Introduce intel_panel_init_alloc()
  drm/i915: Do panel VBT init early if the VBT declares an explicit
    panel type
  drm/i915: Generalize the PPS vlv_pipe_check() stuff
  drm/i915: Try to use the correct power sequencer intiially on bxt/glk
  drm/i915: Extend dual PPS handlind for ICP+
  drm/i915: Reject unusablee power sequencers
  drm/i915: Print the PPS registers using consistent format
  drm/i915: Fix whitespace
  drm/i915: Improve PPS debugs

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  56 ++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  11 +-
 .../gpu/drm/i915/display/intel_connector.c    |   2 +-
 .../drm/i915/display/intel_display_types.h    |  24 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  19 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   9 +
 drivers/gpu/drm/i915/display/intel_panel.h    |   1 +
 drivers/gpu/drm/i915/display/intel_pps.c      | 350 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_pps.h      |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 14 files changed, 357 insertions(+), 128 deletions(-)

-- 
2.37.4

