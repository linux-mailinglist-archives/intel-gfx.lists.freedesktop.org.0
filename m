Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A12F93A498B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 21:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F0D6F3CB;
	Fri, 11 Jun 2021 19:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313AD6F3CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 19:43:57 +0000 (UTC)
IronPort-SDR: 7DgCUUerWrHb6G72FJXc5BGAlFxdsGO2xhbTNFySFUyY+XB/x4q+UiIZeZxzIw4rGyawVBqdhd
 /4R9iTN9kcRg==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="205624460"
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="205624460"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 12:43:55 -0700
IronPort-SDR: mPlojelWW8pivXX+bknRkVllj1riMczZ9DULkJAzFQ7bnBzKa29GM1RDtPAFp3WMi9WQGSGIGQ
 vOpk43ZoV/qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="553512882"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2021 12:43:55 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Jun 2021 12:43:51 -0700
Message-Id: <20210611194355.24151-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/4] Pipe DMC Support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

One change from previous verison is a fix of SKL
regression. Corner cases for stepping-substepping
combination was missing from fw_info_matches_stepping()
helper. Luckily SKL was the only platform in CI that came
under this category and DMC refused to load.

v2: SKL fix tested on SKL.

v3: Minor changes in Pipe DMC plugging patch
as suggested by Lucas
 
v4: Remove the sanity check for MMIO that no longer
apply to newer platforms.(Anusha)

Anusha Srivatsa (4):
  drm/i915/dmc: Introduce DMC_FW_MAIN
  drm/i915/xelpd: Pipe A DMC plugging
  drm/i915/adl_p: Pipe B DMC Support
  drm/i915/adl_p: Load DMC

 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 165 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  23 ++-
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 5 files changed, 123 insertions(+), 78 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
