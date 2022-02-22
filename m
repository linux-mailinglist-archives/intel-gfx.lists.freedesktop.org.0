Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 214124BF68C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 11:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA2C10E708;
	Tue, 22 Feb 2022 10:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E480D10E6FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 10:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645526975; x=1677062975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZENWWqsj2fN6okt+gRsSlHSHETcuIYiXT7ufQXThyLs=;
 b=KNRhSg5mv8/l5ALB3BGILUAElN/zIvUMg3e8+qxRn/EbOy/NoJEug9T/
 rosE9OLmPIXwSpHEkwaYusGJQ15t6ce8QB6zc7eAzJRPNm7QQIpz+OJv1
 O04wmZrZ9Fmv3khnPOn1ocaLskkDvK1WVMQizFbam32FSE565s4Dwadl9
 KVTC9KD3e3Mszo18SeapFEtuVy06dYcPXvZuVUY3Z+9aCRNLShlKmplz1
 ajQpvkNbD4L9tW/SX2qz+CDAE+n7ZxFlSUfGwOhy0KErP0IekR1+WjQ5P
 whfwvziZID5qkhZHtu1tLQvUDylFp4WPj98TbjQsAlvOYyi216HvxiN0z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="312405416"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="312405416"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:49:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="706569600"
Received: from sannilnx.jer.intel.com ([10.12.231.79])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:49:32 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 22 Feb 2022 12:48:51 +0200
Message-Id: <20220222104854.3188643-5-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222104854.3188643-1-alexander.usyskin@intel.com>
References: <20220222104854.3188643-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/gsc: add GSC XeHP SDV platform
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
index 1cbad9248f7c..2d6c871140d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -56,6 +56,19 @@ static const struct intel_gsc_def intel_gsc_def_dg1[] = {
 	}
 };
 
+static const struct intel_gsc_def intel_gsc_def_xehpsdv[] = {
+	{
+		/* HECI1 not enabled on the device. */
+	},
+	{
+		.name = "mei-gscfi",
+		.bar = GSC_DG1_HECI2_BASE,
+		.bar_size = GSC_BAR_LENGTH,
+		.use_polling = true,
+		.slow_fw = true,
+	}
+};
+
 static void intel_gsc_release_dev(struct device *dev)
 {
 	struct auxiliary_device *aux_dev = to_auxiliary_dev(dev);
@@ -92,7 +105,14 @@ static void intel_gsc_init_one(struct drm_i915_private *i915,
 	if (intf_id == 0 && !HAS_HECI_PXP(i915))
 		return;
 
-	def = &intel_gsc_def_dg1[intf_id];
+	if (IS_DG1(i915)) {
+		def = &intel_gsc_def_dg1[intf_id];
+	} else if (IS_XEHPSDV(i915)) {
+		def = &intel_gsc_def_xehpsdv[intf_id];
+	} else {
+		drm_warn_once(&i915->drm, "Unknown platform\n");
+		return;
+	}
 
 	if (!def->name) {
 		drm_warn_once(&i915->drm, "HECI%d is not implemented!\n", intf_id + 1);
-- 
2.32.0

