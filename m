Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E3D9F879E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7F210EDF7;
	Thu, 19 Dec 2024 22:14:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VU/J0eya";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A6A10E2A7;
 Thu, 19 Dec 2024 22:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734646494; x=1766182494;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JGSF7wTGKdRuerUOAxZwo/Yt6tn/jrvTyJBJ3b83Hv0=;
 b=VU/J0eyaJVAaFsHn/5VKFkEn6fPXaUNkAdtqQvXrguCLhw71HxLiuDhU
 tsYNVkx5GYIOz8VAoCmoBkYvGEGr519Wla0RzS3DXLcsog6SU9r5m0Q1w
 G4SlMQZx5hdW3vr0lIF0X95xqAqqB7NAlZFQ8CKNubpakptj+Vc8gpDku
 /ujV2rEbs9DsB5gelevFmxVi16tKXF1jOu3wQ8IWfReApOFK9WaQU2MPC
 ll0+Njzd8682s7JLcVa1qZxC9A10XF79FZMV75bCYwzC6YkMi2nYTVx4l
 l82whOakxkqz5OIgwZ+IDi5wOUf9ilLIyhEXcC7bxN2Duo+0C8mLaN93a A==;
X-CSE-ConnectionGUID: EzmcUklgSAy5Ou0CbeoVzQ==
X-CSE-MsgGUID: FsWBeMNhTGu3kjOgWaTPSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35217708"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35217708"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:54 -0800
X-CSE-ConnectionGUID: WtwK++JbQgy7BfZFD5cUPw==
X-CSE-MsgGUID: +Z4pSXY8TYyWnrzw8vFw5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102944119"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.91])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:53 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/dmc_wl: Support extra values for dmc_wl_enable
 for debugging
Date: Thu, 19 Dec 2024 19:14:12 -0300
Message-ID: <20241219221429.109668-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
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

This series adds support for two new values for dmc_wl_enable for
debugging purposes:

  * 2 to mean "match any register", which makes the wakelock to be taken
    for every display MMIO transaction;
  * 3 to mean "always locked", which causes the lock to be taken as soon
    as the DMC wakelock mechanism is enabled and is kept locked until it
    is disabled.

Gustavo Sousa (4):
  drm/i915/dmc_wl: Use enum values for enable_dmc_wl
  drm/i915/dmc_wl: Show description string for enable_dmc_wl
  drm/i915/dmc_wl: Allow enable_dmc_wl=2 to mean "match any register"
  drm/i915/dmc_wl: Allow enable_dmc_wl=3 to mean "always locked"

 .../drm/i915/display/intel_display_params.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 73 +++++++++++++++----
 2 files changed, 61 insertions(+), 14 deletions(-)

-- 
2.47.1

