Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 921F695819C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 11:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A7310E52C;
	Tue, 20 Aug 2024 09:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YtgdX6gl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A3710E2AD;
 Tue, 20 Aug 2024 09:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724144855; x=1755680855;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hktA+ztQXCBA2TPbxyOICPn1ybBqP889ZuG8rwrmSDw=;
 b=YtgdX6glHqkfu3GsgQeOSDg1aByLARcby5+trio3Fma0rAl9cpH1K5JH
 Km0VhfNtmQupAl0dWhiqsHX86rFGXgbJbx5C6xG4mB2mEBGC+g4k2Pudv
 V5WG4B6+MhKmWAThJVJRA+xNtdFKpt2Vz2OxYIjwxUA9ccZ4Ig6zVlGzO
 OAbbkUI0Wn5WeCOYnSmWyqdd0LRY5Y+eHHSf2ruMH3GAIhV3KGBBnxzaT
 zgTXUcZpqveztF02VrgIl39a+oFIA4fdOZCbeO771l7WixOvKU3XbHdYE
 yvSt/IUFMVwWKKnPAhFSCavAntbJWsoCTvllaaplcYOmsnxd+2UnYypYX A==;
X-CSE-ConnectionGUID: IdtyoxkQQaqKsq2+3iB6IQ==
X-CSE-MsgGUID: DtSxv4bvSPm+KwhEOSh3pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="22596279"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="22596279"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 02:07:11 -0700
X-CSE-ConnectionGUID: jODl1R4MRECpIKpyiX00Pg==
X-CSE-MsgGUID: xj3V6R6UQkKGWYbI0JazVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="61424552"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 02:07:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915 & drm/xe: rawclk freq cleanups
Date: Tue, 20 Aug 2024 12:07:00 +0300
Message-Id: <cover.1724144570.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The stragglers from [1], addressing the fact that VLV/CHV need rawclk
freq quite early for power well [2]. Just move the init from i915
runtime info init to display info init, and keep it early.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/134145/
[2] https://lore.kernel.org/r/ZmLzcsoMkt3cB48m@intel.com

Jani Nikula (2):
  drm/i915: move rawclk from runtime to display runtime info
  drm/xe/display: drop unused rawclk_freq and RUNTIME_INFO()

 drivers/gpu/drm/i915/display/intel_backlight.c         | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_display_device.c    |  5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h    |  2 ++
 .../gpu/drm/i915/display/intel_display_power_well.c    |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_aux.c            |  4 ++--
 drivers/gpu/drm/i915/display/intel_pps.c               |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c               |  5 -----
 drivers/gpu/drm/i915/intel_device_info.h               |  2 --
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h      |  1 -
 drivers/gpu/drm/xe/xe_device_types.h                   |  6 ------
 10 files changed, 17 insertions(+), 24 deletions(-)

-- 
2.39.2

