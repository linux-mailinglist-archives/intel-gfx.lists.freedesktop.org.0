Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BDA8AF482
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 18:45:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822701134B7;
	Tue, 23 Apr 2024 16:45:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VC9QyANp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62E3E1134B7;
 Tue, 23 Apr 2024 16:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713890706; x=1745426706;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xtSQBG/3BSgHtBHQjdNis6vXNsV9X7sGEWedPMP7VKQ=;
 b=VC9QyANpvID1gINaBNGd20XjKitxNHq4iLG+8K4p7gikNs0bx33jjP7T
 ZAmONdfCqLM6lj1BtAj1e8QP2QUSCh6WjmLjXyEq82s8n8diXjVu7eMRC
 6ev//bzy7bVxx2G3cI3wLk4oYfXULB5m/DXzy7nJcnbCoXJ1mGNem7KpW
 1fSAbsSWg9uXsTK7zMWhDGmfvKxmcOo1YL1AGHPzwaV4tUqZbduyflWva
 n5e5ckbkXOEbDVOhWYbaHQBYNC4BLKrfLsEdkiPAo4/szZ8hq8QZP8QPH
 FSbBrNCv5bQGKQGUm/p/J91MVd9/313ELDw1rhuleS6R9dJ4t1NS8AdzF w==;
X-CSE-ConnectionGUID: oLG3/bMLTy2CkIMsaU+vGQ==
X-CSE-MsgGUID: AikM0EKcTbuWZ7K6GMIT0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="20891452"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20891452"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 09:45:05 -0700
X-CSE-ConnectionGUID: KFAyuP4YToyKbBuyMXHWEA==
X-CSE-MsgGUID: AmYbfegGSOuVML+qpt8nQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28883581"
Received: from fpirou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.117])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 09:45:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915: baby steps towards removing implicit dev_priv
Date: Tue, 23 Apr 2024 19:44:58 +0300
Message-Id: <cover.1713890614.git.jani.nikula@intel.com>
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

Some prep steps towards removing implict dev_priv in register macros.

After this, all dev_priv get passed from a slightly higher level,
instead of being hidden in the lowest level helpers.

Jani Nikula (2):
  drm/i915: convert _MMIO_PIPE3()/_MMIO_PORT3() to accept base
  drm/i915: pass dev_priv to _MMIO_PIPE2, _MMIO_TRANS2, _MMIO_CURSOR2

 .../gpu/drm/i915/display/intel_color_regs.h   |  12 +-
 .../drm/i915/display/intel_display_reg_defs.h |  22 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  38 +--
 drivers/gpu/drm/i915/i915_reg.h               | 266 +++++++++---------
 4 files changed, 171 insertions(+), 167 deletions(-)

-- 
2.39.2

