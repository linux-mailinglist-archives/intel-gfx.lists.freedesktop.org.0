Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FA5AFB193
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 12:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F019A10E43F;
	Mon,  7 Jul 2025 10:47:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3/1ajv9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41EEF10E43C;
 Mon,  7 Jul 2025 10:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751885266; x=1783421266;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lPs+i7HwWN0cxJjpAExa2+Qm2Qr7xThGm4xBw6gKak8=;
 b=S3/1ajv9EJdOlvDidIq+TC5Hs8lVDTEDw+mKHUUqo+LhXhkz6WTXwL2j
 NWTLsH0AXEm7KDfDx5AWfRe6Yv+8M8/cDWMz+bRv/ozBEvLv7LZWQbsUc
 NazJCTWv+AoA/UnU3g1s3CUoew6IcNaKLvsuaISyNsK/Oo8lr0kCpABBb
 tr+vbyKvduZPF04DT3fgSmyX0N7HjdivnlEtYpUwtsXW1ACasLdJtS97M
 PKkzKTUjpMtC//wVZOLAeLVx2IZySlgZVmDZkMUt8WyEDeYGP3IKmM3eo
 ZdjPN0eZqnvTDdSyY/iErD8aJdZsFVOacdi3j2T2x4t4OU0ozX9AjVXbC A==;
X-CSE-ConnectionGUID: ikIL6+WcRMW5V72vS7fEVA==
X-CSE-MsgGUID: QBOcMJkmRcSOOR3+bdPuhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="76652650"
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="76652650"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 03:47:45 -0700
X-CSE-ConnectionGUID: byxH4RIiQQGW8/LSRVqjzA==
X-CSE-MsgGUID: mbTDMaewTwiPSew6ValJiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="159216949"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.92])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 03:47:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/2] Enable_psr kernel parameter changes
Date: Mon,  7 Jul 2025 13:47:31 +0300
Message-ID: <20250707104733.1874797-1-jouni.hogander@intel.com>
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

Currently setting enable_psr kernel parameter to != -1 is disabling
Panel Replay and Early Transport. This patch set is changing
enable_psr meaning as follows:

-1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
 0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
 1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
 2 = PSR1 : yes, PSR2 = yes, Panel Replay : no

I.e. 1 disables PSR2 and 2 disables Panel replay. 0 disables PSR/Panel
Replay completely. Enable_psr parameter doesn't impact Early Transport
anymore.

Jouni Högander (2):
  drm/i915/psr: Do not disable Early Transport when enable_psr is set
  drm/i915/psr: Do not disable Panel Replay if PSR2 is disabled

 .../drm/i915/display/intel_display_params.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 33 +++++++++----------
 2 files changed, 16 insertions(+), 20 deletions(-)

-- 
2.43.0

