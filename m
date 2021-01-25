Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6CB302741
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1D56E1F5;
	Mon, 25 Jan 2021 15:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B90C6E1F5
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:52:51 +0000 (UTC)
IronPort-SDR: CDqwuJURxPjNq0LpwInPWu4he1OqSVUPzC7Mb1KpkZN2U/11mjKsAyRXl0Sxz1/hXZaEcU3Hng
 eJ9AifqqFvjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="176235471"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="176235471"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:50 -0800
IronPort-SDR: V1LKpNqRf+n/FLuI6ofydrALktdyXGkWeL3WNiYqOvFnbhQGVdK6DHC7q9V/0ijFpV7cx6Xu/D
 UR3tLhh5apPQ==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="429333626"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:26 +0200
Message-Id: <abbfe5a4a18f8258a92c06e7fbd4ea695bd3ca48.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/edp: reject modes with dimensions
 other than fixed mode
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Be more strict about filtering modes for eDP.

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8979996f1747..6afea0681ce9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -787,10 +787,10 @@ intel_dp_mode_valid(struct drm_connector *connector,
 		return MODE_H_ILLEGAL;
 
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		if (mode->hdisplay > fixed_mode->hdisplay)
+		if (mode->hdisplay != fixed_mode->hdisplay)
 			return MODE_PANEL;
 
-		if (mode->vdisplay > fixed_mode->vdisplay)
+		if (mode->vdisplay != fixed_mode->vdisplay)
 			return MODE_PANEL;
 
 		target_clock = fixed_mode->clock;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
