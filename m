Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D46A2F62C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:58:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A671F10E5D7;
	Mon, 10 Feb 2025 17:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ekyWnsvL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7AB10E5D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210328; x=1770746328;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4XS0DZZyxsTBaTv4UuKrA8GC9lG1lpFIZDhzWfiqwYU=;
 b=ekyWnsvLjdkN7BdiKvwxFuthih/O97FdnMbjQtNA3xF0gU0D4lp5pu/1
 8pTWhOix9P7igj9as1UyekHjE1HDJsBkMGLQxsLmm2sTfdpXrP8Lv+/V6
 hgxRGFD6kgJl16cIti1eZZTfc8fTfU4T0pK6t16oTQzNgYRgf/OAkAI4q
 yGz+QdKMqMmSpP6wHt293zgoDguoEQzHvUqpGZ+2susrPz7DUqFnellzY
 DORoXlTIx4UXgGunQq4K4hQgMrcP2fl4iYout+R9jCILhWF2X/Rnbrt4t
 3+Vikj03vtg0c9cQHutelOYhxiVeG5DcurpXFJMPruez6tWzeFSVu3gA8 w==;
X-CSE-ConnectionGUID: zyD6jLl4RcKVQen275TTJA==
X-CSE-MsgGUID: DCdHeL/mS3iThGy/ivGrRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39003001"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39003001"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:47 -0800
X-CSE-ConnectionGUID: nmy9IcdCTiqVkPbL125M+Q==
X-CSE-MsgGUID: 3SJPlXRnQ4m7bD+6kb4EgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480691"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 3/7] sna/kgem: Add kgem_bo_replace()
Date: Mon, 10 Feb 2025 19:58:32 +0200
Message-ID: <20250210175836.30984-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
References: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
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

Add a helper to do the unref old + ref new bo dance.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/kgem.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/src/sna/kgem.h b/src/sna/kgem.h
index 6a087a574a78..205a4eaefb75 100644
--- a/src/sna/kgem.h
+++ b/src/sna/kgem.h
@@ -411,6 +411,15 @@ static inline void kgem_bo_destroy(struct kgem *kgem, struct kgem_bo *bo)
 		_kgem_bo_destroy(kgem, bo);
 }
 
+static inline void kgem_bo_replace(struct kgem *kgem,
+				   struct kgem_bo **bo,
+				   struct kgem_bo *new_bo)
+{
+	if (*bo)
+		kgem_bo_destroy(kgem, *bo);
+	*bo = new_bo ? kgem_bo_reference(new_bo) : NULL;
+}
+
 void kgem_clear_dirty(struct kgem *kgem);
 
 static inline void kgem_set_mode(struct kgem *kgem,
-- 
2.45.3

