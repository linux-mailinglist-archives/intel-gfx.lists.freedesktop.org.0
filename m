Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +E4RETrq1Wkd/QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5683B7445
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4308510E512;
	Wed,  8 Apr 2026 05:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wi4JXj1d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CA910E511;
 Wed,  8 Apr 2026 05:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775626802; x=1807162802;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DEVffQTI7UkFxsd6jnaROqTUkNvJu6Mz0sDYSJxaH9k=;
 b=Wi4JXj1d8TGI6ZUU2LwVrq/unNohHwWiumO2YVGvgg5NY694I7gvZBhM
 YafiNezMZCkebSCVfIb+A7Gfw/Y6EeMjPfGpTyD41akSn39ari85sL9mQ
 LZKFVuKAo58zDOrtV/zlCNj5uAQS9ZaN/GpXgbnjs8YKinNlI8RpZ59Mu
 hpwreGd5RnJ4weZZA37tKJLq5F0eo2NhsjFT/Lg7g2O/f9YzVvaTl0Uy4
 ETaWHMdShAutxGcE6pgXr8S2y9ZJNLaZNpF4ggowG7c9872bEWP8ZGKdL
 6AGQp07ggW1a1YwGjsiG5BB935rw+Bn8APmZDz0wQl+DtVAs81v/PD66N w==;
X-CSE-ConnectionGUID: LjLJUrkbTeeNltkv6KQzrQ==
X-CSE-MsgGUID: HlPWx/bfQSqHjOIpVgskhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80194836"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80194836"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 22:40:02 -0700
X-CSE-ConnectionGUID: 2i1fYmdoS8eHq+uzUhlnBQ==
X-CSE-MsgGUID: IfsICQvbQo2SsXL6yKYjEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251517916"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 07 Apr 2026 22:39:55 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 00/13] drm/i915/color: Enable SDR plane color pipeline
Date: Wed,  8 Apr 2026 10:45:01 +0530
Message-Id: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CE5683B7445
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

The series also fixes an issue in HDR pre-CSC LUT programming where the
loop condition prevented the last entries from being programmed.

v2:
 - Naming changes [Pekka]
 - Adds YUV color range correct block

Chaitanya Kumar Borah (8):
  drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
  drm/i915/color: Add CSC on SDR plane color pipeline
  drm/i915/color: Program fixed-function CSC on SDR planes
  drm/i915/color: Add support for 1D LUT in SDR planes
  drm/i915/color: Add color pipeline support for SDR planes
  drm/i915/color: Add YCbCr limited-to-full range color block support
  drm/i915/color: Program plane YUV range correction colorop
  drm/i915/color: Add YUV range correction to SDR plane pipeline

Pranay Samala (5):
  drm/i915/color: Fix HDR pre-CSC LUT programming loop
  drm/i915/color: Extract HDR pre-CSC LUT programming to helper function
  drm/i915/color: Program Pre-CSC registers for SDR
  drm/i915/color: Extract HDR post-CSC LUT programming to helper
    function
  drm/i915/color: Program Plane Post CSC registers for SDR planes

 drivers/gpu/drm/drm_atomic.c                  |   4 +
 drivers/gpu/drm/drm_atomic_uapi.c             |   4 +
 drivers/gpu/drm/drm_colorop.c                 | 107 +++++++
 drivers/gpu/drm/i915/display/intel_color.c    | 288 +++++++++++++-----
 .../drm/i915/display/intel_color_pipeline.c   |  44 ++-
 .../drm/i915/display/intel_display_limits.h   |   2 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_plane.c    |  15 +-
 .../drm/i915/display/skl_universal_plane.c    |  33 ++
 include/drm/drm_colorop.h                     |  84 +++++
 include/uapi/drm/drm_mode.h                   |  12 +
 11 files changed, 503 insertions(+), 93 deletions(-)

-- 
2.25.1

