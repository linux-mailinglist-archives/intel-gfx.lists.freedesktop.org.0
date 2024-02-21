Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C93085D334
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 10:17:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4037210E40E;
	Wed, 21 Feb 2024 09:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j01n5MFb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B7910E683
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708507035; x=1740043035;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r/gmTcpgbEicmAWa6nWI4pL/fucRjshHFFjomTNluzk=;
 b=j01n5MFbRtgLwbovz5lEXEvEKcNVgVVUpT3LBRO817j1zAyhmnheLASN
 F2sWQ5Es1Ic8ZAmtYa3MJzsVpxKqWopDqMLTWLi+cYs2HVecfGW0KjG2Y
 esaPQrKQP6s6fmQ4knN8YdEliFoolBa6mYXwkl63Po6pfCYPQe4C30M1O
 4cdO+Xjvh6z7zjqacjI28/vGK0AgTOt9APF5OmtLtYz5Zm5AiQt6YvBHS
 cTU8LBqM9YEiZRQ2sw/N/DMpdf6wbjzl6/uqFxkDjRFMXjl0zVbzoVbwq
 jPLVzQIK0U5//zHQVs8KLNO08Apibb6evFl+552iKXd1qymRKJC3UCxzr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2795801"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="2795801"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="42554337"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:14 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Dongwon Kim <dongwon.kim@intel.com>
Subject: [RFC v1 0/3] drm/i915: Add support for XRandR Border property
Date: Wed, 21 Feb 2024 00:47:53 -0800
Message-ID: <20240221085246.808287-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
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

Some customers and users have expressed interest in adding borders
(or margins) to certain displays in their multi-display configurations.
To address this need, this patchset implements the XRandR Border
property as defined here:
https://cgit.freedesktop.org/xorg/proto/randrproto/tree/randrproto.txt#n2032

---

Patchset overview:

Patch 1: Create skl_program_crtc_scaler() to program scaler for crtc
Patch 2: Create and attach the Border property to DP and HDMI
Patch 3: Implement Border property by enabling crtc scalar

This series is tested using following method:
- Run the following xrandr command with different parameters:
xrandr --output HDMI-3 --pos 1920x0 --mode 1280x1024 --fb 3840x2160 --scale 2.11x2.11 --set "Border" 150,0,150,0

The following patch was also added to the modesetting driver to
implement the Border property:
https://gitlab.freedesktop.org/Vivek/xserver/-/commit/62abfc438f0d17fe7f88bf2826c9784c2b36443b

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Dongwon Kim <dongwon.kim@intel.com>

Vivek Kasireddy (3):
  drm/i915: Rename skl_pfit_enable() to skl_program_crtc_scaler()
  drm/i915: Attach the Border property to DP and HDMI connectors
  drm/i915: Apply border adjustments and enable scaler on the crtc

 drivers/gpu/drm/i915/display/intel_atomic.c   | 29 ++++++++++-
 .../gpu/drm/i915/display/intel_connector.c    | 49 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_connector.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 25 ++++++++--
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 .../drm/i915/display/intel_display_types.h    |  6 +++
 drivers/gpu/drm/i915/display/intel_dp.c       | 11 +++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 11 +++++
 drivers/gpu/drm/i915/display/skl_scaler.c     | 27 ++++++----
 drivers/gpu/drm/i915/display/skl_scaler.h     |  3 +-
 10 files changed, 149 insertions(+), 16 deletions(-)

-- 
2.43.0

