Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3EC85E71C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 20:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62CD810E082;
	Wed, 21 Feb 2024 19:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h6yI6FPK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B6110E082
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 19:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708543213; x=1740079213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OPx0wHtC5b7r+PIYTslYDroBWj/aQfNB6r2xrI9MZrU=;
 b=h6yI6FPKMcTevtQqYQgyhzmAbpKqUPHvHgzcIdMGQjywwM1CYGdaVLWE
 3ZCl0msfyuR2Yc+4VJTNRjkP4jm64wQbLW7jlJbPcKKjIATeEI65+GMFe
 lNpNPlnrKjCG70SbU/GDeTr16RT9viQrRT/wJyYYYg2debcVEyVtyiZlZ
 SlHtFBvvU0msG+JIW1yMM3WlzfYYglZVXLX/ByFOJFbNoJ8UbuZ0npemS
 QREMsaM/PDzr5lXPtXMk2QG2cvriT01532zz+PHKBoW5RNRcEMPe5NAFv
 ryrtmdJQjrclekEoEPbwcC7beIE+kOcBrYA+Pxw+UScYJvXxQxBVc0pby w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13286342"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="13286342"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 11:20:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="36024245"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa002.jf.intel.com with ESMTP; 21 Feb 2024 11:20:11 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 0/3] Bigjoiner refactoring
Date: Wed, 21 Feb 2024 21:20:07 +0200
Message-Id: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

There are few things we need to do for bigjoiner, in order
to improve code maintenance and also make testing for Bigjoiner
easier.
Those series contain addition of bigjoiner force debugfs option,
in order to be able to force bigjoiner even if there is no display
support, also we refactor pipe vs transcoder logic, as currently
it is a bit scattered between *_commit_modeset_enables/disables
and *_crtc_enable/disable functions. Same applies to encoders.
We made a decision to handle all the slaves in correspondent master
hook, so slaves and slave checks no longer would be in modesetting
level logic.

Stanislav Lisovskiy (3):
  drm/i915/bigjoiner: Refactor bigjoiner state readout
  Start separating pipe vs transcoder set logic for bigjoiner during
    modeset
  drm/i915: Fix bigjoiner case for DP2.0

 drivers/gpu/drm/i915/display/intel_ddi.c     |  21 +-
 drivers/gpu/drm/i915/display/intel_display.c | 205 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h |   6 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  19 +-
 4 files changed, 144 insertions(+), 107 deletions(-)

-- 
2.37.3

