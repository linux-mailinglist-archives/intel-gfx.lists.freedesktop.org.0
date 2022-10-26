Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C5E60DFC2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE18C10E4C2;
	Wed, 26 Oct 2022 11:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFB510E4BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784370; x=1698320370;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hMPtTcYmWvqPoi6ZqSH4EnsAEHxKHCSDXKLHEJ/5aAg=;
 b=FlNwa5Tp9+iCP+M5Ljq1FWFwCmC2VpqIFceuhW4/AmbyNp8TDrEFE+mC
 1AeJ+46OjRaTLel8WVR5ZlowXZI7EZhgTQl0DmqSmNq5m13vFbeP8eCnq
 IUKapqfC60sBlFguL7kUuBeC638jmy6Pkvvtp/KtV7Yh3DEtOSHzN/AAw
 1sHB2AbYRt3hncEaURONuepjPoTbzPfRNG13Bk4qzjKv2aVm2uw0lCC5B
 9YktbvTeAgG/cKTfco9Q2/n1RMR9YStWss4GZ7t8jXT/MqE21f4RZqA9e
 KQgBc6k3ae8Jwb5aj1V8ItjrAnsm2RpZpaMbmMYGhPZe4ZgQz7zgl18CE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614268"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614268"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164534"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164534"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:39:02 +0300
Message-Id: <20221026113906.10551-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Pass limited_range explicitly
 to ilk_csc_convert_ctm()
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

Since pre-icl vs. icl+ handle the limited range
output stuff a bit differently it's probably
less confusing if we just pass that information
explicitly into ilk_csc_convert_ctm().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e881c95ee451..946fb767f3e0 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -259,14 +259,14 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
 }
 
 static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
-				u16 coeffs[9])
+				u16 coeffs[9], bool limited_color_range)
 {
 	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
 	const u64 *input;
 	u64 temp[9];
 	int i;
 
-	if (ilk_csc_limited_range(crtc_state))
+	if (limited_color_range)
 		input = ctm_mult_by_limited(temp, ctm->matrix);
 	else
 		input = ctm->matrix;
@@ -319,7 +319,7 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->hw.ctm) {
 		u16 coeff[9];
 
-		ilk_csc_convert_ctm(crtc_state, coeff);
+		ilk_csc_convert_ctm(crtc_state, coeff, limited_color_range);
 		ilk_update_pipe_csc(crtc, ilk_csc_off_zero, coeff,
 				    limited_color_range ?
 				    ilk_csc_postoff_limited_range :
@@ -354,7 +354,7 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->hw.ctm) {
 		u16 coeff[9];
 
-		ilk_csc_convert_ctm(crtc_state, coeff);
+		ilk_csc_convert_ctm(crtc_state, coeff, false);
 		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
 				    coeff, ilk_csc_off_zero);
 	}
-- 
2.37.4

