Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F306A38D59
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 21:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A655C10E5DF;
	Mon, 17 Feb 2025 20:37:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMHfL9Pf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E574510E5D9;
 Mon, 17 Feb 2025 20:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739824657; x=1771360657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5WUSZhP1tKcULtQsyVOYCTJUee35SmsiQaaK61VmjX4=;
 b=MMHfL9Pf7C05+ofVaUiO/3FJJaO67wnXwPbwxKo1vhCk3l63dDuuGK1I
 X/ZgqdSbfv23+StRUXTgXtOxu9/Dyf8AMLo1sgVXIxoMCqNjtDqhqb5M0
 X1E4ysoLGtzwfNE660UJnnbjFjh+FYYw+5SHrHTy4oy9zYtIbKbLfL7Wn
 7vTLpxASSVkSx0ERp0JT1qPAdP9CA9co20dTkan6NrPgpf7XVgXmJeOAs
 0gkEnFihUZK2teguMdOgGzdPWo36/tOwLJaMu3rXsqtFNsyFRC1x2IR5x
 T3DF3j3JbMVYuPVn+TFJ5UztHyXKX8MUHGvj/a62Fn65U9+oYkHrmkxCU w==;
X-CSE-ConnectionGUID: ND2m0l3TQMGzKPcythH8wg==
X-CSE-MsgGUID: 7ZfjOVQ/S1eZSlxK4O9B9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="58043192"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="58043192"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:37 -0800
X-CSE-ConnectionGUID: kad+g2bRRqCojVxVf/4cLw==
X-CSE-MsgGUID: 6S9cQKWkQxWcCaAaLR1FBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114853226"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:35 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 2/3] drm/i915/display: Make POWER_DOMAIN_*() always result
 in enum intel_display_power_domain
Date: Mon, 17 Feb 2025 17:34:27 -0300
Message-ID: <20250217203722.87152-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250217203722.87152-1-gustavo.sousa@intel.com>
References: <20250217203722.87152-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

In the hope of contributing to type safety in our code, let's ensure
that the type returned by the POWER_DOMAIN_*() macros is always of type
enum intel_display_power_domain.

v2:
  - Remove accidental +1 in definition of POWER_DOMAIN_PIPE(). (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 4ad35bd4b040..1b53d67f9b60 100644
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

