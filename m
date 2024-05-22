Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869918CBB1A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 08:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B8F10EDCF;
	Wed, 22 May 2024 06:21:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWpaUvFe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF62D10EDF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 06:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716358871; x=1747894871;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dxmM/9CjP/nxhXmv4v+1E2G85fFuXrYFXEdy8vtf46Q=;
 b=IWpaUvFe4P8k4/R81ZS1bLlLvCTjt3rGp8EO483Zp+G07nL60Kzi5/0m
 Oh4lUS7/U6cXgcvzE40utQ5MDD8hPROYe5v/G/SuKk7MBn7eFFZohULgE
 ya/jilK1R4+GLegVwasE87uA+w5y0kLUX79JmneOxQu0CGhpxssC9UFcS
 E5MfDnF0lsJ3rFneL4qVtYJqq0+tetfkP3VbcbFX0nO1c/Uc2NgKWIafQ
 pUVzobI/r2/NnOytm7o8+tA7TsD+rb9Wz1+pdPdFf1sR2uZVLFRUP0keC
 owy+O3StazyaoauCJxB17lIrL4UT5Eqrz0DG7O2TPoTAiY/i9jKKBw/QO A==;
X-CSE-ConnectionGUID: P59NPeb1SwO4dNUS+ojRwA==
X-CSE-MsgGUID: CunzxOU+QJ+K1qqkSIWAuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="35098125"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="35098125"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 23:21:11 -0700
X-CSE-ConnectionGUID: cf6KVesKQhq3TfSB/HexSA==
X-CSE-MsgGUID: FY1dZ3OjQCWaDjjl7btKRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="56404481"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa002.fm.intel.com with ESMTP; 21 May 2024 23:21:09 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 0/2] drm/i915/display: Add comparison for pipe config for MTL+
 platforms
Date: Wed, 22 May 2024 09:13:48 +0300
Message-Id: <20240522061350.248749-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

Currently, we may bump into pll mismatch errors during the
state verification stage. This happens when we try to use
fastset instead of full modeset. Hence, we would need to add
a check for pipe configuration to ensure that the sw and the
hw configuration will match. In case of hw and sw mismatch,
we would need to disable fastset and use full modeset instead.

However, first we need to revert the patch that disables fastset
for C10.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (2):
  drm/i915/display: Revert "drm/i915/display: Skip C10 state
    verification in case of fastset"
  drm/i915/display: Add compare config for MTL+ platforms

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 77 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 39 ++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 4 files changed, 116 insertions(+), 3 deletions(-)

-- 
2.34.1

