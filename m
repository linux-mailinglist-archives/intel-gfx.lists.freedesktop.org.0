Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D03089F7BFF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD74B10E0CF;
	Thu, 19 Dec 2024 13:08:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TBV/Mxtg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E4310E0CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613710; x=1766149710;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KLgZSpqFUhFKq+1hrH8HNNqWDSKKn+i9gRitpetk7g4=;
 b=TBV/MxtgpMzOWBoc5DxvmnsGDqw3N8jCPJenPDgEx6uDRHs4p/l30wXq
 tpes/slV82bhI/DKHmsiz9oq+hq1MHe+bJnZ45rDJDmw9eR60G9MJsggj
 A0mKq+Ra2dNdd7iV/QzRLNw9pvBx30WBXrFGeo64M4iNtW1bHwxdoQ5lX
 I1UgoIXSvXhq9Abw7bUwcLipx7kfcILxAwI6XuG5qKOHP5ekvQt2xX9G3
 j8lquNIcpKj3NOEKcTeRrwewHoY704/3/we4DDWeuRRgXpkCbCLQNV/aQ
 R1oYg2Hqxdvm3bPCojK23IK49PpefnXwlPMdAR7nmPZ12Qai+Kj6E1YQ5 A==;
X-CSE-ConnectionGUID: i9XVJN9BRCOAeqbxgj//9A==
X-CSE-MsgGUID: hyyDZJYgScGoC3SE1s9kWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798114"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798114"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:30 -0800
X-CSE-ConnectionGUID: iVZDGvFUToutaWh9+HPxkw==
X-CSE-MsgGUID: BMmgv1e9Q6eHPRS+CP1KHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403269"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/8] drm/i915/scaler: Scaler cleanups and tracepoints
Date: Thu, 19 Dec 2024 15:08:19 +0200
Message-ID: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Do a bunch of cleanup in the scaler code, and add rudimentary
scaler tracpoints to aid debugging.

Ville Syrjälä (8):
  drm/i915/scaler: Extract skl_scaler_min_src_size()
  drm/i915/scaler: Extract skl_scaler_max_src_size()
  drm/i915/scaler: Extract skl_scaler_min_dst_size()
  drm/i915/scaler: Extract skl_scaler_max_dst_size()
  drm/i915/scaler: Nuke redundant code
  drm/i915/scaler: Pimp scaler debugs
  drm/i915/scaler: s/excdeed/exceed/
  drm/i915/scaler: Add scaler tracepoints

 .../drm/i915/display/intel_display_trace.h    |  99 ++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.c     | 147 ++++++++++--------
 2 files changed, 182 insertions(+), 64 deletions(-)

-- 
2.45.2

