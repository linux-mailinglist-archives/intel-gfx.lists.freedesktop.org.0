Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3435A6DE73E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 00:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C411E10E1DB;
	Tue, 11 Apr 2023 22:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 454BC10E1D0;
 Tue, 11 Apr 2023 22:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681252180; x=1712788180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VO+hzf+JZT0LDwb9AwFVSgz/6tqEyB7SG90J+rO9ms0=;
 b=VPyn28V8v2XJ1Y3YyJmovgJF0vycrrUIZ9uyHX8dKsoBSfXLVcdSm8QU
 EfbGaBG6bPvO+QWAjoDAeBiL35/0JaKacyaHolOwmVfKxm+VvZC6RSPy9
 12c9n6GEHn28orODkEiXyQih5cWXHBwdNsgg4ucPOHqCudIbDGCh1NBot
 hFEZpRpxJ4mzLocqi5jDT5XWVHic5RBmd9qaEVZh8Y7FOOXMka2jUAbyQ
 dPWin0IHAZ+6/i+ixJouZ9mpEL7zJikSOporKia1d5XvHJ0ktuOBR27kX
 eXXrQ/X8QOIvRRiSW3KqZzWoJCtHFb2PhEqvvMp8Qzo7Nry57qSakCL1c Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="342506235"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="342506235"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 15:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="753296812"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="753296812"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 11 Apr 2023 15:29:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Apr 2023 01:29:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Apr 2023 01:29:27 +0300
Message-Id: <20230411222931.15127-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411222931.15127-1-ville.syrjala@linux.intel.com>
References: <20230411222931.15127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Expose crtc CTM property on
 ilk/snb
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The ilk/snb code is internally fully capable of handling the
CTM property, so expose it.

Note that we still choose not to expose DEGAMMA_LUT though.
The hardware is capable if degamma or gamma, but not both
similtanously due to lack of the split gamma mode. Exposing
both LUTs might encourage userspace to try enabling both
at the same time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 07f1afe1d406..4fc16cac052d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3473,7 +3473,7 @@ void intel_color_crtc_init(struct intel_crtc *crtc)
 
 	gamma_lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
 	degamma_lut_size = INTEL_INFO(i915)->display.color.degamma_lut_size;
-	has_ctm = degamma_lut_size != 0;
+	has_ctm = DISPLAY_VER(i915) >= 5 && !IS_VALLEYVIEW(i915);
 
 	/*
 	 * "DPALETTE_A: NOTE: The 8-bit (non-10-bit) mode is the
-- 
2.39.2

