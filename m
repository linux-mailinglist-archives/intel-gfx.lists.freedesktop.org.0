Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC4A8BAC58
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BEB010FBF8;
	Fri,  3 May 2024 12:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z1O+OsPn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B1F10FBF8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739095; x=1746275095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RYywgvKONJH4h66+1L9ACOf1bRxqJP025osQhR9/WdI=;
 b=Z1O+OsPnD/h2E38NZzu8HvVSKi1ftxq71l93RvQ4O8+XSIvIGcYxi7EN
 GesHuL4ghUf8FTCrPGE7tF5nk8jcb2kwbpb0PjE8Md7MIapyqX8RzzBGf
 lYDlP26iKLOOBBKUdthcodMSRUesShGCQepxzbdZvRl3shIOmIKY+CqHz
 0TtF1K9lWGAD7MrDeKQ0EbAyl/TBbMWoxQZPF1/fb1osYPKAfkYJar0Z2
 549bELsYPAu9m/iKX/M6a4RfpZpbDLTKNPZNnehdIyi3FGCHK5RzbpbCj
 KW+c9WsB6IFTo9XV7oATU2bFvXKCcUprblxgyLdN+DhClmIOex6HVRQ7o w==;
X-CSE-ConnectionGUID: CoHQ4YJDQSSIALX0PaaEgg==
X-CSE-MsgGUID: 55OoD6ayT56edOeV4l2xVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372718"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372718"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:24:55 -0700
X-CSE-ConnectionGUID: paOf49JwS4CQVR6Ccjzgtw==
X-CSE-MsgGUID: 5cX1FvPrS0SOV631GYfG9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463557"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:24:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:24:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/35] drm/i915/bios: Define eDP DSC disable bit
Date: Fri,  3 May 2024 15:24:15 +0300
Message-ID: <20240503122449.27266-2-ville.syrjala@linux.intel.com>
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

There's a new "DSC disable" bit in the eDP VBT block. Define it.

TODO: actually use it?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 3815aa21d19f..d7b9bde5dcc4 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -749,6 +749,7 @@ struct bdb_edp {
 	struct edp_apical_params apical_params[16];		/* 203+ */
 	u16 edp_fast_link_training_rate[16];			/* 224+ */
 	u16 edp_max_port_link_rate[16];				/* 244+ */
+	u16 edp_dsc_disable;					/* 251+ */
 } __packed;
 
 /*
-- 
2.43.2

