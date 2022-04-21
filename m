Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 607E2509FF2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 14:46:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C907A10E344;
	Thu, 21 Apr 2022 12:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1660610E251
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 12:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650545210; x=1682081210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XHWID98/5M89y+6EwohcLFUYRr3xjh5VpHDNdpHNeiY=;
 b=FLu/E4NisWjrT/byM50zHXn6NSTiylZLxLv9jbMSFGVdBmWKC1YarIGV
 fJRB8HB4UFgmfgQypNZ9mGafNXD6RG22K3hyIOVW7Gzzaq3wLlvowvTkG
 gKyNs/sfWFqR/F+cfWUucm1QuzdQuJoH0xNgA0D4wSWoUc2rDFyLmcNhz
 EShkSg5sZ/jIshZFiu6vO4VcXlJM5vMrUbdNmz043ScbtvAosZQbfWcw9
 Qe7tMhjgpJBS2rtS3Gw5Fee8CsGD026HOk/WyuzY5qNRKIk4B+NkQAcTd
 KjBfUgFnXWS+tn2CV8KJl9ZZErUC9UWq9xJlMPvSBYeYSbqQ64fHmXZoc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="246234578"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="246234578"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 05:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="703072215"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 21 Apr 2022 05:46:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Apr 2022 15:46:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Apr 2022 15:46:40 +0300
Message-Id: <20220421124640.18467-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421124640.18467-1-ville.syrjala@linux.intel.com>
References: <20220421124640.18467-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 3/3] sna: Eliminate
 sna_mode_wants_tear_free()
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The modparam checks performed by sna_mode_wants_tear_free() don't
generally work when the server is running as a regular user. Hence
we can't rely on them to indicate whether FBC/PSR/etc is enabled.
Also the "Panel Self-Refresh" connector property doesn't actually
exist so we can nuke that part as well. Let's just nuke the whole
thing and assume we want dirtyfb always when tearfree is not enabled.

I'll anyway want to enable FBC by default across the board soonish
so the check wouldn't really buy us much (would just exclude i830
and a few old desktop chipsets which don't have FBC hardware).

Additionally if we don't have working dirtyfb we really should
enable tearfree by default because otherwise we're going to
get horrible lag due to missing frontbuffer flushes.

Without WC mmaps we could in theory rely on the hw gtt tracking
except the kernel no longer differentiates between GTT/WC/CPU
access in its software frontbuffer tracking code so it'll just
deactivate FBC even for a GTT mmap and potentially never re-enable
it due to the missing frontbuffer flush from dirtyfb. So dirtyfb
is always needed.

v2: Rebase due to ppgtt->tear free logic

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/sna.h         |  1 -
 src/sna/sna_display.c | 59 -------------------------------------------
 src/sna/sna_driver.c  |  9 ++-----
 3 files changed, 2 insertions(+), 67 deletions(-)

diff --git a/src/sna/sna.h b/src/sna/sna.h
index f2bc189624a5..5c92f649d054 100644
--- a/src/sna/sna.h
+++ b/src/sna/sna.h
@@ -458,7 +458,6 @@ struct sna {
 
 bool sna_mode_pre_init(ScrnInfoPtr scrn, struct sna *sna);
 bool sna_mode_fake_init(struct sna *sna, int num_fake);
-bool sna_mode_wants_tear_free(struct sna *sna);
 void sna_mode_adjust_frame(struct sna *sna, int x, int y);
 extern void sna_mode_discover(struct sna *sna, bool tell);
 extern void sna_mode_check(struct sna *sna);
diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index 874292bcab31..966ad9638a2a 100644
--- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -7951,65 +7951,6 @@ bool sna_mode_pre_init(ScrnInfoPtr scrn, struct sna *sna)
 	return scrn->modes != NULL;
 }
 
-bool
-sna_mode_wants_tear_free(struct sna *sna)
-{
-	xf86CrtcConfigPtr config = XF86_CRTC_CONFIG_PTR(sna->scrn);
-	bool found = false;
-	FILE *file;
-	int i;
-
-	file = fopen("/sys/module/i915/parameters/enable_fbc", "r");
-	if (file) {
-		int fbc_enabled = 0;
-		int value;
-
-		if (fscanf(file, "%d", &value) == 1)
-			fbc_enabled = value > 0;
-		fclose(file);
-
-		DBG(("%s: module parameter 'enable_fbc' enabled? %d\n",
-		     __FUNCTION__, fbc_enabled));
-
-		if (fbc_enabled)
-			return true;
-	}
-
-	for (i = 0; i < sna->mode.num_real_output; i++) {
-		struct sna_output *output = to_sna_output(config->output[i]);
-		int id = find_property(sna, output, "Panel Self-Refresh");
-		if (id == -1)
-			continue;
-
-		found = true;
-		if (output->prop_values[id] != -1) {
-			DBG(("%s: Panel Self-Refresh detected on %s\n",
-			     __FUNCTION__, config->output[i]->name));
-			return true;
-		}
-	}
-
-	if (!found) {
-		file = fopen("/sys/module/i915/parameters/enable_psr", "r");
-		if (file) {
-			int psr_enabled = 0;
-			int value;
-
-			if (fscanf(file, "%d", &value) == 1)
-				psr_enabled = value > 0;
-			fclose(file);
-
-			DBG(("%s: module parameter 'enable_psr' enabled? %d\n",
-			     __FUNCTION__, psr_enabled));
-
-			if (psr_enabled)
-				return true;
-		}
-	}
-
-	return false;
-}
-
 void
 sna_mode_set_primary(struct sna *sna)
 {
diff --git a/src/sna/sna_driver.c b/src/sna/sna_driver.c
index d810b262b452..15c133cfdc02 100644
--- a/src/sna/sna_driver.c
+++ b/src/sna/sna_driver.c
@@ -469,12 +469,7 @@ static bool enable_tear_free(struct sna *sna)
 	if (sna->kgem.has_full_ppgtt)
 		return true;
 
-	/*
-	 * Under certain conditions, we should enable TearFree by default,
-	 * for example when the hardware requires pageflipping to run within
-	 * its power/performance budget.
-	 */
-	if (sna_mode_wants_tear_free(sna))
+	if (!sna->kgem.has_dirtyfb)
 		return true;
 
 	return ENABLE_TEAR_FREE;
@@ -674,7 +669,7 @@ static Bool sna_pre_init(ScrnInfoPtr scrn, int probe)
 	}
 	scrn->currentMode = scrn->modes;
 
-	if (!setup_tear_free(sna) && sna_mode_wants_tear_free(sna))
+	if (!setup_tear_free(sna))
 		sna->kgem.needs_dirtyfb = sna->kgem.has_dirtyfb;
 
 	xf86SetGamma(scrn, zeros);
-- 
2.35.1

