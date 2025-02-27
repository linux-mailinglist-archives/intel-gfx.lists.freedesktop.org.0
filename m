Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A67FA48A4F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 22:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C858D10EB94;
	Thu, 27 Feb 2025 21:10:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M3CaGKcZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FF610EB93;
 Thu, 27 Feb 2025 21:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740690607; x=1772226607;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=tFPK7CStStsUay37/1ntbphW86S8DsQ1dPIoraGqAlM=;
 b=M3CaGKcZE8bcByG26460elx5WK3Dwpx1SsTE+Nh302RtvRQFqdTVSxim
 opseF9OstN0LObLfyzdGR7J7iB0CUlqiwbdHO5DU0kqGvRJV7UXjJG3xt
 tqi+9rJhKl3LQmLM8S8uOBMTXGVRRYxhc9KUTdVYhciUWy6t5f0Q833rC
 YkPix9Pjl6QFAAj4VSKUTakJa9+5ru0UYwpmchubIFOSl1EH26vLVecgB
 N5fYk6HWS9dbFWpu0CEhFTilzgKUT6hlJ/GkLsZVQfBfuZ+C+lKmJ2IMb
 fXlFcvxUPNtd7us55mXrZ3xwLwdAE0vXAFpfwLAceYsuZVMksrNNFjfcI w==;
X-CSE-ConnectionGUID: tVBSzeNBSTKgWSSe4+fR+g==
X-CSE-MsgGUID: vEBU/tn+QHy3a7lFXl8MQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="40779460"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="40779460"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:10:06 -0800
X-CSE-ConnectionGUID: iFj/croIQCurf0hmWtahVA==
X-CSE-MsgGUID: +wKvzopsSbuXEfsPUyQaSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116907997"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:10:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 27 Feb 2025 18:09:13 -0300
Subject: [PATCH v3 2/2] drm/i915/display: Make POWER_DOMAIN_*() always
 result in enum intel_display_power_domain
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250227-improve-type-safey-power-domain-macros-v3-2-b6eaa00f9c33@intel.com>
References: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
In-Reply-To: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, 
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

In the hope of contributing to type safety in our code, let's ensure
that the type returned by the POWER_DOMAIN_*() macros is always of type
enum intel_display_power_domain.

v2:
  - Remove accidental +1 in definition of POWER_DOMAIN_PIPE(). (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 4ad35bd4b040f2fb0220376d443ad84ae2ecab48..1b53d67f9b60dea3eb6938b81ab483c0295c6ad3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -117,12 +117,13 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
-#define POWER_DOMAIN_PIPE(pipe) ((pipe) - PIPE_A + POWER_DOMAIN_PIPE_A)
+#define POWER_DOMAIN_PIPE(pipe) \
+	((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMAIN_PIPE_A))
 #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
-		((pipe) - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
+	((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
 #define POWER_DOMAIN_TRANSCODER(tran) \
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
-	 (tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A)
+	 (enum intel_display_power_domain)((tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A))
 
 struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);

-- 
2.48.1

