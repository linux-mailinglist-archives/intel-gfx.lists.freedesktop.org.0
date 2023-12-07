Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D92809165
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 20:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113C910E09D;
	Thu,  7 Dec 2023 19:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B041810E09D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 19:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701977684; x=1733513684;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yu2J7ZNzg+5vBXoAOAOEaS5YXwSqppXoqjU64UmoMBQ=;
 b=aHYUQ2wWMGSkRXKPLoNXVS/zGKFCpun/UdoBGzU8M88Qp2Dh7mm56ImJ
 2Lzy+CvJ5nst16XAlB/9L8fUHAJYuCe46LuFkcfPJmYRuA8mdb6M+PXY2
 ZXVHT7/iCZCmkEcJU2eEdtPm3nC2eRuAIIju5Lxwb7A9mBanaLCEXUp1K
 f+VBa1SaTdZw8SdHznDza50wovF8EZKX95JeZLOqDRBY+rjjTHX6rJuU0
 mgLUA7MKeSvfqOuzI9oNUBfuD4dsOAY6Hvtu8D4k8Ok4zYomo7AF+7FlU
 4acsqitfPZ23iiruFnnzCV+Ucq/ttkJfNn62LOjRBHb/6QGHLlR3wAVZf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384694325"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="384694325"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 11:34:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765213006"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765213006"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 11:34:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 21:34:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/8] drm/i915: Drop pointless null checks and fix a scaler bug
Date: Thu,  7 Dec 2023 21:34:33 +0200
Message-ID: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
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

Mostly just dropping a bunch of redundant null checks that I ran
into while playing around with __attribute__((nonnull)).

And I also ended up discovering an actual bug in the scaler code.

Ville Syrjälä (8):
  drm/i915: Fix intel_atomic_setup_scalers() plane_state handling
  drm/i915: Streamline intel_dsc_pps_read()
  drm/i915: Drop redundant NULL check
  drm/i915: Drop crtc NULL check from intel_crtc_active()
  drm/i915: Drop NULL fb check from intel_fb_uses_dpt()
  drm/i915: Clean up intel_get_frame_time_us()
  drm/i915: s/cstate/crtc_state/ in intel_get_frame_time_us()
  drm/i915/tv: Drop redundant null checks

 drivers/gpu/drm/i915/display/i9xx_wm.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c |  3 +--
 drivers/gpu/drm/i915/display/intel_fb.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_tv.c   |  6 ------
 drivers/gpu/drm/i915/display/intel_vdsc.c | 21 +++++++--------------
 drivers/gpu/drm/i915/display/skl_scaler.c |  2 +-
 7 files changed, 14 insertions(+), 28 deletions(-)

-- 
2.41.0

