Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA479ADAB8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 05:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7114710E897;
	Thu, 24 Oct 2024 03:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ajue6Dot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4150310E155;
 Thu, 24 Oct 2024 03:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729742170; x=1761278170;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IuwiDkhTa0ZAcaeJz1TnpDpvvRuHZA8RkS7gr+td2KQ=;
 b=Ajue6Dot2dRSHw+jevp6r/c81lwB9dKdZeVj6bvsx+EU6fTFe/r6X1EC
 uj8RZaGvWqYMMZQIaxMrL0+xSRHMQ1FerlUii19ZGgyZ31n19f7EJMPoP
 2+jXw2WPo65B8hAhmZmWBzA3V/Iov3lURUhLjZfnQkZ6zplvN2N5Y0gJH
 g6U8YikrtAwGmx6b9YAq3JT6Sw5LwJRo71pqeKlaX4oUOahcbvf64lGPd
 MmrhJgaFdg2eKS++DsvVbl5n7QnIxTcG8fzWG2bUQ1wFgLkzO3wb8qtcK
 5Odvm8FdbuhAbugVjE9gf9ByvXaEb+u2xqV06q8vsr/Pl+tmdNYxKuVU+ w==;
X-CSE-ConnectionGUID: jPgMQE2WR7CCaLE0GJztcg==
X-CSE-MsgGUID: cXktECA/QJmR6QHeSvVDtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28818507"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="28818507"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 20:56:09 -0700
X-CSE-ConnectionGUID: Yt/6XuvLRPuM5ipKwDPGYA==
X-CSE-MsgGUID: sKmm/rpaSZSyP2yZTf/7EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80128103"
Received: from linux-lunar-lake-client-platform.iind.intel.com
 ([10.227.88.172])
 by fmviesa007.fm.intel.com with ESMTP; 23 Oct 2024 20:56:07 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/4] Add 6k resolution support for a single CRTC
Date: Thu, 24 Oct 2024 09:25:48 +0530
Message-Id: <20241024035552.94363-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (4):
  drm/i915/xe3lpd: Increase resolution for plane to support 6k
  drm/i915/xe3lpd: Increase max_h max_v for PSR
  drm/i914/xe3lpd: Increase bigjoiner limitations
  drm/i915/xe3lpd: Prune modes for YUV420

 drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c          | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.c         |  6 +++++-
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
 4 files changed, 34 insertions(+), 4 deletions(-)

-- 
2.34.1

