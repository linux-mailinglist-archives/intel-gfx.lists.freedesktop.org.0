Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C05612019
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Oct 2022 06:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C5710E926;
	Sat, 29 Oct 2022 04:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDDD10E926
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Oct 2022 04:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667018594; x=1698554594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oFe7TmRlTIAlUdLcW3CJVgVbN+xir95UaYv29nGURII=;
 b=gvhvjNRBnUG/zXcxFEW3XsACqdeDKQkmXanMFnv1nFToYn3wLi4P8MO2
 B7ID/GPc5nrP0IM1AADVF2bRzuPsGqLRcaH50j2onOZiymnao6EMvA1CV
 CO3RrN7kYNOtym5WxUGfYo3FhhLYRRWZBj22hOdg0N1Pg0JWXjTrvLLIv
 DuZ5Ihw3vLRcgmVAoytbBNyE7Tggdt+X603WiUjqF3MNCSOAFKmF8jtU3
 /IuhKqaVeBWhWkFXR8poBHXxJTPuywN5FBKTnXEPQy7QjcTQTo41b47/p
 0RHBXq6qB3fpWOhxTQRenpNubnws7p4Z22o2asNoUQaU0kn6sQ5ibtxo1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="306256038"
X-IronPort-AV: E=Sophos;i="5.95,223,1661842800"; d="scan'208";a="306256038"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 21:43:13 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="666300477"
X-IronPort-AV: E=Sophos;i="5.95,223,1661842800"; d="scan'208";a="666300477"
Received: from tgajewsk-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.235])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 21:43:11 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: andi.shyti@linux.intel.com
Date: Sat, 29 Oct 2022 07:42:30 +0300
Message-Id: <20221029044230.32128-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/hwmon: Fix a build error used with
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

Use REG_FIELD_PREP() and a constant value for hwm_field_scale_and_write()

If the first argument of FIELD_PREP() is not a compile-time constant value
or unsigned long long type, this routine of the __BF_FIELD_CHECK() macro
used internally by the FIELD_PREP() macro always returns false.

 BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >      \
                  __bf_cast_unsigned(_reg, ~0ull),        \
                  _pfx "type of reg too small for mask"); \

And it returns a build error by the option among the clang
compilation options. [-Werror,-Wtautological-constant-out-of-range-compare]

Reported build error while using clang compiler:

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

v2: Use REG_FIELD_PREP() macro instead of FIELD_PREP() (Jani)

Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting")
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 9e9781493025..c588a17f97e9 100644
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
+					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
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

