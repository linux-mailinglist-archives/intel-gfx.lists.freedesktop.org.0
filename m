Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680CBB33CD1
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 12:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0546310E42D;
	Mon, 25 Aug 2025 10:31:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i+W/jVoC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4161810E42B;
 Mon, 25 Aug 2025 10:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756117912; x=1787653912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DiGwC6PAJYXK92mUwGJM0Bsf3FJJhuHsTg2VcGIrwts=;
 b=i+W/jVoCzhjM15RNf28Ni4vVzb/3a4NRrbhRjL1HHDWcamdSXFS4/8cA
 1CQzYtlGAFrso/3MHiOHgan5SfK6u3nQ1TId6tdHVj86Vyqgsjzbm9qC1
 MwBPlQf1B6UHeLIBFhhYkn4YLpC0kU3jiNwtP11+UF8nDirpJMCYc2mab
 t/KaKKLH0DpTsnzJkvMPI+VlmOlBnwo5fwct3/qgWeDqhg545+h1zedOD
 VBgYasqktereReJkcWeaYHlvY+Q6tBhCxTyRN4qloDODmOP9vvvKr+hoT
 QWwOMUdwss829xtfmgEAZ+oUwfEy1mcYHCobHWn2cCqw0RfMUFPDqIojg A==;
X-CSE-ConnectionGUID: 3zS8RnI0SuOFHcHhLkx/HQ==
X-CSE-MsgGUID: ZbckfR1YScaJaMAk6DI9gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="69700869"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="69700869"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 03:31:52 -0700
X-CSE-ConnectionGUID: rdyq32J5T9+3mvnNaP5PaA==
X-CSE-MsgGUID: f8NcI4P3Ta2l27c4ZEX0/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="170091118"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP; 25 Aug 2025 03:31:51 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v7 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Mon, 25 Aug 2025 12:33:30 +0200
Message-ID: <20250825103332.885420-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

Next version of v6 [1]. Previous version wasn't properly rebased, so CI
haven't picked up the patch. Took into consideration review from Jouni
[2].

[1] https://lore.kernel.org/intel-gfx/20250822232321.657000-1-michal.grzelak@intel.com
[2] https://lore.kernel.org/intel-gfx/3e4f40d5310b2fd4169f6befde7f7a7e611a4e09.camel@intel.com

Test-with: 20250703140451.491593-2-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
v6->v7
- rebase onto new drm-tip

v5->v6
- move setting no_psr_reason to intel_psr_post_plane_update [Jouni]
- remove setting no_psr_reason when disabling PSR is temporary [Jouni]

v4->v5
- fix indentation errors from checkpatch

v3->v4
- change format of logging workaround #1136

v2->v3
- change reason description to be more specific [Mika]
- remove BSpecs number & WA number from being written into no_psr_reason
- replace spaces with tabs
- provide correct Test-with tag to the IGT patch, instead of series

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 31 ++++++++++---------
 2 files changed, 19 insertions(+), 14 deletions(-)

-- 
2.45.2

