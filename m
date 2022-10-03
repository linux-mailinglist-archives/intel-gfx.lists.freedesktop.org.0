Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A26B5F2FB2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190DC10E326;
	Mon,  3 Oct 2022 11:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F9F410E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664796800; x=1696332800;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3u1NNVxn70fNQbjZHMYHrs26VoRv7J8OMH/MWcNLdFo=;
 b=FwtVb5wNbgPwXv6++Mk7SUMCN9NBmCl2ryDQPcgcXm+cElFh2VwhKXxR
 w173BYYyMGsw6wQkeqSsASSQrF3ptgEGBGccJP/tNHtW339tJr+pbCW9o
 dAGPXyPdu+1380vUsAc0UxfJbzNg1OYHL3ERYHefzP0FDxIQcOHnTY562
 bpqiHQVsj+xFizMHHXdDdGwuS8HQm5tJHEbK2NxLHsHzyAFXPseYxdVhW
 7eSZpybP/XkezLz1IeEF84Z3hL9Ao8UJw9w7GOF9daBTReb04qBhq9vSz
 oaB9e6+fGdiLLgUdegRras1M9z/WZAHObxTmLk4ggQdYBlYgpnBHC+AvP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="329005224"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="329005224"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618701024"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618701024"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:32:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:32:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:32:43 +0300
Message-Id: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/6] drm/i915: Per-crtc/connector DRRS debugfs
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

Change DRRS debugfs to be per-crtc/connector.

v2: for ci to actually run the drrs tests...
v3: filter out bogus DRRS capability from connector

Test-with: 20220929032642.16556-1-ville.syrjala@linux.intel.com

Ville Syrjälä (6):
  drm/i915: Move DRRS debugfs next to the implementation
  drm/i915: Make the DRRS debugfs contents more consistent
  drm/i915: Make DRRS debugfs per-crtc/connector
  drm/i915: Fix locking in DRRS debugfs
  drm/i915: Tighten DRRS capability reporting
  drm/i915: Setup final panel drrs_type already during init

 .../drm/i915/display/intel_display_debugfs.c  |  98 +---------------
 drivers/gpu/drm/i915/display/intel_drrs.c     | 108 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h     |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c    |  23 +++-
 4 files changed, 132 insertions(+), 99 deletions(-)

-- 
2.35.1

