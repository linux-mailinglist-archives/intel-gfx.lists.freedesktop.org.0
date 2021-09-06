Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87380401F8E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 20:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5EA899F2;
	Mon,  6 Sep 2021 18:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA43F899F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 18:27:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="219713089"
X-IronPort-AV: E=Sophos;i="5.85,273,1624345200"; d="scan'208";a="219713089"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 11:27:18 -0700
X-IronPort-AV: E=Sophos;i="5.85,273,1624345200"; d="scan'208";a="464124849"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 11:27:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Nanley G Chery <nanley.g.chery@intel.com>
Date: Mon,  6 Sep 2021 21:27:09 +0300
Message-Id: <20210906182715.3915100-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915/adlp: Add support for remapping
 CCS FBs
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

This is v2 of [1] fixing the initialization of plane_alignment in patch
5 and issues reported by checkpatch, sparse. Also the last patch in this
series adds a description to drm_fourcc.h about the main and CCS surface
stride requirements for all CCS modifiers on ADL-P.

The corresponding IGT changes are at:
https://patchwork.freedesktop.org/series/94107/

[1] https://patchwork.freedesktop.org/series/94108/

Test-with: 20210906181736.3914421-1-imre.deak@intel.com

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Nanley G Chery <nanley.g.chery@intel.com>

Imre Deak (6):
  drm/i915: Use tile block based dimensions for CCS origin x, y check
  drm/i915/adlp: Require always a power-of-two sized CCS surface stride
  drm/i915/adlp: Assert that VMAs in DPT start at 0
  drm/i915: Follow a new->old platform check order in
    intel_fb_stride_alignment
  drm/i915/adlp: Add support for remapping CCS FBs
  drm/fourcc: Add the ADL-P specific pitch requirements of CCS modifiers

 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_display_types.h    |   2 -
 drivers/gpu/drm/i915/display/intel_fb.c       | 171 ++++++++++++------
 .../drm/i915/display/skl_universal_plane.c    |   5 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  29 ++-
 drivers/gpu/drm/i915/i915_vma_types.h         |   7 +-
 include/uapi/drm/drm_fourcc.h                 |  24 ++-
 7 files changed, 174 insertions(+), 69 deletions(-)

-- 
2.27.0

