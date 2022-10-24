Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A364260BBAA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 23:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217B810E07A;
	Mon, 24 Oct 2022 21:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7829610E07A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 21:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666645824; x=1698181824;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9KqgNxgnXdapZf0y7Nfv5Sf2sP18ZhHkupf0LOY4edQ=;
 b=kiJTGXhDMx1zgCAS6/5gGXQ4Z5wIwhC93Q+Qe1a4GBV3am+Qj06pZ9H2
 Mwz2/Y3y3T1G840Bpxn0r8jE4ofg6sD2bfPriOEoiIWZXsJQ8+fhHVRMG
 AC8PLQ9kMYs/VhdqDBYTAh/EvlVyLfibeJooVXnZ+BFKzfIPlqaOdvWGm
 tOs2G8QQY7aqFB60vMfvATqATdPPiIrfx1VXtk9qeu7ekB4eGVD+zzY+W
 igl2ZDtIY0rPhqLS7JMUJcu2GyT5EY860vhrZHUePTsdc1Fwj43UQdFEy
 NAN1CL8SyewT9e8vRF7YIrgOfGtObnADf3IhUpQLaZdSMaoY+Qd2Qp3bG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="306254060"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="306254060"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 14:10:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="736560184"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="736560184"
Received: from dzembrzu-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.157.180])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 14:10:21 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: andi.shyti@linux.intel.com
Date: Tue, 25 Oct 2022 00:09:53 +0300
Message-Id: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix a build error used with
 clang compiler
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If a non-constant variable is used as the first argument of the FIELD_PREP
macro, a build error occurs when using the clang compiler.

Fix the following build error used with clang compiler:

drivers/gpu/drm/i915/i915_hwmon.c:115:16: error: result of comparison of constant 18446744073709551615 with expression of type 'typeof (_Generic((field_msk), char: (unsigned char)0, unsigned char: (unsigned char)0, signed char: (unsigned char)0, unsigned short: (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long: (unsigned long)0, unsigned long long: (unsigned long long)0, long long: (unsigned long long)0, default: (field_msk)))' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
        bits_to_set = FIELD_PREP(field_msk, nval);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: expanded from macro 'FIELD_PREP'
                __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");    \
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:71:53: note: expanded from macro '__BF_FIELD_CHECK'
                BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \
                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
./include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
                                    ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
./include/linux/compiler_types.h:357:22: note: expanded from macro 'compiletime_assert'
        _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
        ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/compiler_types.h:345:23: note: expanded from macro '_compiletime_assert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/compiler_types.h:337:9: note: expanded from macro '__compiletime_assert'
                if (!(condition))                                       \

Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting")
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 9e9781493025..782a621b1928 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -101,21 +101,16 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
 
 static void
 hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
-			  u32 field_msk, int nshift,
-			  unsigned int scale_factor, long lval)
+			  int nshift, unsigned int scale_factor, long lval)
 {
 	u32 nval;
-	u32 bits_to_clear;
-	u32 bits_to_set;
 
 	/* Computation in 64-bits to avoid overflow. Round to nearest. */
 	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
 
-	bits_to_clear = field_msk;
-	bits_to_set = FIELD_PREP(field_msk, nval);
-
 	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
-					    bits_to_clear, bits_to_set);
+					    PKG_PWR_LIM_1,
+					    FIELD_PREP(PKG_PWR_LIM_1, nval));
 }
 
 /*
@@ -406,7 +401,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
 	case hwmon_power_max:
 		hwm_field_scale_and_write(ddat,
 					  hwmon->rg.pkg_rapl_limit,
-					  PKG_PWR_LIM_1,
 					  hwmon->scl_shift_power,
 					  SF_POWER, val);
 		return 0;
-- 
2.37.1

