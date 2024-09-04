Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D0C96BF81
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D73A10E795;
	Wed,  4 Sep 2024 14:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KHm5rUf5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91FAE10E795
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725458573; x=1756994573;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kvrLl6LfbFhpxjv8ThmBKkTIhPsGgbAaTpgdWmNvViE=;
 b=KHm5rUf5BQZJhgA3bpnDRAPM61B928dT9WIEjqs9td1tqlJumdKeQ3Nt
 kUWBwUWlBnl9JNfknX9eyE2AdmIUKEQ6vza3RgArB52sJ0NhssW572vfT
 7ic2xBq0gLodrIi3+6RrVAlUu1Eqgls/M3XgJ7Hmz55psXKwFHJIWt9di
 WH9KJaWWLpMIOHpewKWjGMHEZIXw4QJ9/HE21J78wCWJR9g4ymsK8Xsjd
 pPABCQLKwNd9iIYkzRasDKwTFIxtYWYcAapDanPD5E4ufojPUNe6x4Rm4
 xEJaUZuXZFeWaXU1bCM9KnoUJX1jOc2yKzwmMC8PUc5V3IJf9o6u7cS8f w==;
X-CSE-ConnectionGUID: ew/DOGTaSyi7enTMo8+7IQ==
X-CSE-MsgGUID: Xi2WYSCuQDCuv4Gi4v41ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34784211"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34784211"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:02:53 -0700
X-CSE-ConnectionGUID: Ip9Yb9/0TKCzrXJ0u3GqiQ==
X-CSE-MsgGUID: ZLi1yijURSe98Mr8h1IVAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66012863"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:02:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/i915/pps: hide VLV/CHV PPS pipe stuff inside
 intel_pps.c
Date: Wed,  4 Sep 2024 17:02:30 +0300
Message-Id: <cover.1725458428.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

It's bugged me for a long time that we poke the intel_pps->pps members
directly in a number of places, especially around VLV/CHV PPS pipe
handling. Hide it all inside intel_pps.c. The function naming may be a
bit contrived, but IMO better than the status quo.

BR,
Jani.

Jani Nikula (4):
  drm/i915/pps: add intel_pps_dp_init() for all DP init
  drm/i915/pps: move active_pipe set to intel_pps_dp_encoder_reset()
  drm/i915/pps: add intel_pps_dp_power_down()
  drm/i915/pps: add intel_pps_backlight_initial_pipe()

 drivers/gpu/drm/i915/display/g4x_dp.c    | 19 +------
 drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c  | 23 ++-------
 drivers/gpu/drm/i915/display/intel_pps.c | 63 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_pps.h |  6 ++-
 5 files changed, 73 insertions(+), 40 deletions(-)

-- 
2.39.2

