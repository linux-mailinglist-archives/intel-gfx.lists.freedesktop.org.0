Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A25BF9763
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B172110E675;
	Wed, 22 Oct 2025 00:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h36Csnpp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0308910E675;
 Wed, 22 Oct 2025 00:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093092; x=1792629092;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=ntdvOiiF567Y4lNiJ+sybZr7NUJrwOCH7XUjRQJaM8A=;
 b=h36CsnppoVehVly4fOhr//UTJV3SieI2GcJqjNdSaiB4+irc2qSf/kpI
 PwSOKKH+ydmcUk/oiMzxsbn0zfuO0Y699M3JWBleKOmklIKkZ+MZ7PIHC
 vFzWR0iKROphQnWmAlL9O5qN6OtGbK4FxBn2CnTCU/oaJFkFyTxPUFvsg
 YSkGyF/W1JiRRKJZorv1NqkeEY9w2Bh/e7xJwuAoahJJOCLiI3hjZl/9X
 sbfBmoWWGPUR5A3D5tFsbcMHz4fV8ia0L5Bk9Yyp5knLsHKyqvkuIh6zf
 0IvA9DNBqN2YwjRmrTGlsbEBcxv9EruHl9ofq8zoH+fSU6AwTM7ir7NlK w==;
X-CSE-ConnectionGUID: ddsGm2awRO6SoMOtF1KfWw==
X-CSE-MsgGUID: gPRg2P9UT62ac0trxEJ3Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855724"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855724"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:31 -0700
X-CSE-ConnectionGUID: sfM4mj8QTfWxFvfs8qm/sw==
X-CSE-MsgGUID: X9N/vEJWRh22mxlmXbNntA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132362"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:28 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:34 -0300
Subject: [PATCH v2 09/32] drm/i915/xe3p_lpd: Horizontal flip support for
 linear surfaces
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-9-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Starting from Xe3p_LPD, linear surfaces also support horizontal flip.

Bspec: 68904
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 530adff81b99..9f1111324dab 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1753,7 +1753,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	}
 
 	if (rotation & DRM_MODE_REFLECT_X &&
-	    fb->modifier == DRM_FORMAT_MOD_LINEAR) {
+	    fb->modifier == DRM_FORMAT_MOD_LINEAR &&
+	    DISPLAY_VER(display) < 35) {
 		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] horizontal flip is not supported with linear surface formats\n",
 			    plane->base.base.id, plane->base.name);

-- 
2.51.0

