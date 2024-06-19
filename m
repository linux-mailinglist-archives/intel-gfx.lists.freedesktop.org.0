Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6594A90E25F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 06:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C2410E8AF;
	Wed, 19 Jun 2024 04:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EQkJ3CW8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB42110E0E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 04:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718772026; x=1750308026;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fo/Fsnne3Vn5BFCK45nCaB/GEfoV0am+AUYHioA5mIo=;
 b=EQkJ3CW8FHmJk4i6AqXmFhm4ul/mX5vTKCXohoye2SvNcfNT1EFdcDpD
 m9gas5pJdR6azKmt1Mx13g0EdawWOdICbuTLOh58S4BctAqmkA7x7mfBk
 7KlNXvJDd3sQ9aYzsOUleqg3QOI0W4rJ41g//DJaAHYuXhuI41+8KesLV
 gSS0gB2vvtga/vBbzYRRID/edeA0iEDI6qJ2GaTEp1JWFPMYZE0kM3RrV
 dKn+Kr/abcuJUVeyMzAKtE8Av5THsmoxgyt0WGnhsvEjzeZBWdW7ZNyO4
 aIQ51dHY+8UT8+SxcfSlJfLlnCNgq7E74c6I2B0h50yjp6qm12NfGHgZy A==;
X-CSE-ConnectionGUID: OjaiBX5mQPC27gFReor6bg==
X-CSE-MsgGUID: j7chmJwJRMiqnuNxjt05JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27106533"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="27106533"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 21:40:25 -0700
X-CSE-ConnectionGUID: npAFebhUTpWxSwL/w85zcw==
X-CSE-MsgGUID: ePCzxOBDRqeqbhYfaE5ggQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="46163347"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 18 Jun 2024 21:40:23 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, arun.r.murthy@intel.com, jouni.hogander@intel.com,
 jani.nikula@linux.intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Implement WA to fix increased power usage
Date: Wed, 19 Jun 2024 10:07:54 +0530
Message-ID: <20240619043756.2068376-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

When DPKGC is enabled we see an increase in power consumption for
PSR1: When gap between vblank and delayed vblank is >= 6
PSR2: When deep sleep is enabled.
WA adds condition to avoid the above conditions

WA: 16023497226
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/psr: Add return bool value for hsw_activate_psr1
  drm/i915/psr: Implment WA to help reach PC10

 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 91 ++++++++++++++++++-
 2 files changed, 89 insertions(+), 4 deletions(-)

-- 
2.43.2

