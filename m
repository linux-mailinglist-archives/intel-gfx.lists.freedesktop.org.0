Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E96E1BF9787
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5069D10E690;
	Wed, 22 Oct 2025 00:32:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQUDquiZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A6110E690;
 Wed, 22 Oct 2025 00:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093135; x=1792629135;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=x+j816Jt8gvQ49GnEeZNHVbf0cRAJsUH4JvfAUxsbOM=;
 b=IQUDquiZq2CIL70V24hLwdq6s+nkXe3/GBP4suNLtT5WJd6HEoxXDC+l
 ci4FXVfm1agWc//exZ/cFurGcAM0o5bPFdPRrTFMnCE/agqzxOCOW9TeZ
 sm18Knyy88j5lyTn4HosFbKPZQmloLAXnWxKTblAHScSD0NQbgeoJEZOc
 8czhhmrgdVvWmIAWLwPnPzEuk8b83mgk0slPUmXDsCxcuTiW2yopL0sIZ
 c3HPODpFyS5/qte5B4Kg7DG8KuG00gM+FqSjsJY/MwiJtVJkEBmFxkUkQ
 yfAhImVUgZQ9jc5cxRb9ZOwGR1xtBt/2uz9ZX59c4fvWx1ZPuSH1PjTzN A==;
X-CSE-ConnectionGUID: Yc03j80VRJC+t2lSiQuMjg==
X-CSE-MsgGUID: J8CjH+JyQXSG2xwWj1q7lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855789"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855789"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:14 -0700
X-CSE-ConnectionGUID: 12c4i+p/QYeM9tCv7E/Gyw==
X-CSE-MsgGUID: zplc6QgeQJ6vLUhgXZydvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132480"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:11 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:46 -0300
Subject: [PATCH v2 21/32] drm/i915/xe3p_lpd: Extend Wa_16025573575
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-21-10eae6d655b8@intel.com>
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
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

Wa_16025573575 also applies to Xe3p_LPD, so let's include it in the IP
version checks.

Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index c528aaa679ca..e38e5e87877c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -49,7 +49,8 @@ void intel_display_wa_apply(struct intel_display *display)
  */
 static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 {
-	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
+	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002 ||
+		DISPLAY_VERx100(display) == 3500;
 }
 
 /*

-- 
2.51.0

