Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E89701C2320
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 06:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56FA96ED79;
	Sat,  2 May 2020 04:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A576ED79
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 May 2020 04:57:53 +0000 (UTC)
IronPort-SDR: +ATm+4uEUfrz9Olp+xrgvCPMh6818jCEZQeyp9YkgXPLxZO85ffMR6jF1dclKg+GDsl6202FA8
 d2V6sL+Lcvqw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 21:57:52 -0700
IronPort-SDR: zeUydbuZT95Re9EsTmTKMri5j/LssWGGGnDMCtak+3LlnEDKs7GSiIrYl6M0Gf4GWrQWl6VfB7
 3zmcKSvCyQhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,342,1583222400"; d="scan'208";a="248709986"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 01 May 2020 21:57:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 21:57:41 -0700
Message-Id: <20200502045744.407060-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] Steer multicast register workaround
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
 * Ensure setup of MCR steering is done at the beginning of the RCS
   engine workaround list, not just the general GT workaround list.
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

Matt Roper (3):
  drm/i915: Setup multicast register steering for all gen >= 10
  drm/i915: Setup MCR steering for RCS engine workarounds
  drm/i915: Add MCR ranges for gen11 and gen12

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 57 ++++++++++++++++-----
 1 file changed, 45 insertions(+), 12 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
