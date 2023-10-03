Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA157B71F1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 21:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C08310E319;
	Tue,  3 Oct 2023 19:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3416D10E319
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 19:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696362203; x=1727898203;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=glavGxvuP2rKe3TAerMV6Faf9GrQ5rDtI6iWC4edpRA=;
 b=QN32kf2q+M9MgTM9ooxeQ1opBVtwdXMroDlIFXa4Xs8XBJbSNjaR6+Ua
 MfBlYweaNVxgH2aGSE77oU4UEiqzNYZxbZ5ygooVqmhSbdqqhJlnApMfF
 GvZZeB4+vJP06nryliR/nUH97R/mxptrDTRzalX6gDAoTKRVjNZTfITf1
 b+GHxAbR0ni8hGZjGIth48ELuZS5kSTdzhmocGwE1We/VUlWzDq7x+v2E
 O8UnE55O/6k3JlLgWsaSgz8rdIu3+2vFvlqOdQksUcavXsQjUIIoErQ4k
 d6yDh1fdYztjsYsBpLyEna3CZ8APVvdIo20/t2E0yFhkvlQb75YdMAggw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380238233"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380238233"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 12:43:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894623248"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="894623248"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Oct 2023 12:41:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 22:43:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 22:42:56 +0300
Message-ID: <20231003194256.28569-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
References: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/fbc: Remove pointless "stride
 is multiple of 64 bytes" check
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

Plane stride is always a multiple of 64 bytes. Remove the
pointless check that really doesn't have anything to do
with FBC.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 37f96a4d50f2..4820d21cc942 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -897,13 +897,6 @@ static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
 static bool stride_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	unsigned int stride = intel_fbc_plane_stride(plane_state) *
-		fb->format->cpp[0];
-
-	/* This should have been caught earlier. */
-	if (drm_WARN_ON_ONCE(&i915->drm, (stride & (64 - 1)) != 0))
-		return false;
 
 	if (DISPLAY_VER(i915) >= 11)
 		return icl_fbc_stride_is_valid(plane_state);
-- 
2.41.0

