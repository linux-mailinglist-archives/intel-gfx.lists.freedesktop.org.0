Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA3E3ABE32
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849F66E047;
	Thu, 17 Jun 2021 21:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EAA26E047
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:33:04 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id o21so3617546pll.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 14:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fS1IJ6TzwO6C+OzSRzcjdeJWlMUD6y1F2r8zjTclHRs=;
 b=jNVuog+4ffatfbk+9lGpyumsZBu+LAjqmSc9EpVk91rzyDnwBBGfOVIkhWfUdAGk0Z
 dQgPmqzpHQnzXIW7xBFIOJF8NkIT+e+r5VfM3+vfbZr/wZqAJL06aJhwldhuk9IoxOJI
 2GdW6WIIWznYq7o8TqUsBQFQYYpSPYoHxeV3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fS1IJ6TzwO6C+OzSRzcjdeJWlMUD6y1F2r8zjTclHRs=;
 b=T+hlyVxT8sfdpD02kTYdnuh/XYSzOa2JOt0S1/sJEe5pTIK1bOiuJGMPoy5WEkCHQ4
 WuKUYc7NyS74Naoy++Vw8DrMCd+DRWrIpwg1kObw2gsUk6JEazsMFNBKQ59dZSCHQLZg
 vKlI5Uq+NLu3vrHQnK7JEidhbwKx8Yqwivhrq9/BoeBFrV4hVC9Eff7CiR6rTr3I0lyP
 lqd4qvW3B7YH1U3eUn428dgDg/Vw8OtszkfOzxlOIPtcx5Y2jRyQwZMH9yyh6qK/sjLF
 5XUJq5DkrGCk2k55L8eCs5aDNUWYSpmLIpzc0QjjzuN8uFXXKr+ec8YDiwzGCN5BXE2p
 R9gw==
X-Gm-Message-State: AOAM530eFHoDbFHPugBniwGzPGf5cWXgVMrj4N1jxF+mhyqI+Gu//RwI
 s5An8FaWa2yGfL2CC87/4sneoA==
X-Google-Smtp-Source: ABdhPJxbWQKZLjs+rw64HWqBE7ko7yyXGjKQE49Pupm/Cr9/rCzk+XZ1xIl4rS1QaviH3cca3qmeRg==
X-Received: by 2002:a17:90b:1188:: with SMTP id
 gk8mr7335611pjb.138.1623965584305; 
 Thu, 17 Jun 2021 14:33:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j3sm6070951pfe.98.2021.06.17.14.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 14:33:03 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Jani Nikula <jani.nikula@intel.com>
Date: Thu, 17 Jun 2021 14:33:01 -0700
Message-Id: <20210617213301.1824728-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=159c28c0988fe3dd328148661b4874971d7d94b5;
 i=nJcT74OCxmrsu5fVKZDiyHDOdGmj9X8nJA8lBJQl7ec=;
 m=q1YJ++MeJDFcFl+Cf3nxp20mAdZ+kSexLTyJPU0JBMU=;
 p=LX6t+7jX+yB87pAiW5zd+P27H8PBFA92eg7Pfg2toyg=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026;
 b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmDLv40ACgkQiXL039xtwCZo4BAAg6l
 3wUzLYLJ3MHZ+4OqpqZBB9HzXAQSuTl+cIaRgktEYXmXjticTEsiuuLw2nE/0aSND5a9mT3YphdEV
 rcPQ9Kt6R9Ia+Std/Um8I17ooXyzeIp/2ADQZlTgAx9y+oJup9rbxQQiABcLOGZ4LZxzHxry0EsLH
 0ByltM1dqT3L9ocCQQYRZf1XXtULUHkHesRRTroCIJLhPff7+SkjYHjBv6tvPYBBb3I2o8gFIEyVx
 6/w+MGgxi9Tu7HEuxPquYv9a6JYyQ3aMfGhlj61tl5EHgQNh1AIS1Pp1DXprS11cT4y6FJw9PkwdJ
 GpmawGNzd+dYN/AMhv9vtlrgcIBxBwEWhglAJRnUgdeXRwDpgjdH+UU/0fC0w9I7A56fzZ1R1Jhsy
 TMo2IdjskPU+KKUso9RXlpD5HuLCX940sE33xkqJWhqzk2ATnQ0BMqNvrlm7yq1Z3YCkUlPG8Paii
 65fo7E/sT7PXgMOnu3YPqyLdbQBi9D/R9sfVp776P32vhUVtxiLM7P3MPf3rA70PlMnNGhylQxByx
 cj5wr63IbSqHlfRd4xK8NwuqbE6+GJBWKy2Jbg29RhcQptMHc49v8L7gyIiotHSieJJ7HgfH2W2MN
 8/zm5lbxidhpb6TkTotHkqmVuawhIt3OLogK1248NkFEZTaISnZhWycT7mWMAelk=
Subject: [Intel-gfx] [PATCH] drm/i915/display: Do not zero past
 infoframes.vsc
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
Cc: dri-devel@lists.freedesktop.org, Kees Cook <keescook@chromium.org>,
 David Airlie <airlied@linux.ie>, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Sean Paul <seanpaul@chromium.org>, intel-gfx@lists.freedesktop.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_dp_vsc_sdp_unpack() was using a memset() size (36, struct dp_sdp)
larger than the destination (24, struct drm_dp_vsc_sdp), clobbering
fields in struct intel_crtc_state after infoframes.vsc. Use the actual
target size for the memset().

Fixes: 1b404b7dbb10 ("drm/i915/dp: Read out DP SDPs")
Cc: stable@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5c9222283044..6cc03b9e4321 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2868,7 +2868,7 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 	if (size < sizeof(struct dp_sdp))
 		return -EINVAL;
 
-	memset(vsc, 0, size);
+	memset(vsc, 0, sizeof(*vsc));
 
 	if (sdp->sdp_header.HB0 != 0)
 		return -EINVAL;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
