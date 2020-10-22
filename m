Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF37B29671C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53EE6E40B;
	Thu, 22 Oct 2020 22:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9836E40B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:43 +0000 (UTC)
IronPort-SDR: QOUfUHOL00r1PjX2ClrIxvQpEdkvvOhEy2BUDNGthFL+UdDrXdiFiDS6A8bhqAaMf9APjTlZwc
 h4O+TGp32Twg==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386813"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386813"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: x7y2U9vZ2mn8ClcyywoAQDLMcXEsaEeBAcWyNaHl3mCdSY8+9RasqpNpLTxod7bFhFgF6F+Dho
 Kn7XW+X3BOzQ==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153945"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:26:59 -0700
Message-Id: <20201022222709.29386-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-1-manasi.d.navare@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Add REG_FIELD_PREP to VRR
 register def
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VRR_CTL register onloy had a GENMASK but no field prep
define for TRANS_VRR_CTL_LINE_COUNT field so add that

Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d4952c9875fb..9792c931b4c5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4348,6 +4348,7 @@ enum {
 #define   VRR_CTL_IGN_MAX_SHIFT		REG_BIT(30)
 #define   VRR_CTL_FLIP_LINE_EN		REG_BIT(29)
 #define   VRR_CTL_LINE_COUNT_MASK	REG_GENMASK(10, 3)
+#define   VRR_CTL_LINE_COUNT(x)		REG_FIELD_PREP(VRR_CTL_LINE_COUNT_MASK, (x))
 #define   VRR_CTL_SW_FULLLINE_COUNT	REG_BIT(0)
 
 #define _TRANS_VRR_VMAX_A		0x60424
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
