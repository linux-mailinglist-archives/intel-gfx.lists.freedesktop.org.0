Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1401D6EE0B0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9405710E726;
	Tue, 25 Apr 2023 10:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B86A10E72E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420123; x=1713956123;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ntpXv0qWvuCN7ByqDVpp6kgbrcKpEiWAoCYEAMSF0Tc=;
 b=HI7lx+cA4dWafdwGgWqdhNKbqo1TTerzcnGsycgCKbjZFUTsysRD6UJy
 oeT7q/xnX96+oEM5dhQ2p/BX/O2wrojafyjN2+JYvhGOM+WEjol9Qio9p
 3DoifFfY9fhTurxY7qsmj3Um04suivzQUOaFCI9gYOJZo/lTnlW9hnvpu
 Z/MH+CuUhk/4mK5rCm6HU0kLeDFUQ2fZYBrFxnGYwClILGAZj44s4h5zB
 6bJ2M9TQwxtE2rMs7ALiJouSrsSXGNCbbbKdbMYVZlZNj9IpLa1PDVJsq
 szTyWitMFsY4chIr2clik9bPinNY1Aa9DMGSC8mFLbOukKJhaNtYxRzYL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019651"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019651"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367461"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367461"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:46 +0300
Message-Id: <20230425105450.18441-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/14] drm/i915/dsi: Do DSC/scaler disable
 earlier on icl+
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

Do the scaler disable in the spot where bspec has specfied it
for TLG+ DSC. And also move the DSC disable to match what
intel_ddi.c does.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 0e2ed4776766..23b4aa2e63e3 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1422,6 +1422,9 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 	/* step2h,i,j: deconfig trancoder */
 	gen11_dsi_deconfigure_trancoder(encoder);
 
+	intel_dsc_disable(old_crtc_state);
+	skl_scaler_disable(old_crtc_state);
+
 	/* step3: disable port */
 	gen11_dsi_disable_port(encoder);
 
@@ -1429,10 +1432,6 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 
 	/* step4: disable IO power */
 	gen11_dsi_disable_io_power(encoder);
-
-	intel_dsc_disable(old_crtc_state);
-
-	skl_scaler_disable(old_crtc_state);
 }
 
 static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *connector,
-- 
2.39.2

