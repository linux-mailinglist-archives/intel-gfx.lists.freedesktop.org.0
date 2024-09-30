Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C4298AA8E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A433110E562;
	Mon, 30 Sep 2024 17:04:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cr8RdpBw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9156E10E565;
 Mon, 30 Sep 2024 17:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715878; x=1759251878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HZyknPpmk5loJNun9w4HuykiB5iLwC1CEt1a3m3N094=;
 b=cr8RdpBwwk+0BHWvlH/YBqjFjm7k32PZykJftfy14HWlI7L/WSzfDkF8
 QKsVlP2q3+bhosf+2USyALzGzAQEIBr4l0keqpXvtoOijwnVUC1DhueaB
 I/ReIgQ4hlgPhutrv905Yc0E8GQac3YC5kl34STO0LBGdJu3YINNrQoKZ
 ZZEfINfgx4avvWIgxgyihsAQ+/Ju47PSWuIu6b5Ohc7JReVUt2CGggEpP
 llOzlpFJWcJOnwvEm3RG3QIGgvOwq77IK4pK617JQitMvvuRU8UsSLFRW
 GdUzlctekYsZjCB7lg6tBDH89Zp9pwOA05saJarHpR090bzUS3Vky82w6 Q==;
X-CSE-ConnectionGUID: zsDXgFuvRseoAAJnzewj6A==
X-CSE-MsgGUID: yGv6uFojRMu6potDF4qFRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276968"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276968"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:38 -0700
X-CSE-ConnectionGUID: XDpk/IcrTd6EU5HpApcIbw==
X-CSE-MsgGUID: vCfmZHKRSXyZxikZJbswWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490950"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 06/13] drm/i915/dsb: Introduce intel_dsb_wait_usec()
Date: Mon, 30 Sep 2024 20:04:08 +0300
Message-ID: <20240930170415.23841-7-ville.syrjala@linux.intel.com>
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

Add a function to emit the DSB "wait usecs" instruction.
This is just a usleep() for the DSB.

As a lower bound it seems pretty accurate, but the upper bound
seemed oddly relaxed (ie. sometimes I've seen waits that are
quite a bit longer than specified, not sure why).

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dsb.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 71208be9225e..efdf1c3de0b9 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -393,6 +393,12 @@ void intel_dsb_interrupt(struct intel_dsb *dsb)
 		       DSB_OPCODE_INTERRUPT << DSB_OPCODE_SHIFT);
 }
 
+void intel_dsb_wait_usec(struct intel_dsb *dsb, int count)
+{
+	intel_dsb_emit(dsb, count,
+		       DSB_OPCODE_WAIT_USEC << DSB_OPCODE_SHIFT);
+}
+
 static void intel_dsb_emit_wait_dsl(struct intel_dsb *dsb,
 				    u32 opcode, int lower, int upper)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index cce5cb1c6071..882088f55580 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -40,6 +40,7 @@ void intel_dsb_noop(struct intel_dsb *dsb, int count);
 void intel_dsb_nonpost_start(struct intel_dsb *dsb);
 void intel_dsb_nonpost_end(struct intel_dsb *dsb);
 void intel_dsb_interrupt(struct intel_dsb *dsb);
+void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.45.2

