Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A27493F7E9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A02210E3C2;
	Mon, 29 Jul 2024 14:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKVSdUPx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7D210E331;
 Mon, 29 Jul 2024 14:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263420; x=1753799420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dixfst8tp1/n5w7MjrXecYL/O4I1HVMmi2MgTOQd7zQ=;
 b=KKVSdUPxv9gJhWtVdcTspgiVuIg5HvdUsB3oRXgQVHreYc0Et1LbB8QC
 2orog+rRdyLWZaYCiAjJ2hK4Sq4Nu/pMnkTznB9edl3RlPerLSOkIDrcH
 3ftpcVZLeSWS14WJdhV6v0Fr/9qyO4MurCFaOb8yCb6MqTl/91k+ud8R2
 kpXP3ZW4V1qynHFNt5SjdkJJ2EQQDHVBkInCEzxXkjS4HPiXolQe7bCm1
 bM0qk7huCERbkH7E+EZNxvwRUWiBcUVDru2+S6+ygCfhqqW8ZZ+pdUJUB
 0AKxGmUlIiElqEih6SyxLiCPxAteMON0zD9rU5iFwNqIj2r+JIQJ0XbPl g==;
X-CSE-ConnectionGUID: ImrL2E9GQKSv2KFaSXJp9A==
X-CSE-MsgGUID: kC9xQLKtQgqUFKzhXNDIdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="37528429"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="37528429"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:18 -0700
X-CSE-ConnectionGUID: fXbN9HC2Ta2CQFtyy6pk0g==
X-CSE-MsgGUID: /wNXvM9bR0GNgN8GPYelSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53952903"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/10] drm/xe & drm/i915: drvdata usage changes
Date: Mon, 29 Jul 2024 17:30:01 +0300
Message-Id: <cover.1722263308.git.jani.nikula@intel.com>
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

Fix and cleanup drvdata usage, and switch to storing struct drm_device
instead of driver specific pointers in drvdata for the benefit of
display code.

BR,
Jani.

Jani Nikula (10):
  drm/xe: use pdev_to_xe_device() instead of pci_get_drvdata() directly
  drm/xe: add kdev_to_xe_device() helper and use it
  drm/xe/tests: fix drvdata usage
  drm/i915: use pdev_to_i915() instead of pci_get_drvdata() directly
  drm/i915 & drm/xe: save struct drm_device to drvdata
  drm/i915: support struct device and pci_dev in to_intel_display()
  drm/i915/audio: migrate away from kdev_to_i915()
  drm/i915/hdcp: migrate away from kdev_to_i915() in bind/unbind
  drm/i915/hdcp: migrate away from kdev_to_i915() in GSC messaging
  drm/xe/display: remove unused compat kdev_to_i915() and pdev_to_i915()

 drivers/gpu/drm/i915/display/intel_audio.c    | 34 ++++++----
 .../drm/i915/display/intel_display_types.h    |  6 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 +--
 .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  8 ++-
 drivers/gpu/drm/i915/i915_pci.c               |  4 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  6 --
 drivers/gpu/drm/xe/tests/xe_pci.c             |  6 +-
 drivers/gpu/drm/xe/xe_device.h                | 11 ++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c             |  9 +--
 drivers/gpu/drm/xe/xe_pci.c                   |  4 +-
 13 files changed, 105 insertions(+), 64 deletions(-)

-- 
2.39.2

