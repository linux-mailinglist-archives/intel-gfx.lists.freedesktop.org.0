Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C17A995A22
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA2310E60F;
	Tue,  8 Oct 2024 22:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EEeeJn0G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4073610E60F;
 Tue,  8 Oct 2024 22:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427071; x=1759963071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x12u9sZdj9Z+CFEQFhSZUb1EdU1mYtiL5y0WfZwvTuY=;
 b=EEeeJn0GbAIT1f8gOlTEavYhnPD0wOcUKAlfpBnO/AgnECws8+lbOsJO
 PCI0mT7Tr6Aa96GU/ikZZ5DqfKRyyB6PGSp6PxdhdwnHqfiKl6ngZKThg
 lVa3eOeWT7G2sVQrL/09uTI+MeSKVVpoIUYTypX65eX5MJ9qz1WJwxmVu
 I46H17p1UtQ5UWbzEb/eTfwwxoMuebPbCstWK9ATJVkzqJzD2oGvXOj9X
 Bu/teRbeK+5tIO6nRpfIUMUERmo1/sKonWwbY3Cor1NltPsd6rgnZg1HN
 EwjvAqwTKl4IxPQV7Mi6gIotcoJxy693C583WywJxDr8Y727Im/by9W8n A==;
X-CSE-ConnectionGUID: zaHMlG7qTsKPI6Dwgv5H9g==
X-CSE-MsgGUID: T3uR0f0hQbidwtGz62s4Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037303"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037303"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:51 -0700
X-CSE-ConnectionGUID: O9CHIl+XR9SkJ6hbt5jbfA==
X-CSE-MsgGUID: TGX14IIATPKWVMcrsTxZtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811859"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:51 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 10/10] drm/i915/xe3lpd: Add powerdown value of eDP over type c
Date: Tue,  8 Oct 2024 15:37:41 -0700
Message-ID: <20241008223741.82790-11-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Add condition for P2.PG power down value.

Bspec: 74494
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1c8c2a2b05e1..3d95ee65a9f1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3144,7 +3144,8 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 	if (intel_encoder_is_c10phy(encoder))
 		return CX0_P2PG_STATE_DISABLE;
 
-	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
+	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
+	    (DISPLAY_VER(i915) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
 		return CX0_P2PG_STATE_DISABLE;
 
 	return CX0_P4PG_STATE_DISABLE;
-- 
2.45.0

