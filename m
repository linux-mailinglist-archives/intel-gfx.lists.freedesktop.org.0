Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9924C837C1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 07:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7297810E295;
	Tue, 25 Nov 2025 06:33:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RvcvxHHC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9691910E16E;
 Tue, 25 Nov 2025 06:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764052386; x=1795588386;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9BQ9T9FBc9/lco2pNEIHV6ohQIc+dn0ZN1UvoJR3Bsg=;
 b=RvcvxHHCV/nhQ4/wwrTQnwtpNY7Oek55a2CaJB83I0DvQ0TJtESJcLw4
 DksuSbEKQ8uQG2B9RHvzDOFViXSIyL2lwTjj4oSAuqgI390PbXVhS+E1a
 bjm87t7wVQCxAl2MGjZisPx0mhy1IQYn1xh3bKLMYkLszAERQedG+p9aw
 CAiroPFDXUjc0lSz37KcJSCLOToed0VPot5QXvESbE5GuLvM/bkZQvBfM
 nkfZ3VuRMKH5yV8N2evw7nEEA6dW6ex4sgl+gXYYIboBX2sxgv8AOGZXg
 XmYqwHEkSlq4TvcMCAKJwCVvc6VOEikE4VWj8YEsTYmFAwO23YGHipgKg w==;
X-CSE-ConnectionGUID: n1FIle+AQmOzBzN4u9fYIw==
X-CSE-MsgGUID: wIR5VNIBQuC7tJcA3ru20A==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68652126"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="68652126"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:06 -0800
X-CSE-ConnectionGUID: z2w0EONfSC+RNjkEH6SddQ==
X-CSE-MsgGUID: 8DZA9cpKR6i/Ug4mZXUChw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="192991778"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.198])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:33:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/4] Selective Fetch and async flip
Date: Tue, 25 Nov 2025 08:32:49 +0200
Message-ID: <20251125063253.328023-1-jouni.hogander@intel.com>
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

This patch set contains fixes for Selective Fetch async flip sequence:

Perform full frame update on async flip.
Perfrom vblank evasion on async flip when Selective Fetch enabled.
Allow async flip when Selective Fetch is enabled.

Jouni Högander (4):
  drm/i915/psr: Add helper for checking if vblank evasion is needed by
    PSR
  drm/i915/psr: Perform vblank evasion on async flip as well for PSR
  drm/i915/psr: Perform full frame update on async flip
  drm/i915/psr: Allow async flip when Selective Fetch enabled

 drivers/gpu/drm/i915/display/intel_crtc.c    |  6 ++++--
 drivers/gpu/drm/i915/display/intel_display.c |  8 --------
 drivers/gpu/drm/i915/display/intel_psr.c     | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h     |  1 +
 4 files changed, 22 insertions(+), 11 deletions(-)

-- 
2.43.0

