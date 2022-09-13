Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578E05B74A3
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6B810E778;
	Tue, 13 Sep 2022 15:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEFE10E778
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663082848; x=1694618848;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a5tZQ9WjR1b3prQaDqJUL7MZMMPw2Ih+ajQpGQZwkNo=;
 b=auy8k5vlu6udKKR8YWOGdpLBFBoeeaUWhBrhjsTrSDvctWExFcMZpjcc
 2rrjeCMauB4iUWW4UKciYix6jf4VVLEbEPzj/mHlkB74Nv34smbv7gcPD
 eGzNmJsZvZzfNkNDR9MDqxue7J/SrnyqsmmCGWtKVAG7peRjcvFBCfJNB
 4cnCXUNOeorE1r/5UrwdjNLZNTb7FEL7Zd66SPypMnUYBxuZ/DzKM/lDN
 akwKAFJ0yPUoSBZGFEmHLECd8LWeq2OPUz34mQ8Kei2NjHY80Wb5HjH2Z
 Orvigf5+IQiNVXcqpOlalbOl9eLJH5sVHJDhkOYimuFeWzbhsYKsxPxYQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="298172445"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="298172445"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:27:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="646971324"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:27:25 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 20:57:12 +0530
Message-Id: <20220913152714.16541-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] DGFX mmap with rpm
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
Cc: chris@chris-wilson.co.uk, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per PCIe Spec Section 5.3.1.4.1
When pcie function is in d3hot state, 
Configuration and Message requests are the only TLPs accepted by a 
Function in the D3hot state. All other received Requests must be 
handled as Unsupported Requests, and all received Completions
may optionally be handled as Unexpected Completions.

Therefore when gfx endpoint function is in d3 state, all pcie iomem
transaction requires to transition the pcie function in D0 state.

Implementation of handling i915_gem_object_pin_map will be handled in
different series.

Anshuman Gupta (2):
  drm/i915: Refactor userfault_wakeref to re-use
  drm/i915/dgfx: Release mmap on rpm suspend

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 23 +++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 36 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  1 -
 drivers/gpu/drm/i915/gt/intel_gt.c            |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      | 17 +++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  3 --
 drivers/gpu/drm/i915/i915_gem.c               |  6 +++-
 11 files changed, 86 insertions(+), 11 deletions(-)

-- 
2.26.2

