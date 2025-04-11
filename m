Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B44FA860EA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 16:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E07B10EBDC;
	Fri, 11 Apr 2025 14:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KuDJlgL0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BA8810EBDC
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Apr 2025 14:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744382603; x=1775918603;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nyKiypU8MNMUcoYr6ReJP7nmVDT98fJ3ng9NNoyFocA=;
 b=KuDJlgL0jPNE0BGuTrJq1dKCTcil/7xeMrVzdZV3jUorphmy5hiSa4Cb
 ZYrsaORhdBfJsIwPvHWj7s4VHNftvysGzlX8vD7leJxzDzoXI75+K7bsM
 1weV9jm/VKpiDy01vcK6AJC8yz72ITmDJcS03wEF4iJaEoTR4JVcpBiFF
 0/YRUfCd25eSpqajb6vt3kwHb2unk4Kdj/N2xJCUn0VCa4QutsrmwEQFG
 Y8/x8cL8C0XqWbn4njkox4OUHV+lHDV3t+AMUeG2cUh/ngZCmceITH70L
 SfLUYy8wnYEe5BrER0ZSjD5BhfqK3DdfmzUOdzOuWpGuQJwBZTsihJy9V A==;
X-CSE-ConnectionGUID: rnwobucVT4OuctnZVfcdCg==
X-CSE-MsgGUID: LRszHKXeRpSjcbbj9HAd+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="57316228"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="57316228"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:43:17 -0700
X-CSE-ConnectionGUID: i2MBd+mBSJyJDjYCHtmq9Q==
X-CSE-MsgGUID: 7ZQ5+e5XR9601bOc6tkpmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="134370129"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Apr 2025 07:43:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Apr 2025 17:43:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/2] drm/i915: DG1 fixes
Date: Fri, 11 Apr 2025 17:43:11 +0300
Message-ID: <20250411144313.11660-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix a couple of problems on DG1, and remove the long overdue
force_probe requirement.

v2: just the uapi behaviour revert and force probe removal
    left, test the uapi change against updated igt

Test-with: 20250410194643.20558-1-ville.syrjala@linux.intel.com

Ville Syrjälä (2):
  drm/i915/gem: Allow EXEC_CAPTURE on recoverable contexts on DG1
  drm/i915/pci: Remove force_probe requirement for DG1

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

-- 
2.49.0

