Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB50BCAE2E
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27F9710EB25;
	Thu,  9 Oct 2025 21:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ixVWCKm/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5257510EB22;
 Thu,  9 Oct 2025 21:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044409; x=1791580409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tWpmlcdInPlduCaXPQu/wvrpZInwFbBzGNhOHl+8KqU=;
 b=ixVWCKm/05mN1ZuTzCOAc14RvXlvxgzK6ixORnk8lOgNp44c4fx8D/0y
 qy18Qu/NshveBXLI3y3YUm7qEVUd9WR8826gUgxdwfHl+9c/dhGRdnFpn
 aIfuGg+dJgoMHw5iOWeFiPsUnzhQS1nDLlC8K88cyq8XKZ/X1qxrqXKuK
 U6CBpvTRDPHS4+bvKFakxKJOEAkOKFCtDm60yavOZ2uaLJprMkrw9Vqaq
 Yd+EEj+oXktsmVzSb9v7F3tc6ciY2aM5Pon2FPAoc9tPQ1eZJFjnp5DW5
 rXOR9HUkq2Z5O6NinyuKGgEebvD3gmM25b42y7Mrgk5shhvVLpFQrHk6l w==;
X-CSE-ConnectionGUID: nNTTyMNhTxep6xAusdFxdA==
X-CSE-MsgGUID: KyKTBpcNS6uUfq7sWvawFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79910094"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79910094"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:29 -0700
X-CSE-ConnectionGUID: EIqhinV1Q+mXe31AwjGiNA==
X-CSE-MsgGUID: 2S1E013ySuWtY7OEmYs3aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="204516329"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/8] drm/i915: Implement .min_plane_width() for PTL+
Date: Fri, 10 Oct 2025 00:13:07 +0300
Message-ID: <20251009211313.30234-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

PTL+ spposedly still has the same plane min width limit
as ADL. Check for it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 504871065e09..9049cd79a29f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2818,6 +2818,7 @@ skl_universal_plane_create(struct intel_display *display,
 	intel_fbc_add_plane(skl_plane_fbc(display, pipe, plane_id), plane);
 
 	if (DISPLAY_VER(display) >= 30) {
+		plane->min_width = adl_plane_min_width;
 		plane->max_width = xe3_plane_max_width;
 		plane->max_height = icl_plane_max_height;
 		plane->min_cdclk = icl_plane_min_cdclk;
-- 
2.49.1

