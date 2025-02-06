Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A7CA29FD0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 05:54:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E99910E168;
	Thu,  6 Feb 2025 04:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMGINzSG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A602810E062;
 Thu,  6 Feb 2025 04:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738817581; x=1770353581;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cFpRgeQgM8YTB6NxFmJNL2QqWKtEmHDpWI36Mg8ms3A=;
 b=DMGINzSGY71wNeUjKsks8N1MyDy1edtJhtDw9FyyZf9KceNwSOCK/tRf
 Bphnulu36uEEe4Rt1OSU4agarv5wJz2Y9PqrhIOxbL19VjXaPhUmjSNLU
 HVBa7SFlePZ32EVAn/18XpBCHS0f5viFQHXuCiM3uECbXMv/j0esUbwDe
 quL1fVV9rq+2KC1zkdFpoOUYjlRcyIVhiVoBpyJX2X/RKiK6QhgRYJMWO
 2sg95H4HzLNCUg/S4PRvpsh9v+3W3zN5e46ky/UButjoyhcW4jGkXxoq7
 RpPtA4AYjpmLrZkZL3gePhhkHpTFHTkejzHCIEUFFQfNunlCWaAkk85b/ g==;
X-CSE-ConnectionGUID: ZNZbDWujTI6lESdXQQUsnw==
X-CSE-MsgGUID: coGk4V0bSh2DSB8nCgicwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39677252"
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="39677252"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 20:53:00 -0800
X-CSE-ConnectionGUID: WhJqXO6/T5GV0+5HEg6OWw==
X-CSE-MsgGUID: xWSW34cVQv+zTKBYfF7K6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="116091783"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa004.jf.intel.com with ESMTP; 05 Feb 2025 20:52:58 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v3 0/2] Compute as_sdp when vrr is enabled
Date: Thu,  6 Feb 2025 10:19:59 +0530
Message-ID: <20250206045001.2919360-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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

Compute as sdp when vrr.enable is set, also Skip
infoframe.enable check to avoid full modeset during
as_sdp toggle.

Mitul Golani (2):
  drm/i915/display: Skip state checker for AS SDP infoframe enable
  Revert "drm/i915/dp: Compute as_sdp based on if vrr possible"

 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
 2 files changed, 7 insertions(+), 5 deletions(-)

-- 
2.48.1

