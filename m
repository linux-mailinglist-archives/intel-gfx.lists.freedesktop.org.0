Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA8489FD0A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 18:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7629111340F;
	Wed, 10 Apr 2024 16:36:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wx9fzG+J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6CC11340E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 16:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712766994; x=1744302994;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dtIQGWV34oa63yKv499K2ZxGdv4Lg1d+I4YyaDti3aQ=;
 b=Wx9fzG+Jp+UhnUKu/jeIBY1s/hWP+Gywfr8egqGIvxZ13O12jtJ5R+Tb
 9Jd/dqbkf1coXlwKHeoYCE/27NtBs+mA8IQKEo8a2p3EXflD8M8p3+uMZ
 O4CLZrrKnK6mAjWH2TOOQDQf5HHAeT1hMYTmJtQ7QwMM+eHdXzV98JsFr
 3ExOgUwXf80j3J/EOlV747TSnotrYcJui06nLsAXD0wl8VlT66lT1BdRB
 JS5R63mqwQ+1iBnBVy1IQt9DqB44a8+a50ZQSwnLP6Jbur/l5rS5CNmEL
 wfJtoW+fSY2VgFbGJz2GTdl6oha4jILw0HHNwDXQAL+EDu+622LoWQY4c g==;
X-CSE-ConnectionGUID: Ikt/lHp1T02vNbWU5+KKQQ==
X-CSE-MsgGUID: frFiA4/JTOCssGgicx2Gng==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7995930"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7995930"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:34 -0700
X-CSE-ConnectionGUID: sHKODS+pQSWIplv3cb/dbg==
X-CSE-MsgGUID: xERAY1EMRM6cYL5PoUC65Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20645416"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915/dsi: stop relying on implicit dev_priv variable
Date: Wed, 10 Apr 2024 19:36:25 +0300
Message-Id: <cover.1712766927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Rip the band-aid, it's not so bad after all. Well, at least for the
somewhat isolated VLV DSI. But it's a start.

Jani Nikula (3):
  drm/i915/dsi: remove unused _MIPIA_AUTOPWG register definition
  drm/i915/dsi: add VLV_ prefix to VLV only register macros
  drm/i915/dsi: pass i915 to register macros instead of implicit
    variable

 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 192 +++++------
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c   |   6 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h  | 325 +++++++++----------
 4 files changed, 259 insertions(+), 266 deletions(-)

-- 
2.39.2

