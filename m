Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D324E3D1A17
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 01:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE006E8F7;
	Wed, 21 Jul 2021 23:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 602966E199;
 Wed, 21 Jul 2021 23:02:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211252727"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211252727"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 16:02:17 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="511965326"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 16:02:17 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <igt-dev@lists.freedesktop.org>
Date: Wed, 21 Jul 2021 16:19:57 -0700
Message-Id: <20210721232004.31470-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/7] Updates for GuC & parallel execbuf
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

IGT updates for GuC submission [1] and parallel submission (aka multi-bb
execbuf) [2]. This entails adding tests for parallel submission and
teaching IGTs to know of static priority mapping.

More IGTs likely need to be updated gem_ctx_persistence and i915_hangman
come to mind. Expect following series to address those tests. 

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/series/91840/
[2] https://patchwork.freedesktop.org/series/92789/

Matthew Brost (7):
  include/drm-uapi: Add parallel context configuration uAPI
  include/drm-uapi: Add logical mapping uAPI
  lib/intel_ctx: Add support for parallel contexts to intel_ctx library
  i915/gem_exec_balancer: Test parallel execbuf
  include/drm-uapi: Add static priority mapping UAPI
  i915/gem_scheduler: Make gem_scheduler understand static priority
    mapping
  i915/gem_ctx_shared: Make gem_ctx_shared understand static priority
    mapping

 include/drm-uapi/i915_drm.h    | 145 +++++++++-
 lib/i915/gem_scheduler.c       |  13 +
 lib/i915/gem_scheduler.h       |   1 +
 lib/intel_ctx.c                |  28 +-
 lib/intel_ctx.h                |   2 +
 lib/intel_reg.h                |   5 +
 tests/i915/gem_ctx_shared.c    |   5 +-
 tests/i915/gem_exec_balancer.c | 487 +++++++++++++++++++++++++++++++++
 tests/i915/gem_exec_schedule.c |  47 ++--
 9 files changed, 709 insertions(+), 24 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
