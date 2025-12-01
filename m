Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474BAC96FD6
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 723D810E37C;
	Mon,  1 Dec 2025 11:33:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PtQ/q4PM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E992E10E37C;
 Mon,  1 Dec 2025 11:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764588782; x=1796124782;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NvjGjD4FWdtSoEh0Qdt6CsRC+q1rY6PIR1VhOg2kNI8=;
 b=PtQ/q4PMDNW+nWrS2JPkfckkMj5FDO4/BwPbu932Q+8Q17PQuGczVleH
 aIaQ6slpGurb+Pjl8PWh5OMAf92U2Vng6ONXDiicj9v7JA5g1PsKrQxau
 57I3B4zrN5HuZ1WCSqL8ed9qVo9H8ZTvGXdms49XwUyFPtd9F5F9/bOYo
 KMDK+qYduOTieUgKUUAuNXKOjLc9lp1m69aHxxm23KPHnlMe4t9CmrmRj
 KW1sCMkV6VdG2gnhG/N4vM0bTN64eQ8TpG5z9kFz7xOPUJ8BeN2WuVNdZ
 9pu7iFLQUdIbFcD0I3Vu63UU0tQ9nqYxAMNfp6Z57i8vsFkzOe1iNmEc9 w==;
X-CSE-ConnectionGUID: EW/1yXaRTiCkKi4/8+QKfA==
X-CSE-MsgGUID: Afo51QEuS9WJR9OkRL9oCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66558460"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66558460"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:01 -0800
X-CSE-ConnectionGUID: c6j3S+kZSyGG+6AqiAmE4g==
X-CSE-MsgGUID: cD3O4oRGRrK/JQN9sp6wKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="198251887"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.122])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:00 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/3] Selective Fetch and async flip
Date: Mon,  1 Dec 2025 13:32:45 +0200
Message-ID: <20251201113248.617347-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

This patch set contains fixes for Selective Fetch async flip
sequences. On async flip selective fetch is choosing full ftrame
update. Also subsequent flip/update is still using full frame update
to ensure plane with pending async flip is not taken in to selective
fetch/update.

Jouni Högander (3):
  drm/i915/psr: Set plane id bit in crtc_state->async_flip_planes for
    PSR
  drm/i915/psr: Perform full frame update on async flip
  drm/i915/psr: Allow async flip when Selective Fetch enabled

 drivers/gpu/drm/i915/display/intel_display.c |  8 ---
 drivers/gpu/drm/i915/display/intel_plane.c   | 10 ++-
 drivers/gpu/drm/i915/display/intel_psr.c     | 72 +++++++++++---------
 3 files changed, 49 insertions(+), 41 deletions(-)

-- 
2.43.0

