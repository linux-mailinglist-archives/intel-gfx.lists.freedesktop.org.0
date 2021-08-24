Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393EB3F74E7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 14:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC65589857;
	Wed, 25 Aug 2021 12:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB239895E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 12:16:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="214385964"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="214385964"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 05:16:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="527238420"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 05:16:51 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 25 Aug 2021 15:16:48 +0300
Resent-Message-ID: <87mtp5en2n.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl3.ger.corp.intel.com with IMAP (fetchmail-6.4.0.beta4)
 for <jani@localhost> (single-drop); Wed, 25 Aug 2021 10:05:10 +0300 (EEST)
Received: from fmsmga002.fm.intel.com (fmsmga002.fm.intel.com [10.253.24.26])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id A290D5808AC;
 Tue, 24 Aug 2021 16:23:08 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="536040427"
X-IronPort-AV: E=Sophos;i="5.84,348,1620716400"; d="scan'208";a="536040427"
Received: from orsmga102-1.jf.intel.com (HELO mga09.intel.com) ([10.7.208.27])
 by fmsmga002-1.fm.intel.com with ESMTP; 24 Aug 2021 16:23:08 -0700
Authentication-Results: mtab.intel.com; spf=None smtp.pra=nathan@kernel.org;
 spf=Pass smtp.mailfrom=nathan@kernel.org;
 spf=None smtp.helo=postmaster@mail.kernel.org;
 dkim=pass (signature verified) header.i=@kernel.org;
 dmarc=pass (p=none dis=none) d=kernel.org
IronPort-SDR: 3LbhXxnAP6vdCjL9lcmG6Uy3dpZ3THPTAkTCBRPIsiQwMWAUgs8/ld+7uQX6cfVjWr94PbFqP/
 Xd3Px98iIiWRZrWxWY8sNxx6T0qI0Dfos=
X-IPAS-Result: =?us-ascii?q?A0GxBABEfiVhe2MdkcZagmICgiJ+ViwECzEDlU6bdhSBa?=
 =?us-ascii?q?AsBAQEBAQEBAQEJNQwEAQEDBIRjgi4CHQcBBDAJDQEBAgECAQEBAQEDAgECA?=
 =?us-ascii?q?QEBAQEBAwEBAQICAQEBAgEBAgMCAQEBAQIQAQGBKGRnAYFOAYF5BgQwDUAWA?=
 =?us-ascii?q?YFeKQF0gQgBAQEBAQEBAQEBAQEBAQEBAQEBFgINUoEfAQ0BATcBTm8BEoJxA?=
 =?us-ascii?q?YMHBQqsBIEBggcBAQYEBQGBNAGERYFaAwaBOokDg3mBIRyCDYEVgTuCLIQqA?=
 =?us-ascii?q?S6FZoUdclkBNAErIIFeoRqdHYM0gTeJCZN/GiyBO6U8AZYVimKBXpNtJDOER?=
 =?us-ascii?q?oFhOYFcfQiDJBM6AQIBAg0BAgIDAQIBAgEIAQECAZcihWokMAIBNQIGCwEBA?=
 =?us-ascii?q?wmMFoJpAQE?=
IronPort-PHdr: A9a23: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
IronPort-HdrOrdr: A9a23:APtn7qr04UhMEOiGMl0a5P4aV5oteYIsimQD101hICG9vPb2qy
 nIpoV+6faQslwssR4b+OxoVJPsfZq+z+8W3WBuB9eftWDd0QPCEGgI1+XfKlPbdxEWjtQttp
 tIQuxGAMD7DEZ9lsS/yw+keuxQpeW6zA==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217420588"
