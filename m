Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6871702526
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 08:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE8510E149;
	Mon, 15 May 2023 06:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA11B10E138
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 06:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684133065; x=1715669065;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=soPP2mrGSkQ9Iiy6WzjqteHVTpWkUgfRKuCon6QBebA=;
 b=n25qHRo/0g2qUR8N24bEw4Z3voUCnaLGt3THZfFuv0U/Rfc5UydiGzIQ
 d40J+I4SlYVu5uHjeknbr/UoABspMYn267vFP5onC0vLcUVK95cfy7trz
 ypf44TvO7DXi+uV5eTo95t7Kj9c+3EK1y+AkTZIqJiJCobW9VVp7R2M6E
 mjh1KrzZTMsyO1cyL+UZ1Hpbo5YumCRxeRSQn0q5XNVATbb097f9nEI5B
 pBBlEc7hekhIupaLw461d6cKWblY42mygnMTR3b4KHA8uNTjU6pdbTig+
 T+gVIQiUTao+CcNogYEQvOZzf89Gi1ItlQzZd8WT8v8efUYR4CKgOGZMv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="354283665"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="354283665"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:44:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845124651"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="845124651"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:44:24 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 May 2023 23:44:10 -0700
Message-Id: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/6] Add MTL PMU support for multi-gt
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230513022234.2832233-1-umesh.nerlige.ramappa@intel.com

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

