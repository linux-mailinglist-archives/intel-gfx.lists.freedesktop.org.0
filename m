Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E261907D9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 09:40:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144C08999E;
	Tue, 24 Mar 2020 08:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860318999E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 08:40:15 +0000 (UTC)
IronPort-SDR: YrYjjRUPWUho4XJIAes/QtqhNfPCwTFShK0Bu9BlAakWaB4Ef1cmBQi50p98Fn6l55unkORAo3
 Qz2ZCSiyS29w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 01:40:15 -0700
IronPort-SDR: 8cmGhqfG+dqZO2+W+ecCn9NOXCWx9vy2R1xAftI1dKqmVe2NomQhGn6B5aKwReQzaPGb5OdLQB
 yj7kENpCD5Eg==
X-IronPort-AV: E=Sophos;i="5.72,299,1580803200"; d="scan'208";a="419811978"
Received: from kkarwows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 01:40:13 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 24 Mar 2020 10:40:23 +0200
Resent-Message-ID: <87sghyb0y0.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl3 with IMAP (fetchmail-6.4.0.beta4)
 for <jani@localhost> (single-drop); Mon, 23 Mar 2020 04:14:43 +0200 (EET)
Received: from orsmga005.jf.intel.com (orsmga005.jf.intel.com [10.7.209.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id A90A258056F;
 Sun, 22 Mar 2020 19:12:29 -0700 (PDT)
IronPort-SDR: BeVwil7B0iV+AeJuw6iC9xI1Xq7GjZDPEFH57kB/yd1gagkZooSW0cXX62Mt5jVdv0AGj2BD6z
 W2tXKLTU0Z/jO3uJkBNLvdOCCnp9/lzlA=
Received: from orsmga103.jf.intel.com ([10.7.208.35])
 by orsmga005-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2020 19:12:29 -0700
Authentication-Results: mtab.intel.com; spf=None smtp.pra=masahiroy@kernel.org;
 spf=SoftFail smtp.mailfrom=masahiroy@kernel.org;
 spf=None smtp.helo=postmaster@conuserg-11.nifty.com
IronPort-SDR: 1pzIOz6+RywvOtwbgtgNM0NMQz7+HOFV4wZtAzYDbX19dKRPp0DrZruo3BcVCCRG8hiDtpqlOq
 NbV6WgjKlQkUSlUckfO/u+Y1oyhqzltuU=
IronPort-PHdr: =?us-ascii?q?9a23=3AoJ+WihW5KJOF2zwRagX0+rPZB+7V8LGuZFw894?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnl6O5wiEPSBNiFufdYguCQsqb8VGhG6pGE4zgZaJIZcR?=
 =?us-ascii?q?gDhI0NmhA4RtafABj+JeXjby0gG9VqV1J/+Xy/d09PF5W2fEXc90a14yI8Ex?=
 =?us-ascii?q?T7fRFwOvyzH4fTi8qt0OXn/pTIagVJnj2sSbB/NhO7qUPWrMZFyZB6JPMXzR?=
 =?us-ascii?q?3E6mBNZ/wQxW5sIgeLmA3g486r4JN52y9Xve86+tRPFPyjOaI5Q6BJSj8hNj?=
 =?us-ascii?q?lvtvfmvhTCUwaDo0AkfD9Gz0huBA7IpFH/Qp779Cr8qud5niKdOJ++S7d8Qj?=
 =?us-ascii?q?mk46pxABb1lCcKMSI4+2DLm6kSxOpaphymvRl234/TZsmcKvN/eqrXed5SS3?=
 =?us-ascii?q?BGW45dUClIA4X0aIVHCuMaNOZZtY7sj1gDtx2zAU+rHuyur10Azn760Ksm0v?=
 =?us-ascii?q?gwRBnc1V9oFNYPvXLI6dTtYf1LCabsl/COl3OcP6Azu3+18oXDfxE/rOvZWK?=
 =?us-ascii?q?55e4zQz1UiE0XOiVDDzO6tdz6TyOkJtHCWquR6Uuf6wWsusAhxoyKo1+8vh5?=
 =?us-ascii?q?PPi4ZTzUrLv3Ycos59NZijRUh3bMTxWp5ZrCiaNpFxU+shTntutSJ8zacJ88?=
 =?us-ascii?q?3eHmBC2NEswBjRbOaCeo6D70f4VeqfFjx/gWpsZLO1gxvrqxqax+bxV9e53B?=
 =?us-ascii?q?NxlgQZy4eejXcDyzLa68zPCv5h903n2DCT2gSV4eZBcwg4kq/SKphpxbBV9N?=
 =?us-ascii?q?JbtE3YFy/3gkLnpKybbEMp/q6v8euvY66up5mXM45yhw22LqNmnMujSeg1KQ?=
 =?us-ascii?q?kBWWGH9IHenPW5pBW/Ge4TyKdwzfmRuYuSPckBo6+lHwJZmp0u7RqyFXbu0d?=
 =?us-ascii?q?gVm2UGMEMQfRuGi4bzPFSdRZKwRfy7glmqjHJq36WcZ+WnW86UaCKFz+eyNa?=
 =?us-ascii?q?xw4ENd1gcpmNVD7pgSC7cdLfa1UUj057m6Rlc0NRK5x+H/BZBzzIQbDCiKC7?=
 =?us-ascii?q?SQMKLItk6g5e81JeSIIogPt3yuTpptr+6rlnI/lVIHKOOs1IAeaHGiGeVOIE?=
 =?us-ascii?q?iDZ3foxNAbHi1Z22h2BPyvg1qEXzlJYn+0VK9p/TA3BrWtCoLbT5ysiriMj2?=
 =?us-ascii?q?+rW4dbbWdcBhWQAG/lIs+aDuwUZnvYcaoD2nQUEKKsQIg72VSyuR/mnvB5e/?=
 =?us-ascii?q?HM9HRQsIKr3Ypr6ODJ0xI/7zp5C4KayW7oLSk8lzENTj4ymr9750h8zEqT36?=
 =?us-ascii?q?9lhfBRCd1U4bVOSAhyI5fYy6YjUYLIVwnMf8mERBOdevv9WGljaNU3zpdOZl?=
 =?us-ascii?q?p0EZOjiAzO22yhBLpH37qMTIc59K7RxTD4Otp9xnDa1aIgk0hDIIMHNGuogb?=
 =?us-ascii?q?R6/hTSAIiBmluQlqKjf6ARlCDX82LLwW2LtUBeGAl+NMeNFWgYfVfTpM/l61?=
 =?us-ascii?q?nqRLioFK8qKAQEkJfELKpEdsyvhlJDBb/iNNnYf2OtijKwCBKPldbuJMLhf2?=
 =?us-ascii?q?QQ2jmYCVBRyVlLuy/dbE5kQHjx8CrEATdjFEzieRbp7eB07nK9UkIwiQqNah?=
 =?us-ascii?q?4EtfL99xgLiPibU/5W0KgDvXJrrjxvFVa8xdXHI9mNvQxseONbe9x3szIlnS?=
 =?us-ascii?q?rJ8hdwOJCtNfUonlkFbwF+pF/jzT18DYNdisUwozZzlUx0KKyEwRVKcDbSjv?=
 =?us-ascii?q?WScvXHb2L1+h6ocavf3FrThc2X9qk44/M9s1z/vQutGxNzoUUi6MFc1j6n3r?=
 =?us-ascii?q?uPCQMTVZzrVUNurUp5qqvcby174JnbhyY1bfuE9wTa0tdsP9MLjw66do4FYq?=
 =?us-ascii?q?CJDgn/F4sdHcf8cLV3yWjsVQoNOaVpzIBxP86icKHdiqWsOvt7kSipyD0epo?=
 =?us-ascii?q?Z83F6dsSF7T7yQ0g=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EtAABmGXheYk4Cg9JmHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWkFAQELAYIjBSaBGyMECyqNGpw2hSmBewkBAQEBAQEBAQEbGgI?=
 =?us-ascii?q?EAQEChEOCJxwMBS0HDgIDAQELAQEBBAEBAQIBAgMEAgIDGA0KBSmFXwyDU3E?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBAQEBAQEBARUCSVVyAQE3AYE9ARKDJoJ8Bq0Wgn8BAQW?=
 =?us-ascii?q?GEYE1CYE4AYdKg0aBHhqBQT+EY4o6mEOYDoJGf5V8DB2CTIgrhFWMDAEtjmC?=
 =?us-ascii?q?dcgqCATMaMIMvUBgNjh0MF4NQimQyM4EIjXUBAQ?=
X-IPAS-Result: =?us-ascii?q?A0EtAABmGXheYk4Cg9JmHAEBAQEBBwEBEQEEBAEBgWkFA?=
 =?us-ascii?q?QELAYIjBSaBGyMECyqNGpw2hSmBewkBAQEBAQEBAQEbGgIEAQEChEOCJxwMB?=
 =?us-ascii?q?S0HDgIDAQELAQEBBAEBAQIBAgMEAgIDGA0KBSmFXwyDU3EBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBARUCSVVyAQE3AYE9ARKDJoJ8Bq0Wgn8BAQWGEYE1CYE4AYdKg?=
 =?us-ascii?q?0aBHhqBQT+EY4o6mEOYDoJGf5V8DB2CTIgrhFWMDAEtjmCdcgqCATMaMIMvU?=
 =?us-ascii?q?BgNjh0MF4NQimQyM4EIjXUBAQ?=
X-IronPort-AV: E=Sophos;i="5.72,294,1580803200"; d="scan'208";a="123809852"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by mtab.intel.com with ESMTP; 22 Mar 2020 19:12:27 -0700
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 02N2B0XE005345;
 Mon, 23 Mar 2020 11:11:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N2B0XE005345
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584929461;
 bh=921IQ+kt9407iGCDk1ZEmlbnWdF8N6TUyCzyGcOHkIA=;
 h=From:To:Cc:Subject:Date:From;
 b=AsLaLubRaEcK2e+0uHzTYGp9FDfJiAMoQo3oT0Q2vqBenotASSN07zJz5Bd7g12Uj
 NlArBFCPkz7Yy3sLWH2bYO0IDVRMufDPeVGX9geH3JpFFySsL07kNuebrqSs6KpIqW
 W1Gr0jQFRXu+hC0dhVP66IqRfoUDckUNlGYkz/v0kXBUxhkOMgagaMKrEvMs4XqpTe
 rt++g2WB8pLBK458BCQIIAk06YmRNoUZe7UokQ/SEhNtOq2Dr3SN4NZnvTs9zwvwBN
 vKfD9d98wgWBxSsW2yKcgXfuxengtOMRa7SXy8hlK5tKhmgf2IWi9UPU+WzZl9cWt7
 7HAqPq1ycBbCw==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 11:10:53 +0900
Message-Id: <20200323021053.17319-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: remove always-defined
 CONFIG_AS_MOVNTDQA
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>, David Airlie <airlied@linux.ie>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CONFIG_AS_MOVNTDQA was introduced by commit 0b1de5d58e19 ("drm/i915:
Use SSE4.1 movntdqa to accelerate reads from WC memory").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by Clang's integrated assembler.

Remove CONFIG_AS_MOVNTDQA, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/gpu/drm/i915/Makefile      | 3 ---
 drivers/gpu/drm/i915/i915_memcpy.c | 5 -----
 2 files changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a1f2411aa21b..e559e53fc634 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -28,9 +28,6 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
 CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
 
-subdir-ccflags-y += \
-	$(call as-instr,movntdqa (%eax)$(comma)%xmm0,-DCONFIG_AS_MOVNTDQA)
-
 subdir-ccflags-y += -I$(srctree)/$(src)
 
 # Please keep these build lists sorted!
diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
index fdd550405fd3..7b3b83bd5ab8 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.c
+++ b/drivers/gpu/drm/i915/i915_memcpy.c
@@ -35,7 +35,6 @@
 
 static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
 
-#ifdef CONFIG_AS_MOVNTDQA
 static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
 {
 	kernel_fpu_begin();
@@ -93,10 +92,6 @@ static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
 
 	kernel_fpu_end();
 }
-#else
-static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len) {}
-static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len) {}
-#endif
 
 /**
  * i915_memcpy_from_wc: perform an accelerated *aligned* read from WC
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
