Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0FB705B60
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 01:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C019210E384;
	Tue, 16 May 2023 23:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FB710E384
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 23:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684280139; x=1715816139;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CFqudGTRx3dpc/rA9LttJIBrz38jQzDyL7B91BpDtH8=;
 b=Pbpka6YxD4P7ezvvyg7L+AF14w7aL11kHeqjCEtVQVPF8SJC3zLbDCcz
 YNuEIYfSkesfSs8wUizS84zBR7uT9jXvx+mq3CT0qm832114STju44U6t
 P8Zzsed2PaexLELIdRhUw7pHSJfUJMkYx/Njcku+cngbWoRyyTNQwutZE
 urefdJSmKurJSjLIMI8YuFqvXLGzWqi4Y2M+lQQFTF1JeDNt6py7XsIOW
 /nUmoQjqlyJs8AiGDLykCv+QILS9KhKHP9OFKqpMO2uUBRaS9z2/3ZMqr
 5lfcujd81+mBySQyd88xe7oUuqGbbOFAbEiqXzfkppbsQo6IPBA9hQjJC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="340996416"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="340996416"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="732160674"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="732160674"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 16:35:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 16:35:27 -0700
Message-Id: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/7] Add MTL PMU support for multi-gt
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
 drivers/gpu/drm/i915/i915_pmu.c       | 292 ++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h       |  24 ++-
 include/uapi/drm/i915_drm.h           |  17 +-
 4 files changed, 240 insertions(+), 97 deletions(-)

-- 
2.36.1

