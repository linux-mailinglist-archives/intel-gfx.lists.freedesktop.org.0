Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E44915157
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 17:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512A210E09D;
	Mon, 24 Jun 2024 15:05:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBIoNDPw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F5E110E09D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 15:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719241542; x=1750777542;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w47OfH38/ehAhOljs8lNi0RYq/P1oo60Vaz1/8DjHm8=;
 b=nBIoNDPw5Zd9xBRelbpBqlnB7LSeU4Gl0siqjHu42beNt+bolsbcUctN
 BaxNTYNmTKeal0Vu0pMZFOMAYKQOFV71hAD0SePsWbnTXOMib8Jyf71Hc
 JaIW8Ij6RrIBY5rhzvYd6GluwQywkZx+N5PH8vlscGcvxcY7diFntvguZ
 JpjjCtqIlrZ7f/PkXPaVZ8nVRLfHgzkJ4980QDI4bVWFi4F0PN17nRpw9
 fa64GHag1ElwvOS1fvKHYkFtppFdiBMlEnR+eeRQIK+xhu544ke16wzsz
 8omDHARzQa3c2aLIx4Q1cXqcxBlWFV8q8G77mGGbeJ1YQMKPMgfUUyuL7 Q==;
X-CSE-ConnectionGUID: C9t+oB2rR9CIH+DuChhJSQ==
X-CSE-MsgGUID: 8xL8deP9SXG4Q3jnL2+CSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="19117840"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="19117840"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:05:41 -0700
X-CSE-ConnectionGUID: lx4iNyVnQ0u2ZKNFx+tZ7Q==
X-CSE-MsgGUID: AFMRPYu8Shqy/BALkHczyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43298464"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 08:05:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 18:05:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915: Enable CCS+10bpc and CCS+async flips
Date: Mon, 24 Jun 2024 18:05:33 +0300
Message-ID: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add support for compressed 10bpc scanout, and async flips
with render compression.

Ville Syrjälä (5):
  drm/i915: Disable compression tricks on JSL
  drm/i915: Expose CCS for 10bpc RGB formats on TGL+
  drm/i915: Enable 10bpc + CCS on ICL
  drm/i915: Allow async flips with render compression on TGL+
  drm/i915: Allow async flips with CCS on ICL

 drivers/gpu/drm/i915/display/intel_display.c  | 35 +++++++-
 drivers/gpu/drm/i915/display/intel_fb.c       | 44 +++++++++
 .../drm/i915/display/skl_universal_plane.c    | 90 ++++++++++++++++---
 .../drm/i915/display/skl_universal_plane.h    |  3 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  9 ++
 6 files changed, 169 insertions(+), 13 deletions(-)

-- 
2.44.2

