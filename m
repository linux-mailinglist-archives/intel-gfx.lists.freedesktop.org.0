Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A1997AB7A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 08:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5A310E410;
	Tue, 17 Sep 2024 06:36:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hG0M3Bms";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4315C10E410
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 06:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726554977; x=1758090977;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GJZShuO4j0iYBc0nP/wOiBEVhfsldbYXxwheys/4hIU=;
 b=hG0M3Bms4EP1ePQ+9khFM+4yqh7T5qdfwWCqpcJ+igzz1RSpDSbdq1cA
 fgWK+AiGtWJ1MLoOyrR2TqvytWZwc0U6BvkidzWEVuNWwgaBT0nPtzLRM
 2iMWd0uHQ8RLrtSjk0TFq7wKgtxNPtjXQ1DXNqamsqE5ZUd9G9N7YH2/E
 KbA7rMOKd+R8Qqx+0OqKOSBMIS5VZEFnk+lyQEsFOH+sMC1RbL4erGFW9
 jUfix9GO2XHVC5LLap9AwuugksXv2OOImxHncttnyBOFvBM6IkWrlKE/b
 TTnuSdhBibauv95mDzOCY/tCC9CBMBIFtOGkORtJa5m8/unxYWhVWVfSI w==;
X-CSE-ConnectionGUID: 6GARmZ5ZTyaB/wGtHwwfgQ==
X-CSE-MsgGUID: +szYVk/zSZmEEP9jOdgyrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42913054"
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="42913054"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 23:36:16 -0700
X-CSE-ConnectionGUID: ZZV5hp/dTFCO0Yn3aDHDwg==
X-CSE-MsgGUID: jOMnino/SDOXrU7Rb3AHZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="73851194"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.170])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 23:36:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/2] Block DC6 on Vblank enable for Panel Replay
Date: Tue, 17 Sep 2024 09:35:58 +0300
Message-Id: <20240917063600.3086259-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
prevent DC6 in case of Panel Replay. This causes problems if user-space is
polling for vblank events.

v3: check that encoder is dp
v2: set/clear block_dc6_needed in intel_crtc_vblank_on/off

Jouni Högander (2):
  drm/i915/display: Add block_dc6_needed variable into intel_crtc
  drm/i915/display: Prevent DC6 while vblank is enabled for Panel Replay

 drivers/gpu/drm/i915/display/intel_crtc.c     | 17 +++++++++++
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  7 +++++
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
 5 files changed, 55 insertions(+)

-- 
2.34.1

