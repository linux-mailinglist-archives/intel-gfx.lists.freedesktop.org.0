Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 385509156FD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F3510E566;
	Mon, 24 Jun 2024 19:11:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPFtgg+N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E4F10E563
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256269; x=1750792269;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OQ5yMDj0ugWseqbk3T5EdTP6ry87kkQOzzwQn+P6Kn0=;
 b=MPFtgg+NgsbM0/ENs5gtSjFlxmw2QGS1wrP8gM5j0R83pTShYFRAZBf7
 dn5gEgPH0TmmnmcW+qfI8miQqceFjn+5b6XQDJpQpfjVgJ7qOvQSVn9Co
 j4DI3NXzcctfO5oEjn/hOuBWtsizEr9GBF0Mj44ZQaCIxRcKSvZ81zKDf
 5ChkvnYvSv5VCFEmxKjen5t2FHz0XAmRcm/9boDgVBQ1tQFl2X4Zyn674
 h33e4YwY7MXmeSBu1PadHMnpQJ8osMBOYsPiUJqCiDTUv+d7vCXP8JKx5
 Fa/z6znQNKYHuHnj+PDQyoSeWUeZtCY9KYskL1YbSNsL+5a9ZsXCbGp0V g==;
X-CSE-ConnectionGUID: L1CpGj0qTyyuKA4/OFfYbw==
X-CSE-MsgGUID: 7LE6b//lQomywKDMouejYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374226"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374226"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:11:09 -0700
X-CSE-ConnectionGUID: vvDV41kzTBWCsUPSu3pKBg==
X-CSE-MsgGUID: fyrZvXKMRh2TMNk+YT5ugA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43372000"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:11:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:11:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/14] drm/i915/dsb: Clear DSB_ENABLE_DEWAKE once the DSB is
 done
Date: Mon, 24 Jun 2024 22:10:30 +0300
Message-ID: <20240624191032.27333-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

In order to avoid the DSB keeping the DEwake permanently
asserted we must clear DSB_PMCTRL_2.DSB_FORCE_DEWAKE once
we are done. For good measure do the same for
DSB_PMCTRL.DSB_ENABLE_DEWAKE.

Experimentally this doens't seem to be actually necessary
(unlike with DSB_FORCE_DEWAKE). That is, the DSB_ENABLE_DEWAKE
doesn't seem to do anything whenever the DSB is not active.
But I'd hate to waste a ton of power in case there I'm wrong
and there is some way DEwake could remaing asserted. One extra
register write is a small price to pay for some peace of mind.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index cf710f0bf430..fad37e7856b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -464,8 +464,10 @@ void intel_dsb_finish(struct intel_dsb *dsb)
 	/*
 	 * DSB_FORCE_DEWAKE remains active even after DSB is
 	 * disabled, so make sure to clear it (if set during
-	 * intel_dsb_commit()).
+	 * intel_dsb_commit()). And clear DSB_ENABLE_DEWAKE as
+	 * well for good measure.
 	 */
+	intel_dsb_reg_write(dsb, DSB_PMCTRL(crtc->pipe, dsb->id), 0);
 	intel_dsb_reg_write_masked(dsb, DSB_PMCTRL_2(crtc->pipe, dsb->id),
 				   DSB_FORCE_DEWAKE, 0);
 
-- 
2.44.2

