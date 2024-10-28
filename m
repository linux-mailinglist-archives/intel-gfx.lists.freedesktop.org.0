Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EC39B2907
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 08:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA58910E35A;
	Mon, 28 Oct 2024 07:43:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4XZiXnh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7045D10E203;
 Mon, 28 Oct 2024 07:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730101431; x=1761637431;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g3p4IaOGfTWr/N3pTSv+Mte8JoUH+ruszxwFpDw9duk=;
 b=K4XZiXnh704S227hA9KDsatQvh0U5qyupjRVPh/49ZQvfD2KhbqKWnon
 owcPvI9O00N8BwfQunGUK6+ZNIiY43rbJu0or7OVWGTz3/CBfAUIlMMKh
 GmytDpHIQqFL4++aFxLyglngak5EkeLyxlys5shKRjJrYChqY2xMARTY/
 tpMDDTn6rnFc6Ji7yLMY/3QXMcdbQ7fqoHQRx3BJv2EtYl/V3Cw/8fS/V
 wpsy1Mb/cm9j2WL7y8NhQo04hhXKYaYYvucUGwJGeeBw9g3e4wz+zHeS/
 fNklrZPgT8gLwjzxuT0dowdjG2Z6JUmtAw3JBXP2QeKPC0VYgELVBUFCJ A==;
X-CSE-ConnectionGUID: B7f4HGKMQS6v9Z+KmeSmSw==
X-CSE-MsgGUID: nj6K4CAGSnKccRHhM9L5Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29799360"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="29799360"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 00:43:51 -0700
X-CSE-ConnectionGUID: l3phg3ElRZWsTq636ya/FQ==
X-CSE-MsgGUID: 7mQBzRGXR5i+/DNMxBJmaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81643538"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 28 Oct 2024 00:43:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/5] Add 6k resolution support for a single CRTC
Date: Mon, 28 Oct 2024 13:13:30 +0530
Message-Id: <20241028074333.182041-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (3):
  drm/i915/xe3lpd: Increase resolution for plane to support 6k
  drm/i915/psr: Change psr size limits check
  drm/i914/xe3lpd: Increase bigjoiner limitations

 drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c          |  5 ++++-
 drivers/gpu/drm/i915/display/intel_psr.c         |  4 ++--
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
 4 files changed, 25 insertions(+), 5 deletions(-)

-- 
2.34.1

