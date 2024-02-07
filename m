Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 870F984C1EC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 02:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACEB11303B;
	Wed,  7 Feb 2024 01:33:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMRHeE6J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5992011303B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 01:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707269629; x=1738805629;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+qzKmg19jIKNzm8rUjqF+HZTsE9FN4gkcyn0AUcDcP4=;
 b=PMRHeE6JVfR9TM7odEmPhD+/mzG1/VGx7Qmw2+tc2H2ZMcpFt4I9O8T5
 Mkrdl1CEBq7OwwfwsRCCxyVDsiU3yFePyKkxyMsoUXpMRMtGG4Qk/sSQ2
 Wpy5p94P7s5lD3J7wdwsxBv2K6ChunbDJDATCY2K04nXWSLu7jJ5D/Mww
 VtkBWBT8ka+zXV7xeWXvLfyVfeAskqVYMGVVWAJaOqZMJuNuMC3LnUHjL
 tFrqV7TT0H9bulipi9B/roK4+fWuOBxYsCpObM2XqGx9yobwPhzYC0vJO
 E4dza90BAOFsPlL9g32XDICJNDeiLmC7YPP7gdQkJ123idHTuRT1eYTf0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="18399587"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="18399587"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 17:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="824354009"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="824354009"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 06 Feb 2024 17:33:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Feb 2024 03:33:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/cdclk: Document CDCLK update methods
Date: Wed,  7 Feb 2024 03:33:34 +0200
Message-ID: <20240207013334.29606-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a bit of documentation to briefly explain the methods
by which we can change the CDCLK frequency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ca00586fdbc8..30dae4fef6cb 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -63,6 +63,15 @@
  * DMC will not change the active CDCLK frequency however, so that part
  * will still be performed by the driver directly.
  *
+ * Several methods exist to change the CDCLK frequency, which ones are
+ * supported depends on the platform:
+ * - Full PLL disable + re-enable with new VCO frequency. Pipes must be inactive.
+ * - CD2X divider update. Single pipe can be active as the divider update
+ *   can be synchronized with the pipe's start of vblank.
+ * - Crawl the PLL smoothly to the new VCO frequency. Pipes can be active.
+ * - Squash waveform update. Pipes can be active.
+ * - Crawl and squash can also be done back to back. Pipes can be active.
+ *
  * RAWCLK is a fixed frequency clock, often used by various auxiliary
  * blocks such as AUX CH or backlight PWM. Hence the only thing we
  * really need to know about RAWCLK is its frequency so that various
-- 
2.43.0

