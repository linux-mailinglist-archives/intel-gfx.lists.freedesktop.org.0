Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F552557C84
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 15:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E1210E5D9;
	Thu, 23 Jun 2022 13:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22DB10E5D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 13:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655989756; x=1687525756;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2cqk18RhDxfcPcvUZG4dE0SlGpyjdN3pOp+v2obr+1E=;
 b=e55ASSeM2GGxVMjv/KtRVnKmqMYuc4NzXu490az4X2mgqwGIaQ1VA0LU
 YrDX9aCOLjKjqsihVJnRWxqJZq+RPnPbXmYg3LHj90mblefcYfESTgw2r
 Gc1cOFl1cph9uYjJCHeqH5ZJXC/3NzdgwsZunX9PqIbEIodAQ4UmaIvIU
 8ZfqQxr0gq6b4ixGckGW5VjkmEQ9mydbYpkngacrTMhPpR6cTF5QQC1wH
 I8i6goCM27WDxEOpwd/QqoENLFr4OgRL5bJ8m2fzStw2yspCxPBF9g/GL
 mwfg26ubxLtQV/WudMnSpB0/jyNRBGdnqyGwnqNsPCvBuQ2Oaw8gzeY+H Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="281791593"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281791593"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 06:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="621309574"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 23 Jun 2022 06:09:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 16:09:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jun 2022 16:08:55 +0300
Message-Id: <20220623130900.26078-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
References: <20220623130900.26078-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Make pipe_offsets[] & co. u32
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

Using a signed type for the register offsets doesn't really
make sense. Switch to u32.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e3b40f5782a4..2be7ba78f123 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -242,9 +242,9 @@ struct intel_device_info {
 		u32 mmio_offset;
 
 		/* Register offsets for the various display pipes and transcoders */
-		int pipe_offsets[I915_MAX_TRANSCODERS];
-		int trans_offsets[I915_MAX_TRANSCODERS];
-		int cursor_offsets[I915_MAX_PIPES];
+		u32 pipe_offsets[I915_MAX_TRANSCODERS];
+		u32 trans_offsets[I915_MAX_TRANSCODERS];
+		u32 cursor_offsets[I915_MAX_PIPES];
 	} display;
 
 
-- 
2.35.1

