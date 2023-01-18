Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAF467234A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F20F10E79E;
	Wed, 18 Jan 2023 16:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F83510E79D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059465; x=1705595465;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VvPTcFIWCVAyQyPXZZBXrP4f0P+sSL73v+PX7SZRa3Y=;
 b=k9LAPMrdPAN8vjrTquAXLOpSfEgW9wX7FvNioqNzKHaqp2Q2yNZ8PDCD
 fexfLmyjJCIzwVjzVLb3fY9yG4kR8zHUoZTNgiUy9a3Eq4lwEP4a7e45O
 UGxkuiA6WIkspq6FGl5ezVwtUjpUebx96LFYpRIgbdUInz8zHTZPNduDB
 CzH3bjoiwWojuz21gAeZSKPYaXcEX/hp6NfeHni0OyGXhgwbCNpoAmMCs
 CdyCS0sGRDSgyRWOGHS5gVI/rVAP7uVHv/pH2cz+E3EwQnsFpNqQ52+QG
 xyWRxFuP3NqJSpe8uVIeY1qk/BSTbbgptP+a2zxFJrlpd1ivl9N0zgNYC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289855"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289855"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060463"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:31:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:31:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:34 +0200
Message-Id: <20230118163040.29808-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/dsb: Nuke the DSB debug
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

We'll be wanting to start the DSB from the vblank evasion critical
section so printk()s are a big nono. Get rid if the debug print.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 43679090eceb..96159d69bbff 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -265,11 +265,6 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool wait_for_vblank)
 		       i915_ggtt_offset(dsb->vma));
 	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
 		       i915_ggtt_offset(dsb->vma) + tail);
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "DSB execution started - head 0x%x, tail 0x%x\n",
-		    i915_ggtt_offset(dsb->vma),
-		    i915_ggtt_offset(dsb->vma) + tail);
 }
 
 void intel_dsb_wait(struct intel_dsb *dsb)
-- 
2.38.2

