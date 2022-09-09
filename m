Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961995B3644
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 13:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA0E810EC8F;
	Fri,  9 Sep 2022 11:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6014110EC8F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 11:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662722685; x=1694258685;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Iyi6SWVGUZQMzZbyf2BE5aDg6OROdRNE+mRrbrl5P7M=;
 b=L19488BRMAEbQ6iMu1rBwOQnlgWz3d3dgvWxHktrY6QldH6rGVm2Qnjn
 5gksQbff2RqpNXzKv9A7kND2dTE+vcWulFMd1fGkDmwgntgzdXuaFfN2y
 pPG1/WZH9rXOejmlDwQWd40D5/iLnFatQYriUzWiHvgiwrLGj4ZmxkoBa
 Cp840PTfTJDMo77lx5HNgFYAzft8Cq50JMz78ibI2PqINAnO+zhOvR8WC
 5tpdxIygIBBDEqaw6mujraNDl9OJOAzt9WRcB5kyX4bNEY5aJC12SxTHg
 ZIidVO2tDBu1QDWoA0nH84zvJbboyUJ4VumqAztOX1ADziK6nsrm597KS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="323661307"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="323661307"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 04:24:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="592575428"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 04:24:42 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 16:54:17 +0530
Message-Id: <20220909112419.26901-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] DGFX mmap with rpm
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

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 20 ++++++--
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 46 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  1 -
 drivers/gpu/drm/i915/gt/intel_gt.c            |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  6 +++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  3 --
 drivers/gpu/drm/i915/i915_driver.c            |  1 -
 drivers/gpu/drm/i915/i915_gem.c               |  7 ++-
 12 files changed, 75 insertions(+), 20 deletions(-)

-- 
2.26.2

