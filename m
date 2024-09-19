Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97F897C955
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B115710E6E4;
	Thu, 19 Sep 2024 12:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0ci+RDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C442E10E6F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726749461; x=1758285461;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1lYObIWJaAL70E57/6szT+fyMhFbGfngMEYb1LU1IPQ=;
 b=G0ci+RDXs5a6Nb5BPhMDY1ny2UM24KZpYO4L+bONnyFE3keT3pLjAJcg
 O8g20sOcxh0Eyp+soTPQEF4PZCCtg93UzMUxah9oc/uEmb6gg+u/vD366
 7vIP2VTCqjbe4FYvEs+ZaK7+49UoNUv8Bw29CsM1Wk6kzsKoPJk8x/whi
 2UMFFB2kBj606snNEjE1chaHZBAWJvbHEGOgnBpy1xNcg1syMdhttf/7Z
 Y7AC9MpJEUhApLwWqFM1yF0HgJNS+96okXOuOXhkRbvmYS92Ncy4X78DD
 joqlT9gOUHwk5ZggsQQxSsHWPzKVhCEkbFpoCA7GY+6kjfCHtsjMECn87 w==;
X-CSE-ConnectionGUID: Bb9qo3laQNC1APIglm79yQ==
X-CSE-MsgGUID: 5G9ApltoQoS+Rvm5Dm2W7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48240539"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="48240539"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:37:40 -0700
X-CSE-ConnectionGUID: lQYw0RYwRkis0SlpbSU4dw==
X-CSE-MsgGUID: R6SJ3vPfQxeaOzwPi0/vJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74900456"
Received: from jhogande-mobl1.fi.intel.com ([10.237.72.58])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:37:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 0/2] Block DC6 on Vblank enable for Panel Replay
Date: Thu, 19 Sep 2024 15:37:23 +0300
Message-Id: <20240919123725.1222869-1-jouni.hogander@intel.com>
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

v4:
  - do flush_work for vblank_work on intel_crtc_vblank_off
  - no need to use READ_ONCE in bdw_enable_vblank
  - check crtc->block_dc_for_vblank in bdw_disable_vblank as well
  - move adding block_dc_for_vblank into patch 2.
  - patch 1. scope changed
v3: check that encoder is dp
v2: set/clear block_dc6_needed in intel_crtc_vblank_on/off

Jouni Högander (2):
  drm/i915/psr: Add intel_psr_needs_block_dc_vblank for blocking dc
    entry
  drm/i915/display: Prevent DC6 while vblank is enabled for Panel Replay

 drivers/gpu/drm/i915/display/intel_crtc.c     |  7 +++++
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 27 ++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 6 files changed, 70 insertions(+)

-- 
2.34.1

