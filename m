Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4448FB21C1E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 06:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3935710E583;
	Tue, 12 Aug 2025 04:28:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gALg9vEC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5348110E582;
 Tue, 12 Aug 2025 04:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754972903; x=1786508903;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1fPvIHMG9qSjCqg43OIXdhoiuBZRuWygq3oY/43Liyg=;
 b=gALg9vEC71byvwEvGeRnYW9qGMM+o2Q6Z53YYGomuL77jN8AkXG4QNAn
 x4vzAtGPJyOBOkrd3VFmUJJ8mjvZlNn8ZFYFz/9Mmt/5ckEYzRerLEHRM
 4h+SOpSebCvquiceGzhdKfVgI+8EvvUiEsmI3LThqqMjhtxcE7oNF+RkO
 hKwNWnc0/TlECV/C98Qw56QOcLVPPISvwAAaFIzeYpxUpQoLuzmNE2VKX
 c+Lwxo9BaXrycg5ylr22+RxMTJs5iyLCiYX02WRL0OAx1wCOHtZ4RfRYs
 Vk5U7ay6zXRvlsM8keQfoodAhrDfOAhUKaJ6vdDQ/RQxa7jKYpSLNO5ir A==;
X-CSE-ConnectionGUID: 4P1QVaolTY66dCC4ZGlf+g==
X-CSE-MsgGUID: TpKvLQufTQaiNQpwkmPUsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68693382"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68693382"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:23 -0700
X-CSE-ConnectionGUID: 5k81b7JTRCqhrYFxVdRWKQ==
X-CSE-MsgGUID: caqea9daRTy2JStqD/R8jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165982354"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/6] Account for DSC bubble overhead for horizontal slices
Date: Tue, 12 Aug 2025 09:44:21 +0530
Message-ID: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
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

When DSC is enabled on a pipe, the pipe pixel rate input to cdclk frequency
and pipe joiner calculations needs to be adjusted to account for
compression overhead: specifically, the "bubbles" added at each horizontal
slice boundary. This overhead has always existed, even on earlier
platforms, but was not previously accounted for.

Currently, the number of joined pipes is computed much earlier than the
decision to use DSC—both during the mode_valid phase for each mode and in
the compute_config phase for a given mode. As a result, the DSC bubble
overhead cannot be considered when determining the number of pipes to join,
which may lead to incorrect configurations.

This series refactors the sequence of steps used to determine the number of
pipes to be joined and the DSC policy. The first few patches restructure
the mode_valid logic to make room for DSC bubble overhead accounting. The
final two patches introduce the actual overhead adjustment—one during cdclk
calculations and the other in the mode_valid step for DisplayPort.

#TODO: Account for the above overhead in DP compute_config phase.

As an alternative to this refactor, we could conservatively assume DSC will
always be used and apply the maximum possible slice count when computing
pipe joiner requirements. While this avoids structural changes, it may
overestimate the required overhead and force joiner usage in cases where it
was previously unnecessary. However, it would ensure that DSC bubble
overhead is always accounted for.

If the alternative approach works well across different platforms and
display modes, it could make the implementation easier and help avoid
changes in compute_config. But if it doesn't cover all cases reliably,
the refactoring in this series sets up a cleaner way to handle the
overhead properly, and we can extend it to compute_config.

Ankit Nautiyal (6):
  drm/i915/dp: Early reject bad hdisplay in intel_dp_mode_valid
  drm/i915/dp: Extract code to get slice and bpp to a separate function
  drm/i915/dp: Move num_joined_pipes and related checks together
  drm/i915/dp: Rework pipe joiner logic in mode_valid
  drm/i915/vdsc: Account for overhead bubbles in horizontal slices
  drm/i915/dp: Account for dsc bubbles overhead in intel_dp_mode_valid()

 drivers/gpu/drm/i915/display/intel_dp.c   | 160 +++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_vdsc.c |  44 +++++-
 drivers/gpu/drm/i915/display/intel_vdsc.h |   2 +
 3 files changed, 150 insertions(+), 56 deletions(-)

-- 
2.45.2

