Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7C421A843
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 21:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D646EB19;
	Thu,  9 Jul 2020 19:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8B76EB19
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 19:58:40 +0000 (UTC)
IronPort-SDR: r+/igE25erj7/XclY5Mv6lJaQPSR4Reo+sdSb8LckAUKgSeA7hief6btLXTDj5P9csukE+Sio2
 +WwDhS/IPNnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="212990645"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="212990645"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 12:58:37 -0700
IronPort-SDR: V/HAxODyKk+tn3G6mTXgvVVKSh3hi7QeVtGnmUVBC0Box3qeIsfsyxkmb2ZQmO5cF4PqCAIzju
 ObvcG6PxFbBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="306551939"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jul 2020 12:58:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Thu,  9 Jul 2020 12:58:37 -0700
Message-Id: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Use GTT when saving/restoring
 engine GPR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MI_STORE_REGISTER_MEM and MI_LOAD_REGISTER_MEM need to know which
translation to use when saving restoring the engine general purpose
registers to and from the GT scratch. Since GT scratch is mapped to
ggtt, we need to set an additional bit in the command to use GTT.

Fixes: daed3e44396d17 ("drm/i915/perf: implement active wait for noa configurations")
Suggested-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index de69d430b1ed..c6f6370283cf 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1592,6 +1592,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 	u32 d;
 
 	cmd = save ? MI_STORE_REGISTER_MEM : MI_LOAD_REGISTER_MEM;
+	cmd |= MI_SRM_LRM_GLOBAL_GTT;
 	if (INTEL_GEN(stream->perf->i915) >= 8)
 		cmd++;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
