Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231A33A38FC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 02:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556566EE22;
	Fri, 11 Jun 2021 00:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B606EE22
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 00:46:40 +0000 (UTC)
IronPort-SDR: 5Ayv5fNo8e1wV6XM6xtml0DuVtvnpxdRz685fgZlyl/1vSh4TIrHw5qnKnQC/IRjS02Xzi4YNP
 AarB2uHAU1Ww==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="266589277"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="266589277"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:46:35 -0700
IronPort-SDR: Y0p7F/2R+nlf741dzrwph/IjZ7e7mpnS2g/Zq0tIvCKV4JM3YpksOhW9gU1t//TPbtpzSYTVI/
 M3DvIfdf66hQ==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="470459475"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:46:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 17:46:27 -0700
Message-Id: <20210611004627.1220031-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Steer MCR reads to lowest potential
 slice/subslice
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

When determining the slice/subslice to use for steering multicast
register reads we need to not only consider the fusing (to avoid
steering to a fused off instance), but also the "minconfig" that the
hardware uses to wake from RC6 when render power gating is enabled on
some platforms.  Although it isn't well-documented, certain platforms
(e.g., EHL/JSL) will initially only power up a single instance of
multicast registers when forcewake is grabbed if the GPU isn't actually
busy.  In these cases, only the minconfig slice/subslice will return
valid, non-zero reads so we need to ensure that we steer to the
minconfig specifically.  The minconfig should always be the lowest
slice/subslice that isn't fused off; as such, we should pick our
steering target with ffs() instead of fls() during initialization.

This steering change is especially important on EHL/JSL since there are
cases where the hardware appears to not honor the driver's attempts to
disable render powergating via the POWERGATE_ENABLE (0xA210) register
and will continue to only wake the minconfig's slice/subslice in
response to forcewake.  We can see this in certain reset or
suspend/resume cases where i915 tries to disable render powergating and
then re-applies workarounds before re-enabling powergating; the
workarounds apply successfully, but the readback verification will fail
if we aren't steering to the minconfig register instance.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1222
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b62d1e31a645..0c973678bf03 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -991,13 +991,13 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		l3_en = ~0;
 	}
 
-	slice = fls(sseu->slice_mask) - 1;
-	subslice = fls(l3_en & intel_sseu_get_subslices(sseu, slice));
+	slice = ffs(sseu->slice_mask) - 1;
+	subslice = ffs(l3_en & intel_sseu_get_subslices(sseu, slice));
 	if (!subslice) {
 		drm_warn(&i915->drm,
 			 "No common index found between subslice mask %x and L3 bank mask %x!\n",
 			 intel_sseu_get_subslices(sseu, slice), l3_en);
-		subslice = fls(l3_en);
+		subslice = ffs(l3_en);
 		drm_WARN_ON(&i915->drm, !subslice);
 	}
 	subslice--;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
