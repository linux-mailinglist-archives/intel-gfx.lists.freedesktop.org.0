Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979C388A0BB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 14:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47E210E882;
	Mon, 25 Mar 2024 13:02:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dgbStPhL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CBE410E882
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 13:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711371730; x=1742907730;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y7O5KnncesUzjuc4iK64lXl78xl2oGtKzGmkgs2TFrw=;
 b=dgbStPhLqKLBtDYr0J7sRNX5KkDxnuSurnxho6QXfaT0glHrEIiVzRsO
 rp/zPa5atDpG6c1ZaGcCu3WizPcAkGOo+vR4UWO5LCo/bw1onv47Ukwff
 EnI2bexUljPvc8pdznOeOGjvZVh5g9TLs4ML4zJW+e767LYcUqoTW59Yd
 Zw7+wXxNDpyG+AvBOdO+QgtVWMqknevJRFRIsdzQB2Sw8q45zosh460Tl
 M2qXoCulfDL4AXElKZmTyTFGJfjo3EKyvlvYXFzOzU2ssyCI/25kK5IpL
 OdEYL4tLxHwJlNK81N2V1lcjaS/MM5+qdS2/AuzV2Dc0NP1ue2KKJo0af g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6484191"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6484191"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20289103"
Received: from kridax-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.55.79])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:02:07 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v8 0/4] QGV/SAGV related fixes
Date: Mon, 25 Mar 2024 15:01:52 +0200
Message-Id: <20240325130156.205726-1-vinod.govindapillai@intel.com>
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
  drm/i915: Add meaningful traces for QGV point info error handling
  drm/i915: Extract code required to calculate max qgv/psf gv point
  drm/i915: Disable SAGV on bw init, to force QGV point recalculation
  drm/i915/display: handle systems with duplicate qgv/psf gv points

 drivers/gpu/drm/i915/display/intel_bw.c      | 139 ++++++++++++++-----
 drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c        |   2 +
 4 files changed, 112 insertions(+), 32 deletions(-)

-- 
2.34.1

