Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YOFyB8NpMmp2zgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:32:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4F2697EF5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:32:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DA2GmcV0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3538610E9A6;
	Wed, 17 Jun 2026 09:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC1910E9A6;
 Wed, 17 Jun 2026 09:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781688766; x=1813224766;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GQJwTLazAa0kXh70i3S6u0TA/ke8d60B8+yFBtlp5Tc=;
 b=DA2GmcV05JejyITilLoDiAWX+7rDEsJAidZ1huWyk61rzCveLNG+u0GB
 t+J08U6fW+eCBjxl1SaPtNFfwbPLz1FX2ef/NgpKnkJEkO9rU758fUoh4
 Q/yleuT+CvehSYEgvwb8W0MIubA8Cf4Q44HFZbwD0zUmm+ScsTfdA7sEk
 xZqQTNah7O/VBhg6vm5w1/LnwQUNemvgRtjAGBp1v1o5Iq07jSQ8mTjP3
 iViXBC4BqyEOPkQ9L4LE1dc/l++Old+KHBNFxfn+/12BwZbLnThMACDi1
 yLctOS7ZoEKWyRtkWcSM9RhAM4oGEs8KMBpPmFk0Q/e4MePOOhfe66w16 Q==;
X-CSE-ConnectionGUID: aEzocGb8QVigv8gVtJtrDQ==
X-CSE-MsgGUID: +CzKtHaVSKOxtfPAPQbkrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605257"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605257"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:32:46 -0700
X-CSE-ConnectionGUID: /CM97ugNTjyOhoUsj6lGFg==
X-CSE-MsgGUID: YIuKaIUkTbS7Gy6g1OTKSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245114424"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 17 Jun 2026 02:32:33 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>, Alex Hung <alex.hung@amd.com>,
 Daniel Stone <daniels@collabora.com>, Uma Shankar <uma.shankar@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Pranay Samala <pranay.samala@intel.com>,
 Swati Sharma <swati2.sharma@intel.com>,
 Naveen Kumar <naveen1.kumar@intel.com>
Subject: [v3 00/14] drm/i915/color: Enable SDR plane color pipeline
Date: Wed, 17 Jun 2026 14:38:05 +0530
Message-Id: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.freedesktop.org:from_smtp,bootlin.com:email,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,igalia.com:email,emersion.fr:email,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C4F2697EF5

This series adds color pipeline support for SDR planes in i915 and
exposes the functionality to userspace through the DRM colorop
framework.

In contrast to HDR planes, SDR planes have LUTs with smaller sizes
and a fixed function CSC block in contrast to a programmable CTM.

The series first introduces a new DRM colorop type,
DRM_COLOROP_FIXED_MATRIX, which represents fixed-function CSC blocks where
userspace selects predefined hardware conversion modes instead of
programming arbitrary matrices. It also adds the YUV correction HW block.
With this the color pipeline can accept both limited range and full range
YUV framebuffers.

With that, the SDR plane color pipeline looks like.

[YUV Range Correct] -> [1D LUT] -> [CSC] -> [1D LUT]

v2:
 - Naming changes [Pekka]
 - Adds YUV color range correct block

v3:
 - Fix NC matrix enum name and string [Melissa]
 - Extract and simplify glk_plane_color_ctl_input_csc into
   helpers (new prep patches)
 - Restructure SDR pre/post-CSC LUT loops to match HDR function
   pattern
 - Drop HDR pre-CSC LUT clamping fix (submitted separately)
 - Rebase

IGT series (needs update): https://patchwork.freedesktop.org/series/165021/
A rough updated IGT implementation with some additional test can be found here.
https://github.com/ckborah/igt-sandbox/tree/color/sdr-sw-ref

Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Louis Chauvet <louis.chauvet@bootlin.com>
Cc: Melissa Wen <mwen@igalia.com>
Cc: Simon Ser <contact@emersion.fr>
Cc: Alex Hung <alex.hung@amd.com>
Cc: Daniel Stone <daniels@collabora.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@intel.com>
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Cc: Pranay Samala <pranay.samala@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Naveen Kumar <naveen1.kumar@intel.com>

Chaitanya Kumar Borah (10):
  drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
  drm/i915/color: Add CSC on SDR plane color pipeline
  drm/i915/display: extract glk_plane_color_ctl_input_csc helper
  drm/i915/display: simplify glk_plane_color_ctl_input_csc
  drm/i915/display: Track CSC mode in intel plane state
  drm/i915/display: Program input CSC on SDR planes
  drm/i915/color: Add YCbCr limited-to-full range color block support
  drm/i915/color: Add YUV range correction to SDR plane pipeline
  drm/i915/color: Add support for 1D LUT in SDR planes
  drm/i915/color: Add color pipeline support for SDR planes

Pranay Samala (4):
  drm/i915/color: Extract HDR pre-CSC LUT programming to helper function
  drm/i915/color: Program Pre-CSC registers for SDR
  drm/i915/color: Extract HDR post-CSC LUT programming to helper
    function
  drm/i915/color: Program Plane Post CSC registers for SDR planes

 drivers/gpu/drm/drm_atomic.c                  |   4 +
 drivers/gpu/drm/drm_atomic_uapi.c             |   7 +
 drivers/gpu/drm/drm_colorop.c                 | 106 +++++++++++++
 drivers/gpu/drm/i915/display/intel_color.c    | 140 +++++++++++++++---
 .../drm/i915/display/intel_color_pipeline.c   |  43 +++++-
 .../drm/i915/display/intel_display_limits.h   |   2 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_plane.c    |  15 +-
 .../drm/i915/display/skl_universal_plane.c    |  84 ++++++++---
 include/drm/drm_colorop.h                     |  84 +++++++++++
 include/uapi/drm/drm_mode.h                   |  12 ++
 11 files changed, 447 insertions(+), 53 deletions(-)

-- 
2.25.1

