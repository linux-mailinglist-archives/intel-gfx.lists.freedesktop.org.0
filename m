Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 710C91842E9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 09:49:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA476EB96;
	Fri, 13 Mar 2020 08:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799ED6EB96
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 08:49:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 01:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="237150842"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2020 01:49:54 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2020 10:49:20 +0200
Message-Id: <20200313084920.8801-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: do AUD_FREQ_CNTRL state save on all
 gen9+ platforms
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace the TGL/ICL specific platform checks with a more generic check
using INTEL_GEN(). Fixes bug with broken audio after S3 resume on JSL
platforms.

An initial version of state save and restore of AUD_FREQ_CNTRL register
was added for subset of platforms in commit 87c1694533c9
("drm/i915: save AUD_FREQ_CNTRL state at audio domain suspend"). The state
save has proven to work well and it is needed in newer platforms, so needs
to be extended. Although the logic is not in practise needed on GEN9/10
systems, follow the hardware specification and apply state and restore on
all gen9+ platforms.

Bspec: 49281
Link: https://github.com/thesofproject/linux/issues/1719
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 19bf206037c2..f4ed3acddc07 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -883,7 +883,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO);
 
 	if (dev_priv->audio_power_refcount++ == 0) {
-		if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
+		if (INTEL_GEN(dev_priv) >= 9) {
 			intel_de_write(dev_priv, AUD_FREQ_CNTRL,
 				       dev_priv->audio_freq_cntrl);
 			drm_dbg_kms(&dev_priv->drm,
@@ -1165,7 +1165,7 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
+	if (INTEL_GEN(dev_priv) >= 9) {
 		dev_priv->audio_freq_cntrl = intel_de_read(dev_priv,
 							   AUD_FREQ_CNTRL);
 		drm_dbg_kms(&dev_priv->drm,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
