Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E7E7013D2
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 03:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6D610E71C;
	Sat, 13 May 2023 01:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2503110E053
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 01:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683942949; x=1715478949;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wI/jF+AepjEXTXAdxXMzVjGDVRLkXpKEp3AA4cGf11s=;
 b=iNwW9Ram9Ue0BmFqfBdGI5oOv0dBiRN5peLl71DF99lrpjDUc+caXPmR
 bYTp1gCYhKsuWuxxn7F/M9ayVRHx6PcHCfcI7UdxeZCPTRAoc+LjK4Pn5
 4S+d3lY1xP0Xo6Bs/6CoiCDAZthi4VLJ0WYJbBeZIJ8hBGrnYvibzI2sq
 GBgUa8fVBGgZg2Jmhq90jN/a8Z/MJ3JW0r5feimFk5LoK+0a/NfxlKLul
 4C/G1Nhwohn6RpNj7/Q0AJOnyxYWwW/WMJjWxE3blic3BA3q2ivoCFeUN
 kv2zo4TVP+gZ8loaWBxtF2o24OWgL/leNSpYCxmpK2gu8hgldat5+IcKW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="354054418"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="354054418"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="731017008"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="731017008"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri, 12 May 2023 18:55:39 -0700
Message-Id: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] Add MTL PMU support for multi-gt
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

v2: Review comments (Ashutosh, Tvrtko)

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Tvrtko Ursulin (6):
  drm/i915/pmu: Support PMU for all engines
  drm/i915/pmu: Skip sampling engines with no enabled counters
  drm/i915/pmu: Transform PMU parking code to be GT based
  drm/i915/pmu: Add reference counting to the sampling timer
  drm/i915/pmu: Prepare for multi-tile non-engine counters
  drm/i915/pmu: Export counters from all tiles

 drivers/gpu/drm/i915/gt/intel_gt_pm.c |   4 +-
 drivers/gpu/drm/i915/i915_pmu.c       | 263 ++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h       |  24 ++-
 include/uapi/drm/i915_drm.h           |  17 +-
 4 files changed, 219 insertions(+), 89 deletions(-)

-- 
2.36.1

