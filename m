Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D3AA489DC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 21:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3693D10EB7E;
	Thu, 27 Feb 2025 20:28:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Al2mU1zb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5947E10EB7C;
 Thu, 27 Feb 2025 20:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740688126; x=1772224126;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=PZuAc6CGQy9DNgtqT2ssodkLZ8Akzz8WdFvOTRzmY40=;
 b=Al2mU1zbcklIIEzRcgjn/km5Y2L50NnhpYfX/h4MxpB1I8RjGjY6QYqi
 QFK1SJakvKoYEyZpA3lH90Kquo59aKoR7Sh/l9/hp0hV3FmIDDNRoABQ8
 bplscMI4F5cEK+M0iA10clNTWGHlyQIf60UaSO4s33djj9/Lt2YmlkoI0
 +x2SnVOhCpN74LjO6Sx1z+XfPQ+kV/ImBkaRG9nJm1uRUjg28AyVrfboK
 VZ9TU+tsorvx3EQW3ZegstP0bDkcimtytN+d5HSg8ZfIAmO3nFn+3/Iz+
 erN8qQ8YhOETH9GEgV3j0zbjqgfqxbqBW/I/s/LwHqc0z5m/lgJ1JQRkh Q==;
X-CSE-ConnectionGUID: VZ1xSrRdT+S+Daw0Pzpm0w==
X-CSE-MsgGUID: 3hpGcbGtRQesY2w7FV5cVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41855747"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="41855747"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 12:28:46 -0800
X-CSE-ConnectionGUID: lF7Q/TfmT1OzdzZs4RK3wA==
X-CSE-MsgGUID: ZfH7h5oyRPKNXttAcN8rRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="121724621"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.70])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 12:28:45 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 27 Feb 2025 17:28:17 -0300
Subject: [PATCH v2 1/2] drm/i915/display: Use IP version check for
 Wa_14020863754
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-xe3lpd-wa-14020863754-v2-1-92b35de1c563@intel.com>
References: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
In-Reply-To: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
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

Wa_14020863754 applies to the display IP, so we should be checking on
display IP version instead of platform. So, let's replace
display->platform.battlemage with the proper IP version check (14.01 for
Xe2_HPD).

Furthermore, for workarounds, we should be checking on full IP versions
to avoid applying the workaround to some variant of the IP that could
theoretically appear in the future (which is likely to have a different
minor release number), since the issue addressed by the workaround could
be fixed in such new release.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index aaba438ab41e3c1c06d609593dc40dff33785d3a..115c30a5ff70063850e45ab40527d1c17d0173b4 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -190,7 +190,8 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
  */
 static bool needs_wa_14020863754(struct intel_display *display)
 {
-	return DISPLAY_VER(display) == 20 || display->platform.battlemage;
+	return DISPLAY_VERx100(display) == 2000 ||
+		DISPLAY_VERx100(display) == 1401;
 }
 
 /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */

-- 
2.48.1

