Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D38FB9B9254
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 14:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1092510E9B9;
	Fri,  1 Nov 2024 13:48:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OOhqLOx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB53410E9B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730468886; x=1762004886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0eqbWq8zgmPglsYKvWC0RGQidgzS+bcVvsHVoCvgZ4c=;
 b=OOhqLOx6E77yUa8DqiR3vrRt3d39feDoxIxEz9TlRK8gJe/CGFVOFZQi
 wCZV8PZd2CFrJV7AaHYhAe8tyb6UOFFgaSq5FgBh8qv9Qm8C8tHMnutRK
 oBmer/BauAqi5S1VBuSeg6JSjFSZTpVSFSc0XjP9y0SwO2vDmL7Zap2NB
 xJUDUPzkszI85HvVjyKF87Y/xaQerLwAbm2oiA2aQOMQeJ/RkbdxCmnKK
 IRCe6PK1UxfD873eNNqBIlX6dM/DpUP5gEXltPZVmx2efVrnXljrJwmUK
 vKcvKCMcBvFDTz5VIoAsV5dH4Dc3vbQ0IRotiWElYh2iatIU0YYIAwPd3 w==;
X-CSE-ConnectionGUID: pxaOpTKITFGsBjOSp76rig==
X-CSE-MsgGUID: 6Muk2YnNQSqbdkxsj3c3oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52800112"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52800112"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 06:48:06 -0700
X-CSE-ConnectionGUID: tPmnmdxFRaSKazMzOgB0Iw==
X-CSE-MsgGUID: wLk5Hw88TUWTd4UwcUJR4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="113750915"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa002.jf.intel.com with ESMTP; 01 Nov 2024 06:48:04 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, gustavo.sousa@intel.com, raag.jadav@intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v4 0/2] drm/i915/display: Power request asserting/deasserting
Date: Fri,  1 Nov 2024 15:39:22 +0200
Message-ID: <20241101133924.245817-1-mika.kahola@intel.com>
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
 drivers/gpu/drm/i915/display/intel_tc.c       | 44 +++++++++++++++++--
 2 files changed, 48 insertions(+), 4 deletions(-)

-- 
2.43.0

