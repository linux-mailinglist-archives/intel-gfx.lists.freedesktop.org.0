Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 292FB576F25
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C73DD10EE04;
	Sat, 16 Jul 2022 14:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DAF10E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916465; x=1689452465;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PNmEXsI4Mm7hH7RGptrWQaygOLPqkQ3u3i9UnjWTa+k=;
 b=DeZV7mJkrZbNTbvcZVnn01xsZRkCqzaGKB5sMjFRdHgbJYiEjpxNNf2F
 COd0F9ANOcagPRr1YXZ3s8d6Wyj7/tm8kFOjmRKsxgH3EP8Hj8MhnwUzk
 LGYbweSQwzO7hDBwsk4HZzorv+mRWOmA3WaZMrGhq9KHkbpYbNo0pzt4w
 s2UWB0NP5zFdpJ67PEog3GmtMvVbuqqxdfIoB0iOjvQPgy/luLbgYJD2l
 0VNqYDugd//ueE33nC4NmAVvOpHiv8cXRx7YeXwTpgrbxa51hPkv8AUuX
 rnrl25ACnjO3iM/jdEjtZ4qJA9VEpEhODTp4y1twMGJTpJXj263ZzfgBk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="372207251"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="372207251"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="623992749"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga008.jf.intel.com with SMTP; 15 Jul 2022 13:21:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:21:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:38 +0300
Message-Id: <20220715202044.11153-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Define VBT max HDMI FRL rate
 bits
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

The VBT gained some bits to inidicate the max FRL rate for
HDMI 2.1, define them.

These just outright replaced the slave_port bits for ganged eDP.
Apparently that feature was never actually used so someone decided
that reusing the bits is fine. Although the actual ganged eDP
enable bit was still left defined elsewhere for some reason.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index b15e29509fac..8bdb533b5304 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -412,8 +412,10 @@ struct child_device_config {
 			u8 reserved2:3;
 			u8 compression_structure_index:4;	/* 198+ */
 			u8 reserved3:4;
-			u8 slave_port;				/* 202+ */
-			u8 reserved4;
+			u8 hdmi_max_frl_rate:4;			/* 237+ */
+			u8 hdmi_max_frl_rate_valid:1;		/* 237+ */
+			u8 reserved4:3;				/* 237+ */
+			u8 reserved5;
 		} __packed;
 	} __packed;
 
-- 
2.35.1

