Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E303BA70FDC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 05:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE6B10E64F;
	Wed, 26 Mar 2025 04:17:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Law6MDad";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7342510E2AD;
 Wed, 26 Mar 2025 04:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742962646; x=1774498646;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=blMZq05INAx+skmKm4nDO0+6csmeOEeRx50800ELai4=;
 b=Law6MDadsV++FqWyCq6Hc6cnN4nVXxxE/dQXdC7LCxiFqzjHNLzP54vh
 60+p5vW0OWZF77IJKETRQ9XAl5cHX6qytW9A+DqK+GXLCQ3xlUZIZ8Ca+
 1FX5xN2m6f4cNuCtHNrOMDC5KNOGCUm2fbYKlBR3plBuWYl8O85d08A4I
 LGcnbWOwM2zE7XUkIdNtBAMwdZ89+AlF/Xn64htZrjwcJQQ/tIXsoyn4G
 gVSacRGYKqalhZ0DPOX5cL9vtjjOtrEX9vMxAfEjiv1cx5LCPpqsfXksj
 Uzxf5awbn3e0uR8dlPl/IhpquYKz4XF/LMkSwtdPaDsPOFsRWda7t2RTT w==;
X-CSE-ConnectionGUID: zg9Ot3C8S+CQJ6gIPptB9w==
X-CSE-MsgGUID: epfSTGHcSjqFj9AIjGuZlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="61627960"
X-IronPort-AV: E=Sophos;i="6.14,276,1736841600"; d="scan'208";a="61627960"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 21:17:26 -0700
X-CSE-ConnectionGUID: CKFMO+zfTw+qc2BWerG5/w==
X-CSE-MsgGUID: 5V4cko8GQxO4lz37W+vh9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,276,1736841600"; d="scan'208";a="124423126"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 21:17:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 0/2] VRR Register Read/Write Updates
Date: Wed, 26 Mar 2025 09:35:36 +0530
Message-ID: <20250326040538.504861-1-ankit.k.nautiyal@intel.com>
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

Ankit Nautiyal (2):
  drm/i915/display: Introduce transcoder_has_vrr() helper
  drm/i915/display: Avoid use of VTOTAL.Vtotal bits

 drivers/gpu/drm/i915/display/intel_display.c | 53 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.c     | 15 ++++--
 2 files changed, 59 insertions(+), 9 deletions(-)

-- 
2.45.2

