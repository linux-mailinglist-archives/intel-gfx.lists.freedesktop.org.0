Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CE86D74E4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBA910E849;
	Wed,  5 Apr 2023 06:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517E810E849
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 06:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680677982; x=1712213982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zEeqd3KEYew2TNjpOs1MwV/mBjjNzQr+CB+KKxRirX0=;
 b=dImKWLLgupYZGhJ7muMLjMGqBogc0d7YdOjuMTNYg7BGKEA57VAs03O8
 f/Gt56aZRbGxcim8N64dz5JCfiSug/3iIQHa08P0ZRB+qF+jGlqMnV8nj
 Ov0a2KtpDzxOaSBhoUmQra+2ceWw1X/eXVYQyMaHX0CE4AKE4MkocdDXD
 dn3cwRIGvbSSQdWBAnsX7KeeNgowR7JEXEF8dc8fPqGh8cofRtWuIHJeU
 VVTz+vGsZyhrDiMi1Cd8vhBq0nAK5Z1M48cZP+Ghxt6V+qN35sl6Abrbm
 E7okVrNFg/WrFP2KoegKCX5EgFk7xnVQezZlAKfdg18GNdFxHWXBdb2qD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="330986243"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="330986243"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="719209472"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="719209472"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:59:40 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 12:29:30 +0530
Message-Id: <20230405065930.3576936-5-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230405065930.3576936-1-riana.tauro@intel.com>
References: <20230405065930.3576936-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 4/4] drm/i915/selftests: skip comparison of
 power for discrete graphics
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

Hwmon reads the energy/power consumed by discrete soc,
i.e. energy/power includes the power drawn from non-gfx discrete
components

This test uses the power consumed by GT to validate RC6
power consumption.
Skip comparison of power for discrete graphics

TODO : measure power of GT in discrete graphics and modify the
condition

v2: update commit message (Anshuman)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 682f2fe67b3a..47165f490449 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -107,7 +107,15 @@ int live_rc6_manual(void *arg)
 				      ktime_to_ns(dt));
 		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
 			rc0_power, rc6_power);
-		if (2 * rc6_power > rc0_power) {
+
+		/*
+		 * Condition valid for integrated graphics
+		 * On discrete graphics, hwwmon reads the energy/power from
+		 * discrete SOC that includes non-gfx components.
+		 * TODO : Measure power of GT for discrete graphics and
+		 * modify the condition
+		 */
+		if (!IS_DGFX(gt->i915) && (2 * rc6_power > rc0_power)) {
 			pr_err("GPU leaked energy while in RC6!\n");
 			err = -EINVAL;
 			goto out_unlock;
-- 
2.40.0

