Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08001729AEC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 15:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2248911F;
	Fri,  9 Jun 2023 13:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D476610E69D
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 13:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686315803; x=1717851803;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B9j6KPnGI5sD7s8Q0BlmWPjFLlcPwmzNWwIAy7uvtPw=;
 b=FmH19j6YEJ0vSLUZwlzBI5MsLcCsQrND+BNjCnj1Ni4evGsBeV/WjjLB
 LKiMnGXRifB5Mfsp65gtGZpef6CpDA56MqpQ7NtwWNhTb5bptITeLXw6W
 FZrAF3e2fILPhnABOkB16h0Jey4w4m2iIcGPbCk/ibTX0bIF2PzBe+FMq
 vetEtBD8Mk3EyPK2O4cSSX+tRZtR+Do6u0X4pq/5NlFp4r5yKwY+DAo/A
 waFPnX2ms0rNY6NJRvS4jRNsnqO4+SJ5ZGd/ZUW1S0g41aM5erTTspOeu
 HKciJBTmYLFpjxoesbK115BK5WQGRxZzyNu+B50xASOzKh4k8Sx4JiBMX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="337226252"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="337226252"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 06:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="710356718"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="710356718"
Received: from pdrab-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.ger.corp.intel.com) ([10.213.11.29])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 06:03:19 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>
Date: Fri,  9 Jun 2023 15:01:41 +0200
Message-ID: <20230609130140.182781-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] x86/mm: Fix PAT bit missing from page
 protection modify mask
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
Cc: Juergen Gross <jgross@suse.com>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Marek=20Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>, Ingo Molnar <mingo@redhat.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Visible glitches have been observed when running graphics applications on
Linux under Xen hypervisor.  Those observations have been confirmed with
failures from kms_pwrite_crc Intel GPU test that verifies data coherency
of DRM frame buffer objects using hardware CRC checksums calculated by
display controllers, exposed to userspace via debugfs.  Affected
processing paths have then been identified with new IGT test variants that
mmap the objects using different methods and caching modes [1].

When running as a Xen PV guest, Linux uses Xen provided PAT configuration
which is different from its native one.  In particular, Xen specific PTE
encoding of write-combining caching, likely used by graphics applications,
differs from the Linux default one found among statically defined minimal
set of supported modes.  Since Xen defines PTE encoding of the WC mode as
_PAGE_PAT, it no longer belongs to the minimal set, depends on correct
handling of _PAGE_PAT bit, and can be mismatched with write-back caching.

When a user calls mmap() for a DRM buffer object, DRM device specific
.mmap file operation, called from mmap_region(), takes care of setting PTE
encoding bits in a vm_page_prot field of an associated virtual memory area
structure.  Unfortunately, _PAGE_PAT bit is not preserved when the vma's
.vm_flags are then applied to .vm_page_prot via vm_set_page_prot().  Bits
to be preserved are determined with _PAGE_CHG_MASK symbol that doesn't
cover _PAGE_PAT.  As a consequence, WB caching is requested instead of WC
when running under Xen (also, WP is silently changed to WT, and UC
downgraded to UC_MINUS).  When running on bare metal, WC is not affected,
but WP and WT extra modes are unintentionally replaced with WC and UC,
respectively.

WP and WT modes, encoded with _PAGE_PAT bit set, were introduced by commit
281d4078bec3 ("x86: Make page cache mode a real type").  Care was taken
to extend _PAGE_CACHE_MASK symbol with that additional bit, but that
symbol has never been used for identification of bits preserved when
applying page protection flags.  Support for all cache modes under Xen,
including the problematic WC mode, was then introduced by commit
47591df50512 ("xen: Support Xen pv-domains using PAT").

The issue needs to be fixed by including _PAGE_PAT bit into a bitmask used
by pgprot_modify() for selecting bits to be preserved.  We can do that
either internally to pgprot_modify() (as initially proposed), or by making
_PAGE_PAT a part of _PAGE_CHG_MASK.  If we go for the latter then, since
_PAGE_PAT is the same as _PAGE_PSE, we need to note that _HPAGE_CHG_MASK
-- a huge pmds' counterpart of _PAGE_CHG_MASK, introduced by commit
c489f1257b8c ("thp: add pmd_modify"), defined as (_PAGE_CHG_MASK |
_PAGE_PSE) -- will no longer differ from _PAGE_CHG_MASK.  If such
modification of _PAGE_CHG_MASK was irrelevant to its users then one might
wonder why that new _HPAGE_CHG_MASK symbol was introduced instead of
reusing the existing one with that otherwise irrelevant bit (_PAGE_PSE in
that case) added.

Assume that adding _PAGE_PAT to _PAGE_CHG_MASK doesn't break pte_modify()
and its users, and go for it.  Also, add _PAGE_PAT_LARGE to
_HPAGE_CHG_MASK for symmetry.  For better clarity, split out common bits
from both symbols to another one and use it together with specific bits
when defining the masks.

v3: Separate out common bits of _PAGE_CHG_MASK and _HPAGE_CHG_MASK into
    _COMMON_PAGE_CHG_MASK (Rick),
  - fix hard to parse wording of 'what' part of commit description (on
    Dave's request).
v2: Keep pgprot_modify() untouched, make _PAGE_PAT part of _PAGE_CHG_MASK
    instead (Borislav),
  - also add _PAGE_PAT_LARGE to _HPAGE_CHG_MASK (Juergen).

[1] https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/commit/0f0754413f14

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7648
Fixes: 281d4078bec3 ("x86: Make page cache mode a real type")
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Tested-by: Marek Marczykowski-Górecki <marmarek@invisiblethingslab.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Juergen Gross <jgross@suse.com> # v1
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@intel.com>
Cc: "Edgecombe, Rick P" <rick.p.edgecombe@intel.com>
Cc: stable@vger.kernel.org # v3.19+
---
 arch/x86/include/asm/pgtable_types.h | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pgtable_types.h
index 447d4bee25c48..97533e6b1c61b 100644
--- a/arch/x86/include/asm/pgtable_types.h
+++ b/arch/x86/include/asm/pgtable_types.h
@@ -125,11 +125,12 @@
  * instance, and is *not* included in this mask since
  * pte_modify() does modify it.
  */
-#define _PAGE_CHG_MASK	(PTE_PFN_MASK | _PAGE_PCD | _PAGE_PWT |		\
-			 _PAGE_SPECIAL | _PAGE_ACCESSED | _PAGE_DIRTY |	\
-			 _PAGE_SOFT_DIRTY | _PAGE_DEVMAP | _PAGE_ENC |  \
-			 _PAGE_UFFD_WP)
-#define _HPAGE_CHG_MASK (_PAGE_CHG_MASK | _PAGE_PSE)
+#define _COMMON_PAGE_CHG_MASK	(PTE_PFN_MASK | _PAGE_PCD | _PAGE_PWT |	       \
+				 _PAGE_SPECIAL | _PAGE_ACCESSED | _PAGE_DIRTY |\
+				 _PAGE_SOFT_DIRTY | _PAGE_DEVMAP | _PAGE_ENC | \
+				 _PAGE_UFFD_WP)
+#define _PAGE_CHG_MASK	(_COMMON_PAGE_CHG_MASK | _PAGE_PAT)
+#define _HPAGE_CHG_MASK (_COMMON_PAGE_CHG_MASK | _PAGE_PSE | _PAGE_PAT_LARGE)
 
 /*
  * The cache modes defined here are used to translate between pure SW usage
-- 
2.41.0

