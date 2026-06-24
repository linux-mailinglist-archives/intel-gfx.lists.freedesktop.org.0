Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yxNTKqHrO2qAfQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FECF6BF2DB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SN+FZLlG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F271110EF3C;
	Wed, 24 Jun 2026 14:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B93410EF3C;
 Wed, 24 Jun 2026 14:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782311839; x=1813847839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=igYDgT5qzF7BdjsW7kiFxuwdJCifa9wPJIjVR/n8zS4=;
 b=SN+FZLlGgAOrLtU2MK5sKm51FBnDKYFeguXUu6Z9oDbeDVjlhN94+LZ0
 rrg5OmnOEw2pvBqpB8feyJ4dl91DCZAtQq1zHUPJLeTJURJXU0F/nE33f
 e74iM7ohdS9MFY1OTqUKI10vsPf02mgEJI9+QC38sFJ4r3+uSmos9+m0t
 oNBntaqezKk7Gk4sGfuQ3LaMZDE2+QYUERIJLhfaW2O+ggXBYSSNP/c8v
 zG3WRXKRhk0VARy1Kxpk74WwPCF6yJoaUB4zD/0svJ2NPQlOcIX0jZ8lF
 v8PhuSkZ93vI0yr2mB2jGGkQ1FE4AAZVpaG0qEsUP3NKnDh7c4YOvIZ4Y g==;
X-CSE-ConnectionGUID: G2f3vDEIRQm+Y+6KCBzTNQ==
X-CSE-MsgGUID: Rd9ts6F5T8SfBx0O4psX1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="86920305"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86920305"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 07:37:12 -0700
X-CSE-ConnectionGUID: v96Bh5USStGFSdtSJexjNA==
X-CSE-MsgGUID: CKZWWjn2SwiTo8ht4I4TJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="253799016"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by ORVIESA003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 07:37:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/8] drm/i915: call intel_display_power_runtime_resume() on
 suspend error path
Date: Wed, 24 Jun 2026 17:36:49 +0300
Message-ID: <025b4c29b6df1d3d4de6dcab417612dc27148e76.1782311749.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782311749.git.jani.nikula@intel.com>
References: <cover.1782311749.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FECF6BF2DB

The vlv_suspend_complete() error path fails to call
intel_display_power_runtime_resume(). Fix it.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f6c7270300c9..51b8bd751376 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1546,6 +1546,8 @@ static int i915_pm_runtime_suspend(struct device *kdev)
 		drm_err(&dev_priv->drm,
 			"Runtime suspend failed, disabling it (%d)\n", ret);
 
+		intel_display_power_runtime_resume(display);
+
 		for_each_gt(gt, dev_priv, i)
 			intel_uncore_runtime_resume(gt->uncore);
 
-- 
2.47.3

