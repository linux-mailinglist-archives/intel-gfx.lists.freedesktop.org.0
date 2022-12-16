Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED9564E547
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:39:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA7510E5B3;
	Fri, 16 Dec 2022 00:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71EB10E5AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151128; x=1702687128;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xmWSRd91O5Mhg5/MsYevKddmFEQcNJWYZ8G5gtzLftc=;
 b=ERNQ0/ah9rEMxxKYdrgGA/OEIjQl/0sT0dB80pWIer6AtDaYJW7yrD3m
 XD4Dy/rAdmUptIuTPK+wl4cMm4AidpfPk45gxYF7mw8EbQMDkOx257lHW
 8+9xV/PIc4soUP6HTxIIuwi2NL5gMbpVbG3ucaE/8cA2cJAMz0V+gk30Q
 uhAHkPAzxZEKvonY3py0brVwgDouufB8mzHv0LI1QS2jpDplznCF3ZDQe
 RMH2jNhRrwtYhMQiOFOhztES4HofcEAMbxEHpL6UTg7bhIu2+mW83myKb
 oLHW2Dav2p6pfdbpdcy/k/N8VrNg804FNzU4sNEljfzqUN29EcFTbWlrd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103881"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103881"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100227"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100227"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:08 +0200
Message-Id: <20221216003810.13338-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Add mode DSB opcodes
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

Add all the know DSB instruction opcodes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 7c593ec84d41..96bc117fd6a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -67,8 +67,16 @@ struct intel_dsb {
 
 /* DSB opcodes. */
 #define DSB_OPCODE_SHIFT		24
+#define DSB_OPCODE_NOOP			0x0
 #define DSB_OPCODE_MMIO_WRITE		0x1
+#define DSB_OPCODE_WAIT_USEC		0x2
+#define DSB_OPCODE_WAIT_LINES		0x3
+#define DSB_OPCODE_WAIT_VBLANKS		0x4
+#define DSB_OPCODE_WAIT_DSL_IN		0x5
+#define DSB_OPCODE_WAIT_DSL_OUT		0x6
+#define DSB_OPCODE_INTERRUPT		0x7
 #define DSB_OPCODE_INDEXED_WRITE	0x9
+#define DSB_OPCODE_POLL			0xA
 #define DSB_BYTE_EN			0xF
 #define DSB_BYTE_EN_SHIFT		20
 #define DSB_REG_VALUE_MASK		0xfffff
-- 
2.37.4

