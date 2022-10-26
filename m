Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB16760DEAF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C0C10E26A;
	Wed, 26 Oct 2022 10:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3967110E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779121; x=1698315121;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=an2sBvtw+zozosfXwkDG6c7VV5n4z3S6u362HaL7buU=;
 b=iffCwmSZywZfYfNKkYP6Opc5qFRDnGYgv/geB7QNEnNGqOZ0r3C0OTHY
 B4eBo6nMsEhHr6/P/yIsMGhK2Avio0cjga64JxQqlcpUDeLV33zvmUUbP
 5LupMF5dXfvZ9QXFlcHRsvxIR3ksbbP+vnFlzH8q2Sq4bpSvQszByeifF
 9R0zT2EEqxqum83YnWaoGhfC4lFxrrap3Wdp1vYd5MHSV/Mt3Pu2WqjUv
 V3wwQn04efeA+mwq+C5poKGSdktVLvZITnqRoIimTr8QijPEq06Q8RJXX
 fOsFFz2a5hdQVe9mqkjdJIZx7D1Kzpa/b/XIlz+zp6GkIn4eTePkjtB9f Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369976366"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="369976366"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:12:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="631950654"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="631950654"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 03:11:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:34 +0300
Message-Id: <20221026101134.20865-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/sdvo: Fix debug print
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

Correctly indicate which outputs we support in the debug print.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 58d147cc7633..e46b1ee4439d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3403,9 +3403,12 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 			(intel_sdvo->caps.sdvo_inputs_mask & 0x2) ? 'Y' : 'N',
 			/* check currently supported outputs */
 			intel_sdvo->caps.output_flags &
-			(SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0) ? 'Y' : 'N',
+			(SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0 |
+			 SDVO_OUTPUT_LVDS0 | SDVO_OUTPUT_SVID0 |
+			 SDVO_OUTPUT_CVBS0 | SDVO_OUTPUT_YPRPB0) ? 'Y' : 'N',
 			intel_sdvo->caps.output_flags &
-			(SDVO_OUTPUT_TMDS1 | SDVO_OUTPUT_RGB1) ? 'Y' : 'N');
+			(SDVO_OUTPUT_TMDS1 | SDVO_OUTPUT_RGB1 |
+			 SDVO_OUTPUT_LVDS1) ? 'Y' : 'N');
 	return true;
 
 err_output:
-- 
2.37.4

