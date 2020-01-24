Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A188914860B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E7072A8B;
	Fri, 24 Jan 2020 13:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F60872A87
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:31 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245707431"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:42 +0200
Message-Id: <d920b55fe225710169349db4819ca29af349e0b4.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 21/33] drm/i915/lpe_audio: use intel_de_*()
 functions for register access
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 0b67f7887cd0..09591ba27e2e 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -71,6 +71,7 @@
 #include <drm/intel_lpe_audio.h>
 
 #include "i915_drv.h"
+#include "intel_de.h"
 #include "intel_lpe_audio.h"
 
 #define HAS_LPE_AUDIO(dev_priv) ((dev_priv)->lpe_audio.platdev != NULL)
@@ -230,7 +231,8 @@ static int lpe_audio_setup(struct drm_i915_private *dev_priv)
 	/* enable chicken bit; at least this is required for Dell Wyse 3040
 	 * with DP outputs (but only sometimes by some reason!)
 	 */
-	I915_WRITE(VLV_AUD_CHICKEN_BIT_REG, VLV_CHICKEN_BIT_DBG_ENABLE);
+	intel_de_write(dev_priv, VLV_AUD_CHICKEN_BIT_REG,
+		       VLV_CHICKEN_BIT_DBG_ENABLE);
 
 	return 0;
 err_free_irq:
@@ -334,7 +336,7 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 
 	spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags);
 
-	audio_enable = I915_READ(VLV_AUD_PORT_EN_DBG(port));
+	audio_enable = intel_de_read(dev_priv, VLV_AUD_PORT_EN_DBG(port));
 
 	if (eld != NULL) {
 		memcpy(ppdata->eld, eld, HDMI_MAX_ELD_BYTES);
@@ -343,8 +345,8 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 		ppdata->dp_output = dp_output;
 
 		/* Unmute the amp for both DP and HDMI */
-		I915_WRITE(VLV_AUD_PORT_EN_DBG(port),
-			   audio_enable & ~VLV_AMP_MUTE);
+		intel_de_write(dev_priv, VLV_AUD_PORT_EN_DBG(port),
+			       audio_enable & ~VLV_AMP_MUTE);
 	} else {
 		memset(ppdata->eld, 0, HDMI_MAX_ELD_BYTES);
 		ppdata->pipe = -1;
@@ -352,8 +354,8 @@ void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 		ppdata->dp_output = false;
 
 		/* Mute the amp for both DP and HDMI */
-		I915_WRITE(VLV_AUD_PORT_EN_DBG(port),
-			   audio_enable | VLV_AMP_MUTE);
+		intel_de_write(dev_priv, VLV_AUD_PORT_EN_DBG(port),
+			       audio_enable | VLV_AMP_MUTE);
 	}
 
 	if (pdata->notify_audio_lpe)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
