Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4249C511E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:48:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CFE10E02B;
	Tue, 12 Nov 2024 08:48:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3/bLT4N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E922D10E02B;
 Tue, 12 Nov 2024 08:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401321; x=1762937321;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HSohe3ogQSNAg8DC0AlMgC2PzWjjc/m2ZZFQWZ+EIic=;
 b=H3/bLT4NdqZWRH0MQtkU0G+/biWLieu6cUe0UkNBGvoov+Jd7RRCHbAW
 Co/jI+U4yLXS2a91OTlsdWMAQ52fey3TzRof7+NNZ25ud8XM4OLEj5KOT
 xZGN6BYbiXXPY4qovdd+eNtmbhgdwLXOTlCsgTsloLeKZ+L0MZ65ui0ie
 sLMwy4h5lHIEzh/8ZxQA/M0xm3uTXDWkguGpU4ubxd+CO6DRCd1gWCjKn
 OO/2NLinXOFokRZYkEmP70I1teT726cz/sDyQ9HiAo2dujIBICsAzgX/y
 VOrztwhTQYjR3LL4wLEBaqxlM732HgyjaKRu+f61jeP8REybpttGOWkNJ Q==;
X-CSE-ConnectionGUID: fdBsr7m9RPWHPpBEMJ+xBA==
X-CSE-MsgGUID: hXpcZ4EBRpC41qFvEPh/Zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="18835727"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="18835727"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:48:40 -0800
X-CSE-ConnectionGUID: mJrOsRE3Q/C6Hyxk842Chw==
X-CSE-MsgGUID: Vzx6VLxsS0WEyztmhq3dTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87759848"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa009.fm.intel.com with ESMTP; 12 Nov 2024 00:48:40 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [RFC v1 0/4] Update VRR guardband for HRR panel
Date: Tue, 12 Nov 2024 14:20:35 +0530
Message-ID: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute guardband based on enabled feature latency.

Mitul Golani (4):
  drm/i915/scaler: Calculate scaler prefill latency
  drm/i915/watermark: Add WM0 prefill latency
  drm/i915/psr: Add latency for PSR
  display/vrr: Update guardband based on enabled latency

 drivers/gpu/drm/i915/display/intel_psr.c     | 23 ++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h     |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 18 ++++++++-
 drivers/gpu/drm/i915/display/skl_scaler.c    | 39 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c | 21 +++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 7 files changed, 102 insertions(+), 2 deletions(-)

-- 
2.46.0

