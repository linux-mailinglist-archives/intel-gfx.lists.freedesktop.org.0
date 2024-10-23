Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2D99AD6E3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841F310E86D;
	Wed, 23 Oct 2024 21:47:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IT/0NID+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBED010E868;
 Wed, 23 Oct 2024 21:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720026; x=1761256026;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pd7hljOpPm5fL2b3+5yYmww0aqUmTIMODwaRNQOdNqY=;
 b=IT/0NID+ZsHZirYucmtEhum15Jkddhj+AZ6woRJJR4n9FKkGj91nI8Mc
 7lrg8L3C/DkkuQQkJJMSihESs1nJ4XisAtn3E8t2hhdX7RIlGtZrUiqWF
 StrGsos/qSiNK3MIdioUsbC6QQ7/BBIK3AixohWmQKlj7TCCad6neVsNT
 cruzuy7mCwVI+hjbhnHmKOsk/VaLYPSTLzdqzEN8Prx+iyriZLOE7lUY9
 9xvhx53SA90gqIxgT8QF8GEHuHZu7m7TrkEL5gQv1xiGJ9z/K+b9ZsGmB
 Hep3CoblXHr5qjVFoG/Hnk73mD4E4+rYTFSsJJJ/G+0OdJJoF6avdwinO g==;
X-CSE-ConnectionGUID: GIWQPqo0QqGvIOzwLkZfpQ==
X-CSE-MsgGUID: qPbrq7eSTKa5MX7FA8v55A==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54731995"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54731995"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
X-CSE-ConnectionGUID: HM654YmBSZqLiPgFHhBluA==
X-CSE-MsgGUID: UoBW/jxuT2KFAYborBOW4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809804"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Date: Wed, 23 Oct 2024 14:46:56 -0700
Message-Id: <20241023214701.963830-8-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index c1357bdb8a3b..a8966a7a9927 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if ((DISPLAY_VER(i915) >= 30))
+		intel_cx0_bus_reset(encoder, lane);
 
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
@@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(encoder, lane);
+	if ((DISPLAY_VER(i915) >= 30))
+		intel_cx0_bus_reset(encoder, lane);
 
 	return 0;
 }
-- 
2.25.1

