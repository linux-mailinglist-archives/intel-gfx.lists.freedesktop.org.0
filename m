Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBF64D9CE4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:02:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE66D10E48D;
	Tue, 15 Mar 2022 14:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E013A10E48D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352951; x=1678888951;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cTZRTuXB7+GjxLOgpEytIei+BNwHieBrDT+tWXan01c=;
 b=Mfsr5hoUZdXMF8VDdJDB2FNaoBXog3ajz/Ldnc6iJVyxGf4Cdw8GFman
 8OUEpJwYbaVFmnhTeYb65253dNzv5TjjxuH1hGdfTCHsftFK8cLq8EbdZ
 n4ajKaQCSsUCdwTwKI4RGsGUZV6ElO/xdma1A0WFk37LYJLmWdYSHlCnp
 9IWTqyB2X2gq/nNtUjbId3uyGVcdw2MmzAdRPZWMcxFei1hPtVyVLrr1K
 S6QwnGCbJp1irJTWxutFJ8gPIcmpH32WTSzVx1X7NF6WPTv93xHYfQUqA
 wqWyPZyzyxyt9ApAs4EDnJ0XJHsMUKsUgHHGylP9F7yOO7vgPDMgcsRt0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="243758895"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="243758895"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="549605981"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 15 Mar 2022 07:00:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:59:56 +0200
Message-Id: <20220315140001.1172-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/fbc: Streamline frontbuffer busy
 bits handling
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

If the frontbuffer bits say this fbc instance isn't affected just
skip the whole thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 28 +++++++++++++++---------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index e45d64655090..d657b5c6757b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1272,6 +1272,7 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 	__intel_fbc_cleanup_cfb(fbc);
 
 	fbc->state.plane = NULL;
+	fbc->busy_bits = 0;
 }
 
 static void __intel_fbc_post_update(struct intel_fbc *fbc)
@@ -1327,11 +1328,14 @@ static void __intel_fbc_invalidate(struct intel_fbc *fbc,
 
 	mutex_lock(&fbc->lock);
 
-	fbc->busy_bits |= intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bits;
+	frontbuffer_bits &= intel_fbc_get_frontbuffer_bit(fbc);
+	if (!frontbuffer_bits)
+		goto out;
 
-	if (fbc->state.plane && fbc->busy_bits)
-		intel_fbc_deactivate(fbc, "frontbuffer write");
+	fbc->busy_bits |= frontbuffer_bits;
+	intel_fbc_deactivate(fbc, "frontbuffer write");
 
+out:
 	mutex_unlock(&fbc->lock);
 }
 
@@ -1353,18 +1357,22 @@ static void __intel_fbc_flush(struct intel_fbc *fbc,
 {
 	mutex_lock(&fbc->lock);
 
+	frontbuffer_bits &= intel_fbc_get_frontbuffer_bit(fbc);
+	if (!frontbuffer_bits)
+		goto out;
+
 	fbc->busy_bits &= ~frontbuffer_bits;
 
 	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
 		goto out;
 
-	if (!fbc->busy_bits && fbc->state.plane &&
-	    (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
-		if (fbc->active)
-			intel_fbc_nuke(fbc);
-		else if (!fbc->flip_pending)
-			__intel_fbc_post_update(fbc);
-	}
+	if (fbc->busy_bits)
+		goto out;
+
+	if (fbc->active)
+		intel_fbc_nuke(fbc);
+	else if (!fbc->flip_pending)
+		__intel_fbc_post_update(fbc);
 
 out:
 	mutex_unlock(&fbc->lock);
-- 
2.34.1

