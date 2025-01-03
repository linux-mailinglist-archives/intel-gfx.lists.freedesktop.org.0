Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB3BA00D01
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 18:42:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738AD10E909;
	Fri,  3 Jan 2025 17:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hqpFvNou";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6901310E200;
 Fri,  3 Jan 2025 17:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735926159; x=1767462159;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TzndbCoXqi/tRMOTfIovkuL+KQnexO0ilFSqMthJFiQ=;
 b=hqpFvNouQ1k2bho2+IVL0w+8/+VNm5tDrA9QaAdRWxBuDSZyik1Us0/m
 dPCxFKmWYMy6T0lHlIESEPbZZr0+o98ig2eN9oBVxLjVAS84tXZO/O9rF
 zV7NQG1HLy7xhlQ8QfqFnElkNLK40diInf08F5VcB64Plyv4EG5D38gat
 SPNPbeTfqwZGLDICI+ppwR5IsbKoNvOHt+PDYKrLafvWSJfQEoseUXr+8
 H9x0oaVTH+EX5vLl7/ZAAvGSUxhylRZrtrPsoSjsV1ffk3RiuHL7ZWCcJ
 bjnur32IkZ1lD1Y1Ax6j2Xar9z+a/J4eY5P5NMAWWCyGoYEu4LPdk3QNx g==;
X-CSE-ConnectionGUID: MyF7WPXVReKh2x+xjHl61g==
X-CSE-MsgGUID: I6iOL3unRcmd/n5AYmNmeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36326345"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36326345"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 09:42:37 -0800
X-CSE-ConnectionGUID: 6y8F0yz5Qaa37se3EgCzMw==
X-CSE-MsgGUID: hOuO83SkRLm4gsNlE0glxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102709604"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 09:42:36 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915/dmc_wl: Track pipe interrupt registers
Date: Fri,  3 Jan 2025 14:41:34 -0300
Message-ID: <20250103174223.58140-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
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

Pipe interrupt registers live in their respective pipes' power wells,
which are below PG0. That means that they must also be tracked as
registers that are powered-off during dynamic DC states.

For that, we first convert the display IRQ code to use display-specific
MMIO functions so that DMC wakelock checks are properly done and then
add the range for pipe interrupts in the table checked by the DMC
wakelock code.

This series fixes vblank timeouts that were happening due to PIPE
interrupt registers being accessed without the DMC wakelock.

Gustavo Sousa (3):
  drm/i915/display: Use display MMIO functions in intel_display_irq.c
  drm/i915/display: Wrap IRQ-specific uncore functions
  drm/i915/dmc_wl: Track pipe interrupt registers

 drivers/gpu/drm/i915/display/intel_de.h       |  43 +++
 .../gpu/drm/i915/display/intel_display_irq.c  | 307 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   1 +
 3 files changed, 205 insertions(+), 146 deletions(-)

-- 
2.47.1

