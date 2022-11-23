Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5426D636389
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 16:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707CC10E583;
	Wed, 23 Nov 2022 15:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B709010E577
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 15:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217233; x=1700753233;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xOvgpyCUIzXZ+xFnV63yzmz47PzaL4h/nOydstTG/Ek=;
 b=HTBYByPROswTIDdrrnFbKbK9L8yYmzcGMOPXrnmuiGlzybA6t4fGkdqX
 S5h/nt/f55LjUMyX3SbzDntR0nCI2lJgrSl8FRgskgATPsABYdwYIc4PY
 IsNHKKVDq3vHQdWQ95/xOFjeFRfZ/MVtSmln8qqAM0GmMVbB6a+5GgQ3U
 5oWGDn1njm/hT67jPFT5ivoQs33FS2cxRifLJm1eUm20eu/Y7b1QVHZ9V
 vhmHx4P6ibxC7lOSiT0BqKNXFFHCocUaF8VGreZIBUt2Pu9UsoCFA0HRt
 C+yYLurdfG/CQsvN2usQ9PEsVRw8Et8UNMZ3icrIaGOwg1ckIXN8L9kVg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312789968"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312789968"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:27:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619651083"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="619651083"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 23 Nov 2022 07:27:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 17:27:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 17:26:36 +0200
Message-Id: <20221123152638.20622-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] Revert "drm/i915: Disable DSB usage for
 now"
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

This reverts commit 99510e1afb4863a225207146bd988064c5fd0629.

DSB is now getting disabled locally in the color management
code so we don't need to apply this big hammer via the device
info (not that we have other DSB users at the moment).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 414b4bfd514b..d8f0f512c944 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -889,7 +889,7 @@ static const struct intel_device_info jsl_info = {
 	TGL_CURSOR_OFFSETS, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
-	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
+	.display.has_dsb = 1
 
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
-- 
2.37.4

