Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D63F3A8A09
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 22:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669056E457;
	Tue, 15 Jun 2021 20:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95EF76E457
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 20:16:05 +0000 (UTC)
IronPort-SDR: HkesA/gqLKjMhT2syj385H0wExShjhtT5VSZsJDKAJKfRAbWmI2pEa23G6vD++/NE3gzzLD1ZI
 xtIaPoHHvR3A==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="206098895"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="206098895"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 13:16:05 -0700
IronPort-SDR: rMWvMfsGRoEDcsUtuHEpV+3AMpl5L1nwNEld4z002IcCGF1glfJxD4TSdFS25hJ7B3xM34YpQQ
 kCzZ1jQUq+NA==
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="553797636"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 13:16:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Jun 2021 13:15:55 -0700
Message-Id: <20210615201558.1668315-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] Explicity steer l3bank multicast reads
 when necessary
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

v2:
 - Use {} as table terminator and check for end==0 instead of 0xFFFFFF
   on loop iteration.  (Rodrigo)
 - Use gt->uncore instead of gt->i915->uncore.  (Tvrtko)
 - Now that wa_list_verify() uses _fw accessors we need to explicitly
   grab forcewake.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Daniele Ceraolo Spurio (1):
  drm/i915: extract steered reg access to common function

Matt Roper (2):
  drm/i915: Add GT support for multiple types of multicast steering
  drm/i915: Add support for explicit L3BANK steering

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  41 +-----
 drivers/gpu/drm/i915/gt/intel_gt.c            | 102 +++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h            |   8 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  26 ++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 123 ++++++++----------
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  55 ++++++++
 drivers/gpu/drm/i915/intel_uncore.h           |   6 +
 8 files changed, 251 insertions(+), 112 deletions(-)

-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
