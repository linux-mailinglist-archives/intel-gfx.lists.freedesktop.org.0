Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBB24C3241
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 17:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2198210E833;
	Thu, 24 Feb 2022 16:53:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E5110E828
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 16:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645721617; x=1677257617;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rqmsvzx2Y/mw+ExvWVxDVlTV/ugW8i40geuJxriIN4Y=;
 b=beGcHoSt1QyUP/Ae1ZAUbTD4E3kv8kh8LvD/S5wr3i67x26k1LIyR+tl
 A6zeYOF2TW9qHYAsRSkYKweE7AyGaWZrhvZLgM/ub/DOTbUZuzbcEFl+P
 Fa+LI3trt9ETJlvoEqcEjtvJKnrrw+wNTPyXJzlSutIT9PD38gcqEdZke
 GwBw/XNwIR9ln5q6Va837Ry4WQYO0EeFMHZE8kUteW1dG+bVqHS6eGNgi
 XUiSrVPES3oDvKQxu2jWC79J/f1KqAhFjPS6SImYA3aH/B3B0a+82clU4
 3pwt7hWm/nTHqHoCct/lnTP7LvlXisXOO1Kh6q9hwkAg4W8ouad6qBXnA g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="249864811"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="249864811"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 08:51:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="543763008"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 24 Feb 2022 08:51:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 18:51:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 18:50:59 +0200
Message-Id: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Optimize CSC updates for ilk+
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

As we did with plane updates we can split the color management
updates to noarm+arm pair. The CSC matrix coefficients can all
be written in the noarm hook, with just the PIPE_CSC_mode (the
arming register) left behind in the arm hook.

Also make the scaler/pfit completely lockless as that too
adds overhead into the vblank evasion critical section.

Ville Syrjälä (4):
  drm/i915: Remove locks around skl+ scaler programming
  drm/i915: Make ilk+ pfit regiser unlocked
  drm/i915: Split color_commit() into noarm+arm pair
  drm/i915: Split pipe+output CSC programming to noarm+arm pair

 drivers/gpu/drm/i915/display/intel_color.c   | 95 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_color.h   |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c | 40 +++++----
 drivers/gpu/drm/i915/display/skl_scaler.c    | 10 ---
 4 files changed, 88 insertions(+), 60 deletions(-)

-- 
2.34.1

