Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A4862180A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D3D10E49E;
	Tue,  8 Nov 2022 15:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3495110E486
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920989; x=1699456989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WJloxbgfkBmg5fU6rsEG5Ths50bpXkydKsP00lFVSgI=;
 b=AlBkPTf9iED9OjRB2vs7tnlk9Fj1oTB/R7zd6pAzsqNw+k3RTBZKf3cs
 NDltnD7NGKAcFjOSkTRzIBpDqUCnl6ufB0ZqEwgxeg6qW9Kd+lFqfSkMz
 II9dXy7/cntPKfnPeNyyQFVem8TiapfI35npMFqiAkezlvo6eMmdBeBVx
 DIZJsrrkJ1kKMlrgiOd405+H/YfIY9R/r9JM1faAuLEOfXT93Tc1nyMeE
 AF/4eAqOCbUW5EWqc0wEbWEB1fPF6DoN5Gcxy+Ausn51LQhc+GT8KZQFZ
 RcLR8bfuHcPu21vyyO0izZAsLVYPMoKP4uPYbKshsx+IuIo4ceN9qR174 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718814"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718814"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590684"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590684"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:31 +0200
Message-Id: <20221108151839.31567-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/15] drm/i915/audio: Don't enable audio
 with bogus ELD
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

Currently we just print a debug message if the ELD is bogus.
Maybe we should just not enable audio at all in that case?

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 1daf3591a824..ca7f8c3a6aae 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -746,10 +746,12 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!connector->eld[0])
+	if (!connector->eld[0]) {
 		drm_dbg_kms(&i915->drm,
 			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
 			    connector->base.id, connector->name);
+		return false;
+	}
 
 	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
 	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
-- 
2.37.4

