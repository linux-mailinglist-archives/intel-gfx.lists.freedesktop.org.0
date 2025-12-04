Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E3BCA3557
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2362210E920;
	Thu,  4 Dec 2025 10:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atBqGlAp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF33410E1D0;
 Thu,  4 Dec 2025 10:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845880; x=1796381880;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xdItkNscJAkndEAMwIfHGvD6+s3HUR7E2E0y8M6YuMM=;
 b=atBqGlAp7CnSevdPX54/1iGSBIBTdaP1hpl5gOtlQ81mvIGCVMsBaQIS
 v57jBCwRphliQYO1sZTnCvXTKqpn2tC/flxhMCHU7EuNZGR55v8KSPiGn
 Ywf84a89O25a3IiHAu97K98AUbHqIAZr1ryf9qOY+HGJQu7BxQT8zxeRN
 J+h4g4uSeoHbxqYbgNsb9VpvM23AelbuQGmsMgSuxVRL32NScezw0tnvP
 wS+L+ZwG7lEgWYKstSrPP3vu66rXJbBxW2fg3YCLWh0xMBFti3LPHlVWN
 sD4q0fCIN+R2vVtcDjBBLpuNpS4JHeOVW0nrAvWAKjgU6SX8lkYVmtyxN Q==;
X-CSE-ConnectionGUID: cqrJUByZTqiJgpuVEdm8oQ==
X-CSE-MsgGUID: 25szQGSvT5aaQZk0jc7pww==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78326963"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78326963"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:00 -0800
X-CSE-ConnectionGUID: WxryBZQ7TZiMUSXutRfR3w==
X-CSE-MsgGUID: M6ymE+9nT6yAwpKyOKFOZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064560"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:57:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 00/25] drm/vblank: refactoring and cleanups
Date: Thu,  4 Dec 2025 12:57:28 +0200
Message-ID: <cover.1764845757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

v2 of [1], hopefully addressing all review comments.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1762791343.git.jani.nikula@intel.com


Jani Nikula (24):
  drm/vblank: remove drm_wait_one_vblank() completely
  drm/vblank: remove superfluous pipe check
  drm/vblank: add return value to drm_crtc_wait_one_vblank()
  drm/vblank: limit vblank variable scope to atomic
  drm/vblank: use the drm_vblank_crtc() and drm_crtc_vblank_crtc()
    helpers more
  drm/vblank: prefer drm_crtc_vblank_crtc() over drm_vblank_crtc()
  drm/vblank: pass vlank to drm_vblank_get()/_put()/_count()
  drm/vblank: pass vblank to drm_update_vblank_count()
  drm/vblank: pass vblank to drm_handle_vblank_events()
  drm/vblank: use the vblank based interfaces more
  drm/vblank: pass vblank to drm_queue_vblank_event()
  drm/vblank: pass vblank to drm_wait_vblank_reply()
  drm/vblank: pass vblank to drm_vblank_count_and_time()
  drm/vblank: pass vblank to drm_reset_vblank_timestamp()
  drm/vblank: pass vblank to store_vblank()
  drm/vblank: pass vblank to drm_vblank_enable()
  drm/vblank: merge drm_vblank_restore() into drm_crtc_vblank_restore()
  drm/vblank: add drm_crtc_from_vblank() helper
  drm/vblank: pass vblank to __get_vblank_counter() and
    drm_max_vblank_count()
  drm/vblank: pass vblank to __{enable,disable}_vblank()
  drm/vblank: pass vblank to drm_get_last_vbltimestamp()
  drm/vblank: pass vblank to drm_vblank_disable_and_save(), make static
  drm/vblank: reduce pipe checks
  drm/vblank: clean up debug logging

Thomas Zimmermann (1):
  drm/vblank: Unexport drm_wait_one_vblank()

 drivers/gpu/drm/drm_internal.h    |   7 +-
 drivers/gpu/drm/drm_vblank.c      | 533 ++++++++++++++----------------
 drivers/gpu/drm/drm_vblank_work.c |  12 +-
 include/drm/drm_vblank.h          |   3 +-
 4 files changed, 257 insertions(+), 298 deletions(-)

-- 
2.47.3

