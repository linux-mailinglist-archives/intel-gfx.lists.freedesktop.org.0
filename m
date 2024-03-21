Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12161885D3D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 17:18:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A90210EE56;
	Thu, 21 Mar 2024 16:18:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fyn42lPK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE26310ED9E
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 16:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711037893; x=1742573893;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Y36C7/58MD7q4/SrJgzqEeuSoeCGRVEeaVETCAHRorg=;
 b=fyn42lPKaVKPzH2I3vcGReMg/4bVMBZYB83y9MZlSFsfjOWZmrM4IE7g
 WOwZugqJur+IhuFHlBwS+H5nxdYehqG8w8iv0Myz/+HcIJxfOW7yKxQAH
 jAKu+SMClXYKDqOoCrpr6CI4eP2J1+ajW3zpqUAZxoy7B1Q40jsFm4n04
 NS7KjN2hON3SgDgixXd3WI8CN0CYSvDWruPhBf+PJzoDi1okl/Xjfojbv
 q6qPdZGbkFY7o1CeTaT8OuSN0KwbMYOkp2Fqb+X8F3S/9PnzGElS8QV59
 ZL84KOaS8zt6hBfvYEVOjtNkkAGklrDnIWI+coeSGa4yQqCPXzIF20Kas A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5894180"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="5894180"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 09:18:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783098"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="827783098"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2024 09:18:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Mar 2024 18:18:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/5] drm/i915/bios: s/dpfs/dfps/
Date: Thu, 21 Mar 2024 18:18:02 +0200
Message-ID: <20240321161806.31714-2-ville.syrjala@linux.intel.com>
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

We've misspelled the VBT DFPS (dynamic frames per second) field
as DPFS. Fix it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 648934fcd123..f2506b0be790 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -614,7 +614,7 @@ struct bdb_driver_features {
 	u16 tbt_enabled:1;					/* 165+ */
 	u16 psr_enabled:1;					/* 165-227 */
 	u16 ips_enabled:1;					/* 165+ */
-	u16 dpfs_enabled:1;					/* 165+ */
+	u16 dfps_enabled:1;					/* 165+ */
 	u16 dmrrs_enabled:1;					/* 174-227 */
 	u16 adt_enabled:1;					/* ???-228 */
 	u16 hpd_wake:1;						/* 201-240 */
-- 
2.43.2

