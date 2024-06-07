Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D518FFDCD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 10:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A008F10EB85;
	Fri,  7 Jun 2024 08:07:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEiSOwwM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C1E10E29C;
 Fri,  7 Jun 2024 08:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717747638; x=1749283638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iAoPLi6osLCFahj+0rygf9OnYYxDsjbURMbNOy7AMvU=;
 b=LEiSOwwMV+kx6M+pTfIEp4vW2KJBaaZgnuYTRH/M/VkyPy3Oe8vJ3EWX
 oDZEGBR7qK88rmQQR/7707XdVGtEWadsk7BepILrvWnikPHEs7hL9D9KK
 1rmlN7i3I3nxPPfa3A0nl++UMbWtN6Ps/ua/mffmktrxCxVe2aGJfibHR
 xg5K6GwT28Xc/4MZjZFmyUlo/AlKUZBHZ+dGfdAt0AxNtWF9FO9yRxvUU
 OJze9XfZECpnRJjIkzCgt047zYB4GPRuKPud4BZof/rLo7fzEOUgKw99z
 fJ16QB/6OOuqx4P36A8P2p/I8szZj0hkg+eVLN5F6rbKvor3u68AHkqDL g==;
X-CSE-ConnectionGUID: Rzcdp3RhThyReY0fB11HYA==
X-CSE-MsgGUID: +FzuYfqsRDCDJhn/QzKbVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18310281"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="18310281"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 01:07:17 -0700
X-CSE-ConnectionGUID: 5LE/5qtBRsaMLm8SEUo2Zg==
X-CSE-MsgGUID: /0woxj++S/uY4EvwZPAeFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="42704879"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.72])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 01:07:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/2] drm/i915: do not select ACPI_BUTTON
Date: Fri,  7 Jun 2024 11:07:06 +0300
Message-Id: <060d687c3a80cd94f065e637200dd10fea7b979f.1717747542.git.jani.nikula@intel.com>
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

We stopped using ACPI button in commit 05c72e77ccda ("drm/i915: Nuke the
LVDS lid notifier"). Also stop force enabling the ACPI_BUTTON config.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Closes: https://lore.kernel.org/r/ZmGsJsXhHcPV48XJ@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 5932024f8f95..faa253b27664 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -29,7 +29,6 @@ config DRM_I915
 	select X86_PLATFORM_DEVICES if ACPI
 	select ACPI_WMI if ACPI
 	select ACPI_VIDEO if ACPI
-	select ACPI_BUTTON if ACPI
 	select SYNC_FILE
 	select IOSF_MBI if X86
 	select CRC32
-- 
2.39.2

