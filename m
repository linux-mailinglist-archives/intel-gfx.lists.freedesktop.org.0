Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 833F288D29E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 00:10:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFC510F494;
	Tue, 26 Mar 2024 23:10:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFRgSdgL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B011910F494
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 23:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711494656; x=1743030656;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lDZhs9fatkSKxU3hcUtsBx32umjsNUfqT65g74LQ6z8=;
 b=CFRgSdgLc1yd/KAywFKbsFnw9jcJl3gi0NFzwLM3y8FgXnoQuI0CSz+7
 63woZXiL/5KOqX6u4n6lGTxiS9971b9vmVaj+eYGWk+O/ntCfvJMi0h3N
 hd3gKS8LxWwjkdCCeBFuoDKvJhVUgnapIKn5ThqrGxA9kAt36Ts9awofa
 BfUHgLHFUGPL0YoIOzOGakAPX96nQaczlJi/HIa9b1GCgBr/g9t5QprSK
 WuwwIHJuLKSv7FfZpdoAFIz9bN4chn6fP6o1ovJaK6Ffc4a/YaHjZ7JmW
 ykdFiNsyF+saqXv3Zuqk4e7+YQ6pQcWmOrwKl+gcxMzJ1JwK7GlxN6ctQ A==;
X-CSE-ConnectionGUID: q4dq5bbWS5ilF2pHOl86yQ==
X-CSE-MsgGUID: nxs3g/KVROixiwGZmDr34g==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6702995"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6702995"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:10:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16101231"
Received: from dfantini-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.33.69])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 16:10:48 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v9 0/6] QGV/SAGV related fixes
Date: Wed, 27 Mar 2024 01:10:15 +0200
Message-Id: <20240326231021.281780-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We have couple of customer issues, related to SAGV/QGV point
calculation. Those patches contain fixes plus some additional
debugs for those issues.

Stanislav Lisovskiy (4):
  drm/i915/display: Add meaningful traces for QGV point info error
    handling
  drm/i915/display: Extract code required to calculate max qgv/psf gv
    point
  drm/i915/display: Disable SAGV on bw init, to force QGV point
    recalculation
  drm/i915/display: handle systems with duplicate qgv/psf gv points

Vinod Govindapillai (2):
  drm/i915/display: extract code to prepare qgv points mask
  drm/i915/display: force qgv check after the hw state readout

 drivers/gpu/drm/i915/display/intel_bw.c      | 162 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h      |   6 +
 drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c        |   2 +
 5 files changed, 131 insertions(+), 42 deletions(-)

-- 
2.34.1

