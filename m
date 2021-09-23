Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C33416645
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 22:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABEBF6E10B;
	Thu, 23 Sep 2021 20:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D396F6E10B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 20:01:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223961622"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223961622"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 13:01:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="558674026"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 23 Sep 2021 13:01:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Sep 2021 23:01:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 23:01:03 +0300
Message-Id: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Reject bogus modes with fixed
 mode panels
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

Let's start to reject user modes whose refresh rate is
nowhere near the actual fixed mode refresh rate we're
going to use. ATM we're just flat out lying to the user.

We'll also pimp the connector's mode list validation 
a bit.

Ville Syrjälä (6):
  drm/i915: Extract intel_panel_mode_valid()
  drm/i915: Use intel_panel_mode_valid() for DSI/LVDS/DVO
  drm/i915: Reject modes that don't match fixed_mode vrefresh
  drm/i915: Introduce intel_panel_compute_config()
  drm/i915: Reject user modes that don't match fixed mode's refresh rate
  drm/i915: Drop pointless fixed_mode checks from dsi code

 drivers/gpu/drm/i915/display/icl_dsi.c     |  7 ++--
 drivers/gpu/drm/i915/display/intel_dp.c    | 13 ++++---
 drivers/gpu/drm/i915/display/intel_dsi.c   | 16 ++++-----
 drivers/gpu/drm/i915/display/intel_dvo.c   | 24 ++++++++-----
 drivers/gpu/drm/i915/display/intel_lvds.c  | 15 ++++----
 drivers/gpu/drm/i915/display/intel_panel.c | 41 ++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_panel.h |  5 +++
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 21 ++++++-----
 drivers/gpu/drm/i915/display/vlv_dsi.c     | 39 +++++++++-----------
 9 files changed, 116 insertions(+), 65 deletions(-)

-- 
2.32.0

