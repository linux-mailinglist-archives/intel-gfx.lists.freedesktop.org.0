Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80505402275
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 05:24:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25BB389BB3;
	Tue,  7 Sep 2021 03:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 750EE89BB0
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 03:24:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="281099393"
X-IronPort-AV: E=Sophos;i="5.85,273,1624345200"; d="scan'208";a="281099393"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 20:24:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,273,1624345200"; d="scan'208";a="537665628"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 20:24:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Nanley G Chery <nanley.g.chery@intel.com>
Date: Tue,  7 Sep 2021 06:24:15 +0300
Message-Id: <20210907032416.3934415-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210906182715.3915100-1-imre.deak@intel.com>
References: 
MIME-Version: 1.0
Reference: <20210906182715.3915100-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/6] drm/i915/adlp: Add support for remapping CCS
 FBs
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

Resending [1] to test with the fixed IGT changes at [2]. Sending only a
cover letter doesn't seem to trigger a new patchwork test run, so try
again also sending the first patch.

[1] https://patchwork.freedesktop.org/series/94108/
[2] https://patchwork.freedesktop.org/series/94107/

Test-with: 20210907015807.3932309-1-imre.deak@intel.com

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

