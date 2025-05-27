Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D32AC5DDD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 01:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E3D10E163;
	Tue, 27 May 2025 23:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="EXfmbp3o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA9410E533
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 23:50:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B65815C5A5C;
 Tue, 27 May 2025 23:48:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02057C4CEE9;
 Tue, 27 May 2025 23:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748389827;
 bh=cPNFnn+ViLBMY0rx+pZm4e6pn/QkrpbjwICV29GcTpc=;
 h=Date:From:To:Cc:Subject:From;
 b=EXfmbp3oEZQCc0Ltxx3QbB2PowIdStG9ctJlXc1pjm7kqQBsap5AM9MIxVjlzYrsX
 70ZHBnAWQx+Web72mrP5DyOQ22KLU+Ri43qaylEjiMf5n51IJmcurBVuSFLJFxAqeY
 0q4D8hKeq8VD3+lZsHCZesGbczoYc5WdOrJCj9+BLTeEe2zKbt9sbMixlXZ3NYODoW
 0e0OvXhA1KcowLPN6VZp6U3F7EuW+pao0DyO1sE2c7BlgF1yJxT2PglylcVgfGqRxW
 X6CXy1nC/1YbNCoOUqg1baWmq/WwM/sFoFG6YFP6LdcoP88dnI3CkAMMUc7eF8FCBt
 c5jfX3C+Fe0og==
Date: Tue, 27 May 2025 16:50:23 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org, llvm@lists.linux.dev,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Backports of 2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81 for 5.15 and
 older
Message-ID: <20250527235023.GA2613123@ax162>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VGW1Kzzgue6WQK1O"
Content-Disposition: inline
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


--VGW1Kzzgue6WQK1O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Greg and Sasha,

