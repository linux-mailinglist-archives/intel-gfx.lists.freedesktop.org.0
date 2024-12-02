Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BEB9E048C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0D410E75B;
	Mon,  2 Dec 2024 14:14:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuxcozsv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 683E010E75B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148885; x=1764684885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I12DxTKveVvnwPOvtSgCj1H/MwMZ2vrlFf/havmMyN4=;
 b=kuxcozsvkcFdAnqrqpcRy/UTx4orHT8Z+eYRGJtpTO5b9i98q1YPEj+A
 e6S1YLMQZMmUxvq+v57p6GuyDtYwNUhdi1n3DywaurtB3C+NZ5LcelG98
 qFrk1RB0pUI41tIha9Nla53NfH5yroJCLESvc7neAyTQCv6XcUSKytVfq
 nXpBu+MyrtjLojkYfKxZBjbQdn9vL8XMc2odps9O4cLl8inqrTOD/PlBT
 vpAHZgC48aymneKvvFguuDlISkpDu24HExHJQvrhcIal8Zk5buMVbj8W5
 aYR8F1sWWBi9r7iwSIKMEcz2L/LxLVHfdc3G9oIbhuNUT7xFYHS1wfkoG g==;
X-CSE-ConnectionGUID: 41vgrHZ4RWKdzXZ2lbtLiQ==
X-CSE-MsgGUID: 2SZPpOm+Qnqni2UgVDsVWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807261"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807261"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:45 -0800
X-CSE-ConnectionGUID: fyTI/WIPRHGJ9pmx64rfmw==
X-CSE-MsgGUID: iMWDGH6/SnOoBfLwDoLemQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287744"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 6/9] drm/i915: Disable scanout VT-d workaround for TGL+
Date: Mon,  2 Dec 2024 16:14:21 +0200
Message-ID: <20241202141424.21446-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
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

TGL+ should no longer need any VT-d scanout workarounds.
Don't apply any.

Not 100% sure whether pre-SNB might also suffer from this. The
workaround did originate on SNB but who knows if it was just
never caught before that. Not that I ever managed to enable
VT-d any older hardware. Last time I tried on my ILK it ate
the disk!

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ead37c5e51f8..8ff6d1ae44fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8727,5 +8727,5 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915)
 {
-	return DISPLAY_VER(i915) >= 6 && i915_vtd_active(i915);
+	return IS_DISPLAY_VER(i915, 6, 11) && i915_vtd_active(i915);
 }
-- 
2.45.2

