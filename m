Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB522B3ECC8
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Sep 2025 18:58:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E37210E166;
	Mon,  1 Sep 2025 16:58:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lcv2IKlp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CDE10E0C4;
 Mon,  1 Sep 2025 16:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756745900; x=1788281900;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TMh1ef2qOfu3QwcwNyLTJONeulxn0IplJyfqvrfJkf8=;
 b=Lcv2IKlp0AoFp2P+dmmScd65lX0TZil/VeoebJiVaS88NYdZPn9DNbxD
 wEu2JYG3R2KRcLdO3Xgi6Sfa/6VX0YuOamoCt64IpQKM/qfh2efFbbp1/
 65pSLK480euGwk9TtmTK5GlWutDR08y+juc9wpvPq1Rnnws3W7W1dmEhl
 B8tKIlYJ0ZXDCcQzs3Bz6yVMrhOsPko2ZucU0WgMvbK3zucKp10ZizHQ/
 Q3k7Z6s72+/23F3xVEtwnyoP68193LCgob2A2mPlIEcyWBs2lp4JVqzdr
 5EV6KMr4aRBa6nHK1ZX2MHKfAMxjfHX5mThQy6OApm8/L5pj+VDMeU2mU Q==;
X-CSE-ConnectionGUID: Ii9yw6RtSgip75py3iodJg==
X-CSE-MsgGUID: SvlLoRWaSL+581ZJs40aYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="69274692"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="69274692"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 09:58:19 -0700
X-CSE-ConnectionGUID: RyRIIlirRIGXc9y+xt4onQ==
X-CSE-MsgGUID: GpxHs5KBRYWfcweu/xFQsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="170617420"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP; 01 Sep 2025 09:58:17 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, sebastian.brzezinka@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v9 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Mon,  1 Sep 2025 19:00:02 +0200
Message-ID: <20250901170003.1582933-1-michal.grzelak@intel.com>
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

Next version of v8 [1]. Changes include reviews from Jouni [2] and
Sebastion [3].
IGT patch associated with this patch: [4].

[1] https://lore.kernel.org/intel-gfx/20250828104951.1279862-1-michal.grzelak@intel.com
[2] https://lore.kernel.org/intel-gfx/3fb1e64044e7b16a5a0e706f08fc85a70ae4278e.camel@intel.com
[3] https://lore.kernel.org/intel-gfx/DCE4ET9INSJ6.3LPUPKS0ONCJB@intel.com
[4] https://lore.kernel.org/igt-dev/20250828104311.1279788-1-michal.grzelak@intel.com

Test-with: 20250828104311.1279788-2-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
v8->v9
- add no_psr_reason into struct intel_crtc_state [Jouni]
- update the reason in intel_psr_pre_plane_update [Jouni]
- elaborate on motivation of the feature in commit message [Sebastian]
- copy changelog to commit message [Sebastian]

v7->v8
- reset no_psr_reason at the begin of intel_psr_compute_config [Jouni]
- restore keep_disabled [Jouni]
- drop setting "Sink not reliable" [Jouni]
- add WA number [Jouni]
- if non-NULL, write no_psr_reason after PSR mode [Jouni]

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

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c      | 23 +++++++++++++++----
 2 files changed, 22 insertions(+), 4 deletions(-)

-- 
2.45.2

