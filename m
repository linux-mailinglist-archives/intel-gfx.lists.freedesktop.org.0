Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DFB723B55
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 10:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3BA10E2CE;
	Tue,  6 Jun 2023 08:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0B910E05A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 08:22:13 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-30c4775d05bso4276757f8f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jun 2023 01:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1686039732; x=1688631732;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XlNLQJWAWvz38NdXMt5y5qJsDWrZdshzsnsP7Pjnj2g=;
 b=g0ld66AnZ5qEIlxCYJW04xs0rD3hAZwUTqWhnAS+uoZO2fLKWitJDkLv4Fa+W61nC6
 qIYEFcHodixbxqffGvKvjGMmHrqHgUxkeI3Q5f/t43Kol5vgzHh7kMtBvswdMUgcBey2
 7WsX4lVlsa/Ks+eMk2PiKvZNV/Ckr1UYVA4awXdJ+xEF8uTPNPtmFo4dgWH/In6sbNqW
 J2isty42kT8f86/EoE6JGA5CliTElhXmZilIYm4xFZ9eY5rm0YnX4tm0Xgxpz2F3ILHW
 RnYs5bgEhvNRHsVgqQ6t2OGqL3RFzX5qj21R9PRM5ZPkI7M8guUbcZSglCrNPhwa2Jzh
 szMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686039732; x=1688631732;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XlNLQJWAWvz38NdXMt5y5qJsDWrZdshzsnsP7Pjnj2g=;
 b=eeCzRHLFcFVOWqzKn0oygKaFkELzcQyjDlsxHx2f9vmZiepLGbwTY5B/IjHQPng+qb
 I1RTsWzcXQgcL46EO4QvxcAhsCdUtH3eJ/iskutTd80IAjPf/xYcgBfMj2UZPbdIQbV5
 Iy1YKpRidKXixAyaSJL2XNGdH1VZILWrMgKBoK9MINRkO8lbGe2dsNctxEy6wrXjbpRI
 SlfOGjk7GAlt+VxeQB3eHCAlo5CHiBDEvVggiISLqPnkVUAM6YzXKxUaPIUbqIKXhLYX
 Z8lpik3aMBZQZ5kCh99/GG4gmmhccpnNuq3aompDRjA1VOliILxyrVZO/G3I/iA3s+wF
 qF2w==
X-Gm-Message-State: AC+VfDwiZywRtEyJHCz3y5+f7wzUArFpU+WzR5qM7scFlBQv83a36HPx
 Mw4KMofPFOscPaAnt6BrIadVSQ==
X-Google-Smtp-Source: ACHHUZ6Q9maKkoIC1bVY1oVednk9d7CgN1Sha6DWf6Te7x8+ZZcW1c3aMfBpgWDDmz5oq+LO62QmkQ==
X-Received: by 2002:a5d:500a:0:b0:30a:d083:d22d with SMTP id
 e10-20020a5d500a000000b0030ad083d22dmr961922wrt.24.1686039732012; 
 Tue, 06 Jun 2023 01:22:12 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e3-20020adfef03000000b0030e52d4c1bcsm72778wro.71.2023.06.06.01.22.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jun 2023 01:22:10 -0700 (PDT)
Date: Tue, 6 Jun 2023 11:22:07 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <ZH7sr+Vs4zOQoouU@moroto>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This should return negative -EAGAIN instead of positive EAGAIN.

Fixes: e5e1e6d28ebc ("drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
index 579c0f5a1438..42218ae6ef13 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
@@ -202,7 +202,7 @@ intel_gsc_uc_heci_cmd_submit_nonpriv(struct intel_gsc_uc *gsc,
 			if (++trials < 10)
 				goto retry;
 			else
-				err = EAGAIN;
+				err = -EAGAIN;
 		}
 	}
 	i915_gem_ww_ctx_fini(&ww);
-- 
2.30.2

