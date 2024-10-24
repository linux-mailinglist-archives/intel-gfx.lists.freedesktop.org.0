Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A679AECB3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 18:54:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D7010E3A1;
	Thu, 24 Oct 2024 16:54:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GCl4gGHk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FAA10E39A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 16:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729788851; x=1761324851;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UoD335vQuJopzDflZbN0/dkdYK9YnYzyRwyW5Erib0A=;
 b=GCl4gGHkxy7lb1KMyA8gj9iEMSafHZ24iYwDxiypmPnUrvR13YUEgn03
 cmRcE1J8AwQ1urENq7mKUGICHXtvMPDGKNPcS0Q4asVhSYQDx2G8SY1B2
 qHDEEKQiLbPSVIOA5s66kfit75Ujp9rBpzbxslYPgRtVDwcOjtyfB7Iop
 qpzScNZ0r4iHXzr1JOoMdt0C/jQn/PviDDHXrH0BM+ZWTvPEumQgwUJ6l
 LOXukB6Rh8dV5c8nnTok+NCH/gkCtKTstYg1o07g586HS9jgdK4u0IBoV
 FOSJld09O3C5rMpKh/hKIocTHAX5Xd4Qc89GNL5g1qi2rUMIvD8aBEAYu g==;
X-CSE-ConnectionGUID: H9Wpc8gmQUuE4Pyb/LMR8Q==
X-CSE-MsgGUID: Yvyf9mKLQvWi2mqDGd2h3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40048010"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40048010"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 09:54:11 -0700
X-CSE-ConnectionGUID: gsA+iFPwQ8OvAEQsCzBwrw==
X-CSE-MsgGUID: n2mwzcBiSsiKtpwIempTeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80757463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Oct 2024 09:54:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Oct 2024 19:54:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/color: Make color .get_config() mandatory
Date: Thu, 24 Oct 2024 19:53:56 +0300
Message-ID: <20241024165356.17756-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
References: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
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

Every platforms implements the color .get_config() hook. Just
make it mandatory.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 40c1a770f6d9..174753625bca 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2055,8 +2055,7 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (display->funcs.color->get_config)
-		display->funcs.color->get_config(crtc_state);
+	display->funcs.color->get_config(crtc_state);
 
 	display->funcs.color->read_luts(crtc_state);
 
-- 
2.45.2

