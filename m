Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fCk6OWE0I2qUkQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 22:41:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FD364B322
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 22:41:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VH9u8KDs;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 456D210E54A;
	Fri,  5 Jun 2026 20:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A764010E54A;
 Fri,  5 Jun 2026 20:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780692064; x=1812228064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XpIvs/s0R4uGCxmmrAdRjqLwdAHk4Hsns1QvYez5Wu8=;
 b=VH9u8KDsLcGdXsN+71PWeg27g54AiwQP5T6Rwc9R+bteJ+CnD2jGNpyC
 7Us2VuHpdiLola8RSoKYAqEQURRMJVgM3hCgCdJNB1fAiPmKR5PtWQ+q4
 XjvZw1fHTztLaqWwA2QK31voeu3dA3NYsyVn9oOIFzKm3AZi5T8c4cEj+
 XuPJYHT2dM3nn/ZkbA/BPljyXN0mEmaR8nB+uj+LQd0WIU7FgfD1QCGxk
 TWOFDam78Pdd8Ur5RQVL/1XEB0F+qUiFYsJThu8SpBK9C051JjbsQ4jzm
 QNedQsukWZ3oa+J/kovLPsvvuJr8YF29w/WZCABV7OZdHkwCZAV/18rE9 g==;
X-CSE-ConnectionGUID: Peh7QCD7Tlm6whv6y451vA==
X-CSE-MsgGUID: FOvEfVuERriLhGIDLU5ddg==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="84108068"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="84108068"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 13:41:04 -0700
X-CSE-ConnectionGUID: jdp3qs2JQ0OQ/EnkNRvWjQ==
X-CSE-MsgGUID: pRcJgGMhRUefxGbxg6MT5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="243839429"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 13:41:02 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com, Michal.Wajdeczko@intel.com
Subject: [PATCH v2 5/5] drm/xe/i2c: Report i2c irq handler issue
Date: Sat,  6 Jun 2026 04:40:47 +0800
Message-ID: <20260605204047.3840459-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260605204047.3840459-1-jonathan.cavitt@intel.com>
References: <20260605204047.3840459-1-jonathan.cavitt@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5FD364B322

Error logging is expected but not included in xe_i2c_irq_handler() for
generic_handle_irq_safe(), so add error logging there.

This issue was caught by static analysis.

v2:
- Reword error message (Wajdeczko)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
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

