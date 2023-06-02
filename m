Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9AF720C3F
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 01:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E8610E0DA;
	Fri,  2 Jun 2023 23:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A01710E0D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 23:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685747881; x=1717283881;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WQH0Lt7rwFZlEuduTDgepbEFzNi2gHbrD1UQ0cLrCc0=;
 b=GvpZxM0G/qRTjIMuTEBZLXGNOkLxh2TJL1wUJitxdMFI5O2CKOymHQa4
 lM1JEjwhdwuJnmfRcC9CZhXLz8CC7v2S3aySRxiztfJZYKrsBarW6KfEv
 6Cs5sCepeo5J31wTfbZeOhXvzcKaycnEpeyCGKH6+h+Nky2zvkG8eGsBl
 ahq3eDQVcANPo/LFQuc/Ag55GLWKnY1M3NZW9P6izEIE1YzYNVo6aO5XE
 VCz4oo2ScJIps84X3Fg2wLervf68oARxRTMV/sLKy45tHI1YOPZiMoCs7
 sfEEeCEeoWL+BJx3rst84FSf85o1y/UB39xcX7ybQa+nGjFbCVtoSQ52N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="442370366"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="442370366"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 16:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="882229046"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="882229046"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.252.142.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 16:17:59 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 16:17:52 -0700
Message-Id: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Update various *MAX_GT* definitions
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
Cc: ashutosh.dixit@linux.intel.com, matthew.d.roper@intel.com,
 andy.shyti@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Previously there was a mismatch in value between I915_MAX_GT and
I915_PMU_MAX_GTS. These values should match and discussion led to
I915_MAX_GT reduction from 4 to 2. I915_PMU_MAX_GTS *_GTS was an
ambiguous meaning, drop the S. 

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@linux.intel.com>
Cc: Andi Shyti <andy.shyti@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>


Matt Atwood (2):
  drm/i915: Reduce I915_MAX_GT to 2
  drm/i915: rename I915_PMU_MAX_GTS to I915_PMU_MAX_GT

 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 drivers/gpu/drm/i915/i915_pmu.c | 2 +-
 drivers/gpu/drm/i915/i915_pmu.h | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.40.0

