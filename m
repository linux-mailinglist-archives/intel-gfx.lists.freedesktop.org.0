Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB471857625
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:53:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A315B10E38F;
	Fri, 16 Feb 2024 06:53:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="mLD6gqCd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C1010E38F
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1449061EFE;
 Fri, 16 Feb 2024 06:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BF4EC43390;
 Fri, 16 Feb 2024 06:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066421;
 bh=amudruWj9HLCey00JO7KSVlxOakx7qFxQBUB40Y74us=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mLD6gqCd+4bBf7thLiyk9DVfkCA8lRghiFBtNXzuEQ2h1aaq0lwuSuqaVrzZ9L4lw
 XWDIHc0l7tRFoASez4k/goMJyHoNQNMi7l6m70P8Hq+AAOQaD9QFZasMxiT0Vmxw4C
 aQHgZVvrnfHtLMLfXkht+oTJSGfrF2+UbkMSt8IZoQxq1xpMQz5ca+sNGsqNCtzfxA
 P6fO2HgYcv4oC/So+Gqxg6oWWXnp+nwBXMjx0FLDG4H84S/4oa2ab+ryhDsmdVC5aT
 7tU4WNDeciASWvRQRXWYv0sSOEJXWVY0QfzfAPpFl4UbyjYDcy2C5P1aNJPkLR42d8
 9xNhKMtdF4FpA==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/21] drm/i915: remove intel_dsi::{port_bits,hs}
Date: Fri, 16 Feb 2024 07:53:08 +0100
Message-ID: <20240216065326.6910-4-jirislaby@kernel.org>
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

intel_dsi::port_bits is unused since commit 369602d370fa (drm/i915: Add
support for port enable/disable for dual link configuration) and ::hs is
unused likely since commit 063c86f60ad4 (drm/i915/dsi: remove
intel_dsi_cmd.c and the unused functions therein). Drop them.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/display/intel_dsi.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 083390e5e442..e99c94edfaae 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -57,9 +57,6 @@ struct intel_dsi {
 		u16 phys;	/* ICL DSI */
 	};
 
-	/* if true, use HS mode, otherwise LP */
-	bool hs;
-
 	/* virtual channel */
 	int channel;
 
@@ -93,7 +90,6 @@ struct intel_dsi {
 	bool bgr_enabled;
 
 	u8 pixel_overlap;
-	u32 port_bits;
 	u32 bw_timer;
 	u32 dphy_reg;
 
-- 
2.43.1

