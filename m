Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 002F4859F76
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 10:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC1710E1DC;
	Mon, 19 Feb 2024 09:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9G7IvJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D3B110E1ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 09:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708334336; x=1739870336;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RxblaBgbgNo9vy1HbHNghDs+jIltVXuMKwvbmXbWV5E=;
 b=h9G7IvJ6MbMnqZA2mJRIWDGt40N1yBMTh0PzJ8JdTbKIKvlvuEFV+Odn
 UxVuWHNeSyomzLrAkYNKVxlQ2e+1796PFjewNG4E1lztDr9JdCmXIzsSH
 aXsleumlrp+0qBpn7JIXxF5i4gMi63B6g5XbFayC21ePPXjLekdwLre/L
 AmX96f/2h6Bo/i0/n1jwBq6ZNAy0XjwZjMXmhcqKz11ilmSfvAXMfyrLu
 RkOh3KVyB0Fr2jQ5il3Vr2fdZQczNee/f7t+6ypQM5+l53bWL+w1ER3SF
 vT/W/4E9FkD1BDAb+Aer3cDZTYD+KcfhC+IAFtC2ub6IMxp8c36zQkIVE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="13800148"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; d="scan'208";a="13800148"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 01:18:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="9108144"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa005.jf.intel.com with ESMTP; 19 Feb 2024 01:18:53 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/3] QGV/SAGV related fixes
Date: Mon, 19 Feb 2024 11:18:49 +0200
Message-Id: <20240219091852.23162-1-stanislav.lisovskiy@intel.com>
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

 drivers/gpu/drm/i915/display/intel_bw.c | 142 +++++++++++++++++++-----
 drivers/gpu/drm/i915/soc/intel_dram.c   |   2 +
 2 files changed, 114 insertions(+), 30 deletions(-)

-- 
2.37.3

