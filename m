Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512219A9347
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6ADD10E5C6;
	Mon, 21 Oct 2024 22:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T80eArmm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62C110E5C0;
 Mon, 21 Oct 2024 22:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549689; x=1761085689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZvSHELlRQpgaJXCjnTADEhbydhF4Wl2ard2i+v8W5AA=;
 b=T80eArmmRHhQD4/xF8G7oHLO9r0jn3IwfFnDSPvmc+suHOoPtWoH/Cnn
 c75kdMJLok3Iwk6gjoi/zVXitfjcgT3/ZYKaHcDP/vKNHo1B/5SFUDWgB
 d6CSmajDwRr44r61QGeM1NC2n0CZMbxbWKhMkSEfAKfUGHX45dngUVrbu
 2r5E/PpDxNkvw2ojy5/zCNNA1zZBxKsBsCvlvou4hcR6kOlMdrmQVLLFr
 qyAnZPPd29pmKzbaaONrN1NZ/ha7IwGndw6wGVkslyFNfYhtSHAUCY4el
 E5UIOdMDFh6rK/p/QL7s33uqoV7vAHcUKhr2V/CxnNAQOz+/qoN9vOkqv Q==;
X-CSE-ConnectionGUID: /muoYMsxQbGUl4a5IdQyjg==
X-CSE-MsgGUID: huGwdrMpSV6zvNWga5Ik6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934458"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934458"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:09 -0700
X-CSE-ConnectionGUID: bx+iDMPCT6GBcOndZttGjw==
X-CSE-MsgGUID: QrM2BKWzRX2j7FlPYpi9JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009608"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:07 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 05/13] drm/i915/dmc_wl: Use sentinel item for range tables
Date: Mon, 21 Oct 2024 19:27:24 -0300
Message-ID: <20241021222744.294371-6-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

We are currently using ARRAY_SIZE() to iterate address ranges in
intel_dmc_wl_check_range(). In upcoming changes, we will be using more
than a single table and will extract the range checking logic into a
dedicated function that takes a range table as argument. As we will not
able to use ARRAY_SIZE() then, let's make range tables contain a
sentinel item at the end and use that instead of having to pass the size
as parameter in this future function.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 5ed610c9be39..82eb9166e5f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -49,6 +49,7 @@ struct intel_dmc_wl_range {
 
 static struct intel_dmc_wl_range lnl_wl_range[] = {
 	{ .start = 0x60000, .end = 0x7ffff },
+	{},
 };
 
 static void __intel_dmc_wl_release(struct intel_display *display)
@@ -99,7 +100,7 @@ static bool intel_dmc_wl_check_range(u32 address)
 	int i;
 	bool wl_needed = false;
 
-	for (i = 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
+	for (i = 0; lnl_wl_range[i].start; i++) {
 		if (address >= lnl_wl_range[i].start &&
 		    address <= lnl_wl_range[i].end) {
 			wl_needed = true;
-- 
2.47.0

