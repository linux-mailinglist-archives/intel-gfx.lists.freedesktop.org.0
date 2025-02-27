Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 588E1A48A4E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 22:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C25610EB93;
	Thu, 27 Feb 2025 21:10:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SbS6oB2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E4D10E111;
 Thu, 27 Feb 2025 21:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740690605; x=1772226605;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=xEEmNH2cbBy2OaFpGvVZlsnROpICze/lInZboQsB9eo=;
 b=SbS6oB2qg9lMG77rYUrVWK9JeUWn+K4jhEsUyRlzxAWl+NaILXpVet1u
 djyFSyb/gryxuB6YSo73tw4Wb3dBAKVt+AE43Ebgx8KOcjtS8kZR8rIWq
 VGQ4+f2ia3qJ5Sk88KACLuW33xgKbAs0drxQej+PzHMcCiz1TEi6KOvRO
 C49/nE7J4sbdnLQmwNT4LINmwL08KRTjSP1JqATKgGgUH36Hx0RNYk36D
 ScfUvzW+inp6lk4fi5+aFlve5hBzaGeKt9XASStD/vrsNPeC6SLwrKCVo
 59XcvOtDxMmSkPfwYNnd1Qdk49M8bmS3MO16JOJxPy8FZhlprqS1fUTky g==;
X-CSE-ConnectionGUID: FIWn19cAQ2ujIg1qGe81YQ==
X-CSE-MsgGUID: sONSi8gyT7u6mp3OfB3tmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40779459"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="40779459"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:10:05 -0800
X-CSE-ConnectionGUID: pmfgJNP4QBWctvDuC3V61Q==
X-CSE-MsgGUID: ZS1/YEsZR+ieyARgGe2z4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116907994"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:10:03 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 27 Feb 2025 18:09:12 -0300
Subject: [PATCH v3 1/2] drm/i915/display: Use explicit base values in
 POWER_DOMAIN_*() macros
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250227-improve-type-safey-power-domain-macros-v3-1-b6eaa00f9c33@intel.com>
References: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
In-Reply-To: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, kernel test robot <lkp@intel.com>, 
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

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index a3a5c1be8bab1fd6867cd8c38023b24bd5021cd4..4ad35bd4b040f2fb0220376d443ad84ae2ecab48 100644
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

