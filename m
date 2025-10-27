Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 702F4C0E1AF
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 14:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AE610E4A4;
	Mon, 27 Oct 2025 13:40:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqfxV7Vo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F0910E4A3;
 Mon, 27 Oct 2025 13:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761572421; x=1793108421;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZYD/yUHuJNjHj6CHvDad7mEIKZPtLDFXgLsNaEJ+ivo=;
 b=SqfxV7VojQO50P8IxPwTomK2KWKXA1b977reL//CbDTO5F9sfAC0IT0w
 pu0KKTYZkblcXA6xt5jKcWhywiPNYCSlrbdxBwsr7VjeBsp6Mhm5Yvw1L
 n4ah1UKEXDIWnpkHCLf0weY5vAJ2hjCM8GsfmKEp6QamPkNuBBsWwFzU+
 1D9x59a8QbTh0C2PAf4vdvbxB4BPCvdDQFLxK9mZ9IIUiPsPOJeDHuOP+
 sEKqrbCvLQkk+ysssGc3NF2lR7Wt1fYVUXKi8HO+QHvG2e9exMl9Ex7K7
 KQwvLYPJ9eq6LJHAJDQDx8xBfkDSY6xaODokhbB4TZOOlJi41xJmaMBK8 Q==;
X-CSE-ConnectionGUID: R/rNJEbeTbOQg6OWuh1LVA==
X-CSE-MsgGUID: CebMVDunT2ejM3sQStLkug==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67514295"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="67514295"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:20 -0700
X-CSE-ConnectionGUID: pmT+rFSYRZq3oSVlFMg3qw==
X-CSE-MsgGUID: AuLs18XNQ4KOqVX7VryAcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184271155"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:18 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, gustavo.sousa@intel.com,
 jani.nikula@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com
Subject: [PATCH v2 0/4] drm/i915/x3p_lpd: FBC related patches
Date: Mon, 27 Oct 2025 15:39:57 +0200
Message-ID: <20251027134001.325064-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Spinning out the FBC related patches from the 
https://patchwork.freedesktop.org/series/155952/ after addressing the
review comments.

Sai Teja Pottumuttu (1):
  drm/i915/xe3p_lpd: Extend FBC support to UINT16 formats

Vinod Govindapillai (3):
  drm/i915/xe3p_lpd: Add FBC support for FP16 formats
  drm/i915/xe3p_lpd: extract pixel format valid routine for FP16 formats
  drm/i915/xe3p_lpd: use pixel normalizer for fp16 formats for FBC

 drivers/gpu/drm/i915/display/intel_fbc.c      | 59 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fbc.h      |  2 +
 .../drm/i915/display/skl_universal_plane.c    | 65 ++++++++++++++-----
 .../i915/display/skl_universal_plane_regs.h   | 12 ++++
 4 files changed, 116 insertions(+), 22 deletions(-)

-- 
2.43.0

