Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36353BE8A53
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 14:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD5610EBD7;
	Fri, 17 Oct 2025 12:48:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WSWqqKt+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9034010EBD7;
 Fri, 17 Oct 2025 12:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760705295; x=1792241295;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BU8TlSo9buAG3zvn/q1epq6S65Og3FndAnq8DPd5cQM=;
 b=WSWqqKt+sI/KzW2b5kbpKW0cqg7u4Q8TgRv9admCNst8j7ozW/LenD+b
 xkYhL6uGi9647L7hxGRb9K10/dZwR0ylFAazvh+CCzJ5jztTcMjiY2Z8N
 +43MQeMKpGIjUzkkm81lecWVTrOeOogoUX0btGvka6Yqerz7McsDMw7hH
 Y+cztTJYkGuXdWNY1sa3YaQBO4xtJwyEkNf9/rJNpAivc778K7vKGLbuT
 /fftoPVELInhJ7wg4Ymlp3V1r0if+prPXYLkRiJ+QRaLc3pNZo8LXSJ09
 QyzMO9b5pF9D8Jg1uYfybhf7uCjFkcM0/Nos9FEk95+yjuQfj5UIcjD/V Q==;
X-CSE-ConnectionGUID: qssrpu89SI+d5rGugt8ZVw==
X-CSE-MsgGUID: K/pYhlYNRH2K2sHMsyrzUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61944192"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61944192"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:14 -0700
X-CSE-ConnectionGUID: rsMmiR1BSmKyt8TZPf7gjw==
X-CSE-MsgGUID: IqlSbrPbR6uERiHUbofeYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182281056"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:48:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] Optimize vrr.guardband
Date: Fri, 17 Oct 2025 18:04:59 +0530
Message-ID: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
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

Instead of setting vrr.guardband to vblank, use optimal guardband that
works for most of the cases. This will help in avoiding need of change
in guardband and fix the LRR feature that needs seamless switching to
a lower refresh rate.

Rev2:
- Drop patch to check guardband in crtc_check phase, instead check
  guardband for SDP in compute_config_late.
- Modify the helper to get the min sdp guardband if all SDPs are assumed
  to be enabled.
- Rename the helpers to get min guardband for sdp and psr.

Rev3:
- Drop the squashed patches as the dependency changes are already
  merged.
- Avoid optimized guardband for HDMI for now.
- Allow support for optmized guardband only to platforms that always have
  VRR TG active in the main patch.
- Add a separate patch for extending support for optimized guardband to
  other platforms whenever VRR TG gets enabled.

Rev4:
- Address review comments from Jouni and Ville.

Ankit Nautiyal (5):
  drm/i915/psr: Add helper to get min psr guardband
  drm/i915/dp: Add helper to get min sdp guardband
  drm/i915/dp: Check if guardband can accommodate sdp latencies
  drm/i915/vrr: Use the min static optimized guardband
  drm/i915/vrr: Use optimized guardband whenever VRR TG is active

 drivers/gpu/drm/i915/display/intel_dp.c  | 58 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c | 27 +++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c | 56 ++++++++++++++++++++++-
 5 files changed, 142 insertions(+), 2 deletions(-)

-- 
2.45.2

