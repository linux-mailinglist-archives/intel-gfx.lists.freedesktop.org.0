Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BF1B57EA3
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 16:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F27410E4CB;
	Mon, 15 Sep 2025 14:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vw7qq76P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490C010E2AB;
 Mon, 15 Sep 2025 14:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757945850; x=1789481850;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+w6F6wlnFomX1/EdwjiAfRW+2I8d3WyaCSUBtdHy+O4=;
 b=Vw7qq76Pq3mUkM/psG2ibXzUXaLIq8zElRjhtmO31059P6P+WzR3X2Ws
 PUXesF6jmB1q59TB0/fjf1k4ceuipAZ1ptvCZTQ+CImaRT1rq3SmL3tBN
 jOTpWbZ7BR+5KRBypq7Yt+AlGsNOab2IkQxPxnjLoVTZL5Q/Eywki9ZVq
 pDZm03NeI2m/XlYOFEHaIpdHBcmow/Y3/NKZZsQyR90YRYr9CX6G2UlZp
 ereJ+uf60EDN7afusnTUq/gTX1KHRllzfmbgUyLoFROVj1pfaKpY3Crbg
 zBabNXGolPM0GkJ1bKD2VQ9uhda50TDziZtbI2RPGxgBM3SMPDybEDMNt A==;
X-CSE-ConnectionGUID: +6v2QuHSRGaKlHshbHaILA==
X-CSE-MsgGUID: B/lSaLa2Sly9MQsfoT4Aug==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="77809450"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="77809450"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 07:17:26 -0700
X-CSE-ConnectionGUID: SugPBH9oTEOcfVpgv6Yhkg==
X-CSE-MsgGUID: Qj+s4rRaSXicABIitY2mfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="175440702"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP; 15 Sep 2025 07:17:25 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: jouni.hogander@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: sebastian.brzezinka@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v11 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Mon, 15 Sep 2025 16:19:12 +0200
Message-ID: <20250915141913.939152-1-michal.grzelak@intel.com>
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

Next version of v10 [1]. Took into consideration Jouni's review [2].
IGT patch associated with this patch: [3].

[1] https://lore.kernel.org/intel-gfx/20250903103152.2440348-1-michal.grzelak@intel.com
[2] https://lore.kernel.org/intel-gfx/ad14c2fd3d8e505f835cdb59daf1cbff5fb3ed9c.camel@intel.com
[3] https://lore.kernel.org/igt-dev/20250828104311.1279788-1-michal.grzelak@intel.com

Test-with: 20250828104311.1279788-2-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
v10->v11
- update the reason from new_crtc_state instead of old_crtc_state [Jouni]

v9->v10
- log reason into intel_crtc_state instead of intel_dp->psr [Jouni]
- remove clearing no_psr_reason in intel_psr_compute_config [Jouni]
- change update of no_psr_reason into more readable form [Jouni]

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
 drivers/gpu/drm/i915/display/intel_psr.c      | 22 +++++++++++++++----
 2 files changed, 21 insertions(+), 4 deletions(-)

-- 
2.45.2

