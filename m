Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86D04D1A46
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 15:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0739710E20D;
	Tue,  8 Mar 2022 14:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2264C10E22F
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 14:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646749220; x=1678285220;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SUP6bQUVlfaJws4FWw2VzMhkRuhCDcFD/3nsgprWAAs=;
 b=NY03PAPO1Vqng3v49k1MHF4evdf2hT65xTfFRuk4tBoFyPoRrqVpSUTy
 bufTnnL35NH1GdpKMRsLBMiZlpqHzbdsO3JBCPBukyukh5YzsD4GoQ3ku
 oEzurapFSxVTVeZG2ADWLFxLUpSjJusAblV3sTh3UKVzAlnydk+v+RPr8
 42LuX9OJSyY/zCViqia7pwgM1AtuCtnIr7aWMnySEwxgkemFGYu9whpAE
 8tEjMrF65kJ/kGgM8dy+IBcDItXmjwNO/mCUmpU3meKmDB6cLnxHLvMmV
 JEJi8NY699wOUbQRPZgXQL0FsFqPTEImcLpsH+m9/Gb4kJPVpBvkZa9on A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="253519385"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="253519385"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 06:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="510107616"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga002.jf.intel.com with ESMTP; 08 Mar 2022 06:20:16 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Tue,  8 Mar 2022 16:11:12 +0200
Message-Id: <20220308141112.880662-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] ALSA: hda/i915 - avoid hung task timeout in
 i915 wait
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If kernel is built with hung task detection enabled and
CONFIG_DEFAULT_HUNG_TASK_TIMEOUT set to less than 60 seconds,
snd_hdac_i915_init() will trigger the hung task timeout in case i915 is
not available and taint the kernel.

Split the 60sec wait into a loop of smaller waits to avoid this.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Co-developed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/hda/hdac_i915.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index 454474ac5716..6219de739b56 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -143,7 +143,8 @@ static bool i915_gfx_present(void)
 int snd_hdac_i915_init(struct hdac_bus *bus)
 {
 	struct drm_audio_component *acomp;
-	int err;
+	unsigned long wait = 0;
+	int err, i;
 
 	if (!i915_gfx_present())
 		return -ENODEV;
@@ -159,9 +160,10 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
 	if (!acomp->ops) {
 		if (!IS_ENABLED(CONFIG_MODULES) ||
 		    !request_module("i915")) {
-			/* 60s timeout */
-			wait_for_completion_timeout(&acomp->master_bind_complete,
-						    msecs_to_jiffies(60 * 1000));
+			/* max 60s timeout */
+			for (i = 0; !wait && i < 60; i++)
+				wait = wait_for_completion_timeout(&acomp->master_bind_complete,
+								   msecs_to_jiffies(1000));
 		}
 	}
 	if (!acomp->ops) {

base-commit: fd7698cf0858f8c5e659b655109cd93c2f15cdd3
-- 
2.35.1

