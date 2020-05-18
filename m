Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F141D8530
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 20:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD54894DE;
	Mon, 18 May 2020 18:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C57894DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 18:17:49 +0000 (UTC)
IronPort-SDR: xQpBsCjXyEfP3L8H9T4dTDuXrSA5rmkXkXDHR8odn1CaVn+U6zw2gBPQYAel1Wo3b9gjJgpbkN
 S91TyzaJolyw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:47 -0700
IronPort-SDR: 9H08+lBoqiDm3MVtR0H5fsRzIIToPQeZ6yLxO/FM0mJfZizxYEvehtL3RHesu12YVx9FpltwCm
 NUJF1j6Ov2HQ==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439318280"
Received: from jkrzyszt-desk.ger.corp.intel.com (HELO
 jkrzyszt-desk.igk.intel.com) ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 20:17:16 +0200
Message-Id: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 0/4] drm/i915: Resolve device hotunplug
 issues
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

The idea is to revoke DMA mappings on driver remove in order to work
around intel-iommu judging late unmapping on driver release after an
open device is removed as bugs.  That also resolves runtime power
management warnings on late object removal.

Janusz Krzysztofik (4):
  drm/i915: Drop user contexts on driver remove
  drm/i915: Release GT resources on driver remove
  drm/i915: Move GGTT cleanup from driver_release to _remove
  drm/i915: Move UC firmware cleanup from driver_release to _remove

 drivers/gpu/drm/i915/gem/i915_gem_context.c | 38 +++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_context.h |  1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c        | 13 ++++---
 drivers/gpu/drm/i915/gt/intel_gt.c          |  2 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h         |  1 +
 drivers/gpu/drm/i915/i915_drv.c             |  2 ++
 drivers/gpu/drm/i915/i915_gem.c             |  5 ++-
 7 files changed, 57 insertions(+), 5 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
