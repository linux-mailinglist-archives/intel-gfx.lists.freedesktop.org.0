Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE2D85762B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17FD10EA9B;
	Fri, 16 Feb 2024 06:53:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="X7EaO9HR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D324C10E433
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 47C3261EF4;
 Fri, 16 Feb 2024 06:53:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1FF7C433C7;
 Fri, 16 Feb 2024 06:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066438;
 bh=xAhGbARzs83EneUXBDZflPwViGnccMXkpjIP1CYeQhA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X7EaO9HRGWuJT9OQFFjFHOAEGCSPJNOQSEQW0OotFJMCh7gKgYIKkMgYhYMzAWg9v
 qfpU8ExWaTf2OiwDh6c53Ac7/1HYTXPhh8A4fkDq/nCoduEvxlSW5EwGNsEq5J8nZx
 2qpItkKEWsQ+JyzTFRXoPRNjaX061QSbmI4gQ7YKSR6YwV0Ex3jI3HNSIyEmJuFnL+
 B+mbyNcy95vWmTcsE140ztEKmi/9iquKXznkR58v1/wo+m7TpRalI4f/dqHyYkdMwk
 P8jXM54QskG/ecIOS/wDcQFhiw2xjKEM7sC2BYuIdwyRGOg02R29XGzsgOGMKQag2p
 8pfD4dIju9SlA==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/21] drm/i915: remove intel_guc::ads_engine_usage_size
Date: Fri, 16 Feb 2024 07:53:13 +0100
Message-ID: <20240216065326.6910-9-jirislaby@kernel.org>
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

intel_guc::ads_engine_usage_size was never used since its addition in
commit 77cdd054dd2c (drm/i915/pmu: Connect engine busyness stats from
GuC to pmu). Drop it.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 813cc888e6fa..be70c46604b4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -206,8 +206,6 @@ struct intel_guc {
 	u32 ads_golden_ctxt_size;
 	/** @ads_capture_size: size of register lists in the ADS used for error capture */
 	u32 ads_capture_size;
-	/** @ads_engine_usage_size: size of engine usage in the ADS */
-	u32 ads_engine_usage_size;
 
 	/** @lrc_desc_pool_v69: object allocated to hold the GuC LRC descriptor pool */
 	struct i915_vma *lrc_desc_pool_v69;
-- 
2.43.1

