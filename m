Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A76D6EE0A9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8316F10E6F9;
	Tue, 25 Apr 2023 10:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 481FE10E6F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420102; x=1713956102;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iXxISD+KIVioZsNzII6PL6jfJ7dyb9IDgFpVDmg0oIY=;
 b=K9JtqiUOpCo7TBRUg56P83GD6TyZkge+8cmT8gc7nh6EDE8+IR3IFJo3
 RZwjbYHzX7uI1m6GWpj9T709VagzPSsKS9nZcaBL3RCnA4XfFDkWSdq2l
 Zi3z8q9em+BZCDoJkSZ2NWtU8eeLd5CtvqO9Gk4SW3TW/NRXYrqgHWEgf
 QWR83IbAOV5f9nlem5YvdKrXhbDT18uyqS8RtiQ9VP6jC/igQ0crNIshV
 80KVam/+by8hBwWDRT08wU8wfsUzejR3HWp6r+uW1aJUbVZogmjaIpCp1
 QUx1Tp2wYur2zKBauXIHSh51pKSCQb473uHZaxZzDpnzsUGeQIrUO3jpG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019607"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019607"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367345"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367345"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:54:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:39 +0300
Message-Id: <20230425105450.18441-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/14] drm/i915/dsi: Always do panel power up
 delay on icl+
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

Windows doesn't try any tricks to optimize out the DSI panel power
delays. Let's follow suit since anything else is entirely untested
behaviour. Why would the VBT even specify a power on delay if we're
not supposed to use it?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 97b889f2b0e2..b35b69227e6f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1152,7 +1152,7 @@ static void gen11_dsi_pre_pll_enable(struct intel_atomic_state *state,
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
-	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
+	msleep(intel_dsi->panel_on_delay);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
 
 	/* step2: enable IO power */
-- 
2.39.2

