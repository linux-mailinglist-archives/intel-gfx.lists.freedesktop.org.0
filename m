Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1050A672352
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565C410E7A7;
	Wed, 18 Jan 2023 16:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B266810E7A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059477; x=1705595477;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=h/dEJIwyzoMax28Izpfupqki5xL8hjG9RTJH55FKLqE=;
 b=ORPRpXXc6fe8KsOkwkkZSVgeh/xuWZztnkrNpcKh9CG7ZOpsUxAyRHEu
 hsBYnZm/Jd+qXc2fwhT3mSz2CuMcerccRVQO/ZL1qNYxjAqw52XD2nArm
 eaU5yyYOJ2Juom0Fw1oAvhRpBv9pkKxeCbanPod4QQe7D+WepFX4NY0jb
 IINkq0RL6Vk10RwB/sLJU6Mj5R8PlLVDrs5OGVlN0PdvyEjL2scsY4db2
 AFpJOjCW6m32PmWKJgaKDAZCE7KhEcNUUAkJM8vmis42Yzr7zRhCKpmpL
 jepLaBlRePPphgsFbJrwYZbmVI5J1B/zwIhEfBwJl6VQzSeqd2M98e+dm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289951"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289951"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:31:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060495"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060495"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:31:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:31:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:38 +0200
Message-Id: <20230118163040.29808-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Write each legacy LUT entry
 twice with DSB
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

The DSB has problems loading the legacy LUT. Looks like
simply writing each LUT entry twice back-to-back is
sufficient workaround for this.

Curiously it doesn't even matter what data we provide for the
first write, the second write always seems to work 100%. So
this doesn't seem to be some kind of simple race where the data
gets latched before it's actually available on some bus (which
was my first hunch).

TODO: need to figure out what is the actual hw issue here

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4c3344ee473e..8de2dc4b7904 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -860,9 +860,18 @@ static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
 
 	lut = blob->data;
 
-	for (i = 0; i < 256; i++)
+	for (i = 0; i < 256; i++) {
+		/*
+		 * DSB fails to correctly load the legacy
+		 * LUT unless we write each entry twice.
+		 * It doesn't actually matter what data we
+		 * provide for the first write.
+		 */
+		if (crtc_state->dsb)
+			ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i), 0);
 		ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
 			      i9xx_lut_8(&lut[i]));
+	}
 }
 
 static void ilk_load_lut_10(const struct intel_crtc_state *crtc_state,
-- 
2.38.2

