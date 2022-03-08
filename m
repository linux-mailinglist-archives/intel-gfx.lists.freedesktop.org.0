Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AE74D1F4B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B321C10E2D8;
	Tue,  8 Mar 2022 17:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D9710E2DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761372; x=1678297372;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kRUgUYX7nSK1Pz7datAgqAM8AShHcJ606PqwoOaNhhU=;
 b=VjGJl5uYT5yeR87/qMo8Qr60rK/6Zp/5KWlz+Dg6aIXk5vkx1KooUcEK
 MvS73hfLpDbWJ+aw8oHegfOwnbPVK8oCIg//cvbGE2iPL7EMkmGm/6UYd
 JatpOnXgzWcX76NGBKwyeqw7qAu4wNIQiGdHrwZZgxgCi9KTurscmEQyf
 IeUJTihUG3tkV0eahKFBGzQixVB2h34iQhBtbUvd4LgH52eUb6udWARum
 p/6nOpuzvVh/b9DQuKg82K0R0ojFs10afVSU7OsgplynlIg/5Lm7v+Idu
 xxyCj1BI4DqS/8V+2io/UmlTiv0Mo3myjwRiRET4R/FE340uqIe1qtq0/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="234714885"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="234714885"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:37:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="513196477"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga006.jf.intel.com with ESMTP; 08 Mar 2022 09:37:00 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Tue,  8 Mar 2022 19:27:59 +0200
Message-Id: <20220308172759.920551-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] ALSA: hda/i915 - avoid hung task timeout in
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If kernel is built with hung task detection enabled and
CONFIG_DEFAULT_HUNG_TASK_TIMEOUT set to less than 60 seconds,
snd_hdac_i915_init() will trigger the hung task timeout in case i915 is
not available and taint the kernel.

Split the 60sec wait into a loop of smaller waits to avoid this.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Co-developed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/hda/hdac_i915.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

Changes V1->V2:
 - address local variable naming issue raised by Amadeusz
   and use Takashi's proposal

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index 454474ac5716..aa48bed7baf7 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -143,7 +143,7 @@ static bool i915_gfx_present(void)
 int snd_hdac_i915_init(struct hdac_bus *bus)
 {
 	struct drm_audio_component *acomp;
-	int err;
+	int err, i;
 
 	if (!i915_gfx_present())
 		return -ENODEV;
@@ -159,9 +159,11 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
 	if (!acomp->ops) {
 		if (!IS_ENABLED(CONFIG_MODULES) ||
 		    !request_module("i915")) {
-			/* 60s timeout */
-			wait_for_completion_timeout(&acomp->master_bind_complete,
-						    msecs_to_jiffies(60 * 1000));
+			/* max 60s timeout */
+			for (i = 0; i < 60; i++)
+				if (wait_for_completion_timeout(&acomp->master_bind_complete,
+								msecs_to_jiffies(1000)))
+					break;
 		}
 	}
 	if (!acomp->ops) {

base-commit: fd7698cf0858f8c5e659b655109cd93c2f15cdd3
-- 
2.35.1

