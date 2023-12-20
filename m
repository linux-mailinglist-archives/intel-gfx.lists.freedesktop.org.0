Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4377B81A8E8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 23:15:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66E410E641;
	Wed, 20 Dec 2023 22:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23A5510E641
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 22:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703110514; x=1734646514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Utt8K9iT+OsK4LsFYSlxKxLNRgnv7b18ty70d1DX4ms=;
 b=DxUjVnlfFO/dyCOUUnY/i4D/h+iBKjkKWkcSZ08MjqVlS2kiYkZxi6sF
 YF9ZB0nbPzWWe57nblAj3riaZ03coMMIY3ZVDB7Pki+u95naBOHguoou/
 /dlrocaPYV329z4xfvduMrqRsT986JR3fDtsn8GyuK9RMYrUwYi5xtoCG
 0ToJdfVC/amvDnybqh0Q0xxbKMZddtMwc2MK+Ascelcq959SxhqYJX4hh
 Ol1XD9/26XfjisdPQRwRxF1of6nKozOUO+LV+OQR+PgstB/GutpKFjNXq
 rvnzM5A88Z/+EK7u5ZN+gQ5zs3JifZBtTCCjQkeJorbGFuSSveIFOpmr6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="460220632"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="460220632"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="920106964"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="920106964"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:13 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/4] TC phy check cleanup
Date: Wed, 20 Dec 2023 14:13:37 -0800
Message-Id: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
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

We are relying on end-less if-else ladders for a type-c phy
capabilities check. Though it made sense when platforms supported
legacy type-c support, modern platforms rely on the information
passed by vbt. This cleanup restricts the if-else ladder to the
platforms supporting legacy type-c phys and relies on vbt info
for modern client and discrete platforms.

v2: Move cleanup vbt later to handle safe encoder removal

Radhakrishna Sripada (4):
  drm/i915: Move intel_bios_driver_remove later
  drm/i915: Rename intel_bios_encoder_data_lookup as a port variant
  drm/i915: Introduce intel_encoder_phy_data_lookup
  drm/i915: Separate tc check for legacy and non legacy tc phys

 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  5 +++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../drm/i915/display/intel_display_driver.c   |  4 +--
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 9 files changed, 44 insertions(+), 18 deletions(-)

-- 
2.34.1

