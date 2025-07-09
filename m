Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6B1AFDFBF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 08:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC3F10E727;
	Wed,  9 Jul 2025 06:02:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lkTEHcBS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D16210E724;
 Wed,  9 Jul 2025 06:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752040934; x=1783576934;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Isxdc4+agTAJHQjmLP/Ns1DHKjiVoapbp9eqGV35iVU=;
 b=lkTEHcBSNqU/Gf+G1hMjhQY3OOT+qt+dxsuHmiTGMtgBiJGCl77+KPQx
 pECyTYrXsaNbhn5DHyj2SS+Qwk6aJA2MJ3Gb4DnFD701efrA13A9SlkZ+
 4LBPmzELDviIzmOC0uiyYneyHDQuYUjWTQZLAzY2QShIO75wvDKAtru+M
 wMNGiSotY7uo73BOHPtquSHfGDbnlNH0vvktx64LQbcK+XkaCn+WZSmOQ
 HLFDBztTwC234i5B2W+lnjNnu/IpKZpcOrESoZo+6D/ht0+gaUGxgcxjy
 U4Dj0A76l2FvyJTKGCQIf/SxnR9mJHUMeoK/Czk6bWBX+S2C2Pw2d32vy g==;
X-CSE-ConnectionGUID: thh9s1dHTAeU1DsNDXAe2A==
X-CSE-MsgGUID: UNWK7cZMQvKPqfQ2SzylRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="64539051"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="64539051"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 23:02:13 -0700
X-CSE-ConnectionGUID: 8KSI8nI0TXGywvltNl/V5w==
X-CSE-MsgGUID: McS02bIUSDelxPXEstuTdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="155311799"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 23:02:11 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/1] Revert patch to reject HBR3 for all eDP panels
Date: Wed,  9 Jul 2025 11:21:41 +0530
Message-ID: <20250709055144.879393-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Revert the existing patch that rejects HBR3 for all eDP panels that
do not support TPS4. With the patch reverted, the gitlab issue#5969 [1]
will get opened again. Add a quirk to limit the rate to HBR2 for the
device mentioned in [1] and close the issue.

This series is a continuation from [2], and [3].

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
[2] https://lore.kernel.org/all/1cd154a09823abf6d34221ae9e02f9cd342cc3a3@intel.com/
[3] https://lore.kernel.org/all/87y0uzh5tz.fsf@intel.com/

Rev2:
Instead of revert and add quirk, add a single patch that fixes the
commit. (Jani).

Rev3:
Instead of refining, just revert the patch for now and add quirk for the
ICL machine as a separate patch. (Ville)

Ankit Nautiyal (2):
  Revert "drm/i915/dp: Reject HBR3 when sink doesn't support TPS4"
  drm/i915/dp: Add device specific quirk to limit eDP rate to HBR2

 drivers/gpu/drm/i915/display/intel_dp.c     | 32 ++++++++-------------
 drivers/gpu/drm/i915/display/intel_quirks.c |  9 ++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 3 files changed, 22 insertions(+), 20 deletions(-)

-- 
2.45.2

