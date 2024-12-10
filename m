Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B31B9EAE49
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 11:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E3B892F2;
	Tue, 10 Dec 2024 10:46:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WnFnPx5K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8FB88784;
 Tue, 10 Dec 2024 10:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733827596; x=1765363596;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fb0iun5ROz3C0eUrWNO+0AZV4azfZWkNbEIFFS41AKE=;
 b=WnFnPx5KPZl3TwqqZ8bbz6wzH+Dz5Z9aEbPyV8Rt49iYCo1neua+8EVk
 DmUOlmp2SiFBJr34aoEd39+HIcj2P0EBgA9ysBaxIryZCtOiWIdWpzksA
 WVG1LYWXT4w1fo97g8IaHBJAJnGgRciKodITlY9igG2AiCcEzM4MVKQYg
 j4ui0eSvZktrcGvvT7kDPCvjLm2OS+I04QRSk+WpjVHRTDhjcJkD0u7vf
 c2hBjACVRpPyJq3wBqtTWVXala+4OC/fARix3OlZYZfulodWe4z33GPkb
 Mr6UVdgD3xZjXRegPtI2OgP8slXSAWDjPz/nyDWxXRjyqxnNUID6SRQz7 g==;
X-CSE-ConnectionGUID: igDuDWfpTiuPBApR/QbpeQ==
X-CSE-MsgGUID: KBbRSPmcRTGI/ZEkMM+5MA==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="37949409"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="37949409"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 02:46:36 -0800
X-CSE-ConnectionGUID: jv4Wvwj7RvCbz36sgzVi+Q==
X-CSE-MsgGUID: 10Wfv5ASQTiifj/xBAK9LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="96177339"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 02:46:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/5] drm/i915/dp: convert to struct intel_display
Date: Tue, 10 Dec 2024 12:46:25 +0200
Message-Id: <cover.1733827537.git.jani.nikula@intel.com>
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

Rebase of [1].

[1] https://lore.kernel.org/r/cover.1732891498.git.jani.nikula@intel.com

Jani Nikula (5):
  drm/i915/dp: s/intel_encoder/encoder/
  drm/i915/dp: s/intel_connector/connector/
  drm/i915/dp: convert to struct intel_display
  drm/i915/dp: convert interfaces to struct intel_display
  drm/i915/dp: finish link training conversion to struct intel_display

 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 925 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  20 +-
 .../drm/i915/display/intel_dp_link_training.c |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
 9 files changed, 501 insertions(+), 491 deletions(-)

-- 
2.39.5

