Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B675B5A05
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 14:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39BD10E3F2;
	Mon, 12 Sep 2022 12:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B6910E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 12:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662984802; x=1694520802;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z8JrNseprIHnpXAvak/vLb1iHXINUGHCtn/5Yt9Mj4E=;
 b=fBodbtKCEALMlvO8iDx1Jc45AHuAZ2jw1XKvUYtbONZEcCOkNF1bBfUN
 qo6stCFqrdbxnza2pZchS1KmXG55o8RMmvvJ07HqROdgXoOfYRlcJfgIq
 wsED4Pjsgm6pZcwTehWCWC7Ks87KBbfHII4O8g8zdlEaR+13YQ5QzGnLo
 FhANc7Jof/n94wMn2UsJ397YtbadLmYsIF4ubIemlaRG0vFFCDHQfn/V5
 jhFtMX6l/hn0MvNTNURLvhNPCyVSkGMGSx9UCr9sBBj2G/WSDICDnq7py
 x1OgmOH5mVaVeJflTYZD4W6pO6BR/QFdAGb1LKW4ppVmvbiu//kEqf6i2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="297850110"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="297850110"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:13:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="791533299"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:13:19 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 17:43:04 +0530
Message-Id: <20220912121306.24926-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] DGFX mmap with rpm
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

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 23 ++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 47 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  1 -
 drivers/gpu/drm/i915/gt/intel_gt.c            |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      | 17 +++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  3 --
 drivers/gpu/drm/i915/i915_driver.c            |  1 -
 drivers/gpu/drm/i915/i915_gem.c               |  7 ++-
 12 files changed, 94 insertions(+), 16 deletions(-)

-- 
2.26.2