Please find attached backports of commit 2e43ae7dd71c ("drm/i915/gvt:
fix unterminated-string-initialization warning") to address an instance
of -Wunterminated-string-initialization that appears in the i915 driver
with GCC 15 and Clang 21 due to its use of -Wextra. Please let me know
if there are any issues.

Cheers,
Nathan

--VGW1Kzzgue6WQK1O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename=5.4-2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81.patch

From 604141c490f8e7591a80b27dba1000cceadb35c9 Mon Sep 17 00:00:00 2001
From: Jani Nikula <jani.nikula@intel.com>
Date: Thu, 27 Mar 2025 14:47:39 +0200
Subject: [PATCH 5.4] drm/i915/gvt: fix unterminated-string-initialization
 warning

commit 2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81 upstream.

Initializing const char opregion_signature[16] = OPREGION_SIGNATURE
(which is "IntelGraphicsMem") drops the NUL termination of the
string. This is intentional, but the compiler doesn't know this.

Switch to initializing header->signature directly from the string
litaral, with sizeof destination rather than source. We don't treat the
signature as a string other than for initialization; it's really just a
blob of binary data.

Add a static assert for good measure to cross-check the sizes.

Reported-by: Kees Cook <kees@kernel.org>
Closes: https://lore.kernel.org/r/20250310222355.work.417-kees@kernel.org
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13934
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Tested-by: Damian Tometzki <damian@riscv-rocks.de>
Cc: stable@vger.kernel.org
Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>
Link: https://lore.kernel.org/r/20250327124739.2609656-1-jani.nikula@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
(cherry picked from commit 4f8207469094bd04aad952258ceb9ff4c77b6bfa)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
[nathan: Move static_assert() to top of function to avoid instance of
         -Wdeclaration-after-statement due to lack of b5ec6fd286df]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/gvt/opregion.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
index 867e7629025b..7d347e2944a0 100644
--- a/drivers/gpu/drm/i915/gvt/opregion.c
+++ b/drivers/gpu/drm/i915/gvt/opregion.c
@@ -223,7 +223,8 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	u8 *buf;
 	struct opregion_header *header;
 	struct vbt v;
-	const char opregion_signature[16] = OPREGION_SIGNATURE;
+
+	static_assert(sizeof(header->signature) == sizeof(OPREGION_SIGNATURE) - 1);
 
 	gvt_dbg_core("init vgpu%d opregion\n", vgpu->id);
 	vgpu_opregion(vgpu)->va = (void *)__get_free_pages(GFP_KERNEL |
@@ -237,8 +238,9 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	/* emulated opregion with VBT mailbox only */
 	buf = (u8 *)vgpu_opregion(vgpu)->va;
 	header = (struct opregion_header *)buf;
-	memcpy(header->signature, opregion_signature,
-	       sizeof(opregion_signature));
+
+	memcpy(header->signature, OPREGION_SIGNATURE, sizeof(header->signature));
+
 	header->size = 0x8;
 	header->opregion_ver = 0x02000000;
 	header->mboxes = MBOX_VBT;

base-commit: 2c8115e4757809ffd537ed9108da115026d3581f
-- 
2.49.0


--VGW1Kzzgue6WQK1O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename=5.10-2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81.patch

From 8df71970af64794683e6c537fbd2c8d6613ab9cf Mon Sep 17 00:00:00 2001
From: Jani Nikula <jani.nikula@intel.com>
Date: Thu, 27 Mar 2025 14:47:39 +0200
Subject: [PATCH 5.10] drm/i915/gvt: fix unterminated-string-initialization
 warning

commit 2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81 upstream.

Initializing const char opregion_signature[16] = OPREGION_SIGNATURE
(which is "IntelGraphicsMem") drops the NUL termination of the
string. This is intentional, but the compiler doesn't know this.

Switch to initializing header->signature directly from the string
litaral, with sizeof destination rather than source. We don't treat the
signature as a string other than for initialization; it's really just a
blob of binary data.

Add a static assert for good measure to cross-check the sizes.

Reported-by: Kees Cook <kees@kernel.org>
Closes: https://lore.kernel.org/r/20250310222355.work.417-kees@kernel.org
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13934
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Tested-by: Damian Tometzki <damian@riscv-rocks.de>
Cc: stable@vger.kernel.org
Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>
Link: https://lore.kernel.org/r/20250327124739.2609656-1-jani.nikula@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
(cherry picked from commit 4f8207469094bd04aad952258ceb9ff4c77b6bfa)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
[nathan: Move static_assert() to top of function to avoid instance of
         -Wdeclaration-after-statement due to lack of b5ec6fd286df]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/gvt/opregion.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
index 33569b910ed5..fbf1e67913f6 100644
--- a/drivers/gpu/drm/i915/gvt/opregion.c
+++ b/drivers/gpu/drm/i915/gvt/opregion.c
@@ -222,7 +222,8 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	u8 *buf;
 	struct opregion_header *header;
 	struct vbt v;
-	const char opregion_signature[16] = OPREGION_SIGNATURE;
+
+	static_assert(sizeof(header->signature) == sizeof(OPREGION_SIGNATURE) - 1);
 
 	gvt_dbg_core("init vgpu%d opregion\n", vgpu->id);
 	vgpu_opregion(vgpu)->va = (void *)__get_free_pages(GFP_KERNEL |
@@ -236,8 +237,9 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	/* emulated opregion with VBT mailbox only */
 	buf = (u8 *)vgpu_opregion(vgpu)->va;
 	header = (struct opregion_header *)buf;
-	memcpy(header->signature, opregion_signature,
-	       sizeof(opregion_signature));
+
+	memcpy(header->signature, OPREGION_SIGNATURE, sizeof(header->signature));
+
 	header->size = 0x8;
 	header->opregion_ver = 0x02000000;
 	header->mboxes = MBOX_VBT;

base-commit: 024a4a45fdf87218e3c0925475b05a27bcea103f
-- 
2.49.0


--VGW1Kzzgue6WQK1O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename=5.15-2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81.patch

From 6881a5a1bf876e747fd99226e671aaaf85bc8e45 Mon Sep 17 00:00:00 2001
From: Jani Nikula <jani.nikula@intel.com>
Date: Thu, 27 Mar 2025 14:47:39 +0200
Subject: [PATCH 5.15] drm/i915/gvt: fix unterminated-string-initialization
 warning

commit 2e43ae7dd71cd9bb0d1bce1d3306bf77523feb81 upstream.

Initializing const char opregion_signature[16] = OPREGION_SIGNATURE
(which is "IntelGraphicsMem") drops the NUL termination of the
string. This is intentional, but the compiler doesn't know this.

Switch to initializing header->signature directly from the string
litaral, with sizeof destination rather than source. We don't treat the
signature as a string other than for initialization; it's really just a
blob of binary data.

Add a static assert for good measure to cross-check the sizes.

Reported-by: Kees Cook <kees@kernel.org>
Closes: https://lore.kernel.org/r/20250310222355.work.417-kees@kernel.org
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13934
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Tested-by: Damian Tometzki <damian@riscv-rocks.de>
Cc: stable@vger.kernel.org
Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>
Link: https://lore.kernel.org/r/20250327124739.2609656-1-jani.nikula@intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
(cherry picked from commit 4f8207469094bd04aad952258ceb9ff4c77b6bfa)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
[nathan: Move static_assert() to top of function to avoid instance of
         -Wdeclaration-after-statement due to lack of b5ec6fd286df]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/gvt/opregion.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
index 33569b910ed5..fbf1e67913f6 100644
--- a/drivers/gpu/drm/i915/gvt/opregion.c
+++ b/drivers/gpu/drm/i915/gvt/opregion.c
@@ -222,7 +222,8 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	u8 *buf;
 	struct opregion_header *header;
 	struct vbt v;
-	const char opregion_signature[16] = OPREGION_SIGNATURE;
+
+	static_assert(sizeof(header->signature) == sizeof(OPREGION_SIGNATURE) - 1);
 
 	gvt_dbg_core("init vgpu%d opregion\n", vgpu->id);
 	vgpu_opregion(vgpu)->va = (void *)__get_free_pages(GFP_KERNEL |
@@ -236,8 +237,9 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	/* emulated opregion with VBT mailbox only */
 	buf = (u8 *)vgpu_opregion(vgpu)->va;
 	header = (struct opregion_header *)buf;
-	memcpy(header->signature, opregion_signature,
-	       sizeof(opregion_signature));
+
+	memcpy(header->signature, OPREGION_SIGNATURE, sizeof(header->signature));
+
 	header->size = 0x8;
 	header->opregion_ver = 0x02000000;
 	header->mboxes = MBOX_VBT;

base-commit: 98f47d0e9b8c557d3063d3ea661cbea1489af330
-- 
2.49.0


--VGW1Kzzgue6WQK1O--
