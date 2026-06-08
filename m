Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 83C5LHMKJ2qyqgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 20:31:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C866659BE9
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 20:31:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OocuP4AO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D882610E36C;
	Mon,  8 Jun 2026 18:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5CB810E36C;
 Mon,  8 Jun 2026 18:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780943472; x=1812479472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n3Htdh3STriAkeHY7JIhiAfqBpMIJxOMiNiJ88GlhU4=;
 b=OocuP4AOOUWSvh7myLRC083ymJ5GXXkPPE7SQBEnFxpVQExL4X/YjQrB
 zYqrduE50Rfw1iZIHpX6WDnGvuBfMH1q5FQl0eb+G9JCvNPeKKo9Datwr
 7SlvhXTS6V5mjw2Y1RTJrAGp8JxReA6srS4/Dkcb5CStFGPLDIov0DK+o
 t/G/gFfi4WUvpPkKERPe5al7vkz3D8tFs8/fdWzg3i/KP9l84BTcNfUVl
 MLmXN5qD2zP7aBwVrfooO1kllKqDjBT1WxaSztHsNVjsiff01nWEIho5g
 T4fiV13SelwWz3hl5X9uvLe8MO1DyH5d2qo1qlfRe8LTPDHdGKauSsyPr g==;
X-CSE-ConnectionGUID: aDyrxpoTR0600jXNL+l1TA==
X-CSE-MsgGUID: qt/pGUgVT3m5I5e/97byuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85544011"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85544011"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 11:31:09 -0700
X-CSE-ConnectionGUID: RbuJKsQcRjuWQQtipddHiA==
X-CSE-MsgGUID: G/AVYwmfT/+fYHMMQxemig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="249542065"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 11:31:07 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com, Michal.Wajdeczko@intel.com
Subject: [PATCH v4 5/5] drm/xe/i2c: Report i2c irq handler issue
Date: Tue,  9 Jun 2026 02:30:50 +0800
Message-ID: <20260608183050.3875235-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260608183050.3875235-1-jonathan.cavitt@intel.com>
References: <20260608183050.3875235-1-jonathan.cavitt@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C866659BE9

Error logging is expected but not included in xe_i2c_irq_handler() for
generic_handle_irq_safe(), so add error logging there.

This issue was caught by static analysis.

v2:
- Reword error message (Wajdeczko)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Raag Jadav <raag.jadav@intel.com>
Cc: Raag Jadav <raag.jadav@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/xe/xe_i2c.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_i2c.c b/drivers/gpu/drm/xe/xe_i2c.c
index 148e82e01ae8..84171021e6ea 100644
--- a/drivers/gpu/drm/xe/xe_i2c.c
+++ b/drivers/gpu/drm/xe/xe_i2c.c
@@ -177,12 +177,15 @@ static bool xe_i2c_irq_present(struct xe_device *xe)
 void xe_i2c_irq_handler(struct xe_device *xe, u32 master_ctl)
 {
 	struct xe_mmio *mmio = xe_root_tile_mmio(xe);
+	int ret;
 
 	if (!(master_ctl & I2C_IRQ) || !xe_i2c_irq_present(xe))
 		return;
 
 	/* Forward interrupt to I2C adapter */
-	generic_handle_irq_safe(xe->i2c->adapter_irq);
+	ret = generic_handle_irq_safe(xe->i2c->adapter_irq);
+	if (ret)
+		xe_err_ratelimited(xe, "I2C: irq handling failure (%pe)\n", ERR_PTR(ret));
 
 	/* Deassert after I2C adapter clears the interrupt */
 	xe_mmio_rmw32(mmio, I2C_CONFIG_CMD, 0, PCI_COMMAND_INTX_DISABLE);
-- 
2.53.0

