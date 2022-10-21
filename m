Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AC7607C1E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 18:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E28810E258;
	Fri, 21 Oct 2022 16:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED8610E258
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 16:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666369489; x=1697905489;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VVvDvpolbsR/xWs9tnxnDTh+0wPx1+orBDZV/p6EucM=;
 b=U7/cJbNq0Qfw0nA852CZKqsW3nmTv4GuwhtDLvHqb9fW0zhAB+McmYS0
 BbrOf13sb60Ty6QClE6Gob4cPEoQWWRAFx6Z/yoxnqSyFwAoqwAzW+8JY
 T6ia+GK/cdSVFfNE7bckNqkhBGQF4L17sm6hIDbFeLOcZFI7FoXMGry6/
 /VssXDj08ZbQ8LSSrBWG73f0MI5GSMti6+fkX+lhIomCny9fFyXkbmqlg
 CvFT+Gm2P0FISvxp5P6lYGcsVaqVVwwd0eqk/pkbMflzEjMsbx7kcUa+W
 XnAJSIyaoBlbFM1ojVn3hGAPx30HtR1hQTugPEoM9tBk1rsqhYfo9hVIk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="294440706"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="294440706"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 09:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="773109935"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="773109935"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 21 Oct 2022 09:24:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Oct 2022 19:24:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 19:24:38 +0300
Message-Id: <20221021162442.27283-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915: Clean up crtc state flag checks
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

Some cleanups for checking whether the crtc was flagged for
modesets/fastsets/color update.

v2: Handle {connectors,active}_changed, and convert one
    more fastset check in fbc code

Ville Syrjälä (4):
  drm/i915: Introduce intel_crtc_needs_fastset()
  drm/i915: Remove some local 'mode_changed' bools
  drm/i915: Don't flag both full modeset and fastset at the same time
  drm/i915: Introduce intel_crtc_needs_color_update()

 drivers/gpu/drm/i915/display/hsw_ips.c        |  8 ++-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  6 ++-
 drivers/gpu/drm/i915/display/intel_display.c  | 49 +++++++++----------
 .../drm/i915/display/intel_display_types.h    | 14 ++++++
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 +-
 .../drm/i915/display/intel_modeset_verify.c   |  3 +-
 7 files changed, 50 insertions(+), 36 deletions(-)

-- 
2.35.1

