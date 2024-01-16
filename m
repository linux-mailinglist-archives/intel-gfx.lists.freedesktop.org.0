Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C619882EA6C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F0810E428;
	Tue, 16 Jan 2024 07:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1782410E428
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391828; x=1736927828;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eV+azrv4h0RQzIjzaWocqjVMhLVfpc+2acLmph0X+Hg=;
 b=SVUHRyJ55FQAMKIdAtIkpJRVqVNXuRUUD8628ra1aTJt5gq0cwzmcL2f
 wT7/BJuiUrzi/Gbtx6rOEJnhfM+5AuPL9MvpuB9aPn/TkRqtJJQ3xSWSu
 YltMiedi/mSN4Dd1/+oMtk3HzVNDSOpep5a45omnotE7bZbIHjRKRP8gs
 nP0h9JKGio7axts75NnHK0lU2+aEWF2KZM6DAUF7229TadMEX5lj8UJIb
 XBZwB/Czosg/XEzBFuQ+jKVeoL73mlSpAs14XgO2ZxlmHFjQ/8zW4IjFw
 a+KwzPVP9dn44b4KJOPJ+vOvlgQoLUyTNaYe/mgN2wPXZWZedyRf7xxEL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948616"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948616"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776946999"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776946999"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 08/16] drm/i915: Fix region start during initial plane
 readout
Date: Tue, 16 Jan 2024 09:56:28 +0200
Message-ID: <20240116075636.6121-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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

Cc: Paz Zcharya <pazz@chromium.org>
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

