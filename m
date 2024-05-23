Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80328CD9ED
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC6210EFF8;
	Thu, 23 May 2024 18:28:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3iqQjoK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 989C010EFF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 18:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716488903; x=1748024903;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9ZfGOZegrBAjbUYabm8Saa5Q+XIfc+P/iCOF4JNLEaI=;
 b=k3iqQjoK2TshaetLeZif0VLyGfVKyB0HbClCPZvDxsgcD8QYCiPj6YLh
 M7zs5UiJZ+OoymAwJ0XIX5xYSvMcjXbcl7kWz4BGt+diC/Io3c26FqaLk
 4CMDAcQ7crwlDYL+wnuGRNGS9IRqFnSZYpGQ/7dOhodb6wjjmf1Y8vXM/
 s8I0JZnt0P/0CVC1EekIbRIwxrcDvwRBR1Bd8cyHBZWrZsGRBXkfv2rka
 zAd4QhIlRKil4e9Q8urXVtXJMGH4f+CFBoyXYoVTbe4NPTIpbVVR3zqOW
 B7zrjFRaXv6lBaZCOr80DLr4UxAH3RY4jZ/2HAF7+OhiV98TvaYAVbOhg Q==;
X-CSE-ConnectionGUID: qfF/FZEkTQmRpaMUZ/5puw==
X-CSE-MsgGUID: FbV+kwU/R3GaaJAVi2SIrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12665083"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12665083"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:28:21 -0700
X-CSE-ConnectionGUID: j3REHhEGRmGV35qagUKmRA==
X-CSE-MsgGUID: VOWWKDrZTuuKryFmHztPig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33730539"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 11:28:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 21:28:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915: intel_color_check() cleanup
Date: Thu, 23 May 2024 21:28:15 +0300
Message-ID: <20240523182818.15382-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Eliminate the crtc_state->state footgun from intel_color_check(),
and hide some mundane C8 plane details inside it.

Ville Syrjälä (3):
  drm/i915: Plumb the entire atomic state into intel_color_check()
  drm/i915: Hide the intel_crtc_needs_color_update() inside
    intel_color_check()
  drm/i915: Bury c8_planes_changed() in intel_color_check()

 drivers/gpu/drm/i915/display/intel_color.c   | 125 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_color.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c |  26 +---
 3 files changed, 85 insertions(+), 70 deletions(-)

-- 
2.44.1

