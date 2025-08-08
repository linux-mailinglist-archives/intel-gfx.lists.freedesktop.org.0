Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73879B1E3DC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 09:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62BE610E8CB;
	Fri,  8 Aug 2025 07:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UdPVyfa3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF40410E8C8;
 Fri,  8 Aug 2025 07:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754639563; x=1786175563;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wjjwp6v+fkr3fEY0WYGgOO8lIIl76n2JFwPJO7khcAg=;
 b=UdPVyfa3UthDBS4k9n+P/+vzxb5Pm14WXVEGS0AM2Z2+TDPS4gAe31B5
 7NvA94xx7FWUwVXyVX9hv9AF8jju7+v3wxOVwPXSSn10UYF/NMFU1ZD9L
 0SrtqNjJi/pzUG2jcgxWUsQ2nuR8+t13rLAYiFvFqaHugRoB20VvltrVR
 GjQ+ANxRKrVtEStVKu9yHpn9dpmmLeS7b+ofrG/Um4N3ljTNM60vlmmUn
 yvfodVbtTy/FpLdG42Nt9ks9EZPqw7miKCpFq37egZXm+miWJEzTp0lCR
 6g3cw4Ko6JVsUGykLpgHTgCjOiPYsdbWteX82oJGMkpjxFBK0LT8Pzts8 Q==;
X-CSE-ConnectionGUID: 36afVZPyS0WiMo4jUUljKg==
X-CSE-MsgGUID: MckGLqn3R8y3hvPkyRx1ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74439096"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="74439096"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:43 -0700
X-CSE-ConnectionGUID: n8xLPQHJQrmfkTMMBf9YJA==
X-CSE-MsgGUID: tDRApsaaT/SPl8Zrbkc7MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169481602"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:41 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915: Add debugfs control to prefer YCbCr 4:2:0
 output for HDMI/DP
Date: Fri,  8 Aug 2025 13:22:40 +0530
Message-ID: <20250808075351.304612-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=yes
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

By default, Intel display drivers select RGB output format.
However, in certain validation scenarios—such as scaling and color,
forcing YCbCr 4:2:0 output will help  to exercise specific code paths.

Add  a new `prefer_sink_yuv420` flag in `intel_connector`,
exposed via a new per-connector debugfs file `i915_prefer_sink_yuv420`.

When enabled:
 - The driver checks if the sink and mode support YCbCr 4:2:0
 - If compatible, it overrides the default RGB format and chooses 4:2:0
   instead

This helps validating yuv420 format handling  either using supported
panels or Chamelium test setups.

Dibin Moolakadan Subrahmanian (3):
  drm/i915/debugfs: Add debugfs entry to prefer YCbCr 4:2:0 output
  drm/i915/hdmi: Honor prefer_sink_yuv420 debugfs override for HDMI
  drm/i915/dp: Honor prefer_sink_yuv420 debugfs override for DP

 .../drm/i915/display/intel_display_debugfs.c  | 75 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  6 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 +++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 ++
 4 files changed, 98 insertions(+)

-- 
2.43.0

