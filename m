Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7915F90C314
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0583F10E0D1;
	Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ko/apCWg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC86010E102
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688655; x=1750224655;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/fcgkrfq0Gky8rvsUoFyPL7D/fZxYJucu50m0L+nQAo=;
 b=Ko/apCWgxaPvG8MBKH3i9IsPJzseC2eZh+iJkpTnp6UJeDXnZzc/OwdJ
 1wC1TfK2oYr68UsA/NpxzV1ANcMpDr7MHghY4PN9h4KUaswYr+B10cA+s
 wgtmSeKvue/HyNzsUJnq8HGb5c5lnjO7mnoz4LDtlHkIyg8Y9oyE5yLoF
 jKw4caHvX7EyWeClYr8EzVIIQ2kOa9hs3tryUC2zSmjM4EHoNK/H3vAbp
 VdyM/On7ozeJPRbq1VtaIe/7aIcv17oVNZ3PaDL+q+53hnrj1h3Zhw8Nx
 To3VqTefNlOuimslsHqmSelRXAl5zhsAzws2IdGJlm44884W9cjqDBLuP w==;
X-CSE-ConnectionGUID: gNQr++d5QfO7TIRSIpev4A==
X-CSE-MsgGUID: bvep48PQQXSij7JhSS/BpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077704"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077704"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:54 -0700
X-CSE-ConnectionGUID: uzi+L8XbSEi5N9KkkrEV4Q==
X-CSE-MsgGUID: nZR82AOFSBezJz0/P/47Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365139"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/9] Panel Replay eDP more prepare patches
Date: Tue, 18 Jun 2024 08:30:17 +0300
Message-Id: <20240618053026.3268759-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This is a subset of "Panel Replay eDP" patch set. It contains various
preparations and fixes for enabling Panel Replay eDP. These are seen
as safe to merge next and they are not yet enabling Panel Replay eDP.

This patch set is also changing how enable_psr module parameter is
used on LunarLake with eDP1.5 panel or Panel Replay capable is
connected:

enable_psr == -1 : Panel Replay and SU Region Early Transport are allowed
enable_psr != -1 : Panel Replay and SU Region Early Transport are disabled.

Also PSR2 SU Region Early Transport is allowed now by default. This is
seen as safe now as it is tested on two different panels.

Jouni Högander (9):
  drm/i915/psr: Set SU area width as pipe src width
  drm/i915/display: Wa 16021440873 is writing wrong register
  drm/i915/alpm: Fix port clock usage in AUX Less wake time calculation
  drm/i915/psr: Disable Panel Replay if PSR mode is set via module
    parameter
  drm/i915/psr: Disable PSR2 SU Region ET if enable_psr module parameter
    is set
  drm/i915/psr: Disable PSR/Panel Replay on sink side for PSR only
  drm/i915/psr: Add new debug bit to disable Panel Replay
  Revert "drm/i915/psr: Disable early transport by default"
  intel_alpm: Fix wrong offset for PORT_ALPM_* registers

 drivers/gpu/drm/i915/display/intel_alpm.c     |  8 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
 .../drm/i915/display/intel_display_params.c   |  3 +-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 78 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  6 +-
 6 files changed, 67 insertions(+), 33 deletions(-)

-- 
2.34.1

