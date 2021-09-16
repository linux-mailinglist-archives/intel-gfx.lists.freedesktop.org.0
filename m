Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0FC40E190
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 18:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5313E6EE33;
	Thu, 16 Sep 2021 16:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083576EE32;
 Thu, 16 Sep 2021 16:33:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="286292476"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="286292476"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:33:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="433843925"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 09:33:21 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <thomas.hellstrom@linux.intel.com>,
	<john.c.harrison@intel.com>
Date: Thu, 16 Sep 2021 09:28:14 -0700
Message-Id: <20210916162819.27848-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] Enable GuC submission by default on DG1
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

Minimum set of patches to enable GuC submission on DG1 and enable it by
default.

A little difficult to test as IGTs do not work with DG1 due to a bunch
of uAPI features being disabled (e.g. relocations, caching memory
options, etc...) and CI for DG1 isn't all that useful yet. Tested quite
thoroughly locally though.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Daniele Ceraolo Spurio (2):
  drm/i915/guc: put all guc objects in lmem when available
  drm/i915/guc: Add DG1 GuC / HuC firmware defs

Matthew Brost (2):
  drm/i915/guc: Enable GuC submission by default on DG1
  drm/i915: Take pinning into account in __i915_gem_object_is_lmem

Venkata Sandeep Dhanalakota (1):
  drm/i915: Do not define vma on stack

 drivers/gpu/drm/i915/gem/i915_gem_lmem.c  | 33 ++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h  |  4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c    |  9 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c | 13 +++-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c    | 14 +++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  | 90 ++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  |  9 +++
 8 files changed, 150 insertions(+), 24 deletions(-)

-- 
2.32.0

