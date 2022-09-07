Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5A45B0094
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146FD10E4AF;
	Wed,  7 Sep 2022 09:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359AC10E4AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662543341; x=1694079341;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gEObj6+BTnT4eoV4mM2opLMxLEy2wUZSLU077V3z1O8=;
 b=AT87666gYiynWYmms3lWiHTyNOLjqx0Z2tsdOd3iflqMNnTldpxQQEO6
 abEyTU9AqsW/5mjWzQklEPRXAmK3MKkBn5hx4tt9wCNdAKMPK+jhlMihc
 ze3DNsbXmhqR5qUh8XPSV+9FYQcio1uISGYCsVoUPWyTJYoA+ZGgjHP0k
 XL+m6cPpoIfz8MccLy83eXuA2+IzRTljRT6UnKfHRKOutKAKZ+yqgvtmv
 7GzrZJE/4VV82i9+HSBB6S+AwrfuR9+6WvqbbQa322Fxo4vpzi/i/MPIk
 +zjs6nZ5rgMDrkFwogAbdHVOQjfpxWmD5PY4zhq1l1ENoOO2R/aapZD8/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297612056"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="297612056"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:35:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="644546305"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 07 Sep 2022 02:35:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:35:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:35:34 +0300
Message-Id: <20220907093534.29004-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907093534.29004-1-ville.syrjala@linux.intel.com>
References: <20220907093534.29004-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/bios: Add the "Disable compression
 for the Display Port/HDMI external display" bit
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

The child device block has gained a new bit for disabling
compression for external displays. Seems stupid, but there it is.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 6119fb035357..a9f44abfc9fc 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -418,7 +418,8 @@ struct child_device_config {
 			u8 compression_method_cps:1;		/* 198+ */
 			u8 ganged_edp:1;			/* 202+ */
 			u8 lttpr_non_transparent:1;		/* 235+ */
-			u8 reserved2:3;
+			u8 disable_compression_for_ext_disp:1;	/* 251+ */
+			u8 reserved2:2;
 			u8 compression_structure_index:4;	/* 198+ */
 			u8 reserved3:4;
 			u8 hdmi_max_frl_rate:4;			/* 237+ */
-- 
2.35.1

