Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0377C85B785
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 10:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B3810E2A3;
	Tue, 20 Feb 2024 09:31:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QetYZXlz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB5710E2A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 09:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708421499; x=1739957499;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qnqGUxLKVubyb1yzYWWMgQR9viVQA6i/nvYBlc5XYEw=;
 b=QetYZXlzeFtLjZwgb6O4MRf74FcqOkOliZPxPtvS09mS1cwXnc01aH/2
 8pdjSo3gUjQWzpld4FgNbYkERZIyY4nfT9F6eH5Nwyyr5fqs5oBFrUoNg
 G8S8ifQNmmMS0YbX2I87YyxkYQCGsAYUGTtRkVu56IQ42ZOAc5DMIeZmv
 4G0A+vQ+hzIpmg3/unFtf43TDHfvyCsJx+E62uy64692Hae8UdtSvzNc1
 ZP5p/lhs8mCkHXCJHfbDVn2Ap5Kw6SVmJQFIGz6l0OsNX9oDTwLT2M2cV
 2FRXLSR29D9yu2g6+qTZemlO8dzLLIxfEF3KLr77i+XNQuuisX7nYq5Uu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="2974288"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="2974288"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 01:31:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="4631694"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa007.fm.intel.com with ESMTP; 20 Feb 2024 01:31:37 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/3] QGV/SAGV related fixes
Date: Tue, 20 Feb 2024 11:31:33 +0200
Message-Id: <20240220093136.32181-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

We have couple of customer issues, related to SAGV/QGV point
calculation. Those patches contain fixes plus some additional
debugs for those issues.

Stanislav Lisovskiy (3):
  drm/i915: Add meaningful traces for QGV point info error handling
  drm/i915: Extract code required to calculate max qgv/psf gv point
  drm/i915: Disable SAGV on bw init, to force QGV point recalculation

 drivers/gpu/drm/i915/display/intel_bw.c      | 152 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 drivers/gpu/drm/i915/soc/intel_dram.c        |   2 +
 4 files changed, 126 insertions(+), 31 deletions(-)

-- 
2.37.3

