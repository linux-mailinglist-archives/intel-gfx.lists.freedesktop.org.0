Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2EC6D750F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F1810E84B;
	Wed,  5 Apr 2023 07:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F6E10E845
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680678874; x=1712214874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UW655PThc//1ZpOaw1b6jAkm7C2sblC+gDbbNAAuOsE=;
 b=duEs6FseTeAGwSjqw+dU3t3WegIkK0BjsWtO5MKEgAFFGBatzY43myA6
 iFuICO0HQOot/mNkgKjO+7QOE5mSD7bt1a9XFh/8ivLpLFhz57Tc0BOHy
 QM64w2KNXYiuzbSTn57fh1gB4EsKtHAGRWmDcqaS6WPVweWhIEAg0P/Lg
 8c8jiChTRs1Ibc/9lFTbcvOh14bw5bpQmO/BTV8P/trQQte+CUVIbrmPq
 pfosLr/euCzrp6E4R3JrbveYyM4I08l6mhtvJAMG6cxNC1hev9Y/BEEEK
 MuykpjyjGVI1KVbVTfY6vhidQE2ekCsj7Mo+LtLkfiLdKDlYydAkioxub g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="370211202"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="370211202"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="636797379"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="636797379"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:14:30 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 12:44:32 +0530
Message-Id: <20230405071432.3582592-5-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230405071432.3582592-1-riana.tauro@intel.com>
References: <20230405071432.3582592-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 4/4] drm/i915/selftests: skip comparison of
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
index 682f2fe67b3a..7040dac7acca 100644
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
+		 * On discrete graphics, hwmon reads the energy/power from
+		 * discrete soc that includes non-gfx components.
+		 * TODO : Measure power of GT for discrete graphics and
+		 * modify the condition
+		 */
+		if (!IS_DGFX(gt->i915) && (2 * rc6_power > rc0_power)) {
 			pr_err("GPU leaked energy while in RC6!\n");
 			err = -EINVAL;
 			goto out_unlock;
-- 
2.40.0

