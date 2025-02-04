Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9B0A27272
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:09:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A59E10E61E;
	Tue,  4 Feb 2025 13:09:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I+Q/kI4C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A134B10E61C;
 Tue,  4 Feb 2025 13:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738674579; x=1770210579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UNP1fx7Bw6mRZaFcTuRmcI832WttPsuJHytnOZDvGUQ=;
 b=I+Q/kI4CD12aM71LogN1wjR/psbnAn9a24JKeVhm2F3VmXZRuRy3khXm
 TPz/hY59dkri4ZSHedESOjAa0Urj1NemsFFcUOf0JDzbVrnnqYylOPl1o
 YwBc1j33e4r/Jd2voKQd4EQinfZFYvKHK6bRKYF/Vo2kU20DZg3CiebTi
 3R7Zni19NlcThhxIgkgpASJu8oCwK3vqCE38hoFB4I4bkCDo/Q7aux5IV
 dnwkRFFh7DnLU1rL2Anilk7pOCDc1ZwPJo3NMHwXHiVIw5JnyQavWnM5P
 8eESolyQ/BwlNTTdKj0+nF4zX9BAiGi5zbXF0UzQTy+mtHLCa33qbb3zZ A==;
X-CSE-ConnectionGUID: WO9w3ZCgTcqe9Nf/fYfS3A==
X-CSE-MsgGUID: sWpZFZI9RayOPz7SnUzJTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39082329"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39082329"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:09:39 -0800
X-CSE-ConnectionGUID: j0InWP/6Q+SCSJ/j5UFZqA==
X-CSE-MsgGUID: LlgnpvSRSsu5ZD8pXvWagQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110417862"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2025 05:09:36 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 0/2] Compute as_sdp when vrr is enabled
Date: Tue,  4 Feb 2025 18:36:36 +0530
Message-ID: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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

Compute as sdp when vrr.enable is set, also Skip
infoframe.enable check to avoid full modeset during
as_sdp toggle.

Mitul Golani (2):
  drm/i915/display: Skip state checker for AS SDP infoframe enable
  Revert "drm/i915/dp: Compute as_sdp based on if vrr possible"

 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
 2 files changed, 9 insertions(+), 3 deletions(-)

-- 
2.48.1

