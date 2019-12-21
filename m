Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A391288F4
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 13:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E6C6E44E;
	Sat, 21 Dec 2019 12:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17F56E44D
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 12:06:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Dec 2019 04:06:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,338,1571727600"; d="scan'208";a="219065193"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 21 Dec 2019 04:06:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 14:05:33 +0200
Message-Id: <20191221120543.22816-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] drm/i915/tgl: Render decompression support
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Ville Syrjala <ville.syrjala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is the first part of [1] with only render decompression enabled.
I left the second part with media decompression and render decompression
color clear functionality for later - once we have the IGT tests for
them in place.

Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Ville Syrjala <ville.syrjala@intel.com>
Cc: Nanley G Chery <nanley.g.chery@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>

[1] https://patchwork.freedesktop.org/series/71125/

Dhinakaran Pandiyan (6):
  drm/i915: Use intel_tile_height() instead of re-implementing
  drm/i915: Move CCS stride alignment W/A inside
    intel_fb_stride_alignment
  drm/i915: Extract framebufer CCS offset checks into a function
  drm/framebuffer: Format modifier for Intel Gen-12 render compression
  drm/i915/tgl: Gen-12 render decompression
  drm/i915: Skip rotated offset adjustment for unsupported modifiers

Imre Deak (4):
  drm/i915: Add helpers to select correct ccs/aux planes
  drm/i915/tgl: Make sure FBs have a correct CCS plane stride
  drm/i915: Make sure Y slave planes get all the required state
  drm/i915: Make sure CCS YUV semiplanar format checks work

 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 513 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  32 +-
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |   7 +-
 include/uapi/drm/drm_fourcc.h                 |  11 +
 7 files changed, 423 insertions(+), 147 deletions(-)

-- 
2.22.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
