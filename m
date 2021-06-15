Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB33F3A7544
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 05:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF3789FAD;
	Tue, 15 Jun 2021 03:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439B789FAD
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 03:35:12 +0000 (UTC)
IronPort-SDR: Ks62U3e22y5XUGAzBzN+ubEqIVNCRlOkb/N3mibRQMpHO5D2ffonFLZeneMt2OaBEHsGI0jArk
 5whWzBZiFGXQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="267064990"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="267064990"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 20:35:08 -0700
IronPort-SDR: yUc+xYdz+SFTRrh3kF3jm3Az67t+NAH6ViNIaCgWgSmM1YnIDknoXB+RHI56xsgZWP0TI//gAI
 j2L1hd4fjwyw==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="415274356"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 20:35:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Jun 2021 20:34:30 -0700
Message-Id: <20210615033433.1574397-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Explicity steer l3bank multicast reads when
 necessary
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've recently learned that when steering reads of multicast registers
that use 'subslice' replication, it's not only important to steer to a
subslice that isn't fused off, but also to steer to the lowest-numbered
subslice.  This is because when Render Power Gating is enabled, grabbing
forcewake will only cause the hardware to power up a single subslice
(referred to as the "minconfig") until/unless a real workload is being
run on the EUs.  If we try to read back a value from a register instance
other than the minconfig subslice, the read operation will either return
0 or random garbage.

Unfortunately this extra requirement to steer to the minconfig means
that the steering target we use for subslice-replicated registers may
not select a valid instance for l3bank-replicated registers.  In cases
where the two types of multicast registers do not have compatible
steering targets, we'll initialize the steering control register to the
proper subslice target at driver load, and then explicitly re-steer
individual reads of l3bank registers as they occur at runtime.

This series sets up an infrastructure to handle explicit resteering of
multiple multicast register types, and then applies it to l3bank
registers.  Our next upcoming platform (which we'll probably start
upstreaming soon) will bring several more types of multicast registers,
each with their own steering criteria, so the infrastructure here is
partially in preparation for those extra multicast types that will be
arriving soon.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

Daniele Ceraolo Spurio (1):
  drm/i915: extract steered reg access to common function

Matt Roper (2):
  drm/i915: Add GT support for multiple types of multicast steering
  drm/i915: Add support for explicit L3BANK steering

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  41 +------
 drivers/gpu/drm/i915/gt/intel_gt.c            | 102 ++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h            |   8 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  26 ++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 112 +++++++-----------
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  55 +++++++++
 drivers/gpu/drm/i915/intel_uncore.h           |   6 +
 8 files changed, 240 insertions(+), 112 deletions(-)

-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
