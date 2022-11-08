Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1345E62181B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F82810E4BC;
	Tue,  8 Nov 2022 15:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391D510E4A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920991; x=1699456991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0i/hdXPhUbsdLktPIfxE5dlYKQrtbv2sspeGElkFabU=;
 b=CnYlTIZDr67lPOtrsqodiD1poUofNNJPhXQkRsplln6atAVjqj8KjHUF
 i5A7lTflNGI3qjd3Ls112gMfanJvZCKDrqMlC8f7pCIkQ89MrUfnSlbn7
 G+xpnpGjWhgI1Fdep69NJokZc8yqoMdU6POq73RNB3+gACRZyJ11nxNNA
 F1UD7kfLeMcheF00mMElBhAgL1Zd/3MxPng1DQ3S4xAy8h4dAhEXbcuuQ
 ygr61o+ZYp8PU/1nIX/iChp4knRJ6rYXatchKJVB/G01/rMl0/uMwYkcc
 TpU+Y7LTo+ch1JuCKM9WCtVAqLO9Pw8UWgapyN3jb/VAoaXJrr+ozlvU3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718871"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718871"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590826"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590826"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:34 +0200
Message-Id: <20221108151839.31567-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/15] drm/i915/sdvo: Only use "presence
 detect" for has_audio readout
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Align the SDVO audio code with the native HDMI/DP audio and
use just the "presence detect" bit for the has_audio readout.
The "ELD valid" bit will be used for ELD readout soon.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 55aa8f2ed7da..c269cd6ddb63 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1731,9 +1731,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 
 	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
 				 &val, 1)) {
-		u8 mask = SDVO_AUDIO_ELD_VALID | SDVO_AUDIO_PRESENCE_DETECT;
-
-		if ((val & mask) == mask)
+		if (val & SDVO_AUDIO_PRESENCE_DETECT)
 			pipe_config->has_audio = true;
 	}
 
-- 
2.37.4

