Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FA5AE02A6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 12:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D9010E025;
	Thu, 19 Jun 2025 10:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hvp8/WlE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062CD10E025;
 Thu, 19 Jun 2025 10:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750328918; x=1781864918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BFqTc7cvHnF0bv2LY0TEOPa1mTSOk4c1YKMXsLuaw1E=;
 b=Hvp8/WlEOl8fQNN3ZczHbwOTBAhpNtjCaIdo4o9SNEMWhtmpiaqPcQ2+
 j5qdry2oiVCWkxQ61wzlWPCbwb+dfPeOSZC++agC14L8tVYk8WfHxLGAn
 YkxmKafIqksUm2AOgA+WMSFyAQrRKNSP64o/ABr1QSnPXVj6TnyUjC50f
 czLp2FuV+CpuEOSVjzJNazuaoBU1+9zB1TdmTDYq9nQvvmlPssG/oJJkJ
 MhKfVXDngDwe83PTtkMCuSswBhYps+eIbDy43BvYt8OjU7RQLykN37IaN
 m3oYtk3ll9VGzuaO2JAANw8GnCXIhgT88Cy/5yZQiJ9BxogqM2Szu662t g==;
X-CSE-ConnectionGUID: mfldzMEvSHuFq7lzD7gvcQ==
X-CSE-MsgGUID: 72t2ke8qRd+BLx2f7R+vSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63939559"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="63939559"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 03:28:37 -0700
X-CSE-ConnectionGUID: PVW59IoTR7uLkWiq8HqW+w==
X-CSE-MsgGUID: xRMRlUa+SfGt2QZVm0PVAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="154986358"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 19 Jun 2025 03:28:36 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Changes in hdcp2_stream_encryption 
Date: Thu, 19 Jun 2025 15:58:02 +0530
Message-Id: <20250619102804.3377807-1-suraj.kandpal@intel.com>
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

Contains changes in hdcp2_stream_encryption where we remove the
intel_de_read from the WARN_ON function also we move to using 
HDCP2_STREAM_STATUS for our WARN_ON for platforms PTL and above.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Do not use inline intel_de_read
  drm/i915/hdcp: Use HDCP2_STREAM_STATUS instead of HDCP2_AUTH_STREAM

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 22 ++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

-- 
2.34.1

