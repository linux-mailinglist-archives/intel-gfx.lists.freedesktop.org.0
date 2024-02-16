Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C6085762A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:53:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1E110E432;
	Fri, 16 Feb 2024 06:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="M/L6YYR8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30BB610E432
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9986061F0C;
 Fri, 16 Feb 2024 06:53:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1638AC433C7;
 Fri, 16 Feb 2024 06:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066434;
 bh=OMwiUGzZhHIC9yKcus+0Ro/4xBOBkZGCI2WykwcHxec=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M/L6YYR8D3lmY2K9Pmpzprip1CG/noGquvl9fgyT0V71zUn97O8v6rljtSk+IB6+U
 I6MTnvOhmBybARhB1manPvdvX8CtCUXLKkouXx/66VqqGWwKhofjSM4HmVxm0SASjK
 0o/AbW2l+iWAo1n1e1s1qUp5WqKnjl7mFUQG787geHYKWyyFp7T8xYgDSNjBDZKS34
 rCyGoBCD6K2FeRfef2OBdrTBvhEJOdy+nhwxClQUssTqziUTPx6gmGXiW+WRXpMkIo
 URd4BsUqbJsoKZstUGmrXFEwBHvS8LDAMe91AO2SQeRsMo2LyLC1b+uBhFe9/Nq4o/
 79nI9WRxWH2fQ==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/21] drm/i915: remove intel_vbt_panel_data::edp::initialized
Date: Fri, 16 Feb 2024 07:53:12 +0100
Message-ID: <20240216065326.6910-8-jirislaby@kernel.org>
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

intel_vbt_panel_data::edp::initialized is not used since commit
9f0e7ff4b366 (drm/i915: fetch eDP configuration data from the VBT).
Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 01eb6e4e6049..e0d291dd7d2d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -327,7 +327,6 @@ struct intel_vbt_panel_data {
 		struct edp_power_seq pps;
 		u8 drrs_msa_timing_delay;
 		bool low_vswing;
-		bool initialized;
 		bool hobl;
 	} edp;
 
-- 
2.43.1

