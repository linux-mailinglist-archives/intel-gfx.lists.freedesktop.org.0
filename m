Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A686A467C9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 18:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D09B10E96C;
	Wed, 26 Feb 2025 17:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XEHmOb1N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F42F10E96C;
 Wed, 26 Feb 2025 17:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740590309; x=1772126309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iaKq/itzQ0+2xgu2Ykumv47EBzcv6q2oYi5H0B27JbE=;
 b=XEHmOb1Npk2OjMlgR9aYultQ+SFfoEgtEsdxkCJ9pzck/QSw4T7s9kZO
 mIehysKIWigtLeFI26nAgyPtZnosQouXgxBIwTjv0Td8uHqviSZ2MWXnb
 ArxV0KLFr/SMCkGuRaROM4XoMMg8fBPkwYrW4gR4Hq4mBml/lkDu2GW9E
 LJJUsan9655y0PfRD1WKlwcoasowLvc6V3j7FRqfS2erC/5HHZhk3OxrV
 lNI8yob3+/SgkSGuiHGue0ZEUMetQPUC2Cw+NKSYgwWWkphJ/bwd6vtbt
 FDojn7bD1UGDYVgfSUZjkAE/3g2gtKDV1ARlyCce1wquu5Ts1UTtPobyL Q==;
X-CSE-ConnectionGUID: i0f6V2J1Qy2DUCMSyRC0ng==
X-CSE-MsgGUID: ukVJUzlERluHNX9PV2U9Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="40628463"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="40628463"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:23 -0800
X-CSE-ConnectionGUID: kTNFXUd+QQGu8WLQXWgYOg==
X-CSE-MsgGUID: iKcNhuB1QnSJlxgkKKsH8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121371274"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:21 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 0/5] drm/dp: Fix link training interrupted by HPD pulse
Date: Wed, 26 Feb 2025 19:19:18 +0200
Message-ID: <20250226171924.2646997-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

This is v3 of [1] with the following changes:
- Rename intel_hpd_suspend/resume() to intel_hpd_block/unblock(). (Jani,
  patch 2,3,5)
- Handle encoders using a shared HPD pin properly, during
  blocking/unblocking the HPD handling. (patch 2, 5)

[1] https://lore.kernel.org/all/20250224193115.2058512-1-imre.deak@intel.com

Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (5):
  drm/i915/hpd: Let an HPD pin be in the disabled state when handling
    missed IRQs
  drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin
  drm/i915/dp: Fix link training interrupted by a short HPD pulse
  drm/i915/dp: Queue a link check after link training is complete
  drm/i915/crt: Use intel_hpd_block/unblock() instead of
    intel_hpd_disable/enable()

 drivers/gpu/drm/i915/display/intel_crt.c      |   7 +-
 .../gpu/drm/i915/display/intel_display_core.h |   1 +
 .../drm/i915/display/intel_dp_link_training.c |  23 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 291 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   5 +-
 5 files changed, 263 insertions(+), 64 deletions(-)

-- 
2.44.2

