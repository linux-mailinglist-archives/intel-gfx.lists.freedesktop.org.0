Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27879726449
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 17:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF0E210E16B;
	Wed,  7 Jun 2023 15:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDA210E09B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 15:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686151464; x=1717687464;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ARZjNToUiO85DLbaOveTz4aJbWaU0n8lP8ieuY9WBAg=;
 b=YvI8h46UlRErFZGDmy//04+6/KOXJLrvjRDBX/6I8gYlXrIunPdv8Kvk
 sXrCSiJVQKAS2/+qUeMgP10/QJWUf42EItzPX9hfFOQD50FxLQiaiSUrM
 QYd0s8crWj4NhwA5lsFS3qXc4sIEyOO/Qm71ErD8EivtLrN/RONpMyD3x
 hG/TnBvbgplPZtbVb/ZwYECsQehRagVXSSKN9woNilJIo7+YwZQBYrVqj
 iOozLqlqig23u+CMd+YkzEjkRMOwNobCB4mS1K6LG0gJeEROhXUPXNuis
 EdTjySTNz/dP0VXwl1XROnH0INNr8jThk6Fo6Zt8oa5o2FtvjYMIXRm9N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337383279"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="337383279"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 08:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956327825"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="956327825"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.10.174])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 08:24:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Borislav Petkov <bp@alien8.de>
Date: Wed,  7 Jun 2023 17:23:09 +0200
Message-ID: <20230607152308.125787-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] x86/mm: Fix PAT bit missing from page
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
Cc: Juergen Gross <jgross@suse.com>, x86@kernel.org,
 intel-gfx@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
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

Extend bitmask used by pgprot_modify() for selecting bits to be preserved
with _PAGE_PAT bit.  However, since that bit can be reused as _PAGE_PSE,
and the _PAGE_CHG_MASK symbol, primarly used by pte_modify(), is likely
intentionally defined with that bit not set, keep that symbol unchanged.

v2: Keep pgprot_modify() untouched, make _PAGE_PAT part of _PAGE_CHG_MASK
    instead (Borislav),
  - also add _PAGE_PAT_LARGE to _HPAGE_CHG_MASK (Juergen).

[1] https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/commit/0f0754413f14

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7648
Fixes: 281d4078bec3 ("x86: Make page cache mode a real type")
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Tested-by: Marek Marczykowski-Górecki <marmarek@invisiblethingslab.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: stable@vger.kernel.org # v3.19+
---
 arch/x86/include/asm/pgtable_types.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pgtable_types.h
index 447d4bee25c48..0432ed9e59e3e 100644
--- a/arch/x86/include/asm/pgtable_types.h
+++ b/arch/x86/include/asm/pgtable_types.h
@@ -125,11 +125,11 @@
  * instance, and is *not* included in this mask since
  * pte_modify() does modify it.
  */
-#define _PAGE_CHG_MASK	(PTE_PFN_MASK | _PAGE_PCD | _PAGE_PWT |		\
-			 _PAGE_SPECIAL | _PAGE_ACCESSED | _PAGE_DIRTY |	\
-			 _PAGE_SOFT_DIRTY | _PAGE_DEVMAP | _PAGE_ENC |  \
+#define _PAGE_CHG_MASK	(PTE_PFN_MASK | _PAGE_PCD | _PAGE_PWT |	_PAGE_PAT | \
+			 _PAGE_SPECIAL | _PAGE_ACCESSED | _PAGE_DIRTY |	    \
+			 _PAGE_SOFT_DIRTY | _PAGE_DEVMAP | _PAGE_ENC |	    \
 			 _PAGE_UFFD_WP)
-#define _HPAGE_CHG_MASK (_PAGE_CHG_MASK | _PAGE_PSE)
+#define _HPAGE_CHG_MASK (_PAGE_CHG_MASK | _PAGE_PSE | _PAGE_PAT_LARGE)
 
 /*
  * The cache modes defined here are used to translate between pure SW usage
-- 
2.41.0

