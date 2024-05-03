Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F658BAC5F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDEB41128AF;
	Fri,  3 May 2024 12:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lGY/6uUF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA7B1128AF
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739112; x=1746275112;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V8bwKdR5V3BSXMRiyvhSbTmdbW+imXY4v9V5bl1rE1g=;
 b=lGY/6uUFsnoWfNAQGUX40aqPU6SXq0YpAb26lqMgwUPv921Kg5qwyUgD
 o326MJ+lfmEtmIDxl5uhCNvxYgWFhaxptQUI00ir0d9tlGRnXaa2nsqP5
 +GnlElvPjsRI+lIXJokiZ9aM636ynjW26Qql0baMO/hUezfWe5pjxYHcb
 ooM3eF9F0FZ2oM9Pzm4VxwQnAOvW+djSlHtJydKaetCMspCiCXF2hMdR8
 +FlE1TAT0CgVy0mpflPSHV+Q+V9dos96fjj2/kWIyW+BoevYgSreND/Ej
 LoRy8fsjRzfdEFW77iO6kp1g73PVQEeotX4QamTxf2QBjcmC8WAaMrqrt A==;
X-CSE-ConnectionGUID: rMJxpYMYT5iYhsYQG4atLw==
X-CSE-MsgGUID: rFBD35sjRqqzYKpcjsdzDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372740"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372740"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:12 -0700
X-CSE-ConnectionGUID: X6/tHFskQjakcNWZ6KetDg==
X-CSE-MsgGUID: DcMeBzXwTyOHaEQNAGOWMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463647"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/35] drm/i915/bios: Flag "VBIOS only" VBT data blocks
Date: Fri,  3 May 2024 15:24:21 +0300
Message-ID: <20240503122449.27266-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
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

Several data blocks are mean to be consumbed by VBIOS only.
Flag them as such.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index c7c7b47baa73..0533025d133b 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -144,15 +144,15 @@ enum bdb_block_id {
 	BDB_OLD_TOGGLE_LIST		= 3,
 	BDB_MODE_SUPPORT_LIST		= 4,
 	BDB_GENERIC_MODE_TABLE		= 5,
-	BDB_EXT_MMIO_REGS		= 6,
-	BDB_SWF_IO			= 7,
-	BDB_SWF_MMIO			= 8,
+	BDB_EXT_MMIO_REGS		= 6, /* VBIOS only */
+	BDB_SWF_IO			= 7, /* VBIOS only */
+	BDB_SWF_MMIO			= 8, /* VBIOS only */
 	BDB_PSR				= 9,
 	BDB_MODE_REMOVAL_TABLE		= 10,
 	BDB_CHILD_DEVICE_TABLE		= 11,
 	BDB_DRIVER_FEATURES		= 12,
 	BDB_DRIVER_PERSISTENCE		= 13,
-	BDB_EXT_TABLE_PTRS		= 14,
+	BDB_EXT_TABLE_PTRS		= 14, /* VBIOS only */
 	BDB_DOT_CLOCK_OVERRIDE		= 15,
 	BDB_DISPLAY_SELECT		= 16,
 	BDB_DRIVER_ROTATION		= 18,
@@ -174,7 +174,7 @@ enum bdb_block_id {
 	BDB_MIPI_SEQUENCE		= 53,
 	BDB_COMPRESSION_PARAMETERS	= 56,
 	BDB_GENERIC_DTD			= 58,
-	BDB_SKIP			= 254, /* VBIOS private block, ignore */
+	BDB_SKIP			= 254, /* VBIOS only */
 };
 
 /*
-- 
2.43.2

