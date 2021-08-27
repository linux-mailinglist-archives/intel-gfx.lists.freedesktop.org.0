Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4153F9B77
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 17:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7DBB6E990;
	Fri, 27 Aug 2021 15:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EFD6E98F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 15:09:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="281690763"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="281690763"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:09:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528340095"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:09:57 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 18:09:50 +0300
Message-Id: <20210827150955.3343520-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/adlp: Add support for remapping
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

Add support for remapping CCS FBs on ADL-P, so that the restriction on
the power-of-two sized stride and the 2 MB surface offset alignment can
be removed.

The corresponding IGT changes are at:
https://patchwork.freedesktop.org/series/94107/

Tested on SKL, TGL, ADL-P.

Test-with: 20210827145756.3342904-1-imre.deak@intel.com

Imre Deak (5):
  drm/i915: Use tile block based dimensions for CCS origin x,y check
  drm/i915/adlp: Require always a power-of-two sized CCS surface stride
  drm/i915/adlp: Assert that VMAs in DPT start at 0
  drm/i915: Follow a new->old platform check order in
    intel_fb_stride_alignment
  drm/i915/adlp: Add support for remapping CCS FBs

 drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
 .../drm/i915/display/intel_display_types.h    |   2 -
 drivers/gpu/drm/i915/display/intel_fb.c       | 155 ++++++++++++------
 .../drm/i915/display/skl_universal_plane.c    |   5 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  28 +++-
 drivers/gpu/drm/i915/i915_vma_types.h         |   7 +-
 6 files changed, 145 insertions(+), 57 deletions(-)

-- 
2.27.0

