Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C86E6B158C5
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 08:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CCE10E365;
	Wed, 30 Jul 2025 06:13:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LqsCK2jU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567B910E365;
 Wed, 30 Jul 2025 06:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753855990; x=1785391990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T2tTaIETAbp/cgAON4z+neaaqUAN/ldFUynHptHI764=;
 b=LqsCK2jUqCZbXqfqGWtCnHTAA22tve+/6KNwh/opWo3keanBuR1YqP0y
 clVY+ZvUJmKhxdqd/0bUTKJG5ggOOr5PXlcVEd2KktlgWQHHWjgKwmzQf
 u4ScJs6cfHRtn0aPAK8gpP1OiXpFuEL2+2Kz4u2YU9Z+l8HdVEsW9sxYg
 jGTH1m7EGEh7ll24VvB0bSCTebvbfL6WP1FraJQzr673kr+Ezuj9zpIHw
 MUsbLxOnC2Se1ar/CzEqdiGE2i4SPAZCC6cAi0W5jqGhU9ZC6ySk6Qday
 Cabif+GyQa5qWJVKA62j8JTFlLQ5c1xuSHL8SxfnvBXb/ekRq2+TC2u9Y g==;
X-CSE-ConnectionGUID: sAi9tq9uT4ij0qKtyGZGqw==
X-CSE-MsgGUID: Fl+5nyKsQvWcSuyL6lvcUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56233852"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56233852"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 23:13:10 -0700
X-CSE-ConnectionGUID: tOi4JRYUQc2+PVW0oHIcJg==
X-CSE-MsgGUID: EFPzIQKqRM+CSb//S2ptCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="193890468"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 29 Jul 2025 23:13:08 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH 0/2] Limit minimum BPP to 30 for HDR content.
Date: Wed, 30 Jul 2025 11:25:21 +0530
Message-Id: <20250730055523.2214966-1-chaitanya.kumar.borah@intel.com>
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

Bandwidth calculations in intel_dp_compute_link_config_wide() can lead
to selecting of lower bpp (18/24). It does not account for the fact that
user content can be HDR and needs 10bpc (BPP/3) for fidelity.

This can specifically happen in cases of DRRS eDP panel where we keep the
link rate running according to the highest refresh rate the panel
supports [1]. If such panel support 10bpc (without DSC) only at a lower
refresh rate mode, the inflated link rate forces a lower BPP selection.

This series takes into account the "HDR_OUTPUT_METADATA" connector property
and limits the minimum BPP to 30 in case user-space sets the property with
ST2084 metadata. If the required bandwidth for 30 bpp cannot be supported,
the driver will either fall back to DSC or reject the mode
during atomic check if DSC is not supported.

This approach preserves the DRRS behaviour of the panel and makes the assumption
that it will support 10bpc with all it's advertised modes atleast with DSC.


[1] https://lore.kernel.org/intel-gfx/20220907091057.11572-16-ville.syrjala@linux.intel.com/


Chaitanya Kumar Borah (2):
  drm/i915/dp: Refactor intel_dp_in_hdr_mode() for broader reuse
  drm/i915/dp: Set min_bpp limit to 30 in HDR mode

 drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 ++-
 .../drm/i915/display/intel_dp_aux_backlight.c | 13 ----------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 11 +++++----
 4 files changed, 29 insertions(+), 22 deletions(-)

-- 
2.25.1

