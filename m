Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9548485763A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF9A10EAAB;
	Fri, 16 Feb 2024 06:54:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="bvbK5G7W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C53810EAAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D2DC261EF4;
 Fri, 16 Feb 2024 06:54:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0B28C43390;
 Fri, 16 Feb 2024 06:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066475;
 bh=xZUGSW7pkokV4zLjCnd/mTKR/eQZWFNFZ3+e+td1jik=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bvbK5G7WtJpIv0+P1LBfllzinl78UnS7HDCkgrkAygGGKuAR/29I82hegp9YHjajH
 Cv8tWzg5QpvUoZnq320Qk1pz2MrsXgsvoJ6I/Nfb3jIhVUdhbHuAyU0rYcZVokHmUU
 bsrcuCtwJbUabfZDKwDbYAgHHcBciD58mAuwUrhP8ZefsvoBmecQzDzFP4YY+pUlmo
 kNHUDzI4my+B9ziMkXSVZB/xu5UJ9g9w+omKiX7cqFuy4EKX5iuMu3DKTMg1x3dMBe
 SV0Qxg64gnQKK0SqxBKXQg26s3ZetKrwOMWRHEeQCrpvyNHYAg8EHb6fFaTQ3G1lmb
 pG3wpv4WdY1rw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 20/21] drm/i915: remove i915_vma::obj_hash
Date: Fri, 16 Feb 2024 07:53:25 +0100
Message-ID: <20240216065326.6910-21-jirislaby@kernel.org>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240216065326.6910-1-jirislaby@kernel.org>
References: <20240216065326.6910-1-jirislaby@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

i915_vma::obj_hash was never used since its addition in commit
4ff4b44cbb70 (drm/i915: Store a direct lookup from object handle to
vma). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/i915_vma_types.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 64472b7f0e77..559de74d0b11 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -290,7 +290,6 @@ struct i915_vma {
 
 	struct list_head obj_link; /* Link in the object's VMA list */
 	struct rb_node obj_node;
-	struct hlist_node obj_hash;
 
 	/** This vma's place in the eviction list */
 	struct list_head evict_link;
-- 
2.43.1

