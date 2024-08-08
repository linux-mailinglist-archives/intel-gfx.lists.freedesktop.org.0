Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E514D94C0BF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80C310E750;
	Thu,  8 Aug 2024 15:16:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A1Txta72";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A89310E74E;
 Thu,  8 Aug 2024 15:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130163; x=1754666163;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TVwxqcephjV+8seCMXQW6EUL/9DIK75Shi8k2NQPyVI=;
 b=A1Txta729worzHxbFdm+sLvluKB1eFzeLJYHnVulR1nyE6HY3Qs7ztjh
 x9oyFqgLC5H6m8sjqL8QxytDM2Pw6M+YoasoPrroYPUWeYGnreEvs1WuR
 a+qC5tsm4C8sFvesp3cVOqs5Sm6nM+o76wMoTg9gIcJURd7yF0+/G5q77
 9qlYU3DtySUfajA4qxDcM6WcD9wWi8FSK+NSoXC0GMQl7v2/iZ8nCGNoW
 JZ2DKnEReLToMrMNBhgL9HPkBoLMEmtkCniscqMk3wfus6+g7NrCHgqn1
 s5J1JtOiSxhdF3yv3B1mZm4VCmhspt2PpY4D9wOqffDIqNPYIzfugdrZK A==;
X-CSE-ConnectionGUID: 84nFE6+PRvCCH3d+cXhH6A==
X-CSE-MsgGUID: BCbRLpojTgakGV4QoHXpPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="21413229"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="21413229"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:02 -0700
X-CSE-ConnectionGUID: gG7mET+6RvSTeTNwYWjDUw==
X-CSE-MsgGUID: wbnvmfxpQEKlCJw31OWz2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="80483382"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 00/10] drm/xe & drm/i915: drvdata usage changes
Date: Thu,  8 Aug 2024 18:15:45 +0300
Message-Id: <cover.1723129920.git.jani.nikula@intel.com>
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

v2 of https://patchwork.freedesktop.org/series/136621/

Removed "drm/xe/tests: fix drvdata usage" from v1 in favour of
"drm/xe/tests: remove unused leftover xe_call_for_each_device()" here.

Due to the display dependency, I think it would be best to merge the
whole thing via drm-intel-next, and do the first drm-intel-next pull
request and backmerge from drm-next to drm-xe-next in fairly quick
succession.

BR,
Jani.


Jani Nikula (10):
  drm/xe/tests: remove unused leftover xe_call_for_each_device()
  drm/xe: use pdev_to_xe_device() instead of pci_get_drvdata() directly
  drm/xe: add kdev_to_xe_device() helper and use it
  drm/i915: use pdev_to_i915() instead of pci_get_drvdata() directly
  drm/i915 & drm/xe: save struct drm_device to drvdata
  drm/i915: support struct device and pci_dev in to_intel_display()
  drm/i915/audio: migrate away from kdev_to_i915()
  drm/i915/hdcp: migrate away from kdev_to_i915() in bind/unbind
  drm/i915/hdcp: migrate away from kdev_to_i915() in GSC messaging
  drm/xe/display: remove unused compat kdev_to_i915() and pdev_to_i915()

 drivers/gpu/drm/i915/display/intel_audio.c    | 34 ++++++----
 .../drm/i915/display/intel_display_types.h    |  8 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 +--
 .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  8 ++-
 drivers/gpu/drm/i915/i915_pci.c               |  6 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  6 --
 drivers/gpu/drm/xe/tests/xe_pci.c             | 52 --------------
 drivers/gpu/drm/xe/tests/xe_pci_test.h        |  1 -
 drivers/gpu/drm/xe/xe_device.h                | 11 ++-
 drivers/gpu/drm/xe/xe_gsc_proxy.c             |  9 +--
 drivers/gpu/drm/xe/xe_pci.c                   |  4 +-
 14 files changed, 104 insertions(+), 116 deletions(-)

-- 
2.39.2

