Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2FDB48586
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9E310E483;
	Mon,  8 Sep 2025 07:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eLhxpVOO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E0510E47E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 07:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757317074; x=1788853074;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kDvMBoIE6VZmojcu8YISsGmoqq5NxjOBpdN6SGeILdo=;
 b=eLhxpVOO/0yLq4xVNvo+DvYCKpA3wrpljYwMHZ1bd6fDpmueHQUbb4W1
 ECFscfgEOPg8fq+1EJAflDXrxZkbC874G6QXU8b37u/Ohlo2jL3va+isi
 dwZrIY6sI5rhYdMOltAw4eDdzXU1iAjCDpFzVi29VDIkS4dQzTPDCOp3Q
 rtVcBdkOAh+MafS9VJEZHAAui64Fc/YvRqwCPLfPNHgQJRO3HPt3gTLX8
 GY9JiOXxY5UegKlpuxGsRvSluy1zp0Z62gNmRel7L09jWkwGphEdULmn5
 +TIxwOhCxFOwntUyHddp7xVtyl6beTDkPuzOkjBeSQXFqB4hIieAMSNAX Q==;
X-CSE-ConnectionGUID: NSXVPB2oQbWHI1qImYCaxw==
X-CSE-MsgGUID: Z//ZPnS3SIWSyB7DuJPI5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59506301"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59506301"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:54 -0700
X-CSE-ConnectionGUID: oDKhw6foQnKkC9hINnWNZA==
X-CSE-MsgGUID: NPar9mnFSa6KOyBb98OW4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171986992"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:53 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915/wm: remove stale FIXME in
 skl_needs_memory_bw_wa()
Date: Mon,  8 Sep 2025 10:35:32 +0300
Message-ID: <20250908073734.1180687-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908073734.1180687-1-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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

This FIXME has been there forever and apparently the _proper code_ has
never been added, and, since it's a very old platform alreday, most
likely never will.  It hasn't been a problem to keep the workaround
for all cases, so let's drop the FIXME tag.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3b409442db37..0ce3420a919e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -83,8 +83,8 @@ u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
 }
 
 /*
- * FIXME: We still don't have the proper code detect if we need to apply the WA,
- * so assume we'll always need it in order to avoid underruns.
+ * We don't have the proper code detect if we need to apply the WA, so
+ * assume we'll always need it in order to avoid underruns.
  */
 static bool skl_needs_memory_bw_wa(struct intel_display *display)
 {
-- 
2.50.1

