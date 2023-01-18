Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C389767234B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B6F10E7AB;
	Wed, 18 Jan 2023 16:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C76210E79D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 16:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059468; x=1705595468;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qdF8fR8WDfm1pESPYVQU74CLSGYvgN0rg8S7KLDNox4=;
 b=Nh5Jn8TTtvNMoFGHje+zdxPJSrcfHV0zmXlVm6W9KJWVRH2M3qmEhKDi
 h4P8ffnQ7ZAMvhulcxWZV7+lx5GPemDtuiGwc/cP4rSy2d3QO7pppiXJy
 N2uqKns+ixMLTjAKnmB3JPcAg+DEE926YA9Iwabm+5KQOqHIR/hf0DGFq
 lBMHZmioxGdbA4VeU3BiT7DXcH33tqTmL32kvz2gGCuEGJ1CcqpboE6Aq
 97VIWmdNq0aOO69bP1aLU7nnAteiQeEd7/3RwJjF4uUAKNlNb5BBUB1tp
 rgKBZitUmeusc2DOszBIr7a5XL3dL/SzrDlMnd5lyC3SWzma8OL/vHogg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="326289877"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="326289877"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:31:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692060480"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692060480"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2023 08:31:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 18:31:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:30:35 +0200
Message-Id: <20230118163040.29808-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/dsb: Skip DSB command buffer
 setup if we have no LUTs
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

If we have no LUTs to load there is no point in setting up
the DSB command buffer.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 162d671182e3..f4a527a3c265 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1383,6 +1383,9 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	/* FIXME DSB has issues loading LUTs, disable it for now */
 	return;
 
+	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
+		return;
+
 	crtc_state->dsb = intel_dsb_prepare(crtc, 1024);
 }
 
-- 
2.38.2

