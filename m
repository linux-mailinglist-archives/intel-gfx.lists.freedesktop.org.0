Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652CEA705E2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 17:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED6810E5B0;
	Tue, 25 Mar 2025 16:01:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="YvFOw7/Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D564010E594;
 Tue, 25 Mar 2025 16:00:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B423E43AE6;
 Tue, 25 Mar 2025 16:00:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD199C4CEEE;
 Tue, 25 Mar 2025 16:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1742918448;
 bh=y9tc24suY8ej5fpyVn/Hv/vLFuhuXdeRe9lG82YhJkg=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=YvFOw7/Q2U+o5QuFSBjaw+DMhICo8fG1RjeBHOksW0khM/+JY2HogQ7Jeu3Wf0OkW
 ZwxAeN/cFdCxnfNjQs3QG/duVId1uswCZ4o38fkKgoSnhwIdZMZbE+P12lcDIcyhuN
 SAX6DvlmJ7dX2eWwEr+2nemJ8T1U89cpwwjsy9gI0ud3ZqhUBnSuiLAuSoUJfc4Apc
 GC7bZ28ZDJkv0+wcVVOGJvGipNswOpLWmp41GKpR3GTiWVv2ZiG2EbmshKUwOxxGV1
 RjO9BIeONU5BUk8ln4FGbPQntvh+bG8caRXQ04QB1UmkJj5IJmlmIetn/8Ej7ly8NR
 7yHeJ2uOS52Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id D2106C3600E;
 Tue, 25 Mar 2025 16:00:48 +0000 (UTC)
From: Vincent Mailhol via B4 Relay
 <devnull+mailhol.vincent.wanadoo.fr@kernel.org>
Date: Wed, 26 Mar 2025 00:59:58 +0900
Subject: [PATCH v8 3/6] bits: introduce fixed-type BIT_U*()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250326-fixed-type-genmasks-v8-3-24afed16ca00@wanadoo.fr>
References: <20250326-fixed-type-genmasks-v8-0-24afed16ca00@wanadoo.fr>
In-Reply-To: <20250326-fixed-type-genmasks-v8-0-24afed16ca00@wanadoo.fr>
To: Yury Norov <yury.norov@gmail.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>, 
 David Laight <David.Laight@ACULAB.COM>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, 
 Anshuman Khandual <anshuman.khandual@arm.com>, 
 linux-arm-kernel@lists.infradead.org, Jani Nikula <jani.nikula@intel.com>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2997;
 i=mailhol.vincent@wanadoo.fr; h=from:subject:message-id;
 bh=ecrYrTAWwHY9wpOdzSBQxxCJ10uy07eNQ1Cgas05dhY=;
 b=owGbwMvMwCV2McXO4Xp97WbG02pJDOmPLqueeuV9oMJps6kYv6SP56NLnHb7ntzrPfSI5c9Fz
 sy14V92dJSyMIhxMciKKbIsK+fkVugo9A479NcSZg4rE8gQBi5OAZhIoxnDX1mf+86TFXl4/zW8
 eu7uwO8eE6fJs1JSpizuQqjSrIOMLIwMP4qX2XZ+z+Jf/XKDjeMS3rMLEtbH/0somnBsnYN39nd
 tVgA=
X-Developer-Key: i=mailhol.vincent@wanadoo.fr; a=openpgp;
 fpr=ED8F700574E67F20E574E8E2AB5FEB886DBB99C2
X-Endpoint-Received: by B4 Relay for mailhol.vincent@wanadoo.fr/default
 with auth_id=291
X-Original-From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
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
Reply-To: mailhol.vincent@wanadoo.fr
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lucas De Marchi <lucas.demarchi@intel.com>

Implement fixed-type BIT_U*() to help drivers add stricter checks,
like it was done for GENMASK_U*().

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Co-developed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
---
Changelog:

  v7 -> v8:

    - s/shift-count-overflow/-Wshift-count-overflow/g

  v6 -> v7:
  v5 -> v6:

    - No changes.

  v4 -> v5:

    - Rename GENMASK_t() to GENMASK_TYPE().

    - Use tab indentations instead of single space to separate the
      macro name from its body.

    - Add a global comment at the beginning of the file to explain why
      GENMASK_U*() and BIT_U*() are not available in asm.

    - Add a new BIT_TYPE() helper function, similar to GENMASK_TYPE().

    - Remove the unsigned int cast for the U8 and U16 variants. Move
      the cast to BIT_TYPE().

    - Rename the argument from BIT_U*(b) to BIT_U*(nr) for consistency
      with vdso/bits.h.

  v3 -> v4:

    - Use const_true() to simplify BIT_INPUT_CHECK().

    - Make BIT_U8() and BIT_U16() return an unsigned int instead of a
      u8 and u16. Because of the integer promotion rules in C, an u8
      or an u16 would become a signed integer as soon as these are
      used in any expression. By casting these to unsigned ints, at
      least the signedness is kept.

    - Put the cast next to the BIT() macro.

    - In BIT_U64(): use BIT_ULL() instead of BIT().
---
 include/linux/bits.h | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/include/linux/bits.h b/include/linux/bits.h
index 9718c5ae5fc356e66958cf48667bb1edda4f9673..7ad0562191153471dac729b0020cdb1c9d3049fc 100644
--- a/include/linux/bits.h
+++ b/include/linux/bits.h
@@ -24,7 +24,7 @@
 /*
  * Missing asm support
  *
- * GENMASK_U*() depend on BITS_PER_TYPE() which relies on sizeof(),
+ * GENMASK_U*() and BIT_U*() depend on BITS_PER_TYPE() which relies on sizeof(),
  * something not available in asm. Nevertheless, fixed width integers is a C
  * concept. Assembly code can rely on the long and long long versions instead.
  */
@@ -55,6 +55,24 @@
 #define GENMASK_U32(h, l)	GENMASK_TYPE(u32, h, l)
 #define GENMASK_U64(h, l)	GENMASK_TYPE(u64, h, l)
 
+/*
+ * Fixed-type variants of BIT(), with additional checks like GENMASK_TYPE(). The
+ * following examples generate compiler warnings due to -Wshift-count-overflow:
+ *
+ * - BIT_U8(8)
+ * - BIT_U32(-1)
+ * - BIT_U32(40)
+ */
+#define BIT_INPUT_CHECK(type, nr) \
+	BUILD_BUG_ON_ZERO(const_true((nr) >= BITS_PER_TYPE(type)))
+
+#define BIT_TYPE(type, nr) ((type)(BIT_INPUT_CHECK(type, nr) + BIT_ULL(nr)))
+
+#define BIT_U8(nr)	BIT_TYPE(u8, nr)
+#define BIT_U16(nr)	BIT_TYPE(u16, nr)
+#define BIT_U32(nr)	BIT_TYPE(u32, nr)
+#define BIT_U64(nr)	BIT_TYPE(u64, nr)
+
 #else /* defined(__ASSEMBLY__) */
 
 /*

-- 
2.48.1


