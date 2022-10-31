Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF0613885
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 14:57:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 846B910E2BC;
	Mon, 31 Oct 2022 13:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C42F10E2B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 13:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667224633; x=1698760633;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fTxqHmCdpiMvXhs6nTyzNnK/WgrU99uiv0DKDbk1WmU=;
 b=E4JGY0WO9qAFBrD50ou5SAwwaHCAqqN0eRtI7Bvy0oTuiNo41ZPVvXjh
 7SvxlTylij4Gqw1YI8/Cs01zEgfLtBRT1udvpiSl9zM1HcvuYUQybMLxi
 7tAGzZQqpoPsI7szKlb0Qrga+N0owVB3vu6PPOj81TT1Uifg7kvokUcmv
 EJ9JN+GAV9+lavov8Fydo/8jnheO15ki6L1pp1X/N6SsQL9hW7kICPJxu
 gNnUPUWtVvJO3TWDfNAiiD4d2guIn2r5GFJQH6fHelhFd7Buz8gyQsaRu
 yJjFnloIF1160dXvUXttQi1owbJHmYVfyMweJr2iwr08pSdJHlIsZkBte Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307624816"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="307624816"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 06:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633532163"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="633532163"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2022 06:57:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 15:57:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 15:56:59 +0200
Message-Id: <20221031135703.14670-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
References: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Stop claiming cs timestamp
 frquency on gen2/3
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

Gen2/3 have no TIMESTAMP registers to sample so no point in thinking
we have any frequency for it either.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index ebb7a5b3e87c..23a27e49b898 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -139,7 +139,7 @@ static u32 g4x_read_clock_frequency(struct intel_uncore *uncore)
 	return 1000000000 / 1024;
 }
 
-static u32 gen2_read_clock_frequency(struct intel_uncore *uncore)
+static u32 gen4_read_clock_frequency(struct intel_uncore *uncore)
 {
 	/*
 	 * PRMs say:
@@ -163,8 +163,10 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
 		return gen5_read_clock_frequency(uncore);
 	else if (IS_G4X(uncore->i915))
 		return g4x_read_clock_frequency(uncore);
+	else if (GRAPHICS_VER(uncore->i915) == 4)
+		return gen4_read_clock_frequency(uncore);
 	else
-		return gen2_read_clock_frequency(uncore);
+		return 0;
 }
 
 void intel_gt_init_clock_frequency(struct intel_gt *gt)
-- 
2.37.4

