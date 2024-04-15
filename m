Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A523D8A4A0D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C77D10F9E9;
	Mon, 15 Apr 2024 08:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NjPDW0PK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79C6F10F9E9;
 Mon, 15 Apr 2024 08:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168868; x=1744704868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yWYq7z+vBHAzWO8reutIlfQoBcwQHjRKlCJbGYbb4Vk=;
 b=NjPDW0PKjAScZiZeG3qc6utqmZInl3h5i35GO5g9rEJ1M2s4lYyMdz+x
 Ts/Wj8NrQG1oWvPsbIwheGYP1fWa5y/SD7n0ESIgeeCCDy26UKo7B1tMO
 DAa/1zilRHcj4oGHmoCChgc05Qs0oqnhL52Dm9RcVdChQ62ecxWH64eWM
 LFF5zV/xk7lzLeCpFYz4i+EY+iCxqy2yT8UFc78XlKjjwNvwg/O9BXqN4
 sNOTp6/AxSPtGVURTSUNgqfOp+rbf0Jj3t7hudcfegzkueKZn7RW6ZTBl
 9iiJmHXp6+/sgbuhotkB2gomhBQ7bhoEY6bB5/CgCodxml5vBT8xKOJSg g==;
X-CSE-ConnectionGUID: I96+PSabSP2JAPsKRku3Jw==
X-CSE-MsgGUID: Zy0Ny3rCSd2z0I4YbhbcDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096429"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096429"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:28 -0700
X-CSE-ConnectionGUID: NoI+95NVT0CWswzFzSU7UA==
X-CSE-MsgGUID: q5pTXA/bQvqco4MzEzwKbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400424"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:26 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 14/21] drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
Date: Mon, 15 Apr 2024 13:44:16 +0530
Message-Id: <20240415081423.495834-15-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

From: José Roberto de Souza <jose.souza@intel.com>

No display IP beyond Xe_LPD+ has "BW credits" bits in MBUS_DBOX_CTL
register. Restrict the programming only to Xe_LPD+.

BSpec: 49213
CC: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8436af8525da..baa4b5ad96b7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3604,7 +3604,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
 		u32 pipe_val = val;
 
-		if (DISPLAY_VER(i915) >= 14) {
+		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
 			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
 							      new_dbuf_state->active_pipes))
 				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
-- 
2.25.1

