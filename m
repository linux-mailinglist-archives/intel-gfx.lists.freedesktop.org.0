Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074DFA5CB8D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B0110E242;
	Tue, 11 Mar 2025 17:05:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aU4SWK8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B97B010E242;
 Tue, 11 Mar 2025 17:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712753; x=1773248753;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=IsvetmUbuEXszjjUCqmLWQOAnMrEIcOr1qr23OBehJw=;
 b=aU4SWK8Eh9eLCOMlMWLVgD0msAWmRpxXOAoumkXZtNDzVm9AdXlHS/NC
 oENaz7SFiuLDVevmAlNlPUGUIcg1qWoMeQKZO8ztz5Eth7icAcv0cK8Pr
 VKugaRebyxkgxG1xsgten3ZRQW+AEjLBxBSbMv9c2fq8dN4edSdi8iue0
 9suEOxK3jDUvDFJ1jMFqTIZdopVKBCCNwpCdVaKVSh7SCBcSbuY2MU0s+
 WbwiYPiCC97MdByrEjLB9hiU6wduYvhUbzS4wXUVWAllPJtZKosAaWltG
 ysq6EWuaaLgAMh2+m+mj1XdccgWAw+7i6uDwMv4gLJn3usd08Dra4rg4f A==;
X-CSE-ConnectionGUID: Hqs7WOpXQ+2j4MJ7hCSr0g==
X-CSE-MsgGUID: 5DGDppudRAK2fPfvzjIpgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53405648"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="53405648"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:05:52 -0700
X-CSE-ConnectionGUID: YeGLyrKpSdyA57QMtSHBCQ==
X-CSE-MsgGUID: lzk8fdROQzC+fxBqt8Ycow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="157581924"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:05:51 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v5 0/3] drm/i915/xe3lpd: Update bandwidth parameters
Date: Tue, 11 Mar 2025 14:04:49 -0300
Message-Id: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADFt0GcC/5XPTW7DIBQE4KtErIv1+EtMVr1H1QWYR4yUGAswT
 RX57sXZ1KqURZezmE8zD5IxBczkfHiQhDXkEKcW1NuBDKOZLkiDa5lw4Ao47+kdxXV21JrJfQV
 XRrrMzhSkHhhTWg8wCCStPSf04f6UPz5b9ineaBkTmp3HTkwJpaCTQoOmjF6WXEyNXY5LNu9hK
 njthnjbwDHkEtP3c2nlG/tfZJtRxW9TwOnlnSooUNVbiz3zR2X9X0fuHAavHdkcyTTTR2lBSLd
 31nX9ARhKhAOBAQAA
X-Change-ID: 20250228-xe3lpd-bandwidth-update-f011599c0c3e
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
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

Changes in v4:
- Prefer intel_uncore_read() for MCHBAR registers. (Ville)
- Link to v3: https://lore.kernel.org/r/20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com

Changes in v5:
- Do not include intel_de.h anymore. (Ville)
- Link to v4: https://lore.kernel.org/r/20250310-xe3lpd-bandwidth-update-v4-0-4191964b034d@intel.com

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
base-commit: f8df428b3850ed87a1e2f3b12b6025328d8a6373
change-id: 20250228-xe3lpd-bandwidth-update-f011599c0c3e

Best regards,
-- 
Gustavo Sousa <gustavo.sousa@intel.com>

