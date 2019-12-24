Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C8612AE6D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 21:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD20989D49;
	Thu, 26 Dec 2019 20:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF2489E65
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 08:29:55 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2C90B50C47FAF58CEBF8;
 Tue, 24 Dec 2019 16:14:26 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Tue, 24 Dec 2019 16:14:23 +0800
From: Ma Feng <mafeng.ma@huawei.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 24 Dec 2019 16:15:15 +0800
Message-ID: <1577175315-93406-1-git-send-email-mafeng.ma@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 26 Dec 2019 20:26:40 +0000
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: use true,
 false for bool variable in intel_crt.c
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fixes coccicheck warning:

drivers/gpu/drm/i915/display/intel_crt.c:1066:1-28: WARNING: Assignment of 0/1 to bool variable
drivers/gpu/drm/i915/display/intel_crt.c:928:2-29: WARNING: Assignment of 0/1 to bool variable
drivers/gpu/drm/i915/display/intel_crt.c:443:2-29: WARNING: Assignment of 0/1 to bool variable

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Ma Feng <mafeng.ma@huawei.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b2b1336..8596eef 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -440,7 +440,7 @@ static bool intel_ironlake_crt_detect_hotplug(struct drm_connector *connector)
 		bool turn_off_dac = HAS_PCH_SPLIT(dev_priv);
 		u32 save_adpa;

-		crt->force_hotplug_required = 0;
+		crt->force_hotplug_required = false;

 		save_adpa = adpa = I915_READ(crt->adpa_reg);
 		DRM_DEBUG_KMS("trigger hotplug detect cycle: adpa=0x%x\n", adpa);
@@ -925,7 +925,7 @@ void intel_crt_reset(struct drm_encoder *encoder)
 		POSTING_READ(crt->adpa_reg);

 		DRM_DEBUG_KMS("crt adpa set to 0x%x\n", adpa);
-		crt->force_hotplug_required = 1;
+		crt->force_hotplug_required = true;
 	}

 }
@@ -1063,7 +1063,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	/*
 	 * Configure the automatic hotplug detection stuff
 	 */
-	crt->force_hotplug_required = 0;
+	crt->force_hotplug_required = false;

 	/*
 	 * TODO: find a proper way to discover whether we need to set the the
--
2.6.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
