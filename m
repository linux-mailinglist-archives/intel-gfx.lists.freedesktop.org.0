Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F82E557C89
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44BE510F099;
	Thu, 23 Jun 2022 13:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2E910EF93
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989768; x=1687525768;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fJF1Qv6dsvHYmFffa9DklbBqn7yJck1l5pTs250k4uU=;
 b=l4zg8hVfrpzWUYt0Zf5cZZZjO+KbV1WKxi9pxiE1BsLt95qrnrNemgo9
 kmqbz2gc1gNYMaFvbSF1fJdE3WwsZwd6up1x5QTWgyX54UA47KYZbTBWs
 L1yR+2EuF1H5ISbhF0RxRI7RTiC9BdxV2L9YJfV7sONZ/XYBkixvvLavT
 akuhUo16rPjnhTmSnrJhDs41G5tbKknwcItXE/VMwqfFp0x1vNIPbobAV
 RsYMobX4wdl9QoEQlq4zKywr1jeQtN7romUe3ClmfR2iBtUp9Eax5bkgf
 faFCHX9+vCgHGL/qWsFV59FkcXgs9LU4gx/fzg5Oumc5CwQTcbx6HHDCQ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="279481225"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="279481225"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="644732656"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 23 Jun 2022 06:09:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:59 +0300
Message-Id: <20220623130900.26078-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Get rid of XE_LPD_CURSOR_OFFSETS
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

XE_LPD_CURSOR_OFFSETS is a duplicate of TGL_CURSOR_OFFSETS.
Just use the latter.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b8219733f3b4..7bc944271371 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -937,14 +937,6 @@ static const struct intel_device_info adl_s_info = {
 	.dma_mask_size = 39,
 };
 
-#define XE_LPD_CURSOR_OFFSETS \
-	.display.cursor_offsets = { \
-		[PIPE_A] = CURSOR_A_OFFSET, \
-		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
-		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
-		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
-	}
-
 #define XE_LPD_FEATURES \
 	.display.abox_mask = GENMASK(1, 0),					\
 	.color = { .degamma_lut_size = 128, .gamma_lut_size = 1024,		\
@@ -983,7 +975,7 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
 	},									\
-	XE_LPD_CURSOR_OFFSETS
+	TGL_CURSOR_OFFSETS
 
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
-- 
2.35.1

