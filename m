Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F9D4D3E64
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C0F10E583;
	Thu, 10 Mar 2022 00:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F59E10E583
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873297; x=1678409297;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RpGq7pJ2lwG5zYPAtJlULXNazza0o+0pwSfL3p5qD+g=;
 b=T85cyT6Mb6EACQ3ImuPKQBkd+dbFARIVGHqxceELZmlQD6Eih6Hpl7yu
 UywcHsVgWNrGg2pxcx5tmFwOxwQ9eNBFa6HlmaisAmoDS6JqyPi+wexb3
 QmXdapEO/HoOaudb9P5xp/sNpRwGroBJhmZfehvECisXJlxqWLjOB9QYe
 gq1YY5Bg+kTpETJWCsel0GsY67XROIW96TRGRtuMTccnhg+pfROWkBhoe
 lp76jIypWozE/RFs9Czq+8+BBzrxAqtTK1+ofDf+cEMN2LmJJerRqDq+h
 Y5CRGPv4fpRcaPbsGcgmfXiM6Ao7SuuQ8gWqOW1NmstM6DYeaNHTASeNt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="341555660"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="341555660"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="596474712"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 09 Mar 2022 16:48:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:53 +0200
Message-Id: <20220310004802.16310-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: Read DRRS MSA timing delay from
 VBT
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

VBT hsa a field for the MSA timing delay, which supposedly
should be used with DRRS. Extract the data from the VBT.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 3 +++
 drivers/gpu/drm/i915/i915_drv.h           | 5 +++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a559a1914588..93dc32fb3e40 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -888,6 +888,9 @@ parse_edp(struct drm_i915_private *i915, const struct bdb_header *bdb)
 			i915->vbt.edp.low_vswing = vswing == 0;
 		}
 	}
+
+	i915->vbt.edp.drrs_msa_timing_delay =
+		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 943267393ecb..020c5f7602a2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -356,10 +356,11 @@ struct intel_vbt_data {
 		int lanes;
 		int preemphasis;
 		int vswing;
-		bool low_vswing;
-		bool initialized;
 		int bpp;
 		struct edp_power_seq pps;
+		u8 drrs_msa_timing_delay;
+		bool low_vswing;
+		bool initialized;
 		bool hobl;
 	} edp;
 
-- 
2.34.1

