Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D38E555061
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA227112E2B;
	Wed, 22 Jun 2022 15:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81340112D5E
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913319; x=1687449319;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KUe/5iN8DVy1L4/tW4S22GmcaslHwxHsBzRRC3PiQV0=;
 b=LCLu/wJH6ACzminQ7EGN4jMG9rXhtDXHDXk/fRAGum2Q+qz2y887pX4f
 Lz1+Sbqc9GQw2bbfRg4FSXuW4xNUEQXZwVDhdP0bmCI16RVodA8nqn3+C
 T+/4Reem59mDNHAsV0wEeK2qAkZTZiN0g3qTgr5FEI3/lInT0Zjy42FA3
 a0u5x8gah+p8cMKqy3h8s44Xqt+XTOk4a2WEAQAXEODFtUqvn+OmQr/Xi
 ywHtHeS4zPYDD574l39gkfemW2SUBkSlsoj6Z56C87BLEfDQ2/y66fIzA
 TDfgOzX05GJldd6q6zh92qwug381Eg21DZHl2RezkYyfwpFZC6HOf5edb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260889497"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="260889497"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="677619472"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 22 Jun 2022 08:55:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:55:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:51 +0300
Message-Id: <20220622155452.32587-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915: Write watermarks for disabled
 pipes on gmch platforms
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

We've excluded gmch platforms from writing the final watermarks
for any disabled pipe. IIRC the reason was perhaps some lingering
issue with the watermark merging across the pipes. But I can't
really see any reason for this anymore, so let's unify this behaviour.
The main benefit being more consistency in register dumps when
we don't have stale watermarks hanging around in the registers.
Functionally there should be no difference as the hardware just
ignore all of it when the pipe is disabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 903226e2a626..2c5dadc62c55 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7192,9 +7192,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	intel_fbc_disable(crtc);
 	intel_disable_shared_dpll(old_crtc_state);
 
-	/* FIXME unify this for all platforms */
-	if (!new_crtc_state->hw.active &&
-	    !HAS_GMCH(dev_priv))
+	if (!new_crtc_state->hw.active)
 		intel_initial_watermarks(state, crtc);
 }
 
-- 
2.35.1

