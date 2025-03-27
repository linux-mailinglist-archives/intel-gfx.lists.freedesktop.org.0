Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 316DAA73523
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 15:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845A210E331;
	Thu, 27 Mar 2025 14:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b1RaulIW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16E3210E068;
 Thu, 27 Mar 2025 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743087497; x=1774623497;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FpRTlUjXyyDeErV22FlcsUV2W9Y9MIG5SBpruucK8qw=;
 b=b1RaulIWdS9qaDkZPtSMDQFrFzSRAmx3oIpXAaD75rVCSZqVfvM8UxwC
 k4aUqs45ok1LBTxUDi1ejJNd41Z0K1hKXT+Q6coS7+jC48d0HY4kjITv6
 KcAJvDZ/22qoh1uVq1N0J6fEVVonEYbv2+oaAqSB7TAiqNXfoCKF7zc2v
 7amuY7D/Oci9D6xgcCIGhIIbvSF/u2gqL7izNNRCUoCCXKPh/ucpkEQi0
 TB3qZfbrsiI4hUQZzcliltbaq7LNesbbxdA2i5PtOw8YXUmKUmHGYNrvt
 w0hBZwlooZAOnFRKWX8EP7I8sJZtXe4k0Nd2ZP7z7Z7XPVDyHHHfQG2R5 g==;
X-CSE-ConnectionGUID: l/x+NVulSvGjkY2gXEwxAQ==
X-CSE-MsgGUID: hMULdBx/Tv2DkG1oRPbX3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="69788013"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="69788013"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 07:58:16 -0700
X-CSE-ConnectionGUID: piyfXA7uQze7gRr4T3us0g==
X-CSE-MsgGUID: TZN8FLlPTOqUnbL0T7Rt8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125381238"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 07:58:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 0/2] VRR Register Read/Write Updates
Date: Thu, 27 Mar 2025 20:16:27 +0530
Message-ID: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Now that we have switched to VRR Timing generator from PTL onwards, we
no longer need to program VTOTAL.Vtotal bits, which were used by Legacy
Timing Generator.
This patch series is a continuation from discussion of another patch for
avoid reading/writing VTOTAL.Vtotal bits [1].
First patch introduces a macro to exclude DSI transcoded from VRR
programming in a consistent manner. The next patch actually modifies
reading/writing VTOTAL register.

[1] https://patchwork.freedesktop.org/patch/644683/?series=134383&rev=17

Rev2: Address comments from Ville.
Rev3: Fix the BAT issues due to incorrect check.
Keep the readout for vtotal intact, and just overwrite for cases where
we dont want to read vtotal. (Ville)

Ankit Nautiyal (2):
  drm/i915/display: Introduce transcoder_has_vrr() helper
  drm/i915/display: Avoid use of VTOTAL.Vtotal bits

 drivers/gpu/drm/i915/display/intel_display.c | 29 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 10 +++++++
 2 files changed, 38 insertions(+), 1 deletion(-)

-- 
2.45.2

