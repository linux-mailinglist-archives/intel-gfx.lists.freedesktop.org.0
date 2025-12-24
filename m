Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E309CDBB9C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Dec 2025 10:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BABEB10E35A;
	Wed, 24 Dec 2025 09:00:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZkhlpURA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 768B010E22F;
 Wed, 24 Dec 2025 09:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766566855; x=1798102855;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qVp/lL+6nFBjlb25+TKPQusIEQVUS9p1JeD/EgVOL+c=;
 b=ZkhlpURAkbQGPYAPmErOr57u8kzMmkgk5jX8s0hhWD3s6QubEv/e4hqB
 rjsH4hsnzLMXs/2qnOqrNNl89K8MPOTiZuTJPlcOqHSjTmFMN8Q3LUiXu
 TJIcr710jSlxi+oYa0eMo8OuxQNS94cMh55D6WTKRAtJV0lSJet628qzi
 r4D1CFfoj1Nb/DIoIRpMqfjeNsQamCtf/T5TDRGyoTg7pT2nI1ovND4a9
 csRyfO/Y1wZgGWJ6pqAFWsDY6SYfpoKr/smuiopWx8fnpRfNu9MChzZJ4
 7P2M+z57tvHvNJouzO7HzzKaDBfbwJd61IC2i/UYuoiteHlp2BmRy4if2 A==;
X-CSE-ConnectionGUID: 75I+1aX7REWd6yjJFB4Jrg==
X-CSE-MsgGUID: KnvLxUkkRNKplY9vTipawg==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79041547"
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="79041547"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:00:55 -0800
X-CSE-ConnectionGUID: i/gCePPhTKucKZpuZGKX3w==
X-CSE-MsgGUID: oLxT4yssS0Gy8+d9FJ/D1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="199733487"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:00:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] LOBF fixes
Date: Wed, 24 Dec 2025 14:18:33 +0530
Message-ID: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
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

Fix lobf to use computed guardband and set context latency.
Also disable LOBF while switching to LRR/seamlessMN modes.

Rev2:
 - Use is_enabling/disabling macros for lobf checks and other suggested
   changes from Ville.

Rev3:
 - Address comments from Michal.

Rev4:
 - Address comments from Jouni.

Ankit Nautiyal (5):
  drm/i915/alpm: Compute LOBF late after guardband is already determined
  drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines
  drm/i915/alpm: Allow LOBF only for platform that have Always on VRR TG
  drm/i915/alpm: Simplify and align LOBF checks in pre/post plane update
  drm/i915/alpm: Disable LOBF around transitioning for LRR/seamless MN

 drivers/gpu/drm/i915/display/intel_alpm.c    | 144 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_alpm.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_display.c |  29 +++-
 drivers/gpu/drm/i915/display/intel_dp.c      |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |   2 +
 5 files changed, 129 insertions(+), 57 deletions(-)

-- 
2.45.2

