Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D462B9A79
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26B46E5CC;
	Thu, 19 Nov 2020 18:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 261926E5CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:18:28 +0000 (UTC)
IronPort-SDR: o6tksRtj7A29xpZ+4ufhuk6cu6j2dFTtfHsB1zQSOfKgX55/vyXttCROTyS31mN6XHwkQH/ClC
 LU2Kfs9bM3qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="256045912"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="256045912"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:18:27 -0800
IronPort-SDR: j+YwPU0YKkKa+BXPz2dec6TEJTTHGSld5xBJmJa1+jqkJwiON/4NGNqM1Ji9zzDh2/xtDAbR2w
 065UdAPqRNIA==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="368864539"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 19 Nov 2020 10:18:27 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 10:20:57 -0800
Message-Id: <20201119182057.13765-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Do not call
 hsw_set_frame_start_delay for dsi
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This should fix the boot oops for dsi

v2:
* Fix indent (Manasi)

Fixes: 4e3cdb4535e7 ("drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner")
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5c07c74d4397..cbbe92d47e11 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7211,7 +7211,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipemisc(new_crtc_state);
 
-	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)) {
+	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
 		if (!transcoder_is_dsi(cpu_transcoder))
 			intel_set_transcoder_timings(new_crtc_state);
 
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
