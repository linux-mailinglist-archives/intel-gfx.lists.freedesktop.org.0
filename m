Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1BB302748
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1D66E247;
	Mon, 25 Jan 2021 15:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8212F6E247
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:53:29 +0000 (UTC)
IronPort-SDR: +lr614sdHRQchrYPV4NDbjJvDqmNvTMbHCr0+Uyg4VvUv6DD6zKhZmSIyeuTSy9Fm12WEoQY8d
 cyjRr9rKZLJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="179895073"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="179895073"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:06 -0800
IronPort-SDR: mq3WL9PRRp0iqVwQEyL0PhygBQh37enAbenh3RL6oJETsIh2OQsLO1f81119fnbZ9ondxlK8Jt
 IcrD3Go1rGIw==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="406288279"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:29 +0200
Message-Id: <c0605ffe6177a313f85ce2d6ad0ba05a90288854.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/reg: add stream splitter
 configuration definitions
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The splitter configuration is required for eDP MSO.

Bspec: 50174
Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b9bbc6bacb1..d279ff03827f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11402,6 +11402,9 @@ enum skl_power_gate {
 #define  BIG_JOINER_ENABLE			(1 << 29)
 #define  MASTER_BIG_JOINER_ENABLE		(1 << 28)
 #define  VGA_CENTERING_ENABLE			(1 << 27)
+#define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
+#define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
+#define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
 
 #define _ICL_PIPE_DSS_CTL2_PB			0x78204
 #define _ICL_PIPE_DSS_CTL2_PC			0x78404
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
