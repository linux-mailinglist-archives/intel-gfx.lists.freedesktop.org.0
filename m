Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFFF550AE1
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jun 2022 15:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB62A10E5A7;
	Sun, 19 Jun 2022 13:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D47710E5A7
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Jun 2022 13:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655645861; x=1687181861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hK7yiUXp498V4zt6tzB6Sd6pGY/AmK3IGLLegWnAMsM=;
 b=KpRJVzVDP0zC6k5got3cwKVhXM+uomONbYy/0T4ER8gwS+Ihv4DuVOJW
 xd/VbOzfgSwxU8uNM0uGbHl2UPYqCeSxEnyOqAfEn5a/cS4KBTOJ99aY0
 SIN7o+9MoOtzkkE3ZtFAO6vooTvFLsPntQk1pQcUbl37fAVv1+tkOg6cC
 V5wIAoPGH2+382oUj2vdO1ZxlDnfNCh9d5f0Q6bS3mIuD6wA883Rc9kX7
 d3gwgMlmFShMA9payQ0fPJggHMrD3xgSJfkZMYVjFm4Br/hF3/pw6nL0b
 F5hhbuwBuvgV3UAJvJ9BGmZM85SJqqAja8hbwiDW2qoZKFuVGYpAKLUrZ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259552649"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259552649"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2022 06:37:40 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="676158473"
Received: from sannilnx.jer.intel.com ([10.12.26.157])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2022 06:37:37 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Sun, 19 Jun 2022 16:37:09 +0300
Message-Id: <20220619133721.523546-3-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220619133721.523546-1-alexander.usyskin@intel.com>
References: <20220619133721.523546-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/14] drm/i915/gsc: skip irq initialization
 if using polling
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vitaly Lubart <vitaly.lubart@intel.com>

Some platforms require the host to poll on the
GSC registers instead of relaying on the interrupts.
For those platforms, irq initialization should be skipped

Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gsc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 0e494028b81d..e0236ff1d072 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -40,6 +40,7 @@ struct gsc_def {
 	const char *name;
 	unsigned long bar;
 	size_t bar_size;
+	bool use_polling;
 };
 
 /* gsc resources and definitions (HECI1 and HECI2) */
@@ -117,6 +118,10 @@ static void gsc_init_one(struct drm_i915_private *i915,
 		return;
 	}
 
+	/* skip irq initialization */
+	if (def->use_polling)
+		goto add_device;
+
 	intf->irq = irq_alloc_desc(0);
 	if (intf->irq < 0) {
 		drm_err(&i915->drm, "gsc irq error %d\n", intf->irq);
@@ -129,6 +134,7 @@ static void gsc_init_one(struct drm_i915_private *i915,
 		goto fail;
 	}
 
+add_device:
 	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
 	if (!adev)
 		goto fail;
@@ -182,10 +188,8 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
 		return;
 	}
 
-	if (gt->gsc.intf[intf_id].irq < 0) {
-		drm_err_ratelimited(&gt->i915->drm, "GSC irq: irq not set");
+	if (gt->gsc.intf[intf_id].irq < 0)
 		return;
-	}
 
 	ret = generic_handle_irq(gt->gsc.intf[intf_id].irq);
 	if (ret)
-- 
2.32.0

