Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDAEA0C2B1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 21:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836B210E025;
	Mon, 13 Jan 2025 20:43:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gv0qMvDm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4899E10E039;
 Mon, 13 Jan 2025 20:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736801023; x=1768337023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PRbZK/gKcPhA2sgqvdwYhiQUgtOT9LNXAZKBClGf9DE=;
 b=gv0qMvDmSSyq1gDvs+qn8FJfQFAHMdFb5P9+/bkDsAy135Zj0UUHPu5N
 7e3zy6laJjHpki+Y1WwF4QF6hlg5lj/t9ezLGt7hq6I8e5+6nXGp51Sm7
 AWMcWZVziyLLITokd4YKGjeBHktnDUCLSg0YdbskJl65+OmBU7fwi6Ven
 x7zvhpvdCJu/jeuM4Bl2AggMzuuZ6vdWM8fBoWRAAxa1Pghqh1Mi23/+E
 jCdSqVf4G2m1KK9uwJOTLDJUZF4P/QEOWBws7WE44ROJhqUbkt4mff5uV
 PbIrVnEUpS/1yKrxQAGmr9ALkuJzOGbxrv4xvD7yw/UbIoJa3vcanw541 g==;
X-CSE-ConnectionGUID: IOtFH8kbQGW5t7tBAOqh9g==
X-CSE-MsgGUID: Wyd7ocevTFieBzPoXw//PQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="54627147"
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="54627147"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:43:42 -0800
X-CSE-ConnectionGUID: +fb2TUrxR12neSGHJ454Ng==
X-CSE-MsgGUID: bhGh50bDTCSJPcY1iTaAEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="135417645"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.25])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:43:40 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/3] drm/i915/dmc_wl: Track pipe interrupt registers
Date: Mon, 13 Jan 2025 17:38:55 -0300
Message-ID: <20250113204306.112266-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
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

Pipe interrupt registers live in their respective pipes' power wells,
which are below PG0. That means that they must also be tracked as
registers that are powered-off during dynamic DC states.

For that, we first convert the display IRQ code to use display-specific
MMIO functions so that DMC wakelock checks are properly done and then
add the range for pipe interrupts in the table checked by the DMC
wakelock code.

This series fixes vblank timeouts that were happening due to PIPE
interrupt registers being accessed without the DMC wakelock.

v2:
 - Change "drm/i915/display: Wrap IRQ-specific uncore functions" to have
   the wrappers as static functions inside intel_display_irq.c.

Gustavo Sousa (3):
  drm/i915/display: Use display MMIO functions in intel_display_irq.c
  drm/i915/display: Wrap IRQ-specific uncore functions
  drm/i915/dmc_wl: Track pipe interrupt registers

 .../gpu/drm/i915/display/intel_display_irq.c  | 350 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   1 +
 2 files changed, 205 insertions(+), 146 deletions(-)

-- 
2.48.0

