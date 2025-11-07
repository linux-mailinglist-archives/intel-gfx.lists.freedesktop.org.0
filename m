Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD64C46F77
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 14:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146C810E3BB;
	Mon, 10 Nov 2025 13:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="LcHLVMO3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com
 [209.85.221.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1769710E0F2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Nov 2025 16:43:04 +0000 (UTC)
Received: by mail-wr1-f73.google.com with SMTP id
 ffacd0b85a97d-4298da9fc21so445487f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Nov 2025 08:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1762533782; x=1763138582;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:from:subject:message-id
 :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
 bh=on8bewL1RI4N4l+sU7wrnJnMvJdHM/hSBq36uJM+rEs=;
 b=LcHLVMO3X9X9vMAOvIxKOrS2ok+Mv4D1u8pAl96e2TcPF4ealSRzTxJZWUs/+pw9w1
 3cjQqnQaO8pNJ/6N8+iaHpWJE6iKD4T0/3wcrto8aZmdhLfPgYTx/ntdvbJprg3gUlb8
 CFeShzklIcZeMU3gG1Bngy1n1/LVWpx3ZOC+L2e63RfvUpAT9nr4nsi0g5zSAU80EmVN
 UkR25QdWmc4hh2bAm33Dni8hCZUynEJQWG8TPJ/cjIBqkJspmWEyNuo0Anot/VF9hfES
 VV2BIsYTbmqtIA5HG0RJI2i90jqZzydBw8IGD7Yy4IIV+yrq9d1KnK/kK1a2NVyJDPdw
 P8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762533782; x=1763138582;
 h=content-transfer-encoding:cc:to:from:subject:message-id
 :mime-version:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=on8bewL1RI4N4l+sU7wrnJnMvJdHM/hSBq36uJM+rEs=;
 b=HYfNWeJLVfoBlPz0Y4Enl83LfAbNn4uas3PKI9TINEZE2hjmeqb7yi866XuB5Mce7m
 +1j7r3rLjTXbESdCV9H6HfeDRISgSHIwcfzqxjOTI/zzFoLMsoVYDlOsu4QDPyGl6BPO
 oeKrlBS1r3Di2rE0Rx1GEQgHIqTvUpmy9ItroouHBlW6zd49sNIcPs2B2Im3Bsj7ZYHt
 kK38N7G1kymzrbWVVTkHIWwOx5OaSY6iTh0jN832OjFPDCffVrg8g5OTaahx2ghtxmVQ
 xdm962MSC8gb/4ALJzwe3dW9YmEXIJhHDpprsknywx45mbZTp11v2KnmjfbPLhCtfTA0
 cbQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxZYCR0ytpk8Mlc7hUo9P7RAFWtF60OrlyCtz9MjJcavXdxVrib5qh/WHgPGznyXRt1w4ufyBWNfY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyx/ttZdrTXNl+fXq9B5JhGjN/Iwh79IVUfWye7eUk6f98JX5LL
 vHnPKAtNRwA3oBWczg5AzEgw2OvxRmzrjrJmEuFbq3TTNfJEeNpC/sZ1wq5ZOqtbsSRRT2W+JA=
 =
X-Google-Smtp-Source: AGHT+IErWQ/bAs6sgLKAGNRJ/4CQ20iQCILHo6B+nhBcFHGoZnZeYmzcBl/waJrrk8dDdmr4ZnLdN3g5
X-Received: from wrzd3.prod.google.com ([2002:a5d:6dc3:0:b0:428:4fa9:ac7d])
 (user=ardb job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6000:25c7:b0:426:d60f:746f
 with SMTP id ffacd0b85a97d-42ae5ac329dmr3140724f8f.30.1762533782550; Fri, 07
 Nov 2025 08:43:02 -0800 (PST)
Date: Fri,  7 Nov 2025 17:42:41 +0100
Mime-Version: 1.0
X-Developer-Key: i=ardb@kernel.org; a=openpgp;
 fpr=F43D03328115A198C90016883D200E9CA6329909
X-Developer-Signature: v=1; a=openpgp-sha256; l=2688; i=ardb@kernel.org;
 h=from:subject; bh=fwiBdr2UguIhUnvRRI7uFyScWi3GAhl3ehVZMRQfNi8=;
 b=owGbwMvMwCVmkMcZplerG8N4Wi2JIZNPsfETS8sT+bOnqzxSTleu8262DO08KLiGPZ7zEpuqR
 7BbP39HKQuDGBeDrJgii8Dsv+92np4oVes8SxZmDisTyBAGLk4BmMgVVoZ/qkd7Dn76GcJq1qrt
 +mN7veu1Dxn/uqTmP7376OzXF98PNjH8L3QIvnNR8eVcj1u3Clb/+Kx5addtUe/GiMOC95nOxq/
 dzwAA
X-Mailer: git-send-email 2.51.2.1041.gc1ab5b90ca-goog
Message-ID: <20251107164240.2023366-2-ardb+git@google.com>
Subject: [PATCH] drm/i195: Fix format string truncation warning
From: Ard Biesheuvel <ardb+git@google.com>
To: linux-kernel@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 10 Nov 2025 13:41:03 +0000
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

From: Ard Biesheuvel <ardb@kernel.org>

GCC notices that the 16-byte uabi_name field could theoretically be too
small for the formatted string if the instance number exceeds 100.

Given that there are apparently ABI concerns here, this is the minimal
fix that shuts up the compiler without changing the output or the
maximum length for existing values < 100.

drivers/gpu/drm/i915/intel_memory_region.c: In function =E2=80=98intel_memo=
ry_region_create=E2=80=99:
drivers/gpu/drm/i915/intel_memory_region.c:273:61: error: =E2=80=98%u=E2=80=
=99 directive output may be truncated writing between 1 and 5 bytes into a =
region of size between 3 and 11 [-Werror=3Dformat-truncation=3D]
  273 |         snprintf(mem->uabi_name, sizeof(mem->uabi_name), "%s%u",
      |                                                             ^~
drivers/gpu/drm/i915/intel_memory_region.c:273:58: note: directive argument=
 in the range [0, 65535]
  273 |         snprintf(mem->uabi_name, sizeof(mem->uabi_name), "%s%u",
      |                                                          ^~~~~~
drivers/gpu/drm/i915/intel_memory_region.c:273:9: note: =E2=80=98snprintf=
=E2=80=99 output between 7 and 19 bytes into a destination of size 16
  273 |         snprintf(mem->uabi_name, sizeof(mem->uabi_name), "%s%u",
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  274 |                  intel_memory_type_str(type), instance);
      |                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: David Airlie <airlied@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org

This is unlikely to be the right fix, but sending a wrong patch is
usually a better way to elicit a response than just sending a bug
report.

 drivers/gpu/drm/i915/intel_memory_region.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i=
915/intel_memory_region.c
index 59bd603e6deb..ad4afcf0c58a 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -271,7 +271,7 @@ intel_memory_region_create(struct drm_i915_private *i91=
5,
 	mem->instance =3D instance;
=20
 	snprintf(mem->uabi_name, sizeof(mem->uabi_name), "%s%u",
-		 intel_memory_type_str(type), instance);
+		 intel_memory_type_str(type), instance % 100);
=20
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
--=20
2.51.2.1041.gc1ab5b90ca-goog

