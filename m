Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7F0A38D58
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 21:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A70410E5D9;
	Mon, 17 Feb 2025 20:37:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRCsNgLJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E9410E21F;
 Mon, 17 Feb 2025 20:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739824655; x=1771360655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n/pKXPwhGX0lz5C5Jk229BuIJ4Ukvxr0UCsFA71iMNM=;
 b=LRCsNgLJJB8UgzRifBzRjk9z80a1+s5rWy66ERDuZo0mPuv5l70yk2ae
 K+do1clboaDcVDtuQNO5LQ6CFbvqFERnG3fOFN7l+Rg5tP0SpyUE9N3vt
 wIlwrt1uZSmKlAaAL9ti0jJmKbgXg3UnzVnpY6FWYzDax/9d9HC/WXRaS
 43dJR9CarrUh+tNhlQXhV2a9MMgseAXiQ/M7MpSi6+PY0gygpzPSyi0L+
 TB7VCiWENvWaJwVEqGfpNMryJjGLxHTxl+Ji6AKRxRwfODfqkvjA0gE/S
 QIBr6kEyoetZN7ZhyAyc1XBhCKkEx5uUd6jSz/Fhyi4MO8VQ94nkQ1QMa Q==;
X-CSE-ConnectionGUID: 88QNWFoxT3WupmU25oyaWA==
X-CSE-MsgGUID: du7/PCktRzmjxjkhy01JzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="58043191"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="58043191"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:35 -0800
X-CSE-ConnectionGUID: 16Do3XYCSuSyC2iwIHLxFg==
X-CSE-MsgGUID: TrjnykeGSsmw9odDoVHcfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114853223"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:34 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 1/3] drm/i915/display: Use explicit base values in
 POWER_DOMAIN_*() macros
Date: Mon, 17 Feb 2025 17:34:26 -0300
Message-ID: <20250217203722.87152-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250217203722.87152-1-gustavo.sousa@intel.com>
References: <20250217203722.87152-1-gustavo.sousa@intel.com>
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

Although we have comments in intel_display_limits.h saying that the
code expects PIPE_A and TRANSCODER_A to be zero, it doesn't hurt to add
them as explicit base values for calculating the power domain offset in
POWER_DOMAIN_*() macros.

On the plus side, we have that this:

 * Fixes a warning reported by kernel test robot <lkp@intel.com>
   about doing arithmetic with two different enum types.
 * Makes the code arguably more robust (in the unlikely event of those
   bases becoming non-zero).

v2:
  - Prefer using explicit base values instead of simply casting the
    macro argument to int. (Ville)
  - Update commit message to match the new approach (for reference, the
    old message subject was "drm/i915/display: Use explicit cast in
    POWER_DOMAIN_*() macros").

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index a3a5c1be8bab..4ad35bd4b040 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -117,12 +117,12 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
-#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
+#define POWER_DOMAIN_PIPE(pipe) ((pipe) - PIPE_A + POWER_DOMAIN_PIPE_A)
 #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
-		((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
+		((pipe) - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
 #define POWER_DOMAIN_TRANSCODER(tran) \
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
-	 (tran) + POWER_DOMAIN_TRANSCODER_A)
+	 (tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A)
 
 struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
-- 
2.48.1

