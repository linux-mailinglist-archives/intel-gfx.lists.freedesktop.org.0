Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E12576D6AF0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 19:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB63A10E739;
	Tue,  4 Apr 2023 17:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E388310E737
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 17:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680630879; x=1712166879;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YhnuXoNOydarCiuxWEvIsMwBN13DEDsbYCEfXcz09fU=;
 b=DTEzucbgwWhzCYvRvd1VZwF5b7M96INKeyJClhaOfOly+SGsqQtwFvNl
 fpGtM0wntutZNj6m3e/eVmho9SZmENYWhJO1ci3FQJ57kSd8BcopSTTWh
 YULDOrJy1gNuJB2eFNVOWapsktsDRI/JTXllAaRY79WQzjOSvY5zVfvWP
 ZvV9i7KvjCisnGdAY+iYpF3xOlOiztjtNOmywPFZ2VJe0vQdV0K+c9kwA
 SBEBbb/jp+zV41HaRsec5AK8RhVBUVI5xje27+5IbbfLozWBXPj1aEU/q
 WeFr7OpxqviIwoAVUgSr3k5JxSSVsKV+FCmZV+kJhsyqBbFSdJ4G49E3R A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428546267"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="428546267"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 10:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="755721310"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="755721310"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga004.fm.intel.com with SMTP; 04 Apr 2023 10:54:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Apr 2023 20:54:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 20:54:31 +0300
Message-Id: <20230404175431.23064-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
References: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Use min() instead of hand rolling
 it
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

Most places in the vblank code use min() to clamp scanline
counters below vtotal. But we missed one in the gen3/4
pixel counter based codepath.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index f8bf9810527d..136393d99298 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -340,8 +340,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 		 * matches how the scanline counter based position works since
 		 * the scanline counter doesn't count the two half lines.
 		 */
-		if (position >= vtotal)
-			position = vtotal - 1;
+		position = min(position, vtotal - 1);
 
 		/*
 		 * Start of vblank interrupt is triggered at start of hsync,
-- 
2.39.2

