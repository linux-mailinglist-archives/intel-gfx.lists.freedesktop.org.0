Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A708FFDCE
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 10:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4593410E034;
	Fri,  7 Jun 2024 08:07:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SwpsC3Fc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E20410EB89;
 Fri,  7 Jun 2024 08:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717747642; x=1749283642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y0GsHs0fVel1c9uhFU7MioI6x/QObgB8Yy5GMBYN9xk=;
 b=SwpsC3FcDKVludXp4/cV8YXeatrkEvvxkMG27PFPI0IP6zq8B/LpX2Mi
 np7yL18HBNPcJw7SZjvaFC0Hl6ydPRNKT+zlD2rHgDXxs9lJ4SdZkezsg
 VTmwlVTeyhm2ChBonndOYhK6OmIRPppWMH0gNAZ92hj7ieDYShmF6x0eE
 OcM1L9gNOGFFPUZe1DYq++6YAoDv33VKtYkBfIPar+hSZomeouvkmDTh6
 9/bnpw+AgTFueJlS5NyMcPkYBmFmpgZXsPei81QmFoZ0yS5Zfhs9OObED
 v6uOWMygVvXy+/LUNywKHoA1ZpsaZPkH6MuojihY6829/k/YvMzRV4uNT Q==;
X-CSE-ConnectionGUID: lO1qrTPgQhmQxSn6Yb+9bA==
X-CSE-MsgGUID: 6y7OLTcASFGeTdKShD8rug==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18310311"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="18310311"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 01:07:22 -0700
X-CSE-ConnectionGUID: LAVUTRdoQQeOoNCskBWUGw==
X-CSE-MsgGUID: qGQdISvTReihBUwNU+Rpzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="42704887"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 01:07:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/2] drm/xe: do not select ACPI_BUTTON
Date: Fri,  7 Jun 2024 11:07:07 +0300
Message-Id: <1872adc6b20ce4c5ef55ba60a7233b31ace776fb.1717747542.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717747542.git.jani.nikula@intel.com>
References: <cover.1717747542.git.jani.nikula@intel.com>
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

The xe driver has never needed ACPI button. Selecting the kconfig is
just copy-paste from i915, which no longer needs it either. Stop
selecting ACPI_BUTTON.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Closes: https://lore.kernel.org/r/ZmGsJsXhHcPV48XJ@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
index 63f1e2d1649f..7bbe46a98ff1 100644
--- a/drivers/gpu/drm/xe/Kconfig
+++ b/drivers/gpu/drm/xe/Kconfig
@@ -25,7 +25,6 @@ config DRM_XE
 	select BACKLIGHT_CLASS_DEVICE if ACPI
 	select INPUT if ACPI
 	select ACPI_VIDEO if X86 && ACPI
-	select ACPI_BUTTON if ACPI
 	select X86_PLATFORM_DEVICES if X86 && ACPI
 	select ACPI_WMI if X86 && ACPI
 	select SYNC_FILE
-- 
2.39.2

