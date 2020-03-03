Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 729D917857E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F096E96B;
	Tue,  3 Mar 2020 22:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2746E96C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:19:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 14:19:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="232413663"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga007.fm.intel.com with ESMTP; 03 Mar 2020 14:19:05 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue,  3 Mar 2020 14:18:58 -0800
Message-Id: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/perf: add OA interrupt support
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

Hi all,

This is a revival of an earlier patch series submitted by Lionel
Landwerlin - https://patchwork.freedesktop.org/series/54280/

The patches enable interrupt support for the perf OA unit in
i915, further details can be found in the orignal series linked
above.

Regards,
Umesh

Lionel Landwerlin (7):
  drm/i915/perf: rework aging tail workaround
  drm/i915/perf: move pollin setup to non hw specific code
  drm/i915/perf: only append status when data is available
  drm/i915/perf: add new open param to configure polling of OA buffer
  drm/i915: handle interrupts from the OA unit
  drm/i915/perf: add interrupt enabling parameter
  drm/i915/perf: add flushing ioctl

 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  29 +-
 drivers/gpu/drm/i915/gt/intel_gt_irq.h        |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |  34 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   2 +
 drivers/gpu/drm/i915/i915_perf.c              | 421 +++++++++++-------
 drivers/gpu/drm/i915/i915_perf_types.h        |  54 ++-
 drivers/gpu/drm/i915/i915_reg.h               |   9 +
 include/uapi/drm/i915_drm.h                   |  41 ++
 8 files changed, 401 insertions(+), 190 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
