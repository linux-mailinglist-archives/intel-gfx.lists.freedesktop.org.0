Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AD72CC4F8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 19:24:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0038F6EA91;
	Wed,  2 Dec 2020 18:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F5DB6EA91
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 18:24:34 +0000 (UTC)
IronPort-SDR: oADSDfOhEFBTJVoj3pEGMEkyPgK+PzJ801lm7jEkR17f5vUWtfab2KoS6/u6IFfedm+Rmid90K
 +fTDlxSjFhhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="152889857"
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="152889857"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 10:24:33 -0800
IronPort-SDR: fFB886N+SD/6b+soI6rtx5AHyy5UHQl6hfWCGwnsR/oHQ6gx+jeWFDEDI3z9k5M32qty8khpgS
 tWaWsTFPYy+Q==
X-IronPort-AV: E=Sophos;i="5.78,387,1599548400"; d="scan'208";a="539794369"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 02 Dec 2020 10:24:33 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 10:27:27 -0800
Message-Id: <20201202182727.26158-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Add VRR_CTL_LINE_COUNT field to VRR_CTL
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

VRR_CTL register only had a GENMASK but no field prep
define for TRANS_VRR_CTL_LINE_COUNT field so add that

Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cdc67f583a9c..0023c023f472 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4352,6 +4352,7 @@ enum {
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
