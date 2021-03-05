Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C31732EBB4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 13:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83766EB7B;
	Fri,  5 Mar 2021 12:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654E66EB36;
 Fri,  5 Mar 2021 09:55:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2EF78601FE;
 Fri,  5 Mar 2021 09:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614938127;
 bh=BwyCyNwSVVjU+tWHfkQT/ZaAvB0AsGJsbbtQOdjgqb8=;
 h=Date:From:To:Cc:Subject:From;
 b=ghhgQCNuKaiTYdECadP13F7vB1UwGz4FAqW00mMklvxnRJ0zjKL51chPy8Ss5bcCb
 w9R+9rwc8AAyluugGvioCG22ChFtP6R5hjq4BfdT77vwi3MX56BQRTfyXxBbE05W15
 dIE4fRaWMHxT1NAxC38NmCbElME98QIzeZm0rKqBYDh6xlctt0yHzwfsED0MNBFquB
 WUKMo5TgUfcZTGHQOAVU6EgL8tHDXLsve2jZajtH2wlJtlnx8W8oZUwbH40AuZHl6Z
 TDu/Y9M1Od72iaVWXzpx1DlIlI06UDBtKKcqW5fkoQ9zICEgyTLmZKqrST3Ujb0EQ1
 hA6o830locIQQ==
Date: Fri, 5 Mar 2021 03:55:24 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20210305095524.GA141804@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Fri, 05 Mar 2021 12:56:44 +0000
Subject: [Intel-gfx] [PATCH RESEND][next] drm/i915/gem: Fix fall-through
 warnings for Clang
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
Cc: intel-gfx@lists.freedesktop.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a return statement instead of letting the code fall
through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index c2dba1cd9532..2a14a5c94a8a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -60,6 +60,7 @@ static void try_to_writeback(struct drm_i915_gem_object *obj,
 	switch (obj->mm.madv) {
 	case I915_MADV_DONTNEED:
 		i915_gem_object_truncate(obj);
+		return;
 	case __I915_MADV_PURGED:
 		return;
 	}
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
