Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CDC9AF515
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 840C610E9A9;
	Thu, 24 Oct 2024 22:08:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oc9F/jao";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9446910E3C5;
 Thu, 24 Oct 2024 22:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729807679; x=1761343679;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KFGIubfgqYSdGVSI8yCrITnu4Ij7Yt+yl8Fvy0UD/vE=;
 b=Oc9F/jaoSlBzwATqXdzupfd/1+hNsghjZExzXUXqjWoEXs3po7lzDPtA
 W2QOId9pMf2uIiMgTPNOw+uN5vC6woDVwPJ3bF1wqtGHhbue/Ogsyhk44
 Sxo0dbepRfsT3bIn/Pu/0yk02+kcvYJQEKAFycnAOANSF40yDGdZw3ZyE
 S+s/k0ksnKaS5K1DJfQeJy+h9cuK6BIhkVSxxbObApVX+JmPBf09vFRVF
 Ycs246cQLRM3y7mExyVuixzucTqQKAYPFPzgCLHY6JCLmdkFiYhtIAMEB
 DErqFvZaW/ZWoO6dWssLigES0JW4/JJLyoI7XEGdo0cGkeQPtv1tOxKKw w==;
X-CSE-ConnectionGUID: 7QGMa2IdRCKkn2ihxeVStQ==
X-CSE-MsgGUID: qw2oQhffQW6Pf0USYvRMBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29367638"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="29367638"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
X-CSE-ConnectionGUID: OPNifKfwTaqXZHRo4feJgQ==
X-CSE-MsgGUID: VXPGRj+LS6aKhR60SkO4Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="84687965"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:57 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 06/11] drm/i915/cx0: Remove bus reset after every c10
 transaction
Date: Thu, 24 Oct 2024 15:07:47 -0700
Message-Id: <20241024220752.714457-7-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024220752.714457-1-clinton.a.taylor@intel.com>
References: <20241024220752.714457-1-clinton.a.taylor@intel.com>
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

C10 phy timeouts occur on xe3lpd if the c10 bus is reset every
transaction. Starting with xe3lpd this is bus reset not necessary

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4d6e1c135bdc..696cf5ed7403 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) >= 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
@@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if (DISPLAY_VER(i915) >= 30)
+		intel_cx0_bus_reset(encoder, lane);
 
 	return 0;
 }
-- 
2.25.1

