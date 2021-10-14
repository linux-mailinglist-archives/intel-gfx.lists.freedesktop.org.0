Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3249842E104
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 20:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6220D6EBFE;
	Thu, 14 Oct 2021 18:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DC46EBFE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 18:19:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="228044013"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="228044013"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 11:19:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="442229718"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 14 Oct 2021 11:19:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Oct 2021 21:19:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Oct 2021 21:18:56 +0300
Message-Id: <20211014181856.17581-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211014181856.17581-1-ville.syrjala@linux.intel.com>
References: <20211014181856.17581-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Disable DSB usage for now
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Turns out the DSB has trouble correctly loading the gamma LUT.
From a cursory look maybe like some entries do not load
properly, or they get loaded with some gibberish. Unfortunately
our current kms_color/etc. tests do not seem to catch this.

I had a brief look at the generated DSB batch and it looked
correct. Tried a few quick tricks like writing the index
register twice/etc. but didn't see any improvement.
Also tried switching to the 10bit gamma mode in case
there is yet another issue with the multi-segment mode, but
even the 10bit mode was showing issues.

Switching to mmio fixes all of it. I suppose one theory is that
maybe the DSB bangs on the LUT too quickly and it can't keep up
and instead some data either gets dropped or corrupted. To confirm
that someone should try to slow down the DSB's progress a bit.
Another thought was that maybe the LUT has crappy dual porting
and you get contention if you try to load it during active
scanout. But why then would the mmio path work, unless it's
just sufficiently slow?

Whatever the case, this is currently busted so let's disable
it until we get to the root of the problem.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3916
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 7655c7a4f904..bfc7bdde73a1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -872,7 +872,7 @@ static const struct intel_device_info jsl_info = {
 	TGL_CURSOR_OFFSETS, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
-	.display.has_dsb = 1
+	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
 
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
-- 
2.32.0

