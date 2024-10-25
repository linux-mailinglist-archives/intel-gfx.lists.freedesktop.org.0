Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0652A9B107B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875BC10EB9D;
	Fri, 25 Oct 2024 20:47:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VcilE5HU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D0F10EB8B;
 Fri, 25 Oct 2024 20:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729889269; x=1761425269;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=arxGHyZWwMqXq0H7qNQ6bB3Lj5yUm6KY8esy/NEIJYA=;
 b=VcilE5HUHT6hpIygAk65pheMaeUIJZOmLl7EQDQmQynSmGcdMgVaM2v9
 O8awrWVHH92V6tsbka0NALRhn7SEwC6529ZUIz6Bz8PN083FHXYTeLE6b
 ccXOUZfV8yBXjUWr8P0Ve6uUyaLyUlGPy8CArZ/WG8kBMkmzAlFYrpr+O
 DU7iL1bAUsdrCuv3kR3qeBtgjQQvqnIVCpHLiSjtlhAFLmc0n6nUqI/xp
 WyFzJIfHOijb/ELyJrrTbTUTYyn+7bnhXHJ47gp11SoDXRzzLSS2nmF45
 29RnR2prjy7WqDMfIGHFN7Crxt23O021gth0pMaNm9TpL0kuxqlGEOTne g==;
X-CSE-ConnectionGUID: wSwTtu3ES2K1vsSQ7KiJvw==
X-CSE-MsgGUID: /orp5A7YQ+eztrABL5WSRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="33484213"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="33484213"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
X-CSE-ConnectionGUID: bx997JTbRgu5ILh7SXhHiQ==
X-CSE-MsgGUID: Kp394ObOQjq37IN1b/49nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81057197"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:49 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 11/11] drm/xe/ptl: Enable PTL display
Date: Fri, 25 Oct 2024 13:47:43 -0700
Message-Id: <20241025204743.211510-12-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241025204743.211510-1-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
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

From: Haridhar Kalvala <haridhar.kalvala@intel.com>

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 4085bb3b6550..6f73a243c24c 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -352,7 +352,7 @@ static const struct xe_device_desc bmg_desc = {
 
 static const struct xe_device_desc ptl_desc = {
 	PLATFORM(PANTHERLAKE),
-	.has_display = false,
+	.has_display = true,
 	.require_force_probe = true,
 };
 
-- 
2.25.1

