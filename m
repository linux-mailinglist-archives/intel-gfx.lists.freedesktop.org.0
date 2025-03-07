Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D59A5719D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 20:25:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D5F10E174;
	Fri,  7 Mar 2025 19:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O2g8oFtx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75EEA10E174;
 Fri,  7 Mar 2025 19:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741375547; x=1772911547;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=ILAUj8VaVxbUEkweGCHJEi+myRyCQYk0cyeKsyIaOKc=;
 b=O2g8oFtxz1A2gfxhE2ifIuITZs4Hp1p8ii5Gwt5RyVsGLx7/PtW0G2L0
 IsEjgDHgot1trFdtSbrqe0BmzX/44cXvI75ped3bgLDLtefDSwiKtCmze
 7lb1iC+fAE4fOPi4yVkkZd6ndza86hXxpwtPBEpQhjuLwAel6eKB7bIHZ
 wJCw0v3U0XWif4mJ4XJne9IoOn11OqCH88Wlc4rlPB2Gl3f5GW1A9q9w0
 yurq063QAsHzRgvGNo8Fy9l0DnK9eg7GU0maNDkRMpJ1aMs9n/9xy4UWP
 yT9lTd4jjHbAj2KWffExMJcXyuXYmAhKiamtZaI6eWxbcoxTp0P7Gs1yq g==;
X-CSE-ConnectionGUID: Cag4Ss3SToe1FCkJUdc1CA==
X-CSE-MsgGUID: zFBkm8o3TkGbuSNHZrtGuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42315898"
X-IronPort-AV: E=Sophos;i="6.14,230,1736841600"; d="scan'208";a="42315898"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 11:25:46 -0800
X-CSE-ConnectionGUID: hFRUEEy2R/aRFNNr2vg4oQ==
X-CSE-MsgGUID: 3qUDQimmTEOcYiRomscH5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="156622575"
Received: from tjmaciei-mobl5.ger.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.129])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 11:25:45 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v3 0/3] drm/i915/xe3lpd: Update bandwidth parameters
Date: Fri, 07 Mar 2025 16:25:10 -0300
Message-Id: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABZIy2cC/5XOvQ6CMBiF4VsxnS3pj43WyfswDLX9oF8ClLQFM
 YR7tzC5Or7DeXJWkiAiJHI/rSTCjAnDUEKeT8R6M7RA0ZUmggnFhLjRBWQ3Ovoyg3ujy55OozM
 ZaMM4V1pbZiWQsh4jNLgc8rMu3cTQ0+wjmB+PX7mSSrHqIjXTlNN2StnMoUphSuaBQ4ausqHfQ
 Y8ph/g5ns5iZ/9F6m3bvj8EqpLxAAAA
X-Change-ID: 20250228-xe3lpd-bandwidth-update-f011599c0c3e
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Bandwidth parameters for Xe3_LPD have been updated with respect to
previous display releases. Encode them into xe3lpd_sa_info and use that
new struct.

Since we are touching intel_bw.c, also take the opportunity convert it
to intel_display.

Changes in v2:
  - Fix typo in patch #2.

Changes in v3:
- Squash patches #1 and #2 into a single one and modify it to convert
  intel_bw.c internally to intel_display (new patch subject is
  "drm/i915/display: Convert intel_bw.c internally to intel_display").
- Add a new patch #2 to convert intel_bw.c externally to intel_display.
- Link to v2: https://lore.kernel.org/r/20250217153550.43909-1-gustavo.sousa@intel.com

---
Gustavo Sousa (3):
      drm/i915/display: Convert intel_bw.c internally to intel_display
      drm/i915/display: Convert intel_bw.c externally to intel_display
      drm/i915/xe3lpd: Update bandwidth parameters

 drivers/gpu/drm/i915/display/intel_bw.c            | 440 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_bw.h            |   9 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c         |   3 +-
 .../gpu/drm/i915/display/intel_display_driver.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  10 +-
 drivers/gpu/drm/i915/i915_driver.c                 |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c            |   2 +-
 7 files changed, 245 insertions(+), 223 deletions(-)
---
base-commit: f811577f424491a57b1e8669bde62998227d6907
change-id: 20250228-xe3lpd-bandwidth-update-f011599c0c3e

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>

