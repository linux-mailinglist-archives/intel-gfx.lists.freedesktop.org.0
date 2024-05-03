Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 362848BAC74
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AB31128DC;
	Fri,  3 May 2024 12:26:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CBcFnuaJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0240B1128DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739166; x=1746275166;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=d4dN8NY9DvECg7dK3Tv9gm8a40trv7HvZypB9iNHQcQ=;
 b=CBcFnuaJVaU3z3epHVq1lYq02oF3nnVoInVPImUGcPP0fEsEyqPd+9HD
 MBEZzU/yhy/wLvZ/KwGHYLsKHgujErDYp7zxjRQxRctbd/sXCeEx9iSMy
 0xIEqT9NyppDwV7Uw3rR3srYRfHfQaZBAbPlf0ZMA/UvsFn3hgCAs7Cb7
 YY7PRZMBShT8HarVCyCFFQtsl7xOSxLEyoCJ3j+cdWwM/1eJorV4scF9F
 p/LLzIZkOPjg+dH3W3AhOPwVOq0aut6DlgXCujvkqPSRUFebbT26ShlSs
 Ol37rR2+IEJaAewLgyP6w3djKfi0OcrgFKnGwUJION+yvuGx8jVbQdNsm Q==;
X-CSE-ConnectionGUID: x6qhPhk8Tbec7saNZNGJ0A==
X-CSE-MsgGUID: Uh+G7oC0R3K162Bq/OUHSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372786"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372786"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:05 -0700
X-CSE-ConnectionGUID: kYmUxF5CROWUZCgi6LQtHQ==
X-CSE-MsgGUID: iMSpZAZfRfu/Yz5oIu25hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463853"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 26/35] drm/i915/bios: Define VBT block 28 (EFP DTD) contents
Date: Fri,  3 May 2024 15:24:40 +0300
Message-ID: <20240503122449.27266-27-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 28 (EFP DTD).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 1b94d4aba00a..716a339f6e2a 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -167,6 +167,7 @@ enum bdb_block_id {
 	BDB_SDVO_LVDS_PPS		= 25,
 	BDB_TV_OPTIONS			= 26,
 	BDB_EDP				= 27,
+	BDB_EFP_DTD			= 28, /* 161+ */
 	BDB_DISPLAY_SELECT_IVB		= 29, /* 164+ */
 	BDB_DISPLAY_REMOVE_IVB		= 30, /* 164+ */
 	BDB_DISPLAY_SELECT_HSW		= 31, /* 166+ */
@@ -1072,6 +1073,14 @@ struct bdb_edp {
 	u16 edp_dsc_disable;					/* 251+ */
 } __packed;
 
+/*
+ * Block 28 - EFP DTD Block
+ */
+
+struct bdb_efp_dtd {
+	struct bdb_edid_dtd dtd[3];
+} __packed;
+
 /*
  * Block 29 - Toggle List Block (IVB)
  */
-- 
2.43.2

