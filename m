Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E83D8BAC5E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC381128A6;
	Fri,  3 May 2024 12:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFyLHnFb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD3B1128A6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739109; x=1746275109;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a5dQbO4bfDDnuI4oPOnhNcAscdMXkPfmpVCFgKUAJYQ=;
 b=nFyLHnFbsHNXv/+eCFi+8HM17xosbYTLksmakwNO3mJGtoBHqs/6s3lM
 L0ZtGWVLn2EaHtUIH5fJFNcSRye77H0zNpDg6ghx4KTKmXSzVI9f21wT8
 /vuWX8FoRM5lodL4NiXNamsTJZOS56qE1E3xC7sv6pxLzSySZnoXUkx5a
 m4KO8iwACet1HKVZy27C/XMMHMP0u0MU+lJizivi7k4+z8uBmnBxCqy0m
 DV2XxBjgCLUImDB+KV/Yy6yLiyX0QOKtMj07NvwYunq4YFpH2Fpf2ymNA
 DOdbfmHdaf1PEj5Dcawjb/I3XG7AKnVLFjlSPS2/frJJVeEG4nrBBIZTZ w==;
X-CSE-ConnectionGUID: zm0afvScRHGC0DqquwmbAQ==
X-CSE-MsgGUID: 4hCT1OcWQNmS7XBIXtwhMg==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372732"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372732"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:09 -0700
X-CSE-ConnectionGUID: N5YpCkMET2qPi6NLAMhMVg==
X-CSE-MsgGUID: LCxDXUtvQs+InmkGnZ4LvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463628"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/35] drm/i915/bios: Define "TV" child device handle
Date: Fri,  3 May 2024 15:24:20 +0300
Message-ID: <20240503122449.27266-7-ville.syrjala@linux.intel.com>
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

Child device 0x2 used to be "TV" until redefined to mean
EFP5 in version 215. Add a define for the old meaning as well.

Technically it was probably deprecated a lot before version
215 since native TV encoders were last seen on CTG, and SDVO
was fully gone by HSW. So something like "???-164" might also
be a reasonable way to document this, but no real harm in
saying "???-214" since nothing else presumably occupied that
bit in the meantime.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index d090480d82eb..c7c7b47baa73 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -242,6 +242,7 @@ struct bdb_general_features {
 
 /* Device handle */
 #define DEVICE_HANDLE_CRT	0x0001
+#define DEVICE_HANDLE_TV	0x0002 /* ???-214 */
 #define DEVICE_HANDLE_EFP1	0x0004
 #define DEVICE_HANDLE_EFP2	0x0040
 #define DEVICE_HANDLE_EFP3	0x0020
-- 
2.43.2

