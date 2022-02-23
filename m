Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 278AC4C0C51
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 06:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA11310E974;
	Wed, 23 Feb 2022 05:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2126B10E963;
 Wed, 23 Feb 2022 05:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645595945; x=1677131945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5uEBoyIOTCTV2+smhgFd2G7ZaOW4eLMSE9kJSGV3N7o=;
 b=dr4fUJksjyAWMT+3QnEaIv+D8oaT1zwA/QlaEB4mIexgAtNzvTzXMVhq
 PHxp2tqd2NR5lJrlZRvXuKsHimPWXL+wC8VxZ4akKCjeNvyXZKvQC/Izj
 AYow+b8yaUsWHfLZVI0rT4yHwuF1KrAehcQCLShWHQiya7ORVvMwZwxev
 cpAk6Qh7t0C/ulZ5JDhr0jhfuY6MlBT+ZpfdLnezgZu0c6XTOLBfj7433
 bAeBJ+MjKeMIpES+ML1LTcCdCQDeWe9marQTTat4RNeSif9CuJnLWq6xm
 XS6vEHyzw5zMDkz1P9vxutSs047hJQTBVkMehfDg/Fjq4oJN6TSxW1QB+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="312606222"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="312606222"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 21:59:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="706908145"
Received: from shreyasj-mobl1.amr.corp.intel.com (HELO
 mvcheng-desk2.intel.com) ([10.209.93.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 21:59:04 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 21:58:54 -0800
Message-Id: <20220223055900.415627-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 0/6] Use drm_clflush* instead of clflush
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series re-work a few i915 functions to use drm_clflush_virt_range
instead of calling clflush or clflushopt directly. This will prevent errors
when building for non-x86 architectures.

v2: s/PAGE_SIZE/sizeof(value) for Re-work intel_write_status_page and added
more patches to convert additional clflush/clflushopt to use drm_clflush*.
(Michael Cheng)

v3: Drop invalidate_csb_entries and directly invoke drm_clflush_virt_ran

v4: Remove extra memory barriers

v5: s/cache_clflush_range/drm_clflush_virt_range

v6: Fix up "Drop invalidate_csb_entries" to use correct parameters. Also
added in arm64 support for drm_clflush_virt_range.

v7: Re-order patches, and use correct macro for dcache flush for arm64.

v8: Remove ifdef for asm/cacheflush.

v9: Rebased

v10: Replaced asm/cacheflush with linux/cacheflush

v11: Correctly get the sizeof certian addresses. Also rebased to the latest.

Michael Cheng (6):
  drm: Add arch arm64 for drm_clflush_virt_range
  drm/i915/gt: Re-work intel_write_status_page
  drm/i915/gt: Drop invalidate_csb_entries
  drm/i915/gt: Re-work reset_csb
  drm/i915/: Re-work clflush_write32
  drm/i915/gt: replace cache_clflush_range

 drivers/gpu/drm/drm_cache.c                   |  6 ++++++
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  8 +++-----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 12 +++++------
 drivers/gpu/drm/i915/gt/intel_engine.h        | 13 ++++--------
 .../drm/i915/gt/intel_execlists_submission.c  | 20 +++++++------------
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
 8 files changed, 29 insertions(+), 36 deletions(-)

-- 
2.25.1

