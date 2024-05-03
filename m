Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 592DF8BAC7C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A31112903;
	Fri,  3 May 2024 12:26:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WyewmfPM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6C651128FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739189; x=1746275189;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MW3YFDEhMphDku5/hpc+Rw8UBWwvzlvgbXdWops6etw=;
 b=WyewmfPMDIVQVun/cel667Do2v1tXviXjdmIiVsj+6zfztkQE5X1dHkE
 bQKkYzPcz72juk33+aPuhT6JAR9EfF8djt6NS3XdZTgtkHWBtUNfwsM0W
 ifMYJaWXqJKkBQBBoOM3+9kmwPpc3gG03ry/bdbcp134M3XwXoUnuHP0e
 zal9xxFxcUj+d0dXPGl/irwu6BpF01/mQbycwFsHIXZw6rwhnd7e0HK47
 D8/wGYvYHh0FM0qPlert3XEPkj/+Xb1wUmxpD+y3u9rpPwVdCgEaV9rxe
 QuS8A/VhwpYMkNLBrp0mx+ZwvWxebepiPdm1GKioZidD7BQOY0DNVzld0 w==;
X-CSE-ConnectionGUID: G/IzABc1TQ24IuQyzg1/Qg==
X-CSE-MsgGUID: kajN27CAQtKt3vaL/AS6Ow==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372801"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372801"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:28 -0700
X-CSE-ConnectionGUID: 6YHKDK+QRpSBLn8Qr07P/A==
X-CSE-MsgGUID: HYDGpwNcTxq2O8DZxhLb4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463959"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 34/35] drm/i915/bios: Define VBT block 252 (int15 Hook)
Date: Fri,  3 May 2024 15:24:48 +0300
Message-ID: <20240503122449.27266-35-ville.syrjala@linux.intel.com>
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

Declare that VBT block 252 is the "int15 hook". This is some
VBIOS only juju so don't bother with a full definition.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index ea2edac842b0..338f6133bb1e 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -188,6 +188,7 @@ enum bdb_block_id {
 	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
 	BDB_VSWING_PREEMPH		= 57, /* 218+ */
 	BDB_GENERIC_DTD			= 58, /* 229+ */
+	BDB_INT15_HOOK			= 252, /* VBIOS only */
 	BDB_SKIP			= 254, /* VBIOS only */
 };
 
-- 
2.43.2

