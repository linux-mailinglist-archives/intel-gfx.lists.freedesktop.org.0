Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D5586FB31
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 08:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6A910FDF0;
	Mon,  4 Mar 2024 07:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MknF79N5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DFDE10FDF0
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 07:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709539062; x=1741075062;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E3LoSWlE7qrX43iXjYVtHoL9HErtvI3MyxB5SVEGFjM=;
 b=MknF79N5G+jaD6f73tShgXR2E8e7DiBGKPzvW9cuclfsD21hfimfPjvu
 ao+nTeKIaVcuN9rEMUQu8q5rk9ZFXAthYdNo8/gTANFfOFLq490yETxGk
 hd9foxsW4llj3s9YoELsqc548D7Q/MNTreDKlq5PUT3Jtyu6yNmWKedv1
 n9EKppA7QSs8eY40870c7hLpaEDzp//R9Bsseu2hu0BE7oZTK5l34GWM6
 lyyqJcWW1wR/xGkw8AyeSSLg3Dv78FwsLmAP7tLT0VQZKcaEWfTPVYZHC
 qW1yyFT4HhRX3RVCNnGOPzYmUgKX5w6zkaFeppoea14u0PfKYz1x4yL1G g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4139321"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4139321"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 23:57:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9043938"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa008.fm.intel.com with ESMTP; 03 Mar 2024 23:57:40 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, arun.r.murthy@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 0/3] Link off between frames for edp
Date: Mon,  4 Mar 2024 13:13:00 +0530
Message-Id: <20240304074303.202882-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Link Off Between Active Frames (LOBF) allows an eDP link to be turned Off and On
durning long VBLANK durations without enabling any of the PSR/PSR2/PR modes of operation.

Bspec: 71477

Note: This is a feature has dependency on ALPM, AS SDP. So the below changes
are done on top of the following patch series where review is ongoing. So
compilation issue expected from CI.
https://patchwork.freedesktop.org/series/129938/
https://patchwork.freedesktop.org/series/126829/

These patches are not tested, sending early for review feedback

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (3):
  drm/i915/alpm: Move alpm parameters from intel_psr
  drm/i915/alpm: Add compute config for lobf
  drm/i915/alpm: Enable lobf from source in ALPM_CTL

 .../drm/i915/display/intel_display_types.h    | 27 +++---
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 92 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_psr.h      |  3 +
 4 files changed, 89 insertions(+), 34 deletions(-)

-- 
2.29.0

