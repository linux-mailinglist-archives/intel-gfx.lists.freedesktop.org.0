Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE7B8D2399
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E0310F088;
	Tue, 28 May 2024 18:57:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aCQNgZKS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CE010EE46
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922627; x=1748458627;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/qsooOdsPNXa+TL/is71rnSX7gSOp9U1GnXld313cG4=;
 b=aCQNgZKSyHaTfQAKzlcm+tt02OmG32/wpyuATtyXy5pnKCdtL8br95dE
 g40Sv3RwdapqMjPeaIxjopsW7ObIRRPHiwmyh6G9ap8fidTUHxjELcwzZ
 /pRJsiGqbOGnRk2sl1ZJNq7AOVanKVPiHW5oX+dBM3vAd/YaycO64O52p
 nsMFNAGdZFM/4ReFse/eMJfCnmT+wQHDFDHcKBflc99/Cst9bJjMe/UfI
 FkqGXw5hUN/j9Hbg9SVs8LXeLl8SHRDyUYAMh2I1sEpmXu+qd7FfWvZEo
 E+JdWdpAXP0DjfyKDpvWDMdJnQP0MEIf2shkPOTP4HQAwgZ8Nj/g+wETL Q==;
X-CSE-ConnectionGUID: TzYe3GgFRU+OXegpLarMVg==
X-CSE-MsgGUID: nHdAAPc/R22gEvHVzzXB0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815257"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815257"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:57:06 -0700
X-CSE-ConnectionGUID: vrH7ZKHzSA+80fWahwKMRA==
X-CSE-MsgGUID: +w2OzbfWR8Kd+k4w+S+UFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144569"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:57:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:57:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915: Switch intel_usecs_to_scanlines() to 64bit maths
Date: Tue, 28 May 2024 21:56:46 +0300
Message-ID: <20240528185647.7765-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
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

Dotclocks can reach ~1GHz these days, so intel_usecs_to_scanlines(),
with its 32bit maths, is currently limited to a few milliseconds.
I want bigger numbers in DSB selftests, so switch over to 64bit
maths.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index ca6dc1dc56c8..17edd6099287 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -454,8 +454,8 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 	if (!adjusted_mode->crtc_htotal)
 		return 1;
 
-	return DIV_ROUND_UP(usecs * adjusted_mode->crtc_clock,
-			    1000 * adjusted_mode->crtc_htotal);
+	return DIV_ROUND_UP_ULL(mul_u32_u32(usecs, adjusted_mode->crtc_clock),
+				1000 * adjusted_mode->crtc_htotal);
 }
 
 /**
-- 
2.44.1

