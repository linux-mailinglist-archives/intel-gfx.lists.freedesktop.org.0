Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CEA7A0E3A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE4C10E58E;
	Thu, 14 Sep 2023 19:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B3C10E589
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719610; x=1726255610;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=74+MRZX41ECDXNgk0lIYPqiz6amn4IDMBwjwDPVILRE=;
 b=g5AdcThywS6X7TIHspLLhx1KVwtoLfpzRep04QQQVUsbdptTDNl5l5hX
 Dsuu1QCeuC7CKSwOCkbwcmDDZjtwCKzAVe8mp9I3O3fxzU2JzpFKDStO7
 jNRqXFhDRbcfBiLS9YT3i8XANjpS2PmzFNEvQaoy51hImAu5+FxkTQrNf
 iQqh4Sg+DM8It3xnSLgaceW7GxWnSvS6oTDcfXsoVof8HP9WuT8AGM8cL
 u5KfyMGD6Bmq3c0ztMgGBMaaifMSrsAYO/qywf7vFLNbwhqlcNfcBV9mF
 V9/qJeLHpqIvcgK4Z5sesij2AW0qABaYa7wXcEYxnvtNun21cxXuy+UIl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421692"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421692"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790518"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790518"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:41 +0300
Message-Id: <20230914192659.757475-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/25] drm/i915: During modeset forcing
 handle inactive but enabled pipes
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

When forcing a modeset after a BW limit check to recompute the state of
all CRTCs on a link shared by the CRTCs, inactive but otherwise enabled
(aka DPMS off) CRTCs must be also modeset as their BW requirement may
need to be decreased.

Based on the above force-modeset inactive but enabled CRTCs as well as
required. For the current force modeset scenarios (for instance CDCLK
change) this won't make a difference, as during HW programming the
inactive CRTCs are skipped even though they are marked for a modeset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 27e6ea21e0a91..44abe583a672d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5426,7 +5426,7 @@ static int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
 		if (IS_ERR(crtc_state))
 			return PTR_ERR(crtc_state);
 
-		if (!crtc_state->hw.active ||
+		if (!crtc_state->hw.enable ||
 		    intel_crtc_needs_modeset(crtc_state))
 			continue;
 
-- 
2.37.2

