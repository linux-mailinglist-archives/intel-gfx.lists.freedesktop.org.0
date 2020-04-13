Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D711A691A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 17:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7352B89E5B;
	Mon, 13 Apr 2020 15:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BC3B89DD5
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 15:48:24 +0000 (UTC)
IronPort-SDR: XzvZ/+bPvthBoIjZ2MZwKjVn5JAJBOLoimd+46987PMHYk8xTrwumhphXSY6pIh5gLbviNOMw2
 CqvEC0GbuAmw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 08:48:23 -0700
IronPort-SDR: X8s07braQ5Ji/aug/prgC8UQjNY1eCQw+pE8W2pGmicKmtKJSuqplQrG/81fXfaJefrb/O8lMT
 SZAcAu+NRpaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="241695649"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by orsmga007.jf.intel.com with ESMTP; 13 Apr 2020 08:48:22 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 13 Apr 2020 08:48:19 -0700
Message-Id: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/perf: add OA interrupt support
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

This series was split into 2. The first part is merged. This part
enables interrupts.

Regards,
Umesh

Lionel Landwerlin (2):
  drm/i915: handle interrupts from the OA unit
  drm/i915/perf: add interrupt enabling parameter

Umesh Nerlige Ramappa (1):
  drm/i915/perf: Reduce cpu overhead for blocking perf OA reads

 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  29 ++++-
 drivers/gpu/drm/i915/gt/intel_gt_irq.h        |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm_irq.c     |  34 ++---
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   2 +
 drivers/gpu/drm/i915/i915_perf.c              | 118 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |  19 +++
 drivers/gpu/drm/i915/i915_reg.h               |   9 ++
 include/uapi/drm/i915_drm.h                   |  13 +-
 8 files changed, 202 insertions(+), 23 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
