Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312E689B716
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 07:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33686112067;
	Mon,  8 Apr 2024 05:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ceyJsjna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB54B10F5D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 05:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712553268; x=1744089268;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cKTgAQzRgWxf1tLIP2P2qgRTpEEy7OjrXk/SPFwUGJA=;
 b=ceyJsjnaT1OMwg55BIlMxzklSo9zRZi40EnL7/gaDOvGxFH4j+HyJgLh
 xeUJ/zgBqVg9PZS5G5Q5WDWmbEYwGWDhj5Geg0Z6PhfwyzXY1+jCgVZ9L
 MzMF3shGU5UZlI7MQlxnwJJ2YG2OfXJwLzzFtjP95MqtSFRvVP4x8E1zN
 iT+4ZCCrRqgPWzrb7hfWT0fyFcbYbqLfDra/et+ui9hxgcqBLQx0CpCtq
 0L7Lxg2qjmaI6ZxO6BtgCoW/b78Amp71BhTtxJ4zDOFYpoWfyfG3Y4RtD
 B1wtjYu2fDLYNHLmCvW1M1jx/K48aiFs9F6qvxLmMLVoqIakU81n89OHE w==;
X-CSE-ConnectionGUID: 64ZMBN+yRP2AalWodXXbqQ==
X-CSE-MsgGUID: YX65js0vSvioUDGAXvsZGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18429003"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18429003"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:27 -0700
X-CSE-ConnectionGUID: opsk02E1Qa6nuDPh71dt1w==
X-CSE-MsgGUID: azYaJAhlTWKypmhPuW+NqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24401484"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] Avoid unwanted lspcon init and probe warnings
Date: Mon,  8 Apr 2024 10:35:55 +0530
Message-Id: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

Currently we probe for lspcon, inside lspcon init.

If there is no lspcon connected, the probe expectedly fails and
results in error message. This inturn gets propogated to
lspcon init and we get again error message for lspcon init
failure.

Reduce the error messages from lspcon init.
Separate out some of the functions and avoid displaying error if the
probe fails.

rev2: Changed the approach from previous revision where lspcon_probe was
separated out from lspcon_init, as this was resulting in
lspcon_wake_native_aux_ch not being called before probe.
Instead, just separate out the part of lspcon_probe that can fail, to a
separate function and display the error message for it.

Ankit Nautiyal (3):
  drm/i915/lspcon: Separate out function to get expected mode
  drm/i915/lspcon: Separate out function to set pcon mode
  drm/915/lspcon: Reduce dmesg errors during lspcon_init failure

 drivers/gpu/drm/i915/display/intel_lspcon.c | 65 ++++++++++++---------
 1 file changed, 38 insertions(+), 27 deletions(-)

-- 
2.40.1

