Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BEC97819B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 15:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE4B10E26D;
	Fri, 13 Sep 2024 13:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZA0XUZO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A4210E26D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 13:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726235686; x=1757771686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=53eVTnmTlS4YvfwnlkE5vdt9k3IKDLvUmAgc/3vjTdg=;
 b=LZA0XUZO4VBjj9io/n9lbWjjQSsQESD2WT494C7/SrJHHLA6pEkOcEqF
 wPSVXnQkGvUqnvBzMALoo6k9Kzzfc3fWo2YMCWZhQBqsGlN4FZnTmqfHu
 NJeyoijRX1muh4WZE/Hw+uKGScWhjluNYb8Ylzb19NL6mk8y2Ep4dkyOR
 MasIiH5ATQOEwyju+2w+Z9ULjC4yxzWbCMLAeYfCy4KsWat22LE4jr3wq
 nUazAdLxkwIO01GPQCxs1RKGmkqfXdiWp200EF0xip0JxRzIC37o2j+xE
 taH7UhwAMneiJxwVVDNH1xdgu+9XvjrbXJQuAphwaooEGbQnApL5dmGzx A==;
X-CSE-ConnectionGUID: VB9oW93pRyGcMMekfHcr7g==
X-CSE-MsgGUID: Qi1aJ1nSRUWJlzoP8TLedA==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="42612204"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="42612204"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 06:54:46 -0700
X-CSE-ConnectionGUID: 2fG0QVTtRtqpwe/uStiw3w==
X-CSE-MsgGUID: 0mJdAicVRN2WNAuE8enHHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="72872218"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 06:54:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/i915: clean up deps on intel_display.h a bit
Date: Fri, 13 Sep 2024 16:54:37 +0300
Message-Id: <cover.1726235647.git.jani.nikula@intel.com>
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


Jani Nikula (2):
  drm/i915: move intel_get_pipe_from_crtc_id_ioctl to intel_crtc.c
  drm/i915/display: move enum i9xx_plane_id to intel_display_limits.h

 drivers/gpu/drm/i915/display/intel_crtc.c       | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h       |  4 ++++
 drivers/gpu/drm/i915/display/intel_display.c    | 17 -----------------
 drivers/gpu/drm/i915/display/intel_display.h    | 13 -------------
 .../gpu/drm/i915/display/intel_display_limits.h | 10 ++++++++++
 drivers/gpu/drm/i915/gvt/cmd_parser.c           |  1 -
 drivers/gpu/drm/i915/i915_driver.c              |  4 ++--
 7 files changed, 33 insertions(+), 33 deletions(-)

-- 
2.39.2