X-IronPort-AV: E=Sophos;i="5.84,348,1620716400"; d="scan'208";a="217420588"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail.kernel.org ([198.145.29.99])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 16:23:07 -0700
Received: by mail.kernel.org (Postfix) with ESMTPSA id 36A46610F8;
 Tue, 24 Aug 2021 23:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629847387;
 bh=4ZASDukXEFD6gzQ3txH7gkEOWmXTrxFmwK+P5dWdDlQ=;
 h=From:To:Cc:Subject:Date:From;
 b=XeCbBM0ZbkYIgSeNifwC91fAm1WEGYJ4JuxoYgQNpeKuCb0Ywt2jQyVCfiqNSOueh
 PPdJiAzTR+c1jJ4HFcOC+MJRftf2zrRXXBlxWvg8dA4wmqwd61xMesXxsEJX+F1TYP
 6Lx6yT8AorZRbQFNNprX7Jhh1VX4YBaY5HO1/wbxzdCJ5hjGvL2VsEruzzHsgRLJ+s
 w1BH2Sm81RjXH/WrbEl6Ov/4Sd110xIuXb69BxzYYoXDxdGe/yrY83+A74mNIoT4Le
 rL5tDOhGF2CluFIaYjVoCy9iNfa/vTbP7cocrExi24clP7R+jaaH1n7G/wcee7q1IR
 DrlnnY64ASetQ==
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 llvm@lists.linux.dev, Nathan Chancellor <nathan@kernel.org>
Date: Tue, 24 Aug 2021 16:22:38 -0700
Message-Id: <20210824232237.2085342-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Clean up disabled warnings
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

i915 enables a wider set of warnings with '-Wall -Wextra' then disables
several with cc-disable-warning. If an unknown flag gets added to
KBUILD_CFLAGS when building with clang, all subsequent calls to
cc-{disable-warning,option} will fail, meaning that all of these
warnings do not get disabled [1].

A separate series will address the root cause of the issue by not adding
these flags when building with clang [2]; however, the symptom of these
extra warnings appearing can be addressed separately by just removing
the calls to cc-disable-warning, which makes the build ever so slightly
faster because the compiler does not need to be called as much before
building.

The following warnings are supported by GCC 4.9 and clang 10.0.1, which
are the minimum supported versions of these compilers so the call to
cc-disable-warning is not necessary. Masahiro cleaned this up for the
reset of the kernel in commit 4c8dd95a723d ("kbuild: add some extra
warning flags unconditionally").

* -Wmissing-field-initializers
* -Wsign-compare
* -Wtype-limits
* -Wunused-parameter

-Wunused-but-set-variable was implemented in clang 13.0.0 and
-Wframe-address was implemented in clang 12.0.0 so the
cc-disable-warning calls are kept for these two warnings.

Lastly, -Winitializer-overrides is clang's version of -Woverride-init,
which is disabled for the specific files that are problematic. clang
added a compatibility alias in clang 8.0.0 so -Winitializer-overrides
can be removed.

[1]: https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
[2]: https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

NOTE: This is based on my series to enable -Wsometimes-initialized here:

https://lore.kernel.org/r/20210824225427.2065517-1-nathan@kernel.org/

I sent it separately as this can go into whatever release but I would
like for that series to go into 5.15.

 drivers/gpu/drm/i915/Makefile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 335ba9f43d8f..6b38547543b1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -13,13 +13,11 @@
 # will most likely get a sudden build breakage... Hopefully we will fix
 # new warnings before CI updates!
 subdir-ccflags-y := -Wall -Wextra
-subdir-ccflags-y += $(call cc-disable-warning, unused-parameter)
-subdir-ccflags-y += $(call cc-disable-warning, type-limits)
-subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
+subdir-ccflags-y += -Wno-unused-parameter
+subdir-ccflags-y += -Wno-type-limits
+subdir-ccflags-y += -Wno-missing-field-initializers
+subdir-ccflags-y += -Wno-sign-compare
 subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
-# clang warnings
-subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
-subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 

base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
prerequisite-patch-id: 31c28450ed7e8785dce967a16db6d52eff3d7d6d
prerequisite-patch-id: 372dfa0e07249f207acc1942ab0e39b13ff229b2
prerequisite-patch-id: 1a585fa6cda50c32ad1e3ac8235d3cff1b599978
-- 
2.33.0

