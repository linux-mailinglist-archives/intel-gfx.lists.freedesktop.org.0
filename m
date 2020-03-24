Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D383E19147A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 16:32:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F03D6E165;
	Tue, 24 Mar 2020 15:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B3F6E165
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 15:32:17 +0000 (UTC)
IronPort-SDR: gN9TSmNCEyQbnjwKzRUf4MnkRnSdnwOrI5ZF9ynf++VdEslPXyJ9LJXYZqK3nH/5EnHs6GrElh
 3oKJ7Q7TsswA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 08:32:17 -0700
IronPort-SDR: vPwSUD+FiGB5JI2VBKIh5spI909om17vg2O5ZGd05x1el6O9QeAmxiNz7+qpNyHVi6h6xrkcxY
 99Ki67M9Y6NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="446270225"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga005.fm.intel.com with ESMTP; 24 Mar 2020 08:32:16 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 17:32:12 +0200
Message-Id: <20200324153212.6303-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: use forced codec wake on all gen9+
 platforms
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

Commit 632f3ab95fe2 ("drm/i915/audio: add codec wakeup override
enabled/disable callback"), added logic to toggle Codec Wake on gen9.
This is used by audio driver when it resets the HDA controller.

It seems explicit toggling of the wakeline can help to fix problems
with probe failing on some gen12 platforms. And based on specs, there
is no reason why this programming sequence should not be applied to all
gen9+ platforms. No side-effects are seen on gen10/11. So apply
the wake-logic to all gen9+ platforms.

Link: https://github.com/thesofproject/linux/issues/1847
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 62f234f641de..950160f1a89f 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -931,7 +931,7 @@ static void i915_audio_component_codec_wake_override(struct device *kdev,
 	unsigned long cookie;
 	u32 tmp;
 
-	if (!IS_GEN(dev_priv, 9))
+	if (INTEL_GEN(dev_priv) < 9)
 		return;
 
 	cookie = i915_audio_component_get_power(kdev);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
