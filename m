Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF4597F100
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 422AF10E474;
	Mon, 23 Sep 2024 19:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mkT8bqca";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5579710E482
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 19:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727118220; x=1758654220;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cz8JYxqpRDsB+czq7jJYZK+Ms7uN+8zV3E4xYFtryz4=;
 b=mkT8bqcaMWLoo31hPtpmM+cMkCvLQshmFZvH4PHo6lORcD7HzpkSA5VN
 po99SDXO2z6BUoNh/aMm9ly73UnDxcsE0RAa3kqBOUnnqS9W/3eb0dec3
 4KCR0OrFkJglbbBX6q6y8EwepTioRMAPobxkIpJhbeUpKWIRZCMFMO0Et
 nAu/rvz7r1tVajRZwG6Kb9A6IzvxcARvYFycFBcQoSxL7Lxa3wfi+0ijW
 t0kOadOWyZqnprFyODhtrSgWrzEryc3NlppI7z8NjUV0Bfx6P+MuUJa1S
 YTJTg/xXeAJDIZEwcDTMgF6vqlqaIAJ/qGKf2jsCN0PP2repcn/vIxML6 g==;
X-CSE-ConnectionGUID: wj0Gx19rR9eqZ906l5aU4w==
X-CSE-MsgGUID: buaVDMxtRvWQ6zW/pUE3OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="43601310"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="43601310"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:03:36 -0700
X-CSE-ConnectionGUID: lpg+vXdtT+KlF0JlzNrNIw==
X-CSE-MsgGUID: dMoKZJQ0STiCD5+aM4onAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71997343"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.110.180])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:03:35 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 0/5] Miscelaneous fixes for display tracepoints
Date: Mon, 23 Sep 2024 16:02:49 -0300
Message-ID: <20240923190324.83013-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
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

