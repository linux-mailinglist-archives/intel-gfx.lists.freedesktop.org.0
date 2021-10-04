Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D798420A00
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 13:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF9E6E9CA;
	Mon,  4 Oct 2021 11:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873686E9CA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 11:23:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="222837316"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="222837316"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 04:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="622083929"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 04 Oct 2021 04:23:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 14:23:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 14:23:02 +0300
Message-Id: <20211004112306.28544-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
References: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Tweak the DP "max vswing
 reached?" condition
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

Currently we consider the max vswing reached when we transmit a
the max voltage level, but we don't consider pre-emphasis at all.
This kinda matches older DP specs that only had some vague text
about transmitting the maximum voltage swing. Latest versions
now say something vague about consider the sum of the vswing
and pre-emphasis fields in the ADJUST_REQUEST_LANE registers.
Very vague, and super confusing especially the fact that it
talks about transmitted voltgage swing in the same sentence
as it say to look at the requested values.

Also glanced at the link CTS spec, and that one seems to have
tests that assume contradicting behaviour. Some say to consider
just the vswing level we transmit, others say to check for
sum of transmitted vswing+preemph being 3.

So let's try to take some kind of sane middle ground here.
I think what could make sense is only consider max vswing
reached if MAX_SWING_REACHED==1 _and_ vswing+preemph==3.
That will allow things to go all the way up to vswing 3 +
pre-emph 0 or vswing 2 + pre-emph 1, depending on what
the maximum supported vswing is. Only considering the sum
of vswing+pre-emph doesn't make much sense to me since
we could terminate too early if the sink requests eg.
vswing 0 + pre-emph 3. And if we'd stick to the current
code we could terminate too early of the sink asks for
vswing 2 + pre-emph 0 when vswing level 3 is not supported.

Side note: I don't really understand why any of this stuff is
"specified" at all. There is already a limit of 5 attempts at
the same vswing+pre-emph level, and a total limit of 10
attempts. So might as well stick to the same max 5 attempts
across the board IMO.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index c052ce14894d..a45569b8c959 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -492,11 +492,27 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 {
 	int lane;
 
-	for (lane = 0; lane < crtc_state->lane_count; lane++)
-		if ((intel_dp->train_set[lane] &
-		     DP_TRAIN_MAX_SWING_REACHED) == 0)
+	/*
+	 * FIXME: The DP spec is very confusing here, also the Link CTS
+	 * spec seems to have self contradicting tests around this area.
+	 *
+	 * In lieu of better ideas let's just stop when we've reached the
+	 * max supported vswing with its max pre-emphasis, which is either
+	 * 2+1 or 3+0 depending on whether vswing level 3 is supported or not.
+	 */
+	for (lane = 0; lane < crtc_state->lane_count; lane++) {
+		u8 v = (intel_dp->train_set[lane] & DP_TRAIN_VOLTAGE_SWING_MASK) >>
+			DP_TRAIN_VOLTAGE_SWING_SHIFT;
+		u8 p = (intel_dp->train_set[lane] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
+			DP_TRAIN_PRE_EMPHASIS_SHIFT;
+
+		if ((intel_dp->train_set[lane] & DP_TRAIN_MAX_SWING_REACHED) == 0)
 			return false;
 
+		if (v + p != 3)
+			return false;
+	}
+
 	return true;
 }
 
-- 
2.32.0

