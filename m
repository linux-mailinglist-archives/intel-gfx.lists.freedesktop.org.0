Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 538FA679C59
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56C710E6AD;
	Tue, 24 Jan 2023 14:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B2B10E6A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571622; x=1706107622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5V42qf+hzBJKpLOfDkV6dEPRlgA9xPryGx+Q6AaQfJs=;
 b=KnNcBOQGXrysaXf8b7Yxf1mLk7PR7q0A38VnuFMDJ5/DriAipXSHSgq1
 mMjRpFMmTFqTqxEzcsoPq28GKA5Pr9sOgVGEMvZm0ysU3QxO8N7ZM+qCP
 Vf98x8r08gvkDo1h6z2dG5xS028SOAVKCR6D27rzDTZo/BSh5f3XNFuPu
 2G54rFn40HWCP1TU1mdN28daWZAEaFTuo9iuxFOsi6zRThHYd5MeaP+kA
 t3fLICF87XYcgI2tio3SlvRi6uMQZuLao3cQc4yEcQgkYVnMraVbJxl7v
 uxYyn5mS/hF5Lc2wIy2mr0WZ7YvAHRoHqRzqjAKc/Lu01k1i/m6QMpRJb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538909"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538909"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:47:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602456"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602456"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:46:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:46:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:23 +0200
Message-Id: <20230124144628.4649-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/13] drm/i915/sdvo: Only use "presence
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
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index c0d7d5272eb8..68e5c7be2135 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1732,9 +1732,7 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 
 	if (intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT,
 				 &val, 1)) {
-		u8 mask = SDVO_AUDIO_ELD_VALID | SDVO_AUDIO_PRESENCE_DETECT;
-
-		if ((val & mask) == mask)
+		if (val & SDVO_AUDIO_PRESENCE_DETECT)
 			pipe_config->has_audio = true;
 	}
 
-- 
2.39.1

