Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 885BA85763B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D901610EAAF;
	Fri, 16 Feb 2024 06:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="KkCk/EdX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117F610EAAE
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:54:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8657861EF8;
 Fri, 16 Feb 2024 06:54:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57635C433F1;
 Fri, 16 Feb 2024 06:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066479;
 bh=Jq2+MsKda76OUscmqQ543pe72ImY+6RM/tfDpkyIMK8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KkCk/EdXUalSl8XNMQmbSKUjLRJjlybaY/6DisldmRz2BqNd/KYBYSArzer+GxFYD
 gNFrHIYOIOhy6Gut4k1WJb7w0/8JVT8GsaoTmyF2Whf7YgHTxpsDuamgEwPaiEWNYj
 pfpbk5AF/DejlPXJWyYzgw+lt0kqZkb1gIhAx2Kp+CBF7wmSLZbSAnmAMyqcdHhHRy
 QK5Fwg0R+6vuD/uj+IoEvpJ9ZdsO/MRaUmNVQ63cE1V6O43+DQ7/93WqbppPszqVdf
 +PQbtvX9kacjomPPNYXau7JpYJ03BnzzfaZSVg4tP9sf4UyIbmOWn50SFraGbN8aXQ
 D5KLtC6WYJ4Aw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 21/21] drm/i915: remove intel_memory_region_ops::flags
Date: Fri, 16 Feb 2024 07:53:26 +0100
Message-ID: <20240216065326.6910-22-jirislaby@kernel.org>
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

intel_memory_region_ops::flags was never used since its addition in
commit 232a6ebae419 (drm/i915: introduce intel_memory_region). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/intel_memory_region.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 40810cfb3fd9..8c927e303c4a 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -50,8 +50,6 @@ enum intel_region_id {
 		for_each_if((mr) = (i915)->mm.regions[id])
 
 struct intel_memory_region_ops {
-	unsigned int flags;
-
 	int (*init)(struct intel_memory_region *mem);
 	int (*release)(struct intel_memory_region *mem);
 
-- 
2.43.1

