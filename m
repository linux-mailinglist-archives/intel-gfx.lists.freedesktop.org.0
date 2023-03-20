Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB666C0CB9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:05:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A4A10E293;
	Mon, 20 Mar 2023 09:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5527110E293
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679303125; x=1710839125;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YFmBU34ODUvXU7ywEoFSWpr0IZEbjB+1ROwFHXxdA3s=;
 b=VcYjepbajojEnFSkHVW4bONKaUVLsyIiOdE5oMFhExRH2CkWMregQa6u
 w5NP0R67lWoP9HwfZmH6rctuEo75CgEHZij4jl3hpRt12VpzIaY8qM9Lx
 jIEL2BVlpZpVA520Zcf5xAPHwAuBL2ct1I0BG6ZMMP586Wiruv/WFDO3c
 QCjTmvZsa8K3TqjfSgZqdJNzWdyg+yrI8aIbco6YvEj4wXVREb73r5GP7
 Yo0WAio1YNrndfS1y9qLYA+JTGuVWK0hG6LadnxbbSfrFvyRTGl7PJVpF
 FZQOf+GuvYq79fyM8K/wMnAhxhJQMv6QzEAVbwvieZ47pM6PZ7maCTq12 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338637046"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338637046"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:05:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745289376"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="745289376"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Mar 2023 02:05:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:05:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:05:16 +0200
Message-Id: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915/dpt: Fix DPT+shmem combo and add
 i915.enable_dpt modparam
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

Avoid the shrinker evicting the DPT during hibernate and
causing an oops. This might also fix DPT induced display faults
during high memory pressure (though still don't have a real
theory how that could actually happen).

Also add a i915.enable_dpt modparam to disable DPT usage via
the chicken bit. This can be useful when trying to debug suspected
DPT issues.

Ville Syrjälä (6):
  drm/i915/dpt: Treat the DPT BO as a framebuffer
  drm/i915/dpt: Only do the POT stride remap when using DPT
  drm/i915/dpt: Introduce HAS_DPT()
  drm/i915: Add PLANE_CHICKEN registers
  drm/i915/dpt: Add a modparam to disable DPT via the chicken bit
  drm/i915: Move PLANE_BUG_CFG bit definitons to the correct place

 drivers/gpu/drm/i915/display/intel_display.c  |  6 +++++
 drivers/gpu/drm/i915/display/intel_dpt.c      | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpt.h      |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c       | 11 +++++----
 drivers/gpu/drm/i915/display/intel_fb.h       |  1 +
 .../drm/i915/display/skl_universal_plane.c    |  6 +++++
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +++
 drivers/gpu/drm/i915/i915_drv.h               |  2 ++
 drivers/gpu/drm/i915/i915_params.c            |  3 +++
 drivers/gpu/drm/i915/i915_params.h            |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 21 +++++++++++++----
 12 files changed, 70 insertions(+), 11 deletions(-)

-- 
2.39.2

