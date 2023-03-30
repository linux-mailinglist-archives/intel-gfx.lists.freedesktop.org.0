Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 896DC6CF854
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736CE10ECC3;
	Thu, 30 Mar 2023 00:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A12F10EC94
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136864; x=1711672864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2svMNAO4n0ZubeTfdHvjzrhoktzFTXBocKDFEwqdTYU=;
 b=JFn0PBSmJs7LYgMjZ4JUoHcfJoSPR/GS5yHSIRJM3f63YtQe5WxrQ0+T
 9THOZwu6C/+uge8l4hvXdPgJLrzTXIL4Am0mudG3jBGIXeORtuCVZg+W6
 1tGI9yckGOMj1G35UgZccNV8NZSi/FNMjy3goPcbU4+TYm+1LygNSXCg8
 0kV8J493oXxUtPw1Bdrdvcmuwn1hT9y6cq3/faje5vJuTvLPQJNGvl2kE
 BPI6Q/fbIMXcQ3zoJ4hXo1mXOi9SI0hajqCblBDc5FgbNbca0nDs4nFLq
 jmTFB7KmxS6jRYK6vX9FCFl5305mqHzBs4m7tWB4zWnkNJYawZ3uF3dR1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310368"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310368"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668664"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668664"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:40:54 -0700
Message-Id: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] Add MTL PMU support for multi-gt
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

With MTL, frequency and rc6 counters are specific to a gt. Export these
counters via gt-specific events to the user space.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230330003656.1294873-1-umesh.nerlige.ramappa@intel.com

Tvrtko Ursulin (6):
  drm/i915/pmu: Support PMU for all engines
  drm/i915/pmu: Skip sampling engines with no enabled counters
  drm/i915/pmu: Transform PMU parking code to be GT based
  drm/i915/pmu: Add reference counting to the sampling timer
  drm/i915/pmu: Prepare for multi-tile non-engine counters
  drm/i915/pmu: Export counters from all tiles

Umesh Nerlige Ramappa (3):
  drm/i915/pmu: Use a helper to convert to MHz
  drm/i915/pmu: Split reading engine and other events into helpers
  drm/i915/pmu: Enable legacy PMU events for MTL

 drivers/gpu/drm/i915/gt/intel_gt_pm.c |   4 +-
 drivers/gpu/drm/i915/i915_pmu.c       | 464 ++++++++++++++++++++------
 drivers/gpu/drm/i915/i915_pmu.h       |  22 +-
 include/uapi/drm/i915_drm.h           |  22 +-
 4 files changed, 394 insertions(+), 118 deletions(-)

-- 
2.36.1

