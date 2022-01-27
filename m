Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF1E49DE1D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3257410EFC3;
	Thu, 27 Jan 2022 09:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84B8B10EFC3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276026; x=1674812026;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SvNudIXFGVtL0mr/0yE/LywLqCej3D3TFEiSGqlniQ8=;
 b=A49+5KKMD68TQBUSZPDHknXVZJ2XgmKsKn3Q9d0dljlohvwj1TNx0vor
 keYU40UGh+1CT3Pa+a/IdoMWvv1Tf+WDvfAjIyPw+3hcPDasWTUqfgm8x
 VcIj3y0XrAgcj5SpL1bogqqUC378DHBnUqkP6ba97y+rT0IXK/WJp7lAz
 IGZ2ZO5bsDFgfurdoJL2x2HAuzElFyVGzvzrXuTygwIg7z6mZnsyoPq4G
 CRvzYvY528k7p//jitQgBaidywHAO9XuGWQDjIe8K5Z5elayOxiEONi/J
 TJYn5vKu09bdprKXh+y3qGJL+/WVS/1t+kEgLrZnwLBKMO/4eHRySCIGp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="333155088"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="333155088"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="535568953"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 27 Jan 2022 01:33:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:59 +0200
Message-Id: <20220127093303.17309-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/14] drm/i915: Program FDI RX TUSIZE2
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

When using the refresh rate swithching with FDI we must program
RXTUSIZE2 in addition to RXTUSIZE1.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index fdbeaf6f38f4..4b634c1d2837 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -381,6 +381,8 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	 */
 	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
 		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+	intel_de_write(dev_priv, FDI_RX_TUSIZE2(pipe),
+		       intel_de_read(dev_priv, PIPE_DATA_M2(pipe)) & TU_SIZE_MASK);
 
 	/* FDI needs bits from pipe first */
 	assert_transcoder_enabled(dev_priv, crtc_state->cpu_transcoder);
@@ -491,6 +493,8 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	 */
 	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
 		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+	intel_de_write(dev_priv, FDI_RX_TUSIZE2(pipe),
+		       intel_de_read(dev_priv, PIPE_DATA_M2(pipe)) & TU_SIZE_MASK);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
@@ -637,6 +641,8 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	 */
 	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
 		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+	intel_de_write(dev_priv, FDI_RX_TUSIZE2(pipe),
+		       intel_de_read(dev_priv, PIPE_DATA_M2(pipe)) & TU_SIZE_MASK);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
-- 
2.34.1

