Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B6F7723B8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 14:21:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879A810E28C;
	Mon,  7 Aug 2023 12:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C13610E2B7
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 12:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691410816; x=1722946816;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y1oP7ZuMfUKb3/Toat7ysNMXu4K75jwqa2vy+Z6wAuA=;
 b=XbHZB81LEp/nZWZbLoAvjKtBb58ayMLn4BeiEeyv/ISdy8n5nTqea1jM
 +Qki4w/4I3ojmKh28OifWCgY7/mQ7s0Q/EUvwEc4x9d7XREuYWObCzgoD
 E305b33IWCsMvoG2+bukSw3QnzpmrmtpZY1ZABfSSw4lH85FYMIdmn/xH
 57W0bIhvBMe0WEyiDpyjxL6W2UOUjte62lcLp1x/GViZRThsAEX+s8p1J
 XNfqkrvFRKGrePbYR65PLpJKJf60Tzm5lxRKFtsxPx5YbWPIn8JvjDpFm
 7ieoQWWb/jxrY5xqUAMbgfPMXpSaMgkCsmsgcS/52hHElYfA8xBvCPqFr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="370530247"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="370530247"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:20:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="820980147"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="820980147"
Received: from tleistix-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.48.195])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:20:13 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Mon,  7 Aug 2023 14:19:54 +0200
Message-Id: <20230807121957.598420-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/3] Test conflict fix for "Fix Wa_22016122933
 implementation"
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

I'm just sending to CI this series because I had to fix a rebase
conflict.

Andi

Jonathan Cavitt (3):
  drm/i915/gt: Simplify shmem_create_from_object map_type selection
  drm/i915: Make i915_coherent_map_type GT-centric
  drm/i915/gt: Apply workaround 22016122933 correctly

 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    |  3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h       |  4 ----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c        | 15 ---------------
 .../drm/i915/gem/selftests/i915_gem_migrate.c    | 12 ++++++------
 drivers/gpu/drm/i915/gt/intel_engine_pm.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c               | 16 ++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h               | 10 ++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.c              |  4 ++--
 drivers/gpu/drm/i915/gt/intel_lrc.c              | 13 +++++++------
 drivers/gpu/drm/i915/gt/intel_ring.c             |  3 ++-
 drivers/gpu/drm/i915/gt/selftest_context.c       |  5 +++--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c     |  4 ++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c           |  6 +++---
 drivers/gpu/drm/i915/gt/shmem_utils.c            |  3 +--
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c        |  7 +------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c           | 11 ++++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c        |  4 ----
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c        |  3 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c         |  3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c       |  3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c         |  5 ++++-
 drivers/gpu/drm/i915/selftests/igt_spinner.c     |  2 +-
 22 files changed, 72 insertions(+), 66 deletions(-)

-- 
2.40.1

