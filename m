Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B249AF975
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CFD410E085;
	Fri, 25 Oct 2024 06:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H7zfk4nz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0D1D10E02E;
 Fri, 25 Oct 2024 06:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729836115; x=1761372115;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ohEGC6TnZZ8T3MRV7tcaKM8RP01tXD5hKqE69bRPAHs=;
 b=H7zfk4nze7hWxPvdyxTCMPHVwEQ2BeXfExCs9b4IBoP5DSdmZ6Qi1eWT
 ox60xZQYBtizE7xWJsVV/pjNZNy5SThmIMRlatI/gHgidccAqGTPaUmJ+
 0sSGn30WwIj2E7rFIDGBAJZwMlO3GDeMu3AJxbgcOX1oHc8KyOagBy46v
 OX4altHhVs3IC2LE83+5i1fd73h88Kv7wf+RT+C9VE7M8t8MWGG5R3WFG
 YV1B3C26Ap2izhugg8JmSWA34ZBl1YUIGHnPn+Gp+EkkKmlxFWtCau+Gt
 8FKtYRmhfuIFE6XqHfHI+XZVwvbwQCFBlk3oLYST2Ai8/CRXJEYcmrpBm g==;
X-CSE-ConnectionGUID: x0wxkIe7SPWt0Fn+p5T25w==
X-CSE-MsgGUID: iQLbtbu+TImoE868Z5Lstw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29620674"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29620674"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 23:01:55 -0700
X-CSE-ConnectionGUID: PiBl2ORCSBCqOQbhtDfTCQ==
X-CSE-MsgGUID: cv4CxIVhRBaOZ4dUBxCUtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80734396"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 24 Oct 2024 23:01:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/5] Add 6k resolution support for a single CRTC
Date: Fri, 25 Oct 2024 11:31:31 +0530
Message-Id: <20241025060136.9884-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Increase the max source width and height to be able to support 6k
resolution
on a single pipe. The changes for cdclk that accompany this change are
already merged in the code.

Bspec: 68858
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (5):
  drm/i915/display: Fix the plane max height and width limits
  drm/i915/xe3lpd: Increase resolution for plane to support 6k
  drm/i915/psr: Increase psr size limits for Xe2
  drm/i915/xe3lpd: Increase max_h max_v for PSR
  drm/i914/xe3lpd: Increase bigjoiner limitations

 drivers/gpu/drm/i915/display/intel_display.c  | 27 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.c       |  5 +++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++++++-
 .../drm/i915/display/skl_universal_plane.c    | 16 ++++++++++-
 4 files changed, 52 insertions(+), 6 deletions(-)

-- 
2.34.1

