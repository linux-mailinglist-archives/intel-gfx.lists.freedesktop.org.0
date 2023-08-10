Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8EA777EBE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 19:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4C210E5C1;
	Thu, 10 Aug 2023 17:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587D510E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 17:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691687077; x=1723223077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0577mMH+3UbNtBg867KlP3jyyUQc1aS8rvilreUSJwE=;
 b=EqqTNmft4K/XxyQyjt7nd8TjnKfuldH0yAxUyj+3pTGeIytjIzsEwYLw
 baVAPX7G/APFheGWUQ/N2js2GqY6P6fG2lzyjLBRQXUyy9+rm94ZMtCbW
 uYS5Lz/r0cye4Ku3gv4GvjDOVC0QR/8CiX29D45dUnqKgx1fgLzVCO/n5
 xexM0ofT8XH7U9WnnUQjriqw4mDoss5T0gT+euCCoXwH/FiZQImNTttcH
 YiZXyXUTVKbtx8+ZEsKlHJXP9WEWN6fAn5tF8j3Q+3Dim6MlX8qmcJw5N
 8gUPwfM8uS0C3FfTEMqdh0P5UhUzLP3FGPPoXnuL9yoF2ytfBhYVouQWJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="435358647"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="435358647"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 10:03:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="735489027"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="735489027"
Received: from xudongf-mobl.amr.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.50.242])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 10:03:55 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 20:03:39 +0300
Message-Id: <20230810170341.268503-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] DP2.0 SDP split support for DP-MST
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add DP2.0 SDP split support for DP-MST

Vinod Govindapillai (2):
  drm/i915/display: streamline the dp audio config steps
  drm/i915/display: configure SDP split for DP MST

 drivers/gpu/drm/i915/display/intel_audio.c  |  6 ++---
 drivers/gpu/drm/i915/display/intel_audio.h  |  3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c     | 27 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++++---
 6 files changed, 29 insertions(+), 24 deletions(-)

-- 
2.34.1

