Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D24D124CCC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03A36E897;
	Wed, 18 Dec 2019 16:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5C06E875
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189575"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:26 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:10:50 +0200
Message-Id: <20191218161105.30638-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/15] drm/i915/tgl: Render/media decompression
 support
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
 Ville Syrjala <ville.syrjala@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an updated version of DK's and RK's patchset enabling
render/media decompression. The fixes in this version apply mostly to
get YUV formats working. Wrt. RK's last patchset the order of planes in
semiplanar YUV FBs has changed, see patch 11 for details.

I tested the normal and panned (non-zero FB source coords) scan out of
the following formats: RGB32, YUYV, NV12, P0xx. I'll follow up for the
actual IGT tests for these.

Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Ville Syrjala <ville.syrjala@intel.com>
Cc: Nanley G Chery <nanley.g.chery@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Dhinakaran Pandiyan (9):
  drm/framebuffer: Format modifier for Intel Gen-12 render compression
  drm/i915: Use intel_tile_height() instead of re-implementing
  drm/i915: Move CCS stride alignment W/A inside
    intel_fb_stride_alignment
  drm/i915: Extract framebufer CCS offset checks into a function
  drm/i915/tgl: Gen-12 render decompression
  drm/i915: Skip rotated offset adjustment for unsupported modifiers
  drm/framebuffer: Format modifier for Intel Gen-12 media compression
  drm/fb: Extend format_info member arrays to handle four planes
  drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the
    media engine

Imre Deak (4):
  drm/i915: Add helpers to select correct ccs/aux planes
  drm/i915/tgl: Make sure FBs have a correct CCS plane stride
  drm/i915: Make sure Y slave planes get all the required state
  drm/i915: Make sure CCS YUV semiplanar format checks work

Radhakrishna Sripada (2):
  drm/framebuffer: Format modifier for Intel Gen 12 render compression
    with Clear Color
  drm/i915/tgl: Add Clear Color support for TGL Render Decompression

 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 581 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |   5 +
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  87 ++-
 drivers/gpu/drm/i915/i915_reg.h               |  14 +
 drivers/gpu/drm/i915/intel_pm.c               |   7 +-
 include/drm/drm_fourcc.h                      |   8 +-
 include/uapi/drm/drm_fourcc.h                 |  43 ++
 9 files changed, 615 insertions(+), 141 deletions(-)

-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
