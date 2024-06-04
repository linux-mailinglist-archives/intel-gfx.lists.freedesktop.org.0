Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B4A8FB72F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B88310E4FE;
	Tue,  4 Jun 2024 15:29:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nP6JhyEb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B6610E4FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514983; x=1749050983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ocx14A5w3UQbNYAjNv8k9MGjn4yZn3glmdnhF5j/fmc=;
 b=nP6JhyEb81GGAvQokB4xbknNeqn1fJfWan+tRKCZG7ziFunKwI7wOaqr
 MKy5f86pqSiPaFhXbrL5xfxIiNx6xTjC31UjB1Nxa728t9KQZMW3VlYLy
 5a+yQAjzlVBng5J6ZInECEOUbBRS0OPlAJjocgxdgJbbdPlF3MadSylh7
 4Yb1GeHlHe5APxZoTzjnjejMy8sm/gcY2N65XmaxIAo67Nhyy7DcEC99C
 FfcKfojGRM565LyjW+qfcBOIY3OqABB2GFDjQ2TFhYbfF+4wWNZG5kGz/
 feBEgAqtVzHGxGmohC8028I3wRolCcNAgLKZEOSebnp9WhjLw4vUR9tEw A==;
X-CSE-ConnectionGUID: zlbTXwsDRiiYhCloMtGDsw==
X-CSE-MsgGUID: +2FsTcYeSlGVezIIf2GnXA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949706"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949706"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:43 -0700
X-CSE-ConnectionGUID: mnmn75TsQAeWIIRCCXHQ4w==
X-CSE-MsgGUID: 6OwFY7rnRT+z53UCX8jsww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41714843"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 40/65] drm/i915: pass dev_priv explicitly to
 _PIPEB_FLIPCOUNT_G4X
Date: Tue,  4 Jun 2024 18:25:58 +0300
Message-Id: <de4aa3b67aa3b61e5a5de5eb7402a08d6a9cbf6a.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the _PIPEB_FLIPCOUNT_G4X register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f5367ec58400..fb1dc6f5e903 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2302,7 +2302,7 @@
 #define _PIPEBFRAMEHIGH		0x71040
 #define _PIPEBFRAMEPIXEL	0x71044
 #define _PIPEB_FRMCOUNT_G4X(dev_priv)	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
-#define _PIPEB_FLIPCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71044)
+#define _PIPEB_FLIPCOUNT_G4X(dev_priv)	(DISPLAY_MMIO_BASE(dev_priv) + 0x71044)
 
 
 /* Display B control */
-- 
2.39.2

