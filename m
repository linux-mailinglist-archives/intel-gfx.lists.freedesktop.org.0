Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CA498AA8F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF41110E566;
	Mon, 30 Sep 2024 17:04:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HKsAX/a1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830CC10E561;
 Mon, 30 Sep 2024 17:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715881; x=1759251881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KTuz1GkXPnmU9faBkQUq1+CLCTO7XyiI5TiK3DotdTc=;
 b=HKsAX/a1+FKoGtAuj+d/ro1Y+sYPXbVJWcKxVAd7fTPWjCiwl6fr5/b7
 V0L+Ug6SjpnaF9k0G9WVCzYNL+o1DbIT6g9cCSPe3CJQD3jd9yjqULnK1
 e+WyOmfWXo32a1SY2A7UTPYlDOPi7Y2YIUJVfyPLzgKc3zICw7981JVjg
 omDfNGIaeQXd0aD/6bSOUZGwh1QF3NmQwQllN818FDIN6RihMbtMgVcdB
 MH5+fh3W81hbLHPZUm7p7KHO5lLRsNmXhM967UggL3ssaIh2WxzuVEXs7
 I1cGRtq0XYUxVbO7it3rI8loaS2nwXezRauQ5g7yTAWs0slkblsFJCG9M Q==;
X-CSE-ConnectionGUID: rhS1JcfATDGyDGdn6FEQAQ==
X-CSE-MsgGUID: ii7t/47LTtmkp1ZugpdgJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276976"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276976"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:41 -0700
X-CSE-ConnectionGUID: DkQ5VZWkQqqFeMTCmfNdpg==
X-CSE-MsgGUID: esTigmSgQv6bHdIkVcsyuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490962"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 07/13] drm/i915/dsb: Introduce intel_dsb_wait_vblanks()
Date: Mon, 30 Sep 2024 20:04:09 +0300
Message-ID: <20240930170415.23841-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Add a function to emit a DSB wait for vblank instruction. This
just waits until the specified number of vblanks.

Note that this triggers on the transcoder's undelayed vblank,
as opposed to the pipe's delayed vblank.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dsb.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index efdf1c3de0b9..fe9a1772769d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -399,6 +399,12 @@ void intel_dsb_wait_usec(struct intel_dsb *dsb, int count)
 		       DSB_OPCODE_WAIT_USEC << DSB_OPCODE_SHIFT);
 }
 
+void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count)
+{
+	intel_dsb_emit(dsb, count,
+		       DSB_OPCODE_WAIT_VBLANKS << DSB_OPCODE_SHIFT);
+}
+
 static void intel_dsb_emit_wait_dsl(struct intel_dsb *dsb,
 				    u32 opcode, int lower, int upper)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 882088f55580..115f51c75a1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -41,6 +41,7 @@ void intel_dsb_nonpost_start(struct intel_dsb *dsb);
 void intel_dsb_nonpost_end(struct intel_dsb *dsb);
 void intel_dsb_interrupt(struct intel_dsb *dsb);
 void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
+void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.45.2

