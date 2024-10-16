Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C21C9A0BF3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 096C110E70C;
	Wed, 16 Oct 2024 13:53:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLmmb9lP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC83810E70C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729086791; x=1760622791;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ELeA9HrfgKQXuTmLAGXKucQccXTn+dqjPnf4RF/kIhg=;
 b=SLmmb9lPr13oyxVRKU7FBojYAJgYj8hm9v9r0J9UlVIvb3sxBvjyIIl3
 UfTGBzcf+4O1dJeccdKV1rdB5WBzkbJ/o0+2pdnZjnSIRf1Vps8xlcdXU
 m011BzoU6LbCHt/S8OsdKIQV/k4mVqQG1HBUvFjEJ7Q0E5pYGk3oIMadh
 2hZcKcnHZJT38GIMSUgZpm0kg58D3Tw+wxpfb1Hb/X9YNDnjHz/QqXvEE
 43yUycNEoKdU/FxAh1KgRjy+ib0wDrgm73WRfWLSCwQ7rOfarnTVmakR/
 HL2SCSglY5wsiYpWKwgzC14QWJHkBJJxAoBtD+V+G7I8PeyNQsJkBF6qb w==;
X-CSE-ConnectionGUID: QqEvDObkR3KxGAXXD+7eYg==
X-CSE-MsgGUID: XDRznYOnSS+Gwpvl0l5WfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46008615"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46008615"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:10 -0700
X-CSE-ConnectionGUID: TiErcncgQGOIJflPYfD36A==
X-CSE-MsgGUID: exbxRKBORQCqTvMS2wa56A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78124083"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.199])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:09 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 0/5] Miscelaneous fixes for display tracepoints
Date: Wed, 16 Oct 2024 10:52:26 -0300
Message-ID: <20241016135300.21428-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

I recently bumped into some issues while using trace-cmd to inspect i915
display trace events. This series of patches provides fixes for them.

v2:
  - Add another patch to zero-initialize frame/scanline counts.
  - Add static_assert(PIPE_A == _TRACE_PIPE_A) in "Do not use ids from enum pipe
    in TP_printk()".
v3:
  - Rebase after a long time for fresh CI results.

Gustavo Sousa (5):
  drm/i915/display: Fix out-of-bounds access in pipe-related tracepoints
  drm/i915/display: Zero-initialize frame/scanline counts in tracepoints
  drm/i915/display: Store pipe name in trace events
  drm/i915/display: Do not use ids from enum pipe in TP_printk()
  drm/i915/display: Cover all possible pipes in TP_printk()

 .../drm/i915/display/intel_display_trace.h    | 206 +++++++++++-------
 1 file changed, 125 insertions(+), 81 deletions(-)

-- 
2.46.1

