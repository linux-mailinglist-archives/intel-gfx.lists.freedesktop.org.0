Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D10AF7F3E8B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 08:04:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE47810E127;
	Wed, 22 Nov 2023 07:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E573E10E127
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 07:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700636666; x=1732172666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vuyV5aM3A4BX4YG8UV2eQTaeloAogHjPtpEw5lTgGfk=;
 b=ifWnYGNFBwZ08kdgdqWeB8AlEApSs/xxOOGT7L7rZdlPNMyowzvNNcxj
 mYr+1FmYDGIAQAgjuYpzYgeNIhUkYT8ZpPvg9hYY7twUlSyN7onJ/LNja
 GRs1+uOyFfyeVjA/xyayrN5wkmZrGo6UsU08V62WYHPwdpcwOAUL96i8o
 44UAiqX3kMY8RphBGE66/ht9+9Pf/hIBLc9GVKLqrxOaEm0Qys84i3O0Z
 2ityvHaFquoO0xSWMQCY9vQbsElmFlO5bdvdvqQFt0W7HiEbVMY17xspd
 2QoTFInTNUFvMDCjFbDMK9RFrFKb7BKDBJOeE2wEpG21lffYtDIEY9iIK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="13548252"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="13548252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 23:04:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="910704591"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="910704591"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2023 23:04:24 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Nov 2023 12:29:23 +0530
Message-Id: <20231122065926.4076690-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Implement CMRR Support
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

CMRR is a display feature that uses adaptive sync
framework to vary Vtotal slightly to match the
content rate exactly without frame drops. This
feature is a variation of VRR where it varies Vtotal
slightly (between additional 0 and 1 Vtotal scanlines)
to match content rate exactly without frame drops
using the adaptive sync framework.

enable this feature by programing new registers for
CMRR enable, CMRR_M, CMRR_N, vmin=vmax=flipline.The
CMRR_M/CMRR_N ratio represents the fractional part
in (actual refresh rate/target refresh rate) * origVTotal.

Mitul Golani (3):
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Add Enable/Disable for CMRR based on VRR state
  drm/i915: Compute CMRR and calculate vtotal

 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  54 +++++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 129 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 6 files changed, 184 insertions(+), 20 deletions(-)

-- 
2.25.1

