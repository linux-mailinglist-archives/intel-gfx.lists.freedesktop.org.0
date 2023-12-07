Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6781D809519
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 23:12:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064CD10E217;
	Thu,  7 Dec 2023 22:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A689110E217
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 22:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701987119; x=1733523119;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WGHckhPRF8qyfSVt4xx3eFcZqj0uuTFR01P8uWwwq78=;
 b=RayVza4MNTncbKK9Pptbbmuydetlwk1J2uBnIutpenal66QmtXtVcP3v
 1EwXm1QLnhjKcsyGNROT8WWzpbvfIVtiSiM+qYqD+bU8qwO6yD+pcIjk0
 JRFRMBHavuf7ZBOtwAzu5DYvK0Vqy4fSmYmQDaL0SfWdJ3BjH6g8ZN1Rw
 rMwGGfQ5Hk8paTBFJECSxqMSOzgAredOM6Rgq8HwBGXlVslgTRT8weRzQ
 8lUOgAmbEzkX0t8Y6+sFjSmeKwgHG6z+Jt5QrgPMQh8RV5VMC6VP6kxBK
 meVe7d9V8X5/Ff8uSVbWSVJdI+rOOHiFOJd+jeM875niTsvdZIypvKbRT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1179282"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; 
   d="scan'208";a="1179282"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="13257008"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:58 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] Cleanup C20 pll state
Date: Thu,  7 Dec 2023 14:10:22 -0800
Message-Id: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
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

C20 pll state has both link_bit_rate and clock fields to represent
the clocks. Both have the same values for DP 1.4 they difer for
DP2.0. Stick to the numbers that are compatible with other clock
numbers like the port_clock in crtc_state

Radhakrishna Sripada (3):
  drm/i915/mtl: Use port clock compatible numbers for C20 phy
  drm/i915/mtl: Remove misleading "clock" field from C20 pll_state
  drm/i915/mtl: Rename the link_bit_rate to clock in C20 pll_state

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 79 ++++++++-----------
 .../drm/i915/display/intel_display_types.h    |  1 -
 2 files changed, 31 insertions(+), 49 deletions(-)

-- 
2.34.1

