Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D375B0096
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88F610E4AB;
	Wed,  7 Sep 2022 09:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5EC910E4AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662543353; x=1694079353;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hiIpi4yMpVMZIuNnmq01MnIs43E6ziN/uhTqdmGZu6Q=;
 b=b1dZv2HaJ22mmYp+rtMJR3OJbrVhpoSLgfJKDbHlXA8eGTAHcsQxtoaL
 W0Ueg6A89eLQNonFyJxzykfRIpIq40LTdm4hlMKHFzao4qJidUdXYXpXv
 ZXYb+/W/98vdbl7Fk4JdxE5Y5X/NH/T9kxoWFRtG4TBD7o8MfOhokkKQl
 Nlk0gg/fKJc/REBLyRGzfnMuoRh/nFULsoQCUB++CWdlkq4HjHTefOiCP
 TgA/LhtEeHJ2lbpJJixLRaTzduPiSZq2viAeSATQbU605hnW5CT74nMM0
 AFfELtJJqTlS3nj2p7dY7KEAF7MxRwMPdUJy0hEMBHo0/lwksT4tx1AtB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="295561923"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="295561923"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:35:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="676101426"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 07 Sep 2022 02:35:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:35:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:35:33 +0300
Message-Id: <20220907093534.29004-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/bios: Fix VBT ACPI DPMS bit
 polarity
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

We have the ACPI vs. not ACPI DPMS bit polarity the
wrong way around. Fix it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index d06b35f17c6a..6119fb035357 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -491,7 +491,7 @@ struct bdb_general_definitions {
 	u8 crt_ddc_gmbus_pin;
 
 	/* DPMS bits */
-	u8 dpms_acpi:1;
+	u8 dpms_non_acpi:1;
 	u8 skip_boot_crt_detect:1;
 	u8 dpms_aim:1;
 	u8 rsvd1:5; /* finish byte */
-- 
2.35.1

