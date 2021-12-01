Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E164465188
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA1E6EBFB;
	Wed,  1 Dec 2021 15:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7995B6EBFB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:25:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="297279123"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="297279123"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:25:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="602188912"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Dec 2021 07:25:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:25:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:38 +0200
Message-Id: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/14] drm/i915: Plane register cleanup
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

Bunch of cleanup around plane registers, and a bit of
reshuffling in the skl+ universal plane code.

Ville Syrjälä (14):
  drm/i915: Get rid of the 64bit PLANE_CC_VAL mmio
  drm/i915: Rename plane YUV order bits
  drm/i915: Get rid of the "sizes are 0 based" stuff
  drm/i915: Sipmplify PLANE_STRIDE masking
  drm/i915: Rename PLANE_CUS_CTL Y plane bits
  drm/i915: Use REG_BIT() & co. for universal plane bits
  drm/i915: Clean up pre-skl primary plane registers
  drm/i915: Clean up ivb+ sprite plane registers
  drm/i915: Clean up vlv/chv sprite plane registers
  drm/i915: Clean up g4x+ sprite plane registers
  drm/i915: Clean up cursor registers
  drm/i915: Extract skl_plane_aux_dist()
  drm/i915: Declutter color key register stuff
  drm/i915: Nuke pointless middle men for skl+ plane programming

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  99 ++-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  25 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  25 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  57 +-
 .../drm/i915/display/skl_universal_plane.c    | 191 +++---
 drivers/gpu/drm/i915/gvt/reg.h                |   1 -
 drivers/gpu/drm/i915/i915_reg.h               | 646 ++++++++++--------
 drivers/gpu/drm/i915/intel_pm.c               |  14 +-
 8 files changed, 581 insertions(+), 477 deletions(-)

-- 
2.32.0

