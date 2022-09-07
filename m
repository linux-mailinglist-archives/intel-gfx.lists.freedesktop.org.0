Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3495B5B000D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDC910E4AB;
	Wed,  7 Sep 2022 09:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF5310E48C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541886; x=1694077886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z5MpD9gphBLC72GJYGXE8ff/wMlpFJZtU+s6AcQ+wB8=;
 b=cl49vJcZGe4LQxnleSF4No78U+75RQhjpiH8vlKmlT4z0iU50wqfdGlJ
 x/tBAv3eDxwbFqA28yDe0yxsNEb9TP5CcH02mpy4+v3jZDn2wOo0f7R/k
 g65a5ic7T8DlVbA29EoquYFeZfKUR+KWazhKQzrZXMLp5KMMM9lu7cwYp
 6439EEoKmPt1SaPAB7fnG+rJNd1X1hpSiDSOtchcj1wQEiHP1G+eNkBy3
 3jw/94z/afcShTzwvIydVZ6oami8sBObdm1HpzSWBAPZQZhjMFJZ9/UVH
 GNCZAad3kXczK8gMPuSX3xtl5FEhMB7AnKahonRsGIqPzjmdcRkrKXKkA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276562535"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="276562535"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="676093517"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 07 Sep 2022 02:11:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:48 +0300
Message-Id: <20220907091057.11572-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 08/17] drm/i915: Compute clocks earlier
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Do the DPLL computation before fastset checks. This should
allow us to get rid of all that horrible fuzzy clock handling
for fastsets. Who knows how many bugs there are caused by our
state not actually matching what the hardware will generate.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4e8d30ff998b..a532c4d640ad 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2690,6 +2690,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
+	ret = intel_dpll_crtc_compute_clock(state, crtc);
+	if (ret)
+		return ret;
+
 	ret = intel_crtc_compute_pipe_src(crtc_state);
 	if (ret)
 		return ret;
@@ -6894,10 +6898,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			any_ms = true;
 
-			ret = intel_dpll_crtc_compute_clock(state, crtc);
-			if (ret)
-				goto fail;
-
 			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
-- 
2.35.1

