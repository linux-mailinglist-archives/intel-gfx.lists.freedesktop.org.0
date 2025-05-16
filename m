Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0C5AB9BC4
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739E910EA84;
	Fri, 16 May 2025 12:17:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FTj1woml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3975410EA7F;
 Fri, 16 May 2025 12:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397829; x=1778933829;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ANNwwWLmk0XDPk3iWi4O3gurymF4eBeqngVa8sIsMTM=;
 b=FTj1woml8LIpCK0ifvIsZ81Cx5lKhEWOWcsnwkMLD3IwyxqWvxtjHu0N
 59znz5qCqjztASNN6DX+Abf3wws91q66lf1jroyiSGot5pR+uMoBhkq74
 8P3pXyOj490JtCsE21ZlZjMP0cq5jIX7iz5+bv5W3XF6bA2SzWvCPIVo8
 SaekAfB57xs0ywFQ3y43mzPim2ryd3rmi1n+BsMtUqSs8RBvVUxHcgUFC
 cq/+Jtxnmlg4Fn0Dg1KkHoEbRrQj17vby1bd20hkUK3f6whTwmlakXs04
 lVSDZCDFC6/fj3BZjnQXGTyYcNRVTlKweYWkuZaKuyYsqmWqNGO0Vufdd Q==;
X-CSE-ConnectionGUID: PXZko87eR2yas5FR83ekYA==
X-CSE-MsgGUID: 4I2ksB+iSI+wJHtX+dCQ/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74766515"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="74766515"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:08 -0700
X-CSE-ConnectionGUID: CPSNKAHNS669RFQNG7FFtw==
X-CSE-MsgGUID: 1LT/YQKTTValvoMeBSXhIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143568549"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/7] drm/i915 & drm/xe: prep work towards opaque struct
 intel_display
Date: Fri, 16 May 2025 15:16:53 +0300
Message-Id: <cover.1747397638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

This is more prep work towards making struct intel_display and thus
i915->display and xe->display pointers opaque in the i915 and xe driver
cores.

I've included and rebased a couple of fixes from Haoxiang Li that had
unfortunately fallen between the cracks, and would conflict even more
after this.

BR,
Jani.


Haoxiang Li (2):
  drm/i915/display: Add check for alloc_ordered_workqueue() and
    alloc_workqueue()
  drm/xe/display: Add check for alloc_ordered_workqueue()

Jani Nikula (5):
  drm/xe/display: drop duplicate display->fb_tracking.lock init
  drm/i915/display: move hotplug.dp_wq init from xe and i915 to display
  drm/xe/display: move xe->display initialization to xe_display_probe()
  drm/xe/display: add notes about how early a few functions can be
    called
  drm/xe/display: use xe->display to decide whether to do anything

 .../drm/i915/display/intel_display_driver.c   | 39 +++++++-
 drivers/gpu/drm/i915/i915_driver.c            | 13 +--
 drivers/gpu/drm/xe/display/xe_display.c       | 91 ++++++++-----------
 drivers/gpu/drm/xe/display/xe_display.h       |  4 -
 drivers/gpu/drm/xe/xe_device.c                |  4 -
 5 files changed, 73 insertions(+), 78 deletions(-)

-- 
2.39.5

