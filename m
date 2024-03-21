Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BE0885D3F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 17:18:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2704E10EEBF;
	Thu, 21 Mar 2024 16:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ssu3hIPw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C72110EEBF
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 16:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711037899; x=1742573899;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9q/8ZAdF6KLTibSag4WtdJgHWzEParhSBNya/WXfPKw=;
 b=Ssu3hIPwPh+ezV2XhgxEuZcYdAo65kB45B9nODeRAQqDvDTZ/1u/HPEJ
 BHGYl/LijcLjKlIh2j+2bsJ9oJb+tdzCQUf/TQiO4pyhdHfk8bRjkEFac
 2Vc7yusSyaKWfmowGHZreSAVqs+tBmdHVjiuyLcW0lcvtcvHERCH/7qw/
 iOqYHnnV+YsLCgbKLHhFGsMDoA5xorjWixq+hJWxAljxeUl2z0lfFqM7E
 GRAROk3cRcVJa8zlCBZQgnZVNfyTuTLp0THicVvePyQXtVKjeztinyZ5z
 XAnE57cXdIUfy5TvTYQ5w8mDadKmwfdC2eAtOPTjeiTuHBADx3TTMJRIj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5894193"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="5894193"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783100"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="827783100"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2024 09:18:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Mar 2024 18:18:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915/bios: Add the old DPST field into VBT LFP power
 block
Date: Thu, 21 Mar 2024 18:18:04 +0200
Message-ID: <20240321161806.31714-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
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

According to some VBIOS sources the LFP power block used to
have a single bit for DPST support. In version 159 that bit
got moved into the driver features block, and then in version
228 back into the LFP power block (but this time as a
per-panel thing). We have definitions for the last two, but
not the original bit. Define it as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 24583b455f2d..5da8ae407dfd 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -918,7 +918,7 @@ struct bdb_lfp_backlight_data {
  * Block 44 - LFP Power Conservation Features Block
  */
 struct lfp_power_features {
-	u8 reserved1:1;
+	u8 dpst_support:1;						/* ???-159 */
 	u8 power_conservation_pref:3;
 	u8 reserved2:1;
 	u8 lace_enabled_status:1;					/* 210+ */
-- 
2.43.2

