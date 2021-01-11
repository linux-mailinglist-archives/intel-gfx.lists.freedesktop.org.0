Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AC62F1F4C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 20:30:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C4C6E056;
	Mon, 11 Jan 2021 19:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D35456E056
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 19:30:17 +0000 (UTC)
IronPort-SDR: 08wL8aesXzSqKvWvVanGzQpHw46+Bsc0kGFqdHT9CBP/nP1qwNU4mVMtC2DXghZaC1nrr8Kdwc
 pJTeYjeZs99Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="157701297"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="157701297"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:30:13 -0800
IronPort-SDR: 2evrrV+ZxgEjwen6Tal3qXUlk5+a2HJas5UDHdF4tiI6GtHeId1bwf0lf+jhl5dYm+Qy5GCnU6
 Y7kn8HlDlCcQ==
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="381123008"
Received: from drwaring-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.120.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:30:11 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 11:29:58 -0800
Message-Id: <20210111193000.16738-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Use TGL stepping info and add ADLS platform
 changes
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

v1:
1. Change TGL REVID enums/macros to TGL stepping info to apply TGL WAs.
2. Add ADL-S platform info and PCI IDs and add TGL style stepping macros
   for applying WAs.

v2: 
 - Replace macros with PCI IDs based on Matt Roper's suggestion.

Aditya Swarup (1):
  drm/i915/tgl: Use TGL stepping info for applying WAs

Caz Yokoyama (1):
  drm/i915/adl_s: Add ADL-S platform info and PCI ids

 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 34 +++++---
 drivers/gpu/drm/i915/i915_drv.h               | 79 ++++++++++++-------
 drivers/gpu/drm/i915/i915_pci.c               | 13 +++
 drivers/gpu/drm/i915/intel_device_info.c      |  1 +
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_pm.c               |  2 +-
 include/drm/i915_pciids.h                     | 11 +++
 10 files changed, 104 insertions(+), 45 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
