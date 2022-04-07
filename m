Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5461D4F7FBA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45C610EAEE;
	Thu,  7 Apr 2022 13:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8FE10EAEE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649336400; x=1680872400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uTo4JKBz3R9DB0Jqa/bBGyfl+v7N2xIKemzf6pgX930=;
 b=mgZb7GKayQk/ddElYJ8n8j6CNXrHpOiukAWZCOFZQfyZMl9+VELq3wiQ
 c7UV4ii5Tns6hgHNvtwt0mAbSDAzS0PZubWzmP+hDgQN2oHej6+9m5SEI
 7ccOWoRfcgcsPrlECKk6UL7Gly/qgNLDtCW8lrvexTEp20V8EO1yOqEY4
 lXboQkD+nK/4Qn88UedoPj/BbS9nt1pQQpxPk8jPAnKYtGXaqYxvhNcEo
 hfvzRSGoSJ9mRi4IPCQYm5eM56wQ0v7CBHIxeWLFokOcx9ew54Q07z2kn
 NCYmz0862287oG6v54gH5cWM90K0h/cxFhhSMvhKNJU9a07c1mrSicuTm A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="241245649"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="241245649"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:00:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571040921"
Received: from sannilnx.jer.intel.com ([10.12.231.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:59:56 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  7 Apr 2022 15:58:29 +0300
Message-Id: <20220407125839.1479249-11-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/20] drm/i915/gsc: add GSC XeHP SDV platform
 definition
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Define GSC on XeHP SDV (Intel(R) dGPU without display)

XeHP SDV uses the same hardware settings as DG1, but uses polling
instead of interrupts and runs the firmware in slow pace due to
hardware limitations.

Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gsc.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index 175571c6f71d..ffe6716590f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -56,6 +56,19 @@ static const struct gsc_def gsc_def_dg1[] = {
 	}
 };
 
+static const struct gsc_def gsc_def_xehpsdv[] = {
+	{
+		/* HECI1 not enabled on the device. */
+	},
+	{
+		.name = "mei-gscfi",
+		.bar = DG1_GSC_HECI2_BASE,
+		.bar_size = GSC_BAR_LENGTH,
+		.use_polling = true,
+		.slow_fw = true,
+	}
+};
+
 static void gsc_release_dev(struct device *dev)
 {
 	struct auxiliary_device *aux_dev = to_auxiliary_dev(dev);
@@ -92,7 +105,14 @@ static void gsc_init_one(struct drm_i915_private *i915,
 	if (intf_id == 0 && !HAS_HECI_PXP(i915))
 		return;
 
-	def = &gsc_def_dg1[intf_id];
+	if (IS_DG1(i915)) {
+		def = &gsc_def_dg1[intf_id];
+	} else if (IS_XEHPSDV(i915)) {
+		def = &gsc_def_xehpsdv[intf_id];
+	} else {
+		drm_warn_once(&i915->drm, "Unknown platform\n");
+		return;
+	}
 
 	if (!def->name) {
 		drm_warn_once(&i915->drm, "HECI%d is not implemented!\n", intf_id + 1);
-- 
2.32.0

