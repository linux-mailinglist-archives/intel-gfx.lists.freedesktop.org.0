Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DBC9B3B11
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 21:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1E010E56A;
	Mon, 28 Oct 2024 20:07:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hzzeWwH0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1104610E568;
 Mon, 28 Oct 2024 20:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730146067; x=1761682067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PvmTbsGxs72lGm+nu+Qo+4ogZW8TURvMLw0hmswrjZk=;
 b=hzzeWwH0tNAm0B8+AVD3GAFsJPipoRMH5/2rz2n08SLNxhaTke9lVrob
 wCtPcvNpd14AwUmt1kEkzj6eZMpFvC276x8YeJLwbIfc08eChF8jV6k5x
 JUW0yoFzoI5J0JMzeou3nOIbgyCfmSVJUFABcdFogushXjUUatodnYO4V
 lw5/bw0jvc1qF7Oln2rpNkRH2+txeV0zjS16pu/mXKIZjQGQz1N7SZfzT
 v9oQxtfpCf63wdwiY7l4OvwQq0mN+EF3xpTfru/Wqoem9L8uGvNMBPEIp
 rsFWJDFqgHd2ZqJFnynXlSoy71ClCnIRvMIjMefIyyh4fo4JO3+REKn8S Q==;
X-CSE-ConnectionGUID: OxUKZMOxSWmZiAyEGmkWJg==
X-CSE-MsgGUID: xZxNsKgVReWw5uXd2NimqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33681161"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33681161"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:07:47 -0700
X-CSE-ConnectionGUID: 7DAwXz0XTwOXD2foa2iuoA==
X-CSE-MsgGUID: 9LEGAoWOQpeTyJEqWIFmDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="82055089"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:07:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 02/12] drm/i915/cx0: remove unnecessary includes
Date: Mon, 28 Oct 2024 22:07:20 +0200
Message-Id: <3e12f1d5ab17e501e4700044072fbb6dd9b2f459.1730146000.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730146000.git.jani.nikula@intel.com>
References: <cover.1730146000.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There's nothing in the header that requires the bit or bitfield
headers. Remove.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 9004b99bb51f..3555a9bc1de9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -7,8 +7,6 @@
 #define __INTEL_CX0_PHY_H__
 
 #include <linux/types.h>
-#include <linux/bitfield.h>
-#include <linux/bits.h>
 
 enum icl_port_dpll_id;
 struct drm_i915_private;
-- 
2.39.5

