Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8FE97B7F2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 08:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA07510E538;
	Wed, 18 Sep 2024 06:28:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="js2GKwYp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46B210E533;
 Wed, 18 Sep 2024 06:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726640909; x=1758176909;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W0btSrLb+nrEXOcA+2i4Ta07u/b0PjVWQIHYW6eKxIc=;
 b=js2GKwYpetmQZ4ogVgWn/zn51J+csjSgY/4IgkpVktVn6cbzpPOzwa7M
 e6njr3YXJ1Z7g2ZTxL2gcjpXdJCQyrkIysD6iUQyBiiqUy58g1qDvyc2H
 KYQ7GVzjLcbHrqJ2BESyxUrEQPoGXfiE8ImOheQ0tvWV/bqgf/BIH8w1H
 eP3KBJOTFFUptg/O3ISujjiQJOiJ41VXvCBszT/v84uz/2GDOvamLK6lK
 6QfokigA11nSkS2dPMeqhmy7cFmwfeQ7Eu1lP+9dpvsLE5FuiNLuWDTAy
 eqKl6YSkqrqEO2bFpD1TnW/JucVSymDbCWINbXvIXCslVtn2ynVcNC4fa Q==;
X-CSE-ConnectionGUID: GQtCOc6EQwW/mmZZ6kYLzg==
X-CSE-MsgGUID: H+FPROh3SOWs9LqVIzBeig==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25410742"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25410742"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 23:28:29 -0700
X-CSE-ConnectionGUID: /MZI2PxfTuCQBAsFMt2GLA==
X-CSE-MsgGUID: 54yTyxWsR7KM5p22qSNX9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69668040"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 23:28:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/2] Modify iterators to prepare for ultrajoiner
Date: Wed, 18 Sep 2024 12:00:14 +0530
Message-ID: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
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

Modify the iterators for enabling/disabling during modeset that works for
present and future joiner cases.

This patch series is a spin off from original series for ultrajoiner
basic functionality [1] and discussion on [2].
Few of the preparatory patches are taken here for review and merge before
the other core patches of the series.

[1] https://patchwork.freedesktop.org/patch/613914/
[2] https://patchwork.freedesktop.org/patch/613914/?series=133800&rev=8

Rev2:
-Simplified the macros, used struct display and other minor adjustments.

Ankit Nautiyal (1):
  drm/i915/display: Enhance iterators for modeset en/disable

Stanislav Lisovskiy (1):
  drm/i915: Add some essential functionality for joiners

 drivers/gpu/drm/i915/display/intel_ddi.c     | 14 ++--
 drivers/gpu/drm/i915/display/intel_display.c | 85 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.h | 28 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 ++--
 drivers/gpu/drm/i915/display/intel_vdsc.c    |  4 +-
 5 files changed, 113 insertions(+), 32 deletions(-)

-- 
2.45.2

