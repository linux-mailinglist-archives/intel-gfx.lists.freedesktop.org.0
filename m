Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7987DB83914
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D1B10E67D;
	Thu, 18 Sep 2025 08:41:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCL657YT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A4CD10E67C;
 Thu, 18 Sep 2025 08:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184868; x=1789720868;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yLzbpDG1JPMUIj/5mdtij8W6Nkzi/15azUzzRi2VDvc=;
 b=eCL657YT/xoEDDG2jQ2+ldEJbpaeXitNjUVGC2IRdp4pTQIy45fQu+JQ
 me41V6gK0YIgc36ebMTpXAH1HiY4tNFHwRfi8uTXoBuRDGEZijaxximHB
 mql2daj/GNpCK/DP3OrNbmWtgh9xywGsEWA0dtpRC5n31YKuye6rVn6qx
 +6vjWLi6E6tV1kUfTYb3QuosadezEJrm+aSSq2a4Q0GrQSS5febAYjmVU
 rgTADwkXka+NNraDcQCa6jZ33k0iK6wtpCkC6iiD+j1NOji304hNaFuKp
 1eVFAUNEm6lJ9qCxNbd8hNMcZuDf8DbdCKhJeAUJdoAMQUZG1viON9krP g==;
X-CSE-ConnectionGUID: BHGmP5QwQu+VcJqMGPBp+A==
X-CSE-MsgGUID: uStrWSc/RDC2gcz4CPp35w==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71611236"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71611236"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:07 -0700
X-CSE-ConnectionGUID: ysNUb6R2SN+uCeLu316zyQ==
X-CSE-MsgGUID: 8iGCtrSWSZq3jFDRH2JTMg==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 00/10] drm/{i915,xe}/fbdev: refactor
Date: Thu, 18 Sep 2025 11:40:50 +0300
Message-ID: <cover.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

v2 of [1], unifying the stride alignment and error paths first, rebasing
the rest on top.


[1] https://lore.kernel.org/r/cover.1756931441.git.jani.nikula@intel.com


Jani Nikula (10):
  drm/xe/fbdev: use the same 64-byte stride alignment as i915
  drm/i915/fbdev: make intel_framebuffer_create() error return handling
    explicit
  drm/{i915,xe}/fbdev: pass struct drm_device to intel_fbdev_fb_alloc()
  drm/{i915,xe}/fbdev: deduplicate struct drm_mode_fb_cmd2 init
  drm/i915/fbdev: abstract bo creation
  drm/xe/fbdev: abstract bo creation
  drm/{i915,xe}/fbdev: add intel_fbdev_fb_bo_destroy()
  drm/{i915,xe}/fbdev: deduplicate fbdev creation
  drm/{i915,xe}/fbdev: pass struct drm_device to
    intel_fbdev_fb_fill_info()
  drm/i915/fbdev: drop dependency on display in i915 specific code

 drivers/gpu/drm/i915/display/intel_fbdev.c    | 59 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 51 ++++------------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 11 ++--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 55 ++++-------------
 4 files changed, 86 insertions(+), 90 deletions(-)

-- 
2.47.3

