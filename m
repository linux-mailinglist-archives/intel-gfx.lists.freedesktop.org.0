Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA22273C2AD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 23:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9894110E6C0;
	Fri, 23 Jun 2023 21:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551B310E6BB;
 Fri, 23 Jun 2023 21:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NBw5vlMSYDphuKB5VO9qUzXDvK0V7Xr95Q+k+nN/f84=;
 b=N3bMVT0Y+Wz5gL7ugjMaEKH0XK9iI00oy1rtPtin0vJJydKmTLv4sWIx
 f9+bOpvwsiKisFRe7CqTYof5bkdOr2VD7KZRPHvQT9tp4F5J5wmAQjGXP
 YzxOr1bylniwAlzHURkE8ebQwCSCW0fHOuPTsil5W0sJvnvzY6uhkWbNo 8=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.01,153,1684792800"; d="scan'208";a="59686174"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2023 23:15:12 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Zhenyu Wang <zhenyuw@linux.intel.com>
Date: Fri, 23 Jun 2023 23:14:47 +0200
Message-Id: <20230623211457.102544-17-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230623211457.102544-1-Julia.Lawall@inria.fr>
References: <20230623211457.102544-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/26] drm/i915/gvt: use array_size
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
Cc: keescook@chromium.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use array_size to protect against multiplication overflows.

The changes were done using the following Coccinelle semantic patch:

// <smpl>
@@
    expression E1, E2;
    constant C1, C2;
    identifier alloc = {vmalloc,vzalloc};
@@
    
(
      alloc(C1 * C2,...)
|
      alloc(
-           (E1) * (E2)
+           array_size(E1, E2)
      ,...)
)
// </smpl>

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/gpu/drm/i915/gvt/gtt.c |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 4ec85308379a..df52385ad436 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1969,14 +1969,16 @@ static struct intel_vgpu_mm *intel_vgpu_create_ggtt_mm(struct intel_vgpu *vgpu)
 		return ERR_PTR(-ENOMEM);
 	}
 
-	mm->ggtt_mm.host_ggtt_aperture = vzalloc((vgpu_aperture_sz(vgpu) >> PAGE_SHIFT) * sizeof(u64));
+	mm->ggtt_mm.host_ggtt_aperture =
+		vzalloc(array_size(vgpu_aperture_sz(vgpu) >> PAGE_SHIFT, sizeof(u64)));
 	if (!mm->ggtt_mm.host_ggtt_aperture) {
 		vfree(mm->ggtt_mm.virtual_ggtt);
 		vgpu_free_mm(mm);
 		return ERR_PTR(-ENOMEM);
 	}
 
-	mm->ggtt_mm.host_ggtt_hidden = vzalloc((vgpu_hidden_sz(vgpu) >> PAGE_SHIFT) * sizeof(u64));
+	mm->ggtt_mm.host_ggtt_hidden =
+		vzalloc(array_size(vgpu_hidden_sz(vgpu) >> PAGE_SHIFT, sizeof(u64)));
 	if (!mm->ggtt_mm.host_ggtt_hidden) {
 		vfree(mm->ggtt_mm.host_ggtt_aperture);
 		vfree(mm->ggtt_mm.virtual_ggtt);

