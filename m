Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 162973FD140
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 04:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD7C6E11A;
	Wed,  1 Sep 2021 02:20:58 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B5E6E10E;
 Wed,  1 Sep 2021 02:20:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218324965"
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="218324965"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 19:20:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="519983654"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga004.fm.intel.com with ESMTP; 31 Aug 2021 19:20:43 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Cc: DRI-Devel@Lists.FreeDesktop.Org, John Harrison <John.C.Harrison@Intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Date: Tue, 31 Aug 2021 19:20:36 -0700
Message-Id: <20210901022043.2395135-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] [CI] Enable GuC submission by default on DG1
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

From: John Harrison <John.C.Harrison@Intel.com>

Minimum set of patches to enable GuC submission on DG1 and enable it by
default.

A little difficult to test as IGTs do not work with DG1 due to a bunch
of uAPI features being disabled (e.g. relocations, caching memory
options, etc...). Hence extra patches at the end to enable some
features / add debugging info.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


Daniele Ceraolo Spurio (1):
  drm/i915/guc: put all guc objects in lmem when available

Matthew Brost (5):
  drm/i915/guc: Add DG1 GuC / HuC firmware defs
  drm/i915/guc: Enable GuC submission by default on DG1
  Me: Allow relocs on DG1 for CI
  Me: Workaround LMEM blow up
  Me: Dump GuC log to dmesg on SLPC load failure

Venkata Sandeep Dhanalakota (1):
  drm/i915: Do not define vma on stack

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c      | 26 +++++
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h      |  4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  9 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     | 13 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  3 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        | 14 ++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 90 ++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |  2 +
 drivers/gpu/drm/i915/i915_gpu_error.c         | 99 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_gpu_error.h         |  3 +
 12 files changed, 244 insertions(+), 23 deletions(-)

-- 
2.25.1

