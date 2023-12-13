Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FD28106D6
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:43:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065D010E6E2;
	Wed, 13 Dec 2023 00:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A32B10E6E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428186; x=1733964186;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HqO5N1XlFHrTIsagJPWXHvGTc92JKHc0I4DML+gZQ6w=;
 b=YWej/SKLz15+/Q5GnYepUs+mdFS7ETA8R3+KI9hIsNFVf9gHQxYI1vom
 s3GpJ3BELBSInKh0to9GIyTsxBMRjlo2EVuhUvfY+H1dPFriIJ8z1ChnX
 CzGRAZQuEo5l0Y8rm5F5KRrS0CtoHBD6uY8NzvS2hnR6TPTygFB4BtEgU
 WyAfWn0q2mPyejT8IEquZKxZWSBdMWMZbl+6knUFXr54IKROmEfqPgSQX
 9SF5OcJ63J0zMRsFc0v82QUhELpNJplTk6jc6jJbrUXhIl5g4BpFd5Mr8
 /S2FjZS5J4/ap+WyyQsTMnW6t/zOSKol2K9AnQ6FvZTF3JH/ng9YXBtCj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309690"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309690"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:43:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011828"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011828"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:43:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:43:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915: Fix region start during initial plane readout
Date: Wed, 13 Dec 2023 02:42:33 +0200
Message-ID: <20231213004237.20375-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
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

On MTL the stolen region starts at offset 8MiB from the start of
LMEMBAR. The dma addresses are thus also offset by 8MiB. However the
mm_node/etc. is zero based, and i915_pages_create_for_stolen() will
add the appropriate region.start into the sg dma address. So when
we do the readout we need to convert the dma address read from
the PTE to be zero based as well.

Note that currently we don't take this path on MTL, but we should
and thus this needs to be fixed. For lmem this works correctly
already as the lmem region.start==0.

While at it let's also make sure the address points to somewhere within
the memory region. We don't need to check the size as
i915_gem_object_create_region_at() should later fail if the object size
exceeds the region size.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index ffc92b18fcf5..db594ccf0323 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -79,16 +79,18 @@ initial_plane_vma(struct drm_i915_private *i915,
 		 * We don't currently expect this to ever be placed in the
 		 * stolen portion.
 		 */
-		if (phys_base >= resource_size(&mem->region)) {
+		if (phys_base < mem->region.start || phys_base > mem->region.end) {
 			drm_err(&i915->drm,
-				"Initial plane programming using invalid range, phys_base=%pa\n",
-				&phys_base);
+				"Initial plane programming using invalid range, phys_base=%pa (%s [%pa-%pa])\n",
+				&phys_base, mem->region.name, &mem->region.start, &mem->region.end);
 			return NULL;
 		}
 
 		drm_dbg(&i915->drm,
 			"Using phys_base=%pa, based on initial plane programming\n",
 			&phys_base);
+
+		phys_base -= mem->region.start;
 	} else {
 		phys_base = base;
 		mem = i915->mm.stolen_region;
-- 
2.41.0

