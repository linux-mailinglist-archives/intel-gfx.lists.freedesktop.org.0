Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKtzAjSFoGkakgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 18:39:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6451A1AC991
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 18:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466D910E9E6;
	Thu, 26 Feb 2026 17:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FWm5eJlY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0A2F10E9E4;
 Thu, 26 Feb 2026 17:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772127535; x=1803663535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zt3Ovb6evvdvteGU1cc4DoTRjHSh00mSl8Y4b5c7Uig=;
 b=FWm5eJlYkWUrGBClMQvgwd/aZOl00hVNE4t5907s5/WzrCh/YBts0A1q
 LxCcPoFxh9rHNru2KnGptSC2IeaMIDyLmDyXufBjGTcngJ68OG2KRKW5e
 nLLnmfEtcWJ09kRcK/IdFEAJPzbUfUlqWcTSiYWO3pnfHYuus0w1+3IxC
 ayP50/IRJ6bBT0zKIS6YELlq9QDkVNQjjq4O4tlAIp/ASNEXSl8g9NZ/O
 UL319zZeQXJg2ySRIy9gOed5OorWrHMH8BOAhNvm5S1dvf8zbl7/ljJ63
 e2VotnrRM4TgaDxDt5BWTjyZDnI5ziBAmzf06whgHAsRk+zpC3DIfGcQj w==;
X-CSE-ConnectionGUID: +5cc5lASSlO63OxsVWqK0Q==
X-CSE-MsgGUID: WRBVvlS6QDOfqR56YNmuuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="84551748"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="84551748"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 09:38:55 -0800
X-CSE-ConnectionGUID: ei03aTDIQ4WBqJWRt94qbg==
X-CSE-MsgGUID: hVnF2sJbR4uHDLcD4fIHAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="214871035"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 26 Feb 2026 09:38:54 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
Date: Thu, 26 Feb 2026 23:25:31 +0530
Message-ID: <20260226175531.2324526-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6451A1AC991
X-Rspamd-Action: no action

Display Code is made independent of i915_reg.h, hence
it can be dropped from compat header.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h | 6 ------
 1 file changed, 6 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
deleted file mode 100644
index 8619ec015ad4..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../i915/i915_reg.h"
-- 
2.50.1

