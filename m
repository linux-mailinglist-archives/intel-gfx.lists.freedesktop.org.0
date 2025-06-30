Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99F0AED427
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 07:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020E910E38E;
	Mon, 30 Jun 2025 05:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0A+ddw0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD0E510E0C1;
 Mon, 30 Jun 2025 05:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751263195; x=1782799195;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i7wMcgAikC9D9B73FlZJdyAHKFoUUdBAuEAGNqR7Q6c=;
 b=C0A+ddw0Olo1D5oK+xBo6X+ZESPfszgtzDmRfovvrCmr15fKPG0siGwR
 tV/h9HsAHDaLrr7TEH2D4tb4Ri5wB9KEbC4+WGVkvsl0jII7KcGmd8LUi
 Ahn8gbKEyOcE1wwJL4qjIOhKz9ELJJN3hFTDyqt7vEefYdi3lpsPkfYZo
 17K2QvPlaT7ijc1GXEwI/Q44n137tfNrpWCOhY6BWZr5WHxxMtwFNC1SA
 PkvtR9sfqc/hdhCToRQML1vk1APW8OD5UswUfwrYc+5PSe0Bwiav033Pp
 YRu5vqs7b42hKiU73UFvllbBrqUb9XKbo+qFcNiZ6uV4fugyNMhDsRvEy Q==;
X-CSE-ConnectionGUID: /NpkCKYjRXueugpAu8MLwQ==
X-CSE-MsgGUID: Gak6pVBGSgqt/COWgFiG0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11479"; a="52709240"
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="52709240"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 22:59:54 -0700
X-CSE-ConnectionGUID: YSmX4QmeQBu5V9ivYdPAhA==
X-CSE-MsgGUID: VEjAp9TlTLm/+o0/YxXwOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="153459090"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 22:59:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, gustavo.sousa@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Introduce helper for display workarounds and add
 Wa_16025573575
Date: Mon, 30 Jun 2025 11:19:16 +0530
Message-ID: <20250630054918.2823537-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

This series introduces a generic infrastructure for querying display
workarounds. The goal is to simplify WA checks, avoid open-coded conditions,
and make it easier to extend support for future workarounds.

Patch 1 introduces the base infrastructure using an enum and a central
helper function. It also migrates Wa_16023588340 to use this new interface.

Patch 2 adds support for Wa_16025573575, which applies to PTL platforms
and requires preserving additional GPIO bits in GMBUS.

The series is in response to the suggestions to unify workaround handling
and allowing future automation or generation of WA logic in [1].

[1] https://lore.kernel.org/intel-gfx/7f079861f91861e9e895240cd3272f6e29deab7e@intel.com/

Ankit Nautiyal (2):
  drm/i915/display_wa: Add helpers to check wa
  drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing

 .../gpu/drm/i915/display/intel_display_wa.c   | 20 +++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   | 11 ++++++
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
 4 files changed, 64 insertions(+), 3 deletions(-)

-- 
2.45.2

