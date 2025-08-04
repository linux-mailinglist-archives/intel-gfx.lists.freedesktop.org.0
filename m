Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F34B19B6B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 08:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64EEB10E2D3;
	Mon,  4 Aug 2025 06:16:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U3cxHvFL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C61710E2C0;
 Mon,  4 Aug 2025 06:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754288186; x=1785824186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C2Zs7S9aTtDuAv6MTCMVMYzVWqOZQtQDEIAgYLvWaQg=;
 b=U3cxHvFLfr+XItGnvdnCJv8o13Y+GAnPffMLy/RnCVcymRDWs+ko7BIB
 xFFD5h3bJMpM7e8evjW+DYKvM8dasOakbJDpjxYq5yxHR2mRJYpS+IJs/
 lnXPdoXud/9px7cATrrtUXsFn4SDE/4soNhLUK2klwu/V0eY4C/ROuemL
 AUKUmaI/ZDsOq6DvprT3di4qTR8s1HFgtu8AvlreE3FJHhT6gf5w47qOY
 faB+dU+NQ0xsEy/Dixd/B3/d4g8ZwrW7QPd995IalwXLF1fpt21nAk4hB
 nan8vromocGfIj5k1IQ6SOmIk7Q3lJYYAawgrI4qqJ3roA1UhPKnqsovb g==;
X-CSE-ConnectionGUID: Ax7XqH15SgWq8lomO1eaZg==
X-CSE-MsgGUID: YWu5tfU+SruzhzjjvaC5Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="74127042"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="74127042"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:26 -0700
X-CSE-ConnectionGUID: JJT8il9gRl+5HNaCs4sHPg==
X-CSE-MsgGUID: zt7JWfdHRMuRTLyDu9InlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163345444"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.38])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/4] Wait PSR idle before on dsb commit
Date: Mon,  4 Aug 2025 09:16:11 +0300
Message-ID: <20250804061615.932508-1-jouni.hogander@intel.com>
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

We are currently observing crc failures after we started using dsb for PSR
updates as well. This seems to happen because PSR HW is still sending
couple of updates using old framebuffers on wake-up.

On non-dsb commit we are waiting PSR HW to idle before starting a new
commit. Fix problems with dsb commit by adding similar wait on dsb
commit as well.

Jouni Högander (4):
  drm/i915/psr: Pass intel_crtc_state instead of intel_dp in
    wait_for_idle
  drm/i915/psr: Add new define for PSR idle timeout
  drm/i915/psr: New interface adding PSR idle poll into dsb commit
  drm/i915/psr: Add poll for checking PSR is idle before starting update

 drivers/gpu/drm/i915/display/intel_display.c |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 65 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_psr.h     |  1 +
 3 files changed, 52 insertions(+), 16 deletions(-)

-- 
2.43.0

