Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C7899DDFB
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 08:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B7B10E2AD;
	Tue, 15 Oct 2024 06:12:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5+ylEb2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC96310E2AD;
 Tue, 15 Oct 2024 06:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728972764; x=1760508764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3eikWa7r3XMd5dF3aLQT9EDRAf32h/dTm/sBeHIfmNs=;
 b=P5+ylEb2JsMmeyCNnNk5dtHMFCoVmxNO3IyWY+w7clxwUGuCBXYM52wp
 jg1mInU46P7snqw3jny7EzHYbPg46K9Koe2dl8ckYUC7seFy5+DxH8gv/
 oy8M86vFBVT2CHiEy605RgBPnC27rXBiBWYm7Ie38AJ2viqX62I62/Qjy
 6ZW9cyI1gCJCDvqLu2llYOujpak5YWDeKi/s5h/Xd6HGlV+cZEZ2io3kb
 ttTf7zop00DV/snymtIBTmVwEg+JUcKHmnCt+hQ6OPRLkkFa4f+3O+Iw4
 zUaJSW+TX7JeBWpROfBVHcagmnDRzC9F3Y5a+NvHL8mSd3BmFor7+aIer g==;
X-CSE-ConnectionGUID: G3XgA33iTjWx7PO9E8gsgg==
X-CSE-MsgGUID: ISC++UjnSLOPRyfQNNaK4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="28444821"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="28444821"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 23:12:43 -0700
X-CSE-ConnectionGUID: /Gdy5rpuSNWqsgFKL9TUiA==
X-CSE-MsgGUID: v8uKF8BrQdyvBIgvL0y6kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="82564151"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 14 Oct 2024 23:12:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, vandita.kulkarni@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/4] Add 6k resolution support for a single CRTC
Date: Tue, 15 Oct 2024 11:40:07 +0530
Message-ID: <20241015061011.2087826-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.47.0
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

Increase the max source width and height to be able to support 6k
resolution
on a single pipe. The changes for cdclk that accompany this change are
already merged in the code.

Bspec: 68858
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (4):
  drm/i915/xe3lpd: Increase resolution for plane to support 6k
  drm/i915/xe3lpd: Increase max_h max_v for PSR
  drm/i914/xe3lpd: Increase bigjoiner limitations
  drm/i915/xe3lpd: Prune modes for YUV420

 drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c          | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.c         |  6 +++++-
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
 4 files changed, 34 insertions(+), 4 deletions(-)

-- 
2.47.0

