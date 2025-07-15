Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C810B05832
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 12:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D80F10E05A;
	Tue, 15 Jul 2025 10:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L31Ae4c9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B35C710E05A;
 Tue, 15 Jul 2025 10:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752576935; x=1784112935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=46SSbm+o+7mDRhAePx12DlOJmGyGXj/8O/2bMfoV2RM=;
 b=L31Ae4c9d+uhl67X3ULqlBuGMKgNjsjDIP3+IcS9AzHXRXjecdUsaG9c
 +i1Bm2FLnFe9qLCF6OMZi/i81JMCKSr79Fld5vhSPCD2pp3y3NZ9ZLvAq
 1j/7VN5ilVpT80lN0LrgPcyRA/qEfIvMiJ7GwHXatOzxY0jg6RJWDPm9y
 bqn0g6ebyUJsDbTTvfqfq+YnGCvQk1wfhtO0juPWUSyE/VMQ8KXI8XNRO
 KNWJi20bnEyZn7/Z+HfJSbfYFC5ipLxBV7YAq1EYfJc/1Escx9yB4RjWW
 ++Hdk3jqECE6Z6rnkNzsoI5qOzCqlyuOUKsHqJ7tPCrNJBnL0CAypCr8b A==;
X-CSE-ConnectionGUID: Or5hHyxORcuV0OPOtb0Www==
X-CSE-MsgGUID: RevEwCFkT9CrhrJ9tMxuTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="58598564"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="58598564"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:34 -0700
X-CSE-ConnectionGUID: RFRvuAd7QJu6zbXI0JZGDg==
X-CSE-MsgGUID: iwOZLt/yTGu9BWdgzuL/WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="161509171"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.221])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 0/3] Enable_psr kernel parameter changes
Date: Tue, 15 Jul 2025 13:55:06 +0300
Message-ID: <20250715105509.4146806-1-jouni.hogander@intel.com>
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

Currently disabling PSR2 via enable_psr module parameter causes Panel
Replay and Early Transport being disabled as well. This patch set
makes Panel Replay and Early Transport to ignore enable_psr module
parameter. Also new enable_panel_replay module parameter is added
which recognizes following values:

-1 = Chip default
 0 = Disable Panel Replay
 1 = Enable Panel Replay

v4:
  - Ignore enable_psr completely on Panel Replay
  - Add new enable_panel_replay parameter
v3:
  - add definitions for disable bits
v2:
  - make it more clear that enable_psr is bitmask for disabling different
    PSR modes

Jouni Högander (3):
  drm/i915/psr: Do not disable Early Transport when enable_psr is set
  drm/i915/psr: Ignore enable_psr parameter on Panel Replay
  drm/i915/psr: Add enable_panel_replay module parameter

 .../drm/i915/display/intel_display_params.c   |  3 ++
 .../drm/i915/display/intel_display_params.h   |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 39 +++++--------------
 3 files changed, 13 insertions(+), 30 deletions(-)

-- 
2.43.0

