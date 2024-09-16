Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74956979F3C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 12:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD5B10E043;
	Mon, 16 Sep 2024 10:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iBDbY1Ho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A3610E043
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 10:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726482410; x=1758018410;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MYW+q4yE0k8K2Hi6eo/4dXH0QtRKwe60pVUoJy6/11w=;
 b=iBDbY1HoLnG96EkUObhEN28df4vbt4qBeznAbNr9tButPThsajEueyI8
 Y8NXV/iADloKSyiinLJxHwsnxeOvNpkb7ghi5aMZvk8ggZZQ3GkJpJU0R
 GJHq4FUmrWmKvK5xjg7hJsq2BbfTjGs8WJz5HtaO0oDfRRAWkopgBEctt
 yWW3fC3YsYifpP41Gpgaxbn+ITQvrYhCVqiyS39KB46bYtpPfv6CSMAzM
 Ba0ds/BdbN4MvCX6z4Lx5w5gTW0ciwfeVXcHDWj960uQpfH1iH+xRGStr
 /nY6sK3C7GST8EyzEu19YTj6miS4xVX1FkjwpbXqRcZU1GsmI1l0kTKA5 A==;
X-CSE-ConnectionGUID: mQqeFyhuQW+1843TzWVM+Q==
X-CSE-MsgGUID: 1k/FVtXlTHaM2q5I3HfG0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25428498"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="25428498"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:50 -0700
X-CSE-ConnectionGUID: tw9Dw0GyQiur7a7ZPVzcUQ==
X-CSE-MsgGUID: gq79OUCYRI6UAU8VmTTKOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="99678245"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] Use num of pipes in joiner helpers
Date: Mon, 16 Sep 2024 15:58:32 +0530
Message-ID: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
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

Currently few joiner helpers pass joiner flag to represent if bigjoiner
is used. To scale this for ultrajoiner, enhance these helpers to use num
of pipes instead of joiner flag. This new approach is adaptable to various
joiner configurations with 1 (no joiner), 2 (big joiner) and forthcoming 4
(ultrajoiner) pipes.

This patch series is a spin off from original series for ultrajoiner
basic functionality [1]. Few of the preparatory patches are taken here for
review and merge before the other core patches of the series.

[1] https://patchwork.freedesktop.org/series/133800/

Rev2:
-Use intel_crtc_num_joined_pipes early (Ville)
Rev3:
-Rebase

Ankit Nautiyal (4):
  drm/i915/display: Simplify intel_joiner_num_pipes and its usage
  drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
  drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
  drm/i915/display: Use joined pipes in dsc helpers for slices, bpp

 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++-----
 drivers/gpu/drm/i915/display/intel_display.h |  3 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 42 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h      |  7 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 20 +++++++---
 drivers/gpu/drm/i915/display/intel_dsi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  2 +-
 7 files changed, 59 insertions(+), 39 deletions(-)

-- 
2.45.2

