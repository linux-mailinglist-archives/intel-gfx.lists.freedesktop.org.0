Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D0D99413F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFEE10E49D;
	Tue,  8 Oct 2024 08:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ywv1fhbj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C722410E49D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375841; x=1759911841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WA/Z7/4E6g4XkMl054goHqUd4MrNWutFKbYcbMqRh/o=;
 b=Ywv1fhbjEmE2a13sgjDBOiCzRLqyv0xgg3okA8FGfUcRa8Q13WYMNECP
 2Mwxrwzk9Bw8mGOkZOnbxtKCnLkA7bXxfV0LB/HYlx0JOuNlQPQE5/7i3
 fkqdAHcuOCQKbwn3f3g/jSPoxv1jpvBaLiFLG7HY/mh8gJz0JOaJ5Ph4y
 OYjmJhKhiegQ+YUtfjDa3AVp5P9ndOcahvoIAFIxy8IUYmE/hOh8m7+OW
 oEMtvAeS7H7OkK6QYOw7vhem5lkR5J3ZnR641CyPJXIzK58vTClP6oLBa
 MAFDddfSVMGhRD/jx+igsDqFbSnG83KfqbVop9IUY3zzBJofjwS04kn8+ Q==;
X-CSE-ConnectionGUID: cJmGfJfASxuL2MzistDPdw==
X-CSE-MsgGUID: sfwtA6EDQv+H9hutTDLoLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079142"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079142"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:24:01 -0700
X-CSE-ConnectionGUID: VGx9ow4dSHCZZgCzyxZ1Zg==
X-CSE-MsgGUID: Q0NAfo4ySmGMOX0/fhCBIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755784"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:59 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 7/9] drm/i915/display: update audio support based on the
 available frequencies
Date: Tue,  8 Oct 2024 11:23:25 +0300
Message-Id: <20241008082327.342020-8-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

After pruning the sad audio frequency list, if there are no
supported audio frequencies left, audio cannot be supported.
So mark has_audio accordingly.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 14fabbcbf5da..bd135c1f2c07 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -796,6 +796,7 @@ bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
 {
 	struct drm_connector *connector = conn_state->connector;
 	struct drm_i915_private *i915 = to_i915(connector->dev);
+	bool audio_supported = false;
 	u8 *eld;
 
 	if (!intel_audio_eld_valid(conn_state))
@@ -823,9 +824,13 @@ bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
 				    "SAD updated. Freq: 0x%x(0x%x) Channels: %d(%d)\n",
 				    sad.freq, sad_freq, sad.channels, sad_channels);
 		}
+
+		/* If no supported freq in any sads, make audio support to false */
+		audio_supported |= sad.freq;
 	}
 
-	return true;
+	drm_dbg_kms(&i915->drm, "audio supported: %d\n", audio_supported);
+	return audio_supported;
 }
 
 bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
-- 
2.34.1

