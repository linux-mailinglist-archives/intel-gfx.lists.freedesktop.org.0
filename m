Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEFE4B7457
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDDDC10E4E9;
	Tue, 15 Feb 2022 18:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2788B10E513
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949937; x=1676485937;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yj68EE8TOjf6BQI3W2XQJUP7HyngQUTG82myseXGlPk=;
 b=YXcs2MHGRowee1cAGCO38emSlaOvItzREDFm05+CryC655QaDlW8CN8H
 KJKtvHuaUNpRL9hhaEkAoWc+iWSKJaE+pelfGeY4rS9PWnkQ0d01UDSua
 khXzAhjoIdmXZG6QATvrhA+Tz1ZEG+RWIPGH6wXEYKJy/LOpRkbWnauz1
 K/L9ne0jsOntSmH/Vmh0VlKWbjC4bRLu2vbQLV7PxouMa6bQBVilxV2nY
 QGYxAcbQoRn0aHYC6jQQrdO3MVMkBu07l0cKmBycrsb24AkY/uA2zt0vs
 uonPWBaMzZruUp5F8KY2PQqpYcvHGzCxolw5siVRdpxSNv2+CNrSk9lnZ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="231054152"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="231054152"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="539472282"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 15 Feb 2022 10:32:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:31:58 +0200
Message-Id: <20220215183208.6143-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Remove nop bigjoiner state copy
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

We just copied over the whole master crtc state, including
cpu_transcoder+has_audio. No need to copy those again.

Also get rid of the unhelpful comment.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 622903847551..49ca13abd108 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5779,12 +5779,9 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 
 	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
 
-	/* Some fixups */
 	slave_crtc_state->uapi.mode_changed = master_crtc_state->uapi.mode_changed;
 	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
 	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
-	slave_crtc_state->cpu_transcoder = master_crtc_state->cpu_transcoder;
-	slave_crtc_state->has_audio = master_crtc_state->has_audio;
 
 	return 0;
 }
-- 
2.34.1

