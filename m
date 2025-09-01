Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A22B3D959
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Sep 2025 08:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1047610E062;
	Mon,  1 Sep 2025 06:01:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gmvc54k/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B2510E062
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Sep 2025 06:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756706495; x=1788242495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wRntbccbYE1AR1cSWMfep+15Z2/lApewwKVx7o6NLd8=;
 b=Gmvc54k/MhuOMD6s44chljeq47tIpzdnYDsR+APsU9eBAa1BPSWSQK8m
 rf5N3Z6D7hyk0Df+wS95d1DWhdSJnN0rxFO7qUbsRMNyy8G/S4edRasEv
 q/JAXyJ5tK1NmCwO928+UCH6Vgy3tT4gmYJcDwBI1oTBBtVA3dbvhxExa
 XJoFpg3LiJCjeH30VSPFyYiwHUNqcvx4acxYE3qfrek69p3cdbq6P/FPb
 s9kI99zjnh8kTCkcUiTyysti1CSXXNclNBrrX/BHjJlBC0YIVVzY7l7uJ
 2bXK023bZGHRUBllgW/PNPL7y/sBFo6YQ0hCPmMXFOrFuDBnTIDQyOsLP Q==;
X-CSE-ConnectionGUID: WWhdNbhzTTy5WYNTM8ygTQ==
X-CSE-MsgGUID: euFQGgrMTrCFu+TUvLmzuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81485482"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81485482"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2025 23:01:35 -0700
X-CSE-ConnectionGUID: K8dUZClhRB25RHvGwa3Zpw==
X-CSE-MsgGUID: 7+MjLXx7SEyldQDQ/RDHGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="171670624"
Received: from shawnle1-i9-build-machine.itwn.intel.com ([10.225.64.200])
 by fmviesa010.fm.intel.com with ESMTP; 31 Aug 2025 23:01:33 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Subject: [PATCH 0/2] drm/i915: control HDMI output bpc 
Date: Mon,  1 Sep 2025 05:57:19 +0000
Message-Id: <20250901055721.219995-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250806042053.3570558-1-shawn.c.lee@intel.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
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

*** BLURB HERE ***

Lee Shawn C (2):
  drm/i915/hdmi: add debugfs to contorl HDMI bpc
  drm/i915: compute pipe bpp from link bandwidth management

 drivers/gpu/drm/i915/display/g4x_hdmi.c      |  6 +---
 drivers/gpu/drm/i915/display/intel_crt.c     |  5 +--
 drivers/gpu/drm/i915/display/intel_fdi.c     | 28 ----------------
 drivers/gpu/drm/i915/display/intel_fdi.h     |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  5 +++
 drivers/gpu/drm/i915/display/intel_link_bw.c | 34 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_link_bw.h |  1 +
 drivers/gpu/drm/i915/display/intel_lvds.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c    |  4 +--
 9 files changed, 43 insertions(+), 44 deletions(-)

-- 
2.34.1

