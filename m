Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B46C082468C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E0610E4D9;
	Thu,  4 Jan 2024 16:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0EE210E0A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 16:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704386767; x=1735922767;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oIt84ush0jGPt2/RNkWr49bzQxTuilMPm+PrXdF+nHw=;
 b=e74vPrBNbSh7btGJI9VjNhPfmfXyWB0b/tWX5su84KBRbNU7ouoWcEDo
 HLHuEC7akJIAuXh09Isgpnfc1btD0omPDUBkGi5jU+CAVvUTcpadC3Nud
 ygcjNDkY6fAPrVEo1gD70Lg3O8RnWAK1+3X47CXHpy2uCdY179Tv0nbXf
 /vtAgMogvFqAxG4eGcO3NQLa1IEAs8glwrG5+Lwa2XRIpgmUEOUywXB/P
 DBzwQdCq2tIppzAGn2mANXJ8bRoO4AAaByYqAT8HpflNbI2aJdXNlBDfF
 6DNoTeXV78q2TmjqxNIzHNPfuB+f5UY8ebpYZ3c0SPLKN5tPu8LbplQxN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="401080996"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="401080996"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:46:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="22553614"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:46:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: don't make assumptions about intel_wakeref_t type
Date: Thu,  4 Jan 2024 18:46:00 +0200
Message-Id: <20240104164600.783371-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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
Cc: jani.nikula@intel.com, Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_wakeref_t is supposed to be a mostly opaque cookie to its
users. It should only be checked for being non-zero and set to
zero. Debug logging its actual value is meaningless. Switch to just
debug logging whether the async_put_wakeref is non-zero.

The issue dates back to much earlier than
commit b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker
with ref_tracker library"), but this is the one that brought about a
build failure due to the printf format.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/r/20240102111222.2db11208@canb.auug.org.au
Fixes: b49e894c3fd8 ("drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library")
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 5f091502719b..6fd4fa52253a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -405,8 +405,8 @@ print_async_put_domains_state(struct i915_power_domains *power_domains)
 						     struct drm_i915_private,
 						     display.power.domains);
 
-	drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
-		power_domains->async_put_wakeref);
+	drm_dbg(&i915->drm, "async_put_wakeref: %s\n",
+		str_yes_no(power_domains->async_put_wakeref));
 
 	print_power_domains(power_domains, "async_put_domains[0]",
 			    &power_domains->async_put_domains[0]);
-- 
2.39.2

