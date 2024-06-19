Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD0B90E356
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED6410E887;
	Wed, 19 Jun 2024 06:22:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UEOPS0rn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D25C10E887
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778124; x=1750314124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=la3ij45Pam6JcOTA+EmacFgtcA45M66WL8vcBLnywI8=;
 b=UEOPS0rn5K0QnDXc1AMS6+fwgEuFcHpuGVCkNiZ4iFMDyNCT+lKyHgzS
 Qj/TaZMbtsMpnfAc+5BbaG0HP1yJg6Wr/vHWbp2F3oRdEzGbpsyZyj05G
 CM9Dc/bMuVyWv0r1ehEANSr6UeCiOyjFcfnktdWUkFRyUbkkZk+V3tSgQ
 pfbj1O5do/f1vuVMe9k2EfNdVpyeML+NNy6L+Qc1Pj8gTWKg/p05PfnoI
 nF06GuGmlTrNc+9XM8M+u15xHyw0i57RLEgwSfwFGtvXUvLWhOp8PgnWQ
 JhJklVnvAKt3qFq9ulRTHQIMsVrzAcIV/D4s5bWLoUFZdhduWwlHPCOV3 g==;
X-CSE-ConnectionGUID: dz4bLVEcTI+5WVYX9zcotQ==
X-CSE-MsgGUID: xubrKxRMS3OFL3HBkojgwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377381"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377381"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:03 -0700
X-CSE-ConnectionGUID: yBqW4DIVQq+aDaa4XWymfw==
X-CSE-MsgGUID: TNOhu11ZSy6Q0LljrzMjTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41905947"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 02/11] drm/i915/psr: Inform Panel Replay source support on
 eDP as well
Date: Wed, 19 Jun 2024 09:21:22 +0300
Message-Id: <20240619062131.4021196-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
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

Display version >= 20 support eDP 1.5. Inform Panel Replay source support
on eDP for display version >= 20.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 20e6717a5215..277e8c484985 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3112,9 +3112,11 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp))
+	if ((HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp)) ||
+	    DISPLAY_VER(dev_priv) >= 20)
 		intel_dp->psr.source_panel_replay_support = true;
-	else
+
+	if (HAS_PSR(dev_priv) && intel_dp_is_edp(intel_dp))
 		intel_dp->psr.source_support = true;
 
 	/* Set link_standby x link_off defaults */
-- 
2.34.1

