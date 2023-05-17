Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAFA70735F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 22:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3161410E475;
	Wed, 17 May 2023 20:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ECF510E2AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 20:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684356951; x=1715892951;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CxJ9Yl1PMg7krlteZLnnaVDr0rPGEZxTqAkIuo1YrJs=;
 b=PR/vxiySC/6FjZDuzuU7cOLMWl15etZMPDJzQnJB9Q7C4UNGmfqarojk
 Eql6igFublkyis8w5U6fpeEnTlSlE+0bupnZaT96Ih2lOgoWu1IBQ+0Dm
 krUCYpBSRevT07+tb6CnXv/ETUgzQpUo6OH+DjdGgTRtcrRauHC9zJTHJ
 C16PMA1CvZHl+4d+RfYNw2pbKRTS+Fzb49nTQC5AS18gD20LW6LBlQzge
 8Cu66n3Y/scgv7LIcEiBfxTNPcxpkDM5BrfFa8TekC4CG49IP/rtsXHFX
 a5Tlsnt0t/NqJOgi1ACReOCKj+Xdmy2dqwyktVQuMwWXEyB3jK1tuYNoS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="417535099"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="417535099"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 13:55:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="948402136"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="948402136"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 13:55:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 13:55:35 -0700
Message-Id: <20230517205542.3680895-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/7] Add MTL PMU support for multi-gt
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

v2: Remove aggregation support from kernel
v3: Review comments (Ashutosh, Tvrtko)
v4:
- Include R-b for 6/6
- Add Test-with
- Fix versioning info in cover letter
v5:
- Include "drm/i915/pmu: Change bitmask of enabled events to u32"

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230513022234.2832233-1-umesh.nerlige.ramappa@intel.com

Tvrtko Ursulin (7):
  drm/i915/pmu: Change bitmask of enabled events to u32
  drm/i915/pmu: Support PMU for all engines
  drm/i915/pmu: Skip sampling engines with no enabled counters
  drm/i915/pmu: Transform PMU parking code to be GT based
  drm/i915/pmu: Add reference counting to the sampling timer
  drm/i915/pmu: Prepare for multi-tile non-engine counters
  drm/i915/pmu: Export counters from all tiles

 drivers/gpu/drm/i915/gt/intel_gt_pm.c |   4 +-
 drivers/gpu/drm/i915/i915_pmu.c       | 290 ++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h       |  22 +-
 include/uapi/drm/i915_drm.h           |  17 +-
 4 files changed, 238 insertions(+), 95 deletions(-)

-- 
2.36.1

