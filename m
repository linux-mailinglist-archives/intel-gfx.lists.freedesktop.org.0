Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74A9B00CDE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 22:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDB110E956;
	Thu, 10 Jul 2025 20:17:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/9/btY2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D69010E955;
 Thu, 10 Jul 2025 20:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752178649; x=1783714649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eDhFQ54gFdNOwFv7MUaJ3TsCbExMF8EsneuEsUKTfto=;
 b=B/9/btY27ZSx/+vz4NnKzZWpQAUkVSP8dqTYjeRupudo7YwYu1va2aMx
 8W6K7w2cV3SKRV8WW9vM6SQ1Pv8gcQS/fMMLs7ViuQto6hJYpr8Bjg9OB
 hN6iZu0dh8ku3ycyeEV2cGeOoLEMIojW8MswlFeXhpaFZhMgW/JGKVTEl
 ZU0+lkMZM6RqBEMkTPuJ4d/iSwJHBJBRIMr5R0PH7Ock83KdeBb0XslrI
 +PIcUWM5zxBqJrBb+AGOdXgkz3XYyTPvU6JksnybE46vTMMcBTPBo9Ph6
 I0vNTUmaw42HokfjOOg+OAOSX2oIYBTutVaz4HKr6hX98XgIdg/hYmQas A==;
X-CSE-ConnectionGUID: cS+8+oXuTSm3LnBeBVemTg==
X-CSE-MsgGUID: c2dOFASTQ12YjvQkAkN4Tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54444551"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54444551"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 13:17:28 -0700
X-CSE-ConnectionGUID: HWM0Yz6BRLyNQ0Z1oFXOPA==
X-CSE-MsgGUID: x7RkcdqFRpu1QqFYvHVZkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161877540"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 13:17:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 23:17:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915/dp: Don't switch to idle pattern before disable
 on pre-hsw
Date: Thu, 10 Jul 2025 23:17:13 +0300
Message-ID: <20250710201718.25310-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
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

For some reason we are switching over to the idle pattern before
disabling the DP port on pre-hsw. AFAICS this has never been part
of the documented sequence (and on hsw+ the spec explicitly says
not to do this). Get rid of it.

The code goes all the way back to commit 5eb08b69f510 ("drm/i915: enable
DisplayPort support on IGDNG"), and it was accompanied by a 17ms delay
which got changed to vbl wait in commit ab527efc2fea ("drm/i915: use
wait_for_vblank instead of msleep(17)"), and was later completely removed
in  commit 93c9c19b3d25 ("drm/i915: remove unexplained vblank wait in
the DP off code").

Smoke tested on g4x/snb/chv.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 87f6b9602b16..b54edf0d1c23 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -424,17 +424,6 @@ intel_dp_link_down(struct intel_encoder *encoder,
 
 	drm_dbg_kms(display->drm, "\n");
 
-	if ((display->platform.ivybridge && port == PORT_A) ||
-	    (HAS_PCH_CPT(display) && port != PORT_A)) {
-		intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE_CPT;
-	} else {
-		intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE;
-	}
-	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(display, intel_dp->output_reg);
-
 	intel_dp->DP &= ~DP_PORT_EN;
 	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
 	intel_de_posting_read(display, intel_dp->output_reg);
-- 
2.49.0

