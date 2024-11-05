Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014399BCDBE
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:26:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1312510E59D;
	Tue,  5 Nov 2024 13:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dmyhzLrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B5D10E59D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2024 13:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730813173; x=1762349173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rly7rznCYtHjEO0QiqcEoktJ4oVBk/a7IgkmHnA9kAE=;
 b=dmyhzLrD9zMorCGvmGenV1iUch+UUA9kaeKxwOJbuzixYYG9LcAw2sgK
 t0VhkeIagXNrpJLWSNFsCOj3sOasfM16gO/hkk/xNrp8mUsmyeyKU6/R4
 dB6+XTnVUc7XU2wPb6WKVgXUsb4Dnqbpsb0NPRgoArNrX8TBL7VMl1UdI
 BjmHfimLQ9LGMUguXNdD9a8X4s67+lpOkSxp+JFEN2gNG3tc269YEHFUu
 hoqU7zPPHR5ABvF4pRyOow546Vfkop1qMyYjzPjJ11eCIO5SqYbhOfxC5
 fehFaV76gwG1hpv0MrnZc3B1bi11CBQmPyjUrfub0C0K+3Z7xN0Blip7t Q==;
X-CSE-ConnectionGUID: rOxwDUGVT1m3bGT2LsVPjw==
X-CSE-MsgGUID: FI7Jlt5RQMaw4S5U4BEZuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30781790"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="30781790"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:26:12 -0800
X-CSE-ConnectionGUID: J2pD9RfYQXCHHHF2nI+7/w==
X-CSE-MsgGUID: xMMhp6m1TTS06H1BgslQ8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="114810960"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa001.fm.intel.com with ESMTP; 05 Nov 2024 05:26:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, gustavo.sousa@intel.com, raag.jadav@intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v5 0/2] drm/i915/display: Power request asserting/deasserting
Date: Tue,  5 Nov 2024 15:17:30 +0200
Message-ID: <20241105131732.331436-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
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

There is a HW issue that arises when there are race conditions
between TCSS entering/exiting TC7 or TC10 states while the
driver is asserting/deasserting TCSS power request. As a
workaround, Display driver will implement a mailbox sequence
to ensure that the TCSS is in TC0 when TCSS power request is
asserted/deasserted.

The sequence is the following

1. Read mailbox command status and wait until run/busy bit is
   clear
2. Write mailbox data value '1' for power request asserting
   and '0' for power request deasserting
3. Write mailbox command run/busy bit and command value with 0x1
4. Read mailbox command and wait until run/busy bit is clear
   before continuing power request.

while at it, let's start using struct intel_display instead of
struct drm_i915_private as well.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (2):
  drm/i915/xe3lpd: Power request asserting/deasserting
  drm/i915/display: Use struct intel_display instead of struct
    drm_i915_private

 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  8 ++++
 drivers/gpu/drm/i915/display/intel_tc.c       | 39 +++++++++++++++++--
 2 files changed, 43 insertions(+), 4 deletions(-)

-- 
2.43.0

