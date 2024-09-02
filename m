Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FC1968938
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2160810E2F7;
	Mon,  2 Sep 2024 13:54:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvVxaqsl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F366C10E2F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285244; x=1756821244;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6ZOnguamVXLJnacWK+nUkII8qP8iGEkq9FeDt8sMVC8=;
 b=LvVxaqslQmOAnJ8/B69611PWINeutT71k2GK6i3BxxxmYIWfbj/+aNdt
 QfFYFNCv3bhUudaAsBGJtahLg+hDtNBYxG7i6XznUL8ICvn32P6A+Vd+H
 2pw9YdCJK0iXdnzmGFs7Mi59/EhLg3zAAHNCO3B/kKyjxx13C6Q5Yya6E
 EO8rZZuPvjFutkvLZRLa2P+ljDAzSzU+dEROf/5xgeMv+qxktVP9Ig0gX
 H0zKJLpvlRKGmHOVWCPy2ze0VdegzZMzpim/2M/3B9T4IMbF09DZZqfto
 G5uHiKfoV6MG9lyI7gLkuUPLyLCEuFC1fxKzTW7JYFBkZvzhfyHt6qoWD g==;
X-CSE-ConnectionGUID: BgcBjwUrRz+/gPOzo6ZdgA==
X-CSE-MsgGUID: hLu0geOnQLatfPq1vF17Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343644"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343644"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:54:04 -0700
X-CSE-ConnectionGUID: zTTw/tzrRjW/t0CUUmaJ2w==
X-CSE-MsgGUID: egzhi6vUQ1G4Xvvird94CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623887"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:54:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:54:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/13] drm/i915/dsb: Introduce intel_dsb_wait_vblanks()
Date: Mon,  2 Sep 2024 16:53:36 +0300
Message-ID: <20240902135342.1050-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dsb.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index da5c25f3d01e..d444bb5f6fb2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -397,6 +397,12 @@ void intel_dsb_wait_usec(struct intel_dsb *dsb, int count)
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
2.44.2

