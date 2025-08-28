Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4734CB39A9C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 12:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F6B10E320;
	Thu, 28 Aug 2025 10:48:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fj9LjOBD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5CB610E1D1;
 Thu, 28 Aug 2025 10:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756378084; x=1787914084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=of1gz6Zv6ZnQc09P2Xxwba1flbfhPH4qQFVReBUIAfs=;
 b=fj9LjOBDv8lR34WFHuVSNO/4jl1YmWMBNRZdG0XqXZiBOgMMcTh180sF
 NPmBAVo1GxYqj6yMPrWSjWA3m+W7NCIison0QKXpvypmU7/Vs7kSh85Q2
 Mhggi3bJN5zzoky4dSeySiXwg32dFEUIBAG6uhco6gIDpaUdBm7ZaKQqd
 dfChDgGVnTF7XINcCbOuYzNWYNsAF3y/ZSdEyqUAcyWALNl9r6ThBGWQs
 s3af/74Lsht8NzP5NHej0bqhqEqqq2VRJs9yrdWVY2LWcFeapJnIkUait
 QZYaD4gK/xrNK5oU+D/M4N1Gv1GTz6bvMTgc3ixdlvwimzk0NkK2mEnFi Q==;
X-CSE-ConnectionGUID: Onzq/r+DSvGRcloBce5AUg==
X-CSE-MsgGUID: 3EGye2AQT1+yeplkDBPycQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57841367"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57841367"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 03:48:04 -0700
X-CSE-ConnectionGUID: Jy7VzK5RSJe4Z8QapjMGZw==
X-CSE-MsgGUID: JrNzqtjOQsO3e6dcpkQ0HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="193744998"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa002.fm.intel.com with ESMTP; 28 Aug 2025 03:48:02 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v8 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Thu, 28 Aug 2025 12:49:50 +0200
Message-ID: <20250828104951.1279862-1-michal.grzelak@intel.com>
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

Next version of v7 [1]. Took into consideration new review from Jouni
[2]. As format of i915_edp_psr_status is again backwards compatible,
new IGT patch has been sent [3]. 

[1] https://lore.kernel.org/intel-gfx/20250825103332.885420-1-michal.grzelak@intel.com
[2] https://lore.kernel.org/intel-gfx/c5683e8ebc687b7e669ae3950cc16108ba9397cc.camel@intel.com
[3] https://lore.kernel.org/igt-dev/20250828104311.1279788-1-michal.grzelak@intel.com

Test-with: 20250828104311.1279788-2-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
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
- provide correct Test-with tag to the IGT patch, instead of series

v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.


Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 21 +++++++++++++++----
 2 files changed, 19 insertions(+), 4 deletions(-)

-- 
2.45.2

