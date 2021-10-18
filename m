Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4F2431815
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 13:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D9C6E9E4;
	Mon, 18 Oct 2021 11:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B988E6E9E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 11:50:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="289082554"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="289082554"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 04:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="482699861"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 18 Oct 2021 04:50:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 14:50:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 14:50:21 +0300
Message-Id: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: Split plane updates to noarm+arm
 phases
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

Write all non-arming double buffered plane registers ahead of
the vblank evade critical section. This reduces the amount of
work we have to inside the critical section and thus should
speed it up a bit.

I didn't convert cursors yet because IIRC they had some
intersting double buffering behaviours. Similar story with
skl+ scalers. Need to do further studies on those topics
to do this safely. For now we're left with a few TODOs.

Also tossed in a few async flip fixes at the start.

Ville Syrjälä (9):
  drm/i915: Reject planar formats when doing async flips
  drm/i915: Fix async flip with decryption and/or DPT
  drm/i915: Fix up the sprite namespacing
  drm/i915: Split update_plane() into update_noarm() + update_arm()
  drm/i915: Split skl+ plane update into noarm+arm pair
  drm/i915: Split pre-skl primary plane update into noarm+arm pair
  drm/i915: Split g4x+ sprite plane update into noarm+arm pair
  drm/i915: Split ivb+ sprite plane update into noarm+arm pair
  drm/i915: Split vlv/chv sprite plane update into noarm+arm pair

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  72 +++---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  88 +++++--
 .../gpu/drm/i915/display/intel_atomic_plane.h |  23 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  44 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |  18 +-
 .../drm/i915/display/intel_display_types.h    |  12 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 214 +++++++++++-------
 .../drm/i915/display/skl_universal_plane.c    | 150 +++++++-----
 drivers/gpu/drm/i915/i915_trace.h             |  33 ++-
 9 files changed, 431 insertions(+), 223 deletions(-)

-- 
2.32.0

