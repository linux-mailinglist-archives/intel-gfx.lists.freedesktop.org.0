Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC8C93D0A4
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 11:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C78E10E957;
	Fri, 26 Jul 2024 09:54:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0j769V0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7126410E7FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 09:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721987663; x=1753523663;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JwqSqrH8TVCJfRri2g67K6WbLkw0SgGH5AZtxnJCX74=;
 b=P0j769V0H24qFNisIp1lgEKWcu/cFs8Av0jEOV/H0cJIbYQmi3ojwcO+
 KVWAPOFe3FtItoaab5hkgY2kEsBQbvxQLI5SPZNfFn6DB2nb7WK574UZW
 JN6i+13afJ02oK5bEU0Ieo1keUMcrrF1HrPseL55L3c8txnWqE9GWeDcm
 F9WlkMcM2suqT+vjjEEcXWL4Cf2XEHA+bziwAt7i0q3ZzS/JmWp+rvZqH
 eZIG6K97ZyhDOYzNWa+BWZ5iLatocAZrr+nJyXE79H9lr0cDCxMYlTHri
 EuIu4mQOiuzlbfXWa+hRFlpyllfG0eVo1sVbbNljPFgUTG14ES//LQ1rl Q==;
X-CSE-ConnectionGUID: NwRUzYz8SeGlHUVt3TWRFg==
X-CSE-MsgGUID: 8wQNFI7jS8a6tuTW4Xe47w==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="31189394"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="31189394"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 02:54:23 -0700
X-CSE-ConnectionGUID: ew8uHsBSSQ64cJkifbB8Bg==
X-CSE-MsgGUID: lnqeHMvjSne34qdO1NE9+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="53139927"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa010.jf.intel.com with ESMTP; 26 Jul 2024 02:54:22 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/2]  Consider joiner calculation for panel fitting
Date: Fri, 26 Jul 2024 15:23:55 +0530
Message-Id: <20240726095357.1261804-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

 Refactor pch_panel_fitting function to use local variables for
crtc_hdisplay and crtc_vdisplay. There is an issue when pch_pfit
and joiner gets enabled together. Moves the panel_fitting to later
stage after pipe_src width is adjusted for bigjoiner.

Nemesa Garg (2):
  drm/i915/display: Refactor pch_panel_fitting to use local variables
    for crtc dimensions
  drm/i915/display: Call panel_fitting from pipe_config

 drivers/gpu/drm/i915/display/intel_display.c  | 11 ++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +---
 drivers/gpu/drm/i915/display/intel_panel.c    | 37 +++++++++++--------
 4 files changed, 35 insertions(+), 21 deletions(-)

-- 
2.25.1

