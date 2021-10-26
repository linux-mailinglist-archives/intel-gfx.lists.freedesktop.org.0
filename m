Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A87343BD71
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:51:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4D96E4CD;
	Tue, 26 Oct 2021 22:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73AC36E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:51:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217203161"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="217203161"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:09 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497574319"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Sameer Lattannavar <sameer.lattannavar@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Wed, 27 Oct 2021 01:50:58 +0300
Message-Id: <20211026225105.2783797-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/adlp/fb: Remove CCS FB stride
 restrictions
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

This patchset removes the CCS FB stride restrictions on ADLP. This makes
the uAPI for these FBs (via CCS modifiers) match the TGL one.

It also fixes a few issues I noticed during testing.

I tested the patchset along with [1] (required due to the ADLP uAPI
change) on SKL/TGL/ADLP.

[1] https://patchwork.freedesktop.org/series/96316/

Test-with: 20211026212620.2718277-1-imre.deak@intel.com

Cc: Nanley G Chery <nanley.g.chery@intel.com>
Cc: Sameer Lattannavar <sameer.lattannavar@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (7):
  drm/i915/fb: Fix rounding error in subsampled plane size calculation
  drm/i915/adlp/fb: Prevent the mapping of redundant trailing padding
    NULL pages
  drm/i915/fb: Factor out functions to remap contiguous FB obj pages
  drm/i915/adlp/fb: Fix remapping of linear CCS AUX surfaces
  drm/i915/fb: Rename i915_color_plane_view::stride to mapping_stride
  drm/i915/adlp/fb: Remove restriction on semiplanar UV plane offset
  drm/i915/adlp/fb: Remove restriction on CCS AUX plane strides

 drivers/gpu/drm/i915/display/i9xx_plane.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  19 +-
 .../drm/i915/display/intel_display_types.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 196 +++++++------
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   8 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 272 +++++++++++-------
 drivers/gpu/drm/i915/i915_vma_types.h         |  19 +-
 10 files changed, 324 insertions(+), 209 deletions(-)

-- 
2.27.0

