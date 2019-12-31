Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C1912DC4E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 00:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB34A6E287;
	Tue, 31 Dec 2019 23:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240316E286
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 23:38:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 15:38:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,381,1571727600"; d="scan'208";a="221529962"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 31 Dec 2019 15:38:30 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jan 2020 01:37:49 +0200
Message-Id: <20191231233756.18753-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/tgl: Media decompression support
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

This is the second part of [1] with media decompression enabled. I left
the third part with render decompression/color clear functionality for
later - once we have the IGT test for it in place.

Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Ville Syrjala <ville.syrjala@intel.com>
Cc: Nanley G Chery <nanley.g.chery@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>

Dhinakaran Pandiyan (3):
  drm/framebuffer: Format modifier for Intel Gen-12 media compression
  drm/fb: Extend format_info member arrays to handle four planes
  drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the
    media engine

Imre Deak (4):
  drm/i915: Add support for non-power-of-2 FB plane alignment
  drm/i915/tgl: Make sure a semiplanar UV plane is tile row size aligned
  drm/i915: Add debug message for FB plane[0].offset!=0 error
  drm/i915: Make sure plane dims are correct for UV CCS planes

 drivers/gpu/drm/i915/display/intel_display.c  | 246 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h  |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  55 +++-
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 include/drm/drm_fourcc.h                      |   8 +-
 include/uapi/drm/drm_fourcc.h                 |  13 +
 7 files changed, 262 insertions(+), 68 deletions(-)

-- 
2.23.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
