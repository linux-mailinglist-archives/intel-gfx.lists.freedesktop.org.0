Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2C2A38F2A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 23:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C8110E452;
	Mon, 17 Feb 2025 22:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cVRgcEAx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137A110E1F1;
 Mon, 17 Feb 2025 22:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739831849; x=1771367849;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Kt0gBV4gxRT+GeDk3QHlFL4G1jIP1nmmHxPYZ9dXKOs=;
 b=cVRgcEAxaam0WbuiryTYFA/QJjmZ9yWDz0qnH1SsAmcROf98AayBXArB
 Ctsc1BtGU/B1wxr23wqAQAdFCRKbhLf+2AuYWoOVKF5iVZoqgStPnmJsH
 tjmPyyCKoqs200Yth6ZOSFsN5KPtaebK9WyuzHvQWw1SHcKWZej8zOVeb
 U4jTawLqg9Gwi48U6kQ0RYbGgLYgiuCPx7bqqN5akMmExb5C6wDAaMjN3
 /0Pj6HUHxhk+m2SgxiXgzuDkQ9CDNzmsrE599h1TFwRW62ej0/Fj9ZY8F
 JDDUMdK0Y2+y2qb5IY4V8H4Nnie7M0W3vFnQ/0mVHZkw2HpcAOVeYYgex w==;
X-CSE-ConnectionGUID: KKgZchj6ReWP8raopAaegQ==
X-CSE-MsgGUID: u2Ma/G32TTyABRWCgwrd9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="44171137"
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="44171137"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 14:37:29 -0800
X-CSE-ConnectionGUID: nsxTfy2XTLqfXvDQ3+O5rQ==
X-CSE-MsgGUID: J5nsuD3qT7KFeEb5IQ60gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="114872567"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 14:37:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 0/2] drm/i915/dp: Fix 128b/132b modeset issues
Date: Tue, 18 Feb 2025 00:38:26 +0200
Message-ID: <20250217223828.1166093-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

This patchset fixes an issue during the error handling of a 128b/132b
mode link training failure and fixes the transcoder function disabling
sequence in 128b/132b SST mode.

Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (2):
  drm/i915/dp: Fix error handling during 128b/132b link training
  drm/i915/dp: Fix disabling the transcoder function in 128b/132b mode

 drivers/gpu/drm/i915/display/intel_ddi.c          |  6 ++----
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++++++++-
 2 files changed, 16 insertions(+), 5 deletions(-)

-- 
2.44.2

