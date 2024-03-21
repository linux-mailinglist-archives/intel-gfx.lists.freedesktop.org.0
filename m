Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C81D6885D41
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 17:18:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39FF310EEEA;
	Thu, 21 Mar 2024 16:18:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N62GKI/z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C1410EECF
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 16:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711037904; x=1742573904;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/qQUj26Uo4AzzP6UULxfVxQqCNFGNDw2eSXTW22+pik=;
 b=N62GKI/zXyUJ0F55EkJhQbWXnemCF8eE+4n0v6Tq+2kmSpThEs4LIf1k
 Q5b8oNSp3ye1jf6ZwYkTmBbRwCtr/dGHz+TX6RTCtGhbuXF7+oPD4Aryx
 outCehaPBplQbcCxGA79PMvA0t2V3r8tqUwHBfP62hEugWRTeA0dqMof3
 RcgNffmGcRisEEKQCYkkWd0EMWlr8remPls4HS83jCpAI0i1Bw9MjDPUT
 GcC2/8DDbH7ipTptqh2Nl5qDhNYQH2laocI2RBiLdVdCSCoSa7UF8uLZr
 up01Jx+p7g4TVMO7FMDIMRAJxvek00JJA2FQIfgt0rl2Db0Z0YZ6q6m60 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5894201"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="5894201"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783102"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="827783102"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2024 09:18:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Mar 2024 18:18:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/bios: Pimp the VBT backlight data BDB version
 comments
Date: Thu, 21 Mar 2024 18:18:06 +0200
Message-ID: <20240321161806.31714-6-ville.syrjala@linux.intel.com>
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

Add the missing BDB version number information for some of
the backlight fields in VBT.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index bcd1b239eb65..3815aa21d19f 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -907,8 +907,8 @@ struct lfp_brightness_level {
 struct bdb_lfp_backlight_data {
 	u8 entry_size;
 	struct lfp_backlight_data_entry data[16];
-	u8 level[16];							/* ???-233 */
-	struct lfp_backlight_control_method backlight_control[16];
+	u8 level[16];							/* 162-233 */
+	struct lfp_backlight_control_method backlight_control[16];	/* 191+ */
 	struct lfp_brightness_level brightness_level[16];		/* 234+ */
 	struct lfp_brightness_level brightness_min_level[16];		/* 234+ */
 	u8 brightness_precision_bits[16];				/* 236+ */
-- 
2.43.2

