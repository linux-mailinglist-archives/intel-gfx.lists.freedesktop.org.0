Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61007857624
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 07:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CAD810E374;
	Fri, 16 Feb 2024 06:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Y0o9/HY5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C86A10E374
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 06:53:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CE75061EF8;
 Fri, 16 Feb 2024 06:53:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07D32C433C7;
 Fri, 16 Feb 2024 06:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1708066418;
 bh=pXw6+3BPDvBumd0PwA+aAJatufGvT44a+p6B8ZAqPXg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y0o9/HY5F2PEyFbtUd5uHnUb/4bjqoiE6DU767MASXwLFxpanMtU0lFrsZqH5Gcd4
 bl31pIfTFA1GIkCS+R14e6FV07Q1o+mxoAJks1TRO/5lzULPAcdP2eyTcaj+sM/zdL
 N4DUmtOI535iN6br5CyWlxIWHauPYOu15R1JkWglfRgQURsD92lxkH0yjA0ukxa40x
 fjTvpX6mtC2IHEWFnt+Az3SDHBtGC4+q+hidXBhZcrL/ZtRo5+6Nzds08IkoYDmjKr
 Q/RR2v8rYegAQ8VsJ1k8b0BYpittp5xJW9yvbgiehpOARow5a90hLFVe4r413/KnAM
 HKTww1cbxWHRw==
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jani.nikula@linux.intel.com
Cc: linux-kernel@vger.kernel.org, "Jiri Slaby (SUSE)" <jirislaby@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/21] drm/i915: remove structs intel_vgpu_pipe_format and
 intel_vgpu_fb_format
Date: Fri, 16 Feb 2024 07:53:07 +0100
Message-ID: <20240216065326.6910-3-jirislaby@kernel.org>
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

Both struct intel_vgpu_pipe_format and intel_vgpu_fb_format were never
used since its addition in commit 9f31d1063b43 (drm/i915/gvt: Add
framebuffer decoder support). Drop them.

Found by https://github.com/jirislaby/clang-struct.

Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/gvt/fb_decoder.h | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.h b/drivers/gpu/drm/i915/gvt/fb_decoder.h
index 4eff44194439..fa6503900c84 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.h
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.h
@@ -152,17 +152,6 @@ struct intel_vgpu_cursor_plane_format {
 	u32	y_hot;		/* in pixels */
 };
 
-struct intel_vgpu_pipe_format {
-	struct intel_vgpu_primary_plane_format	primary;
-	struct intel_vgpu_sprite_plane_format	sprite;
-	struct intel_vgpu_cursor_plane_format	cursor;
-	enum DDI_PORT ddi_port;  /* the DDI port that pipe is connected to */
-};
-
-struct intel_vgpu_fb_format {
-	struct intel_vgpu_pipe_format	pipes[I915_MAX_PIPES];
-};
-
 int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_primary_plane_format *plane);
 int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
-- 
2.43.1

