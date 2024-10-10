Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C62C997B97
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9AB810E846;
	Thu, 10 Oct 2024 04:03:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jpFfzVe3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55AC110E846
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 04:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533009; x=1760069009;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r+1OWgRWA+MzqOeW7cRVZ7Iz0eADDmQlXK1HPZEk4JA=;
 b=jpFfzVe3mhxXHo1/8N51EHdKthrgAbqD17ZtxArqfro7a5i8dttQYE09
 t4oBH5GwS3sLWaqjQhyWl3E1LO0IFQxRQwP2J17OV4fn0zcdXwgf8mW9x
 1wWJRPmlExjBigsqhNi5viPK5/hid5ceE1UMvb3m1Z91x8yybUvX294tr
 0fIhMxzrVsR2h9q2h3RLLFBpktZ5dBdYocxw0jckX1NS638dbHdXFuxh+
 +c7YE+5XVa8g4iU+elqzPOLtITl83DfhfFqSjnDmVySinbLY+ZYb2DBSt
 c4MYR3n3L9I53xU6fsk/fXF8vZW0SiW8RPAzYf5MphnmOpy+vOhp94zo6 g==;
X-CSE-ConnectionGUID: wtlfIe9zQgKDvWMtjySGkA==
X-CSE-MsgGUID: X9zCrjfYR1yqitl3Cvu82A==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38454076"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="38454076"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:03:28 -0700
X-CSE-ConnectionGUID: M8zQ9fMVTcetjAF/Bvi6fg==
X-CSE-MsgGUID: FtnMXcBHSquHAjWp+N+0ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="107301278"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 09 Oct 2024 21:03:27 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com, animesh.manna@intel.com
Subject: [PATCH v14 0/3] Vrr refactoring and panel replay workaround
Date: Thu, 10 Oct 2024 09:35:00 +0530
Message-ID: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
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

Refactor VRR compute config to account for Panel replay workaround
for VSC SDP.

Previous Patch series links:
https://patchwork.freedesktop.org/series/135629/
https://patchwork.freedesktop.org/series/135851/
https://patchwork.freedesktop.org/series/138232/

Animesh Manna (2):
  drm/i915/vrr: Split vrr-compute-config in two phases
  drm/i915/panelreplay: Panel replay workaround with VRR

Mitul Golani (1):
  drm/i915/vrr: Add helper to check if vrr possible

 drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 20 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 3 files changed, 35 insertions(+), 5 deletions(-)

-- 
2.46.0

