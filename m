Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F190EA44A2F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 19:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E20B10E78F;
	Tue, 25 Feb 2025 18:24:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mjnidg/G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B55A810E78F;
 Tue, 25 Feb 2025 18:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740507879; x=1772043879;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f8HyXmbROngCIuFBEA96Ac/kHy0DjtSWRl/mFH8bgjY=;
 b=Mjnidg/G0vH4bScc0t9ksy+Ygjjd2Lmggd9tnZMGFtd8nfPRoi3JjyTU
 H2OUeQNGTZiHvtqcZGdzFH2iOZPGNddasIw+CcVRGoAV4g/IEQKVWjBHT
 Epikl+Uxg2ipqXbWwnt8hYWGPAkaYCmQRCqbUrMLUKLe80LyV0NsNgVhF
 L6XQE4RMZq2vwVV7M4mUy/l/bKqsAmYd5+lLRZbzRM1S1Xrm4KpIE7+Ul
 GKcmKxkgOmSekaFMasiceJBkMN7FZUpkLv5JcabLxwHHSkaND3mqXf5qZ
 Xmv809gggI7hRj6ojTY0x7IUSNXAnN/xTCmH41SRvSXhKhzPl2daPJPFl w==;
X-CSE-ConnectionGUID: 1hLVe8bmToegxntmeXsJ1w==
X-CSE-MsgGUID: tIKCS+YFR+idnlCxthfaBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41245934"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208,223";a="41245934"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 10:24:39 -0800
X-CSE-ConnectionGUID: xIu8/fXIRjqpt+Q+iBQoSg==
X-CSE-MsgGUID: O5KGbUA6QjSeH7jU+u1VCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; 
 d="scan'208,223";a="117081413"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa009.fm.intel.com with ESMTP; 25 Feb 2025 10:24:37 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH 0/2] drm/xe/display: Program double buffered LUT registers
Date: Tue, 25 Feb 2025 23:39:03 +0530
Message-Id: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

From PTL, LUT registers are made double buffered. This helps us
to program them in the active region without any concern of tearing.
This particulary helps in case of displays with high refresh rates
where vblank periods are shorter.

This series
	- adds MMIO programming of LUT registers in active region
	- removes wait for vblank in invocation of DSB1 to
	  program LUT registers in DSB programming path.

This is a follow-up to the RFC series [1]

[1] https://patchwork.freedesktop.org/series/142437/

Chaitanya Kumar Borah (2):
  drm/i915/display: Add MMIO path for double-buffered LUT registers
  drm/i915/display: Don't wait for vblank for LUT DSB programming

 drivers/gpu/drm/i915/display/intel_color.c          |  4 ++++
 drivers/gpu/drm/i915/display/intel_crtc.c           |  4 +++-
 drivers/gpu/drm/i915/display/intel_display.c        | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_display_device.h |  1 +
 4 files changed, 16 insertions(+), 3 deletions(-)

-- 
2.25.1

