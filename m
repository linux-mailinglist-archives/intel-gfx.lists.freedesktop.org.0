Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FBC4C3C66
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 04:25:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57C910E863;
	Fri, 25 Feb 2022 03:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9EF10E742;
 Fri, 25 Feb 2022 03:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645759487; x=1677295487;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HZfpas0nG+en+fEL/NKzH5PSiNxvXR7OFOdwFsavqs0=;
 b=AQlsKUHV8RlBnGNK9topY0OlVPPr29KOW+uGQzryDVd9c2pad4CAGAlT
 wn0pptWms0BrOfjqB6wI49v6+UG+JgJDYZ3gDnV/nmjJ4T4pVBhOFOMBS
 QqkXxCtnhX9tOErQh+Z9xr/TZbvRR/wJ+oqWmcjfh/0OwTcVcf3lccIwf
 jq83apPQewLJDuxZX5rHR3+Pzt+zF3c9/fkDhNk//SCrvERtt4+jH7PDl
 GntirUfJsCeHwvBxjpG+zIbMbK4OUQsx2hida5ob01qcARQoHq38mHTPc
 CncGJVzR0A23zRoADKdcPC2yLl4lsnh7F0DIFbkg6uHiq4xQpF1a48Csn A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="315630348"
X-IronPort-AV: E=Sophos;i="5.90,135,1643702400"; d="scan'208";a="315630348"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 19:24:45 -0800
X-IronPort-AV: E=Sophos;i="5.90,135,1643702400"; d="scan'208";a="638087442"
Received: from slwinche-mobl1.amr.corp.intel.com (HELO
 mvcheng-desk2.intel.com) ([10.212.150.224])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 19:24:40 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 19:24:30 -0800
Message-Id: <20220225032436.904942-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 0/6] Use drm_clflush* instead of clflush
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

v12: Drop include of cacheflush.h and use caches_clean_inval_pou instead of
dcache_clean_inval_poc, since it is not exported for other modules to use.

Michael Cheng (6):
  drm: Add arch arm64 for drm_clflush_virt_range
  drm/i915/gt: Re-work intel_write_status_page
  drm/i915/gt: Drop invalidate_csb_entries
  drm/i915/gt: Re-work reset_csb
  drm/i915/: Re-work clflush_write32
  drm/i915/gt: replace cache_clflush_range

 drivers/gpu/drm/drm_cache.c                   |  5 +++++
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  8 +++-----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 12 +++++------
 drivers/gpu/drm/i915/gt/intel_engine.h        | 13 ++++--------
 .../drm/i915/gt/intel_execlists_submission.c  | 20 +++++++------------
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
 8 files changed, 28 insertions(+), 36 deletions(-)

-- 
2.25.1

