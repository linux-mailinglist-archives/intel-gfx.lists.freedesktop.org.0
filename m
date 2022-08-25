Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4E95A0E83
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 12:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96E511AED5;
	Thu, 25 Aug 2022 10:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE0011AED5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 10:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661424872; x=1692960872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iZNtEre6pgFII5GzYsm7Qk+RUA9GZSsXJgGzk6T01bI=;
 b=KPchkWwAzWC4I27ktI+3VByDsS3ah5fXwTpPkXGAAGKA5rtx6RZfCTN4
 dLKNQorsXvvFFVMu+Oet824+EgZrvxqxOdAnejwfImoXGTOlbBF2zrzwW
 viDi+ZL+Odio/YBvLWvliphKsUd5EhgrbPRDrD0/2AFW1wdKQVHT1LSfN
 YAV6xbKZXlOMGfv599bh3aPs7cCGTyVf5T0+xDcyl2z+R8v8z/Pf6lIr9
 biEoiNfaxo7//iIYCATPM6BSUP6b74SJq100X1+BRr72yAEwjQI9axcLC
 xsXJ+lRDZqGCojSPjqHUsqxjqR8n+BP6jYZ4K8TCvVtFIjBUDICuZI5vy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="277227708"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="277227708"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 03:54:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="639545667"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 03:54:20 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 16:24:08 +0530
Message-Id: <20220825105409.6927-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] DGFX mmap with rpm
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
Cc: chris@chris-wilson.co.uk, matthew.auld@intel.com, rodrigo.vivi@intel.com
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

This is formal patch extension of 
RFC proposal https://patchwork.freedesktop.org/series/107400/

Implementation of handling i915_gem_object_pin_map will be handled in
different series.

Anshuman Gupta (1):
  drm/i915/dgfx: Release mmap on rpm suspend

 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 48 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 ++
 drivers/gpu/drm/i915/i915_gem.c               |  8 ++++
 5 files changed, 57 insertions(+), 7 deletions(-)

-- 
2.26.2

