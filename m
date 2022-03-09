Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC2F4D38E1
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 19:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8910710E3CF;
	Wed,  9 Mar 2022 18:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D336310E3CF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 18:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646850834; x=1678386834;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=90C0XMiBh5Aansh7SM7+956445sMRVpYsh7vpnMc/RM=;
 b=SLwR9wynkyRBXk1H2H1LakboYZcbOBy5OtBqkePHr9arlz3J6h6HFUow
 ujJWlR9d5DnFP5EgbWx6gxy7Ek7H7G1j9PLDXAJ1DiByyh7rXR1ckhCLL
 gBf34AVvD5UPePDRikiPhpOX4sGPHM6aba+rerum1EYm4PhizVUOtk85z
 YeuZA8M8nZHfrb9sH7TYh8G7IooIrnnV6lF49oCF6v2REUXRHH8bo2Qmp
 o/uPU4idXUfvmkG/mAP2ZIHKd7cKxiz2SC+W43lZ/cdChhViv1TJe3SdT
 APkW5t8KERa1/DXek0/CSMyOZs/UIL+2YhvNPn00jCcLBAEecqBEocpT7 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235666551"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="235666551"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 10:33:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="596372230"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2022 10:33:43 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Wed,  9 Mar 2022 20:24:39 +0200
Message-Id: <20220309182439.1053856-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] ALSA: hda/i915 - avoid hung task timeout in
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If kernel is built with hung task detection enabled and
CONFIG_DEFAULT_HUNG_TASK_TIMEOUT set to less than 60 seconds,
snd_hdac_i915_init() will trigger the hung task timeout in case i915 is
not available and taint the kernel.

Use wait_for_completion_killable_timeout() for the wait to
avoid this problem.

Co-developed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/hda/hdac_i915.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

Changes V2->V3:
 - drop the loop and just use 
   wait_for_completion_killable_timeout() (feedback from Tvrtko Ursulin)
 - new approach, so dropped the previous reviewed-by tags

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index 454474ac5716..efe810af28c5 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -160,8 +160,8 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
 		if (!IS_ENABLED(CONFIG_MODULES) ||
 		    !request_module("i915")) {
 			/* 60s timeout */
-			wait_for_completion_timeout(&acomp->master_bind_complete,
-						    msecs_to_jiffies(60 * 1000));
+			wait_for_completion_killable_timeout(&acomp->master_bind_complete,
+							     msecs_to_jiffies(60 * 1000));
 		}
 	}
 	if (!acomp->ops) {

base-commit: 3a0099a1909dea6022690b0ae496938dd2e5771c
-- 
2.35.1

