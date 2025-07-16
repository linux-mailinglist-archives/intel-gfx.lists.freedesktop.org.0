Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B49B06FF0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 10:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80B010E6FB;
	Wed, 16 Jul 2025 08:10:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i+N2XyE+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38F010E6F0;
 Wed, 16 Jul 2025 08:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752653398; x=1784189398;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+IfJIt//r+VDsp+bk27g9q0Oe5U2qunbdk1guUNWumg=;
 b=i+N2XyE+siHQLxBqZ5hGhBZOk+ZwhgXREHQeB16NMInWezkyxioDx+6d
 yx3GGTrFJj0go3yRkRL5l7KkNns9I1gowc6oL17XdJaS9HwWn0WlZVvDj
 DOkiuJFOXym2mi1sAr6dWTm1mfRnc8blCcnP2/KeZvRgyQ/e5aZyO+/rx
 Dwzc4N5aQ94WUmQtlqAlqkPzOJay2vt3W7E9iCZjbh+DYLFieAR4QKZPj
 yTUBtW0A725INKwN0eMvsRoS5eqHfV+A4TY4DsU+r2EwF3ukxJIl2ebHs
 +1TSic/Ufs7Dr89hbtKLsbJzI2ARZt/wdcQgZrtROwCFTbDTmMA+cNGXn Q==;
X-CSE-ConnectionGUID: ZGaNVkZFREiM4vtttQmJow==
X-CSE-MsgGUID: ezoLZl/kSEmXKZwj9FyPyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="66245053"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="66245053"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 01:09:58 -0700
X-CSE-ConnectionGUID: hgNMt0zcQpOI2EqmFaHhlQ==
X-CSE-MsgGUID: Cc2np+jDSB+Sjij09kkKWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="161759305"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 16 Jul 2025 01:09:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] eDP Data Override
Date: Wed, 16 Jul 2025 13:39:17 +0530
Message-Id: <20250716080919.2127676-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

When using link rates 2.43 and 6.75 causes a strong noise for WIFI
bands. Its recommended we use 2.7 and 8.1 Gbps instead.
The solution proposed was a static vbt field that provides us with a
mask of rates which need to be skipped in favor of the next higher link
rate.

HSD:14022096069
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/vbt: Add eDP Data Overrride field in VBT
  drm/i915/edp: eDP Data Overrride

 drivers/gpu/drm/i915/display/intel_bios.c     | 56 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 11 +++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++
 4 files changed, 82 insertions(+), 3 deletions(-)

-- 
2.34.1

