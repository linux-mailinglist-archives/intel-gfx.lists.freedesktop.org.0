Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6D4A02E53
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 17:54:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5387910E22E;
	Mon,  6 Jan 2025 16:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KTpK5L5t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA1710E22E;
 Mon,  6 Jan 2025 16:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736182472; x=1767718472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9XBS2j8tmZEGMOBKgnXDGT+OlOx6Z4fpaNsrmJUiuZ0=;
 b=KTpK5L5t+Yv4f2R9RmekFxaqDziN4HLJowgpgAo50Zj0tHhUfojLokoa
 WpcmYZDkf6IzlEJm9jlRW5VpD7jO9QR4m2wH7hcPzdLYG6gw32nzUZAyc
 YtTTxfbwk0wfKylckCVVcAnuL9bQkQckCkwGRGu3bykYwYqQyn7ht8kGw
 BXzV0LYCTwSlS8WkJBNDVVYuox3zVjjpcOICK1X44gH6o6QOi+GuVgjem
 GXTwa7qNnnkeCKwX1uqSbdyVLJJHFnchneE8HnRr7MeMtr7VeM1LMRaxT
 Nr8XZDIJfEbGf+oKocNsBFcVaErGZ5zq82MJTsRH4i2KxzmSCVMiz8/uz w==;
X-CSE-ConnectionGUID: DDq8ny47Sa2DxmixYF8gAw==
X-CSE-MsgGUID: D3XRRnnJS8ace4rM1JbP+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53880870"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="53880870"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 08:54:31 -0800
X-CSE-ConnectionGUID: bijEknT5Qva06J8Np69ImQ==
X-CSE-MsgGUID: iA9PZnsLTK+v9eLCKXpPXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133408722"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa001.fm.intel.com with ESMTP; 06 Jan 2025 08:54:30 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v3 0/5] Check Scaler and DSC Prefill Latency Against Vblank
Date: Mon,  6 Jan 2025 22:21:06 +0530
Message-ID: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute and check if dsc and scaler prefill latency is sufficient with
respect to vblank.

Previous Revision Reference:
https://patchwork.freedesktop.org/series/141203/
https://patchwork.freedesktop.org/series/142745/

Mitul Golani (5):
  drm/i915/scaler: Add and compute scaling factors
  drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
  drm/i915/scaler: Compute scaling factors for pipe scaler
  drm/i915/scaler: Check if vblank is sufficient for scaler
  drm/i915/dsc: Check if dsc prefill sufficient for vblank

 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 41 +++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 56 +++++++++++++++++++
 3 files changed, 91 insertions(+), 8 deletions(-)

-- 
2.46.0

