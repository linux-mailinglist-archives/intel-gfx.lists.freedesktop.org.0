Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6A21C0ADF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01116EA44;
	Thu, 30 Apr 2020 23:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1336EA44
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:15:49 +0000 (UTC)
IronPort-SDR: 4c+vf43yscoYQxARx9LLSYu4b8IYfRG8hcuMiNbH0cctPmDfeBGjD6EBqAR1topzV7ybWwb0pZ
 p6lmZ5CSiF5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:15:48 -0700
IronPort-SDR: If7DFvWD31EF145PXb+MeaGEOYPFHgjJVAnfnko80BH1cP3P9cm+Mmi5AaJuzYB2a4x/+nOamN
 /Z00A00aGFkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="293731853"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2020 16:15:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:15:25 -0700
Message-Id: <20200430231529.295556-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Steer multicast register workaround
 verification
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're seeing some CI errors indicating that a workaround did not apply
properly on EHL/JSL.  The workaround in question is updating a multicast
register, the failures are only seen on specific CI machines, and the
failures only seem to happen on resets and such rather than on initial
driver load.  It seems likely that the culprit here is failure to steer
the multicast register readback on a SKU that has slice0 / subslice0
fused off.

This series makes a couple changes:
 * Workaround verification will explicitly steer MCR registers by
   calling read_subslice_reg rather than a regular read.
 * New multicast ranges are added for gen11 and gen12.  Sadly this
   information is still missing from the bspec (just like the updated
   forcewake tables).  The hardware guys have given us a spreadsheet
   with both the forcewake and the multicast information while they work
   on getting the spec properly updated, so that's where the new ranges
   come from.

In addition to MCR and forcewake, there's supposed to be some more bspec
updates coming soon that deal with steering (i.e., different MCR ranges
should actually be using different registers to steer rather than just
the 0xFDC register we're familiar with); I don't have the full details
on that yet, so those updates will have to wait until we actually have
an updated spec. 

References: https://gitlab.freedesktop.org/drm/intel/issues/1222

Matt Roper (4):
  drm/i915: Setup multicast register steering for all gen >= 10
  drm/i915: Steer multicast register readback in wa_verify
  drm/i915: Don't skip verification of MCR engine workarounds
  drm/i915: Add MCR ranges for gen11 and gen12

 drivers/gpu/drm/i915/gt/intel_engine.h        |   3 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  17 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 146 ++++++++++++------
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   2 +
 4 files changed, 110 insertions(+), 58 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
