Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AECE9F557B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:04:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8531E10E421;
	Tue, 17 Dec 2024 18:04:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IK2MH1v5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7316410E421;
 Tue, 17 Dec 2024 18:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458688; x=1765994688;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sX6vaxZwRAYerN7fLCFyBO59qL729JUjbpQJUYLZpaY=;
 b=IK2MH1v5mUjA4LzOnuCLWUZan+Iidk3qBMdLSpLU8+A0pcIsTLC9SIUc
 tBV3/z6C0J6w5OaNKRhZQxLDOYi7vh9S3UdoHEWFuSuS2A5aH7yGqUHL4
 lyyQgpO7WT9A2zw+vcCtVTkj2YCHS+c/heR/mxrZdKkyusMZ1bpinqB1C
 Oz6ZhxK1Iz+5979i+jZc2KmPlrMmHUK85yB4+d0O+fS2trp8pMG3XMfqI
 3iaff08Ib8jw5S8JGB5WSXgupna/YbIwRi+79rhrnrekudByGanR89alo
 kabn+GudVkbt02UWlPOczO/p5P2syhBBTFoIgEoEG+PQU+Zyu+b6/Fegq w==;
X-CSE-ConnectionGUID: +AHCXjZtQ1m1WwmNEwf3/Q==
X-CSE-MsgGUID: LCutMejlS5+cJM4olc3TPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38837135"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38837135"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:04:48 -0800
X-CSE-ConnectionGUID: Hxyoc++FRSifgE7x3/+KVg==
X-CSE-MsgGUID: z30M2cfURDuT0ux+mm93JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="102442762"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 17 Dec 2024 10:04:47 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [RFC v2 0/6] Check if is vblank too short
Date: Tue, 17 Dec 2024 23:37:04 +0530
Message-ID: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
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

Check if vblank is too short for scaler and dsc prefill latency.

Reference: https://patchwork.freedesktop.org/series/141203/

Mitul Golani (6):
  drm/i915/scaler: Add and compute scaling factors
  drm/i915/scaler: Add member to track scaler user
  drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
  drm/i915/scaler: Compute scling factors for pipe scaler
  drm/i915/scaler: Check if vblank is sufficient for scaler
  drm/i915/dsc: Check if dsc prefill sufficient for vblank

 .../drm/i915/display/intel_display_types.h    |  9 ++++
 drivers/gpu/drm/i915/display/skl_scaler.c     | 43 +++++++++++++++++--
 drivers/gpu/drm/i915/display/skl_watermark.c  | 42 ++++++++++++++++++
 3 files changed, 90 insertions(+), 4 deletions(-)

-- 
2.46.0

