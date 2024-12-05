Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CADE9E58C4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE0C10EE9A;
	Thu,  5 Dec 2024 14:45:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AaNIm/6D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D406510EE9A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 14:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733409945; x=1764945945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=njXIqkdmIg9CZpcrEfPH5PkEH0BdzZOzbCvbLwtFWuI=;
 b=AaNIm/6DuSY7NIDbL+gzymVAG26/DPWKLLODnMe8zx8dftn5Jhk3SXWN
 EzupMiMzTn+yG/YYfbTkFeJuwTvPwW+e9GnJVlyHJNsVtoxcPvqRcc88J
 rhPJX6GevbyCUehrs+MSg1oYN6luC7fKn/ZCfu2f/i/wrKdufOIIlBoij
 wqHCuGeb7dhg4pF2te5KAH39mo87QP4YOuiCbDuos7wcvPJlWOSs9elKC
 vdZxecaEzn1ok/k5xsdhkC/wao5Na5W0+c30vrzoTvyrk3L/IFk5g0Ktf
 g3x2eTs1/zr9XnuIDEF4xv6I7TtEuVKitRW9deRLBu6TZ/UofB1swnAXV w==;
X-CSE-ConnectionGUID: 0aqLrWa9SRWCrOC92jqcjw==
X-CSE-MsgGUID: bdG4zgZYS2CN7yUcFZr55A==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="51139132"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="51139132"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:44 -0800
X-CSE-ConnectionGUID: Djgv8+8mScOdWhgoljOErA==
X-CSE-MsgGUID: +HyAeVAwS0iIp/0Ue8VAmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="117357041"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915/dsi: add some missing dphy configuration
Date: Thu,  5 Dec 2024 16:45:34 +0200
Message-Id: <cover.1733409899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

Untested.

Jani Nikula (5):
  drm/i915/dsi: fix PIX_FMT_MASK width
  drm/i915/dsi: convert DSI_TRANS_FUNC_CONF to REG_BIT() and friends
  drm/i915/dsi: add LP_CLOCK_DURING_LPM bit for DSI_TRANS_FUNC_CONF
  drm/i915/vbt: define a few more DSI dphy config bits
  drm/i915/dsi: set a few DSI_TRANS_FUNC_CONF bits according to VBT

 drivers/gpu/drm/i915/display/icl_dsi.c       | 10 +++
 drivers/gpu/drm/i915/display/icl_dsi_regs.h  | 75 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_bios.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_dsi.h     |  2 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c |  2 +
 5 files changed, 52 insertions(+), 41 deletions(-)

-- 
2.39.5

