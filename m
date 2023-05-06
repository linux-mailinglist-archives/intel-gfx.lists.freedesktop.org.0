Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 651CC6F8D4E
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 02:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D465D10E155;
	Sat,  6 May 2023 00:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A5110E0EB
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 May 2023 00:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683334697; x=1714870697;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FR51ukDHu10QYkZKXJIeBHaWRkHYgDQscvXm/1rRS/8=;
 b=DcntXgY3sJs6JKKZ72VelqBAnjbfjuBRl9zPx/lYyGM4qxAtXjXq/KNd
 QGhABttnLkCWLreWoMPqpZ76em4DONSzJHqZ5diIihu07FbYbDtvrZto0
 fxsrrOKRDRXYUXRoXy02Nzt6Kij7aqQ6+PKIi6StoIW+so7m8qleKWP24
 4ebH3smg6x3Spg/QAa0RgNKDzALH2K7eyy5Q9nPQH2nORBhOdca94QK/t
 tQw0ZKlF8ozwuyG4tbabKoNpzA6RM9ZNz3DRL2r7J8nNALvTpIR/GIHFw
 +PBl9eTbhatnhIyIwr+vqp9MhAV7XBN7MLrwNhQPcwH1iKtCzz9BvnMB2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="377408310"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="377408310"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="767326024"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="767326024"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 17:58:16 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri,  5 May 2023 17:58:10 -0700
Message-Id: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230506005528.1890922-1-umesh.nerlige.ramappa@intel.com 

Tvrtko Ursulin (6):
  drm/i915/pmu: Support PMU for all engines
  drm/i915/pmu: Skip sampling engines with no enabled counters
  drm/i915/pmu: Transform PMU parking code to be GT based
  drm/i915/pmu: Add reference counting to the sampling timer
  drm/i915/pmu: Prepare for multi-tile non-engine counters
  drm/i915/pmu: Export counters from all tiles

 drivers/gpu/drm/i915/gt/intel_gt_pm.c |   4 +-
 drivers/gpu/drm/i915/i915_pmu.c       | 271 ++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_pmu.h       |  22 ++-
 include/uapi/drm/i915_drm.h           |  17 +-
 4 files changed, 225 insertions(+), 89 deletions(-)

-- 
2.36.1

