Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8E6XKb8DhWlL7gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 21:55:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3003AF7497
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 21:55:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05C710E097;
	Thu,  5 Feb 2026 20:55:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eV19hRYU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6D910E0F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Feb 2026 20:55:22 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id
 d75a77b69052e-5013d163e2fso179361cf.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Feb 2026 12:55:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770324921; cv=none;
 d=google.com; s=arc-20240605;
 b=bMQA57QpKjcGDvFfLARxlALik+m5lB7qx+kwcLhT9qZ+R9SA8vSt9I80l0k7TX/oYS
 peMaySTrTy9fJn1T+9t0noT8A22Y0iLQQ9NUzgZ3haqNhsw4xoq2wUPVZobN99IbNWHw
 QkXfr8WmcuEfc51+BSq5goZbNkvpZQagVxktqi1QZL29Z9zTabVH7b6rh2xrRw4/U89R
 5z5y9oouDDCJmVFVfbdU5UY4Ue63BJ3vkyaeHNEZ7LlSy6BteH0XAtOiQLkpTzatn3iN
 dPgBKfWxBMgmiMo1rmlXD9ePiK0gtzNIYQCgp53s6jGwYctm50Tva2N7TnzSM3tfFESj
 CyUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=duPAAUm1MH4VPBv7Khfy85QV68xSAmeq2clzCsqpsDM=;
 fh=15YTg3l9A4AGpHNuwQera18lrk+0+Z1o/RWlE+7wfL0=;
 b=jEhV1gcd4nTo/26Py0F9n+RdwqA65tHiHUvIkrgWoHUAotPIs7agrttDEvjqpXw6Dc
 E9jcjN2hoCbwB44n2MCzLsueLWuE3q2B0m7RP2sKaB8SsAbhJTUDVHfuFW1vevaWUXDN
 YUcqgteQmFi1EJpm1CtkWE0opjYUAn4Yk5BIe3EduJm+yjyNWUex3a2sK52A/z/J9m3I
 jFIPd+HEnGv7c/VMDr1JApfDIc4PY1+4TwJHqo5b8CO0YFIAoID+CDLKvTtzxctsNjUS
 U0KrLzQXT/X5d6o9Ha7Pekh3OkGAGvsPIITx5hPTdTMswYG9RwM9hNKaRcFYBpuXZQ1Z
 bISg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770324921; x=1770929721; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=duPAAUm1MH4VPBv7Khfy85QV68xSAmeq2clzCsqpsDM=;
 b=eV19hRYU/dcVgiCuHFAtoHlKanGD4oRrab5lVPK4tdAlnpE/5Y4zJaaEO07XDvwwH2
 h4i9/isFyIcqqDbjC5RDf0RCjCIYCp1jke9iLghlkmpJxZhuIAoFeBPxDglXhRQKZ6g9
 ik2jy7IGj7mCr710o/0CSFxvvnb1i3GLYc30CdLPPjvSgoXdK0lRtexJTheplkmeKIdv
 sQNpDZTbgrmoVCxg+VMnbnOKAF08xjer5VSFyUEhepFsKiF/vQ5monH/l0dv9IBvyOD3
 CfiPCw5WEym97tM2v+ONNB7JuHpMv5qIYTXL8JJ3hCEISadJbYfmLjX/7gyy/2N315BB
 bAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770324921; x=1770929721;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=duPAAUm1MH4VPBv7Khfy85QV68xSAmeq2clzCsqpsDM=;
 b=QBXI3Lc/qlqYKJ3tuyT9+LKOth+/af9vXslG7CyPOXjiqjAt89g4ePQbdjr30IRMV9
 VljpXstf0Yu5hfLw4IVIEq6tL/T6KuS49Y7DFVcEcXkXBWTfelt54sZwMocYsZmhnxHv
 QFw4ITgI7HDTMMO9M8eXtUVr39JrfwlgZrxxyy9NuH5+l+/VoGIoGEHV71ykpnvizEsp
 itOcB5MWVwpBTmDstYCXFHlkXDTNlBhMzvHv2XJl4I7LAg04qfFOU5CqPEcvFPlCawaq
 hZXtMEwyY3JmxiGSMAHCOgf345yjkmQzzT3Xx6AV4NdaIkvjuw5zV+M4GXEsGoRONl0A
 Qexg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgXXy9zlHl/hAW2rCj9OLjGcSojBfx9A0X20QQKUHXKFmy2IJQGbMyR5DGNQxcXDat0FjdBHvzRbY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxnyfmnlbf6Xy0SnzKMszY1nlgAtNR0V0IvK+dIMYyn5EKbwtmp
 sICwc/YDpgO/4cPUlwKrnCCVnlceUX/lh/WtqWoZb/7Xr9Xj1i6Q4u2yOa9ca1Fe7C/tgHcBkYz
 3dM65ioTNRmFnMsgdp2/Q0NfCmGh87gg=
X-Gm-Gg: AZuq6aLnxuK4sXQsyv15VBgAZHbLoDptNr1G+lA7ymeIimCcuVkGzFdaEkDvPmInZiJ
 nlRw2/wrHCLvHOHpZUG3s2rGeezK8TWEW4P5ULu67yGmgpRlsygTUmTA+6vnMVyPci4lK12/QPp
 2zzTcuiqjDDptzlwp0NJ8v2bQ+rXu7xwVzMQXo3/ElLfGmLTqapIlU+OZ05Jz1VAeGUnXEluAnW
 Zw+/BWHIo4Tp/Wq96P1dK05Lo0pEAiP52vreUruFaMAU1GAIRdhJIn2RsNH/cysui4sLU2ihXmk
 vB3Czgz+PcABogri7V2FSw35LBbBlWJ5BxM4j9AZLe9BSp848KIqSSDtWxr+GAy92w==
X-Received: by 2002:ac8:7d8e:0:b0:502:9cf4:c275 with SMTP id
 d75a77b69052e-50639950be4mr7138471cf.36.1770324920822; Thu, 05 Feb 2026
 12:55:20 -0800 (PST)
MIME-Version: 1.0
References: <20260120204303.3229303-1-joelagnelf@nvidia.com>
 <20260120204303.3229303-3-joelagnelf@nvidia.com>
In-Reply-To: <20260120204303.3229303-3-joelagnelf@nvidia.com>
From: Dave Airlie <airlied@gmail.com>
Date: Fri, 6 Feb 2026 06:55:06 +1000
X-Gm-Features: AZwV_QhCu4XyQd8Xzs10HC3TqP8dAoda1d7qZuBcUYa2cpAKkk9LlAjGydJ5MWs
Message-ID: <CAPM=9tz5iXoFQ3+4hPFW+tZCL2zWe0WJ07-oFkP8TNVL_J_SSg@mail.gmail.com>
Subject: Re: [PATCH RFC v6 02/26] gpu: Move DRM buddy allocator one level up
To: Joel Fernandes <joelagnelf@nvidia.com>
Cc: linux-kernel@vger.kernel.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, 
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>, 
 Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Helge Deller <deller@gmx.de>, Danilo Krummrich <dakr@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, 
 Trevor Gross <tmgross@umich.edu>, John Hubbard <jhubbard@nvidia.com>, 
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, 
 Alexandre Courbot <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>, 
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Alexey Ivanov <alexeyi@nvidia.com>, 
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>, 
 Elle Rhumsaa <elle@weathered-steel.dev>,
 Daniel Almeida <daniel.almeida@collabora.com>, 
 joel@joelfernandes.org, nouveau@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, 
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,google.com,gmail.com,garyguo.net,protonmail.com,umich.edu,nvidia.com,weathered-steel.dev,collabora.com,joelfernandes.org,lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:joelagnelf@nvidia.com,m:linux-kernel@vger.kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:simona@ffwll.ch,m:corbet@lwn.net,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:lucas.demarchi@intel.com,m:thomas.hellstrom@linux.intel.com,m:deller@gmx.de,m:dakr@kernel.org,m:aliceryhl@google.com,m:ojeda@kernel.org,m:alex.gaynor@gmail.com,m:boqun.feng@gmail.com,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:tmgross@umich.edu,m:jhubbard@nvidia.com,m:apopple@nvidia.com,m:ttabi@nvidia.com,m:epeer@nvidia.com,m:acourbot@nvidia.com,m:arighi@nvidia.com,m:aritger@nvidia.com,m:zhiw@nvidia.com,m:alexeyi@nvidia.com,m:balbirs@nvidia.com,m:phasta@kernel.org,m:elle@weathered-steel.dev,m:daniel.almeida@col
 labora.com,m:joel@joelfernandes.org,m:nouveau@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:linux-doc@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-fbdev@vger.kernel.org,m:alexgaynor@gmail.com,m:boqunfeng@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[51];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3003AF7497
X-Rspamd-Action: no action

On Wed, 21 Jan 2026 at 06:44, Joel Fernandes <joelagnelf@nvidia.com> wrote:
>
> Move the DRM buddy allocator one level up so that it can be used by GPU
> drivers (example, nova-core) that have usecases other than DRM (such as
> VFIO vGPU support). Modify the API, structures and Kconfigs to use
> "gpu_buddy" terminology. Adapt the drivers and tests to use the new API.
>
> The commit cannot be split due to bisectability, however no functional
> change is intended. Verified by running K-UNIT tests and build tested
> various configurations.
>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

I suggested this and think it's a good idea.

Reviewed-by: Dave Airlie <airlied@redhat.com>


> ---
>  Documentation/gpu/drm-mm.rst                  |   10 +-
>  drivers/gpu/Kconfig                           |   13 +
>  drivers/gpu/Makefile                          |    2 +
>  drivers/gpu/buddy.c                           | 1310 +++++++++++++++++
>  drivers/gpu/drm/Kconfig                       |    1 +
>  drivers/gpu/drm/Kconfig.debug                 |    4 +-
>  drivers/gpu/drm/amd/amdgpu/Kconfig            |    1 +
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c       |    2 +-
>  .../gpu/drm/amd/amdgpu/amdgpu_res_cursor.h    |   12 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c  |   80 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.h  |   20 +-
>  drivers/gpu/drm/drm_buddy.c                   | 1284 +---------------
>  drivers/gpu/drm/i915/Kconfig                  |    1 +
>  drivers/gpu/drm/i915/i915_scatterlist.c       |   10 +-
>  drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |   55 +-
>  drivers/gpu/drm/i915/i915_ttm_buddy_manager.h |    6 +-
>  .../drm/i915/selftests/intel_memory_region.c  |   20 +-
>  drivers/gpu/drm/tests/Makefile                |    1 -
>  .../gpu/drm/ttm/tests/ttm_bo_validate_test.c  |    5 +-
>  drivers/gpu/drm/ttm/tests/ttm_mock_manager.c  |   18 +-
>  drivers/gpu/drm/ttm/tests/ttm_mock_manager.h  |    4 +-
>  drivers/gpu/drm/xe/Kconfig                    |    1 +
>  drivers/gpu/drm/xe/xe_res_cursor.h            |   34 +-
>  drivers/gpu/drm/xe/xe_svm.c                   |   12 +-
>  drivers/gpu/drm/xe/xe_ttm_vram_mgr.c          |   73 +-
>  drivers/gpu/drm/xe/xe_ttm_vram_mgr_types.h    |    4 +-
>  drivers/gpu/tests/Makefile                    |    3 +
>  .../gpu_buddy_test.c}                         |  390 ++---
>  drivers/gpu/tests/gpu_random.c                |   48 +
>  drivers/gpu/tests/gpu_random.h                |   28 +
>  drivers/video/Kconfig                         |    2 +
>  include/drm/drm_buddy.h                       |  163 +-
>  include/linux/gpu_buddy.h                     |  177 +++
>  33 files changed, 1995 insertions(+), 1799 deletions(-)
>  create mode 100644 drivers/gpu/Kconfig
>  create mode 100644 drivers/gpu/buddy.c
>  create mode 100644 drivers/gpu/tests/Makefile
>  rename drivers/gpu/{drm/tests/drm_buddy_test.c =3D> tests/gpu_buddy_test=
.c} (68%)
>  create mode 100644 drivers/gpu/tests/gpu_random.c
>  create mode 100644 drivers/gpu/tests/gpu_random.h
>  create mode 100644 include/linux/gpu_buddy.h
>
> diff --git a/Documentation/gpu/drm-mm.rst b/Documentation/gpu/drm-mm.rst
> index d55751cad67c..8e0d31230b29 100644
> --- a/Documentation/gpu/drm-mm.rst
> +++ b/Documentation/gpu/drm-mm.rst
> @@ -509,8 +509,14 @@ DRM GPUVM Function References
>  DRM Buddy Allocator
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> -DRM Buddy Function References
> ------------------------------
> +Buddy Allocator Function References (GPU buddy)
> +-----------------------------------------------
> +
> +.. kernel-doc:: drivers/gpu/buddy.c
> +   :export:
> +
> +DRM Buddy Specific Logging Function References
> +----------------------------------------------
>
>  .. kernel-doc:: drivers/gpu/drm/drm_buddy.c
>     :export:
> diff --git a/drivers/gpu/Kconfig b/drivers/gpu/Kconfig
> new file mode 100644
> index 000000000000..22dd29cd50b5
> --- /dev/null
> +++ b/drivers/gpu/Kconfig
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +config GPU_BUDDY
> +       bool
> +       help
> +         A page based buddy allocator for GPU memory.
> +
> +config GPU_BUDDY_KUNIT_TEST
> +       tristate "KUnit tests for GPU buddy allocator" if !KUNIT_ALL_TEST=
S
> +       depends on GPU_BUDDY && KUNIT
> +       default KUNIT_ALL_TESTS
> +       help
> +         KUnit tests for the GPU buddy allocator.
> diff --git a/drivers/gpu/Makefile b/drivers/gpu/Makefile
> index 36a54d456630..5063caccabdf 100644
> --- a/drivers/gpu/Makefile
> +++ b/drivers/gpu/Makefile
> @@ -6,3 +6,5 @@ obj-y                   +=3D host1x/ drm/ vga/
>  obj-$(CONFIG_IMX_IPUV3_CORE)   +=3D ipu-v3/
>  obj-$(CONFIG_TRACE_GPU_MEM)            +=3D trace/
>  obj-$(CONFIG_NOVA_CORE)                +=3D nova-core/
> +obj-$(CONFIG_GPU_BUDDY)                +=3D buddy.o
> +obj-y                          +=3D tests/
> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
> new file mode 100644
> index 000000000000..1347c0436617
> --- /dev/null
> +++ b/drivers/gpu/buddy.c
> @@ -0,0 +1,1310 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +#include <kunit/test-bug.h>
> +
> +#include <linux/export.h>
> +#include <linux/gpu_buddy.h>
> +#include <linux/kmemleak.h>
> +#include <linux/module.h>
> +#include <linux/sizes.h>
> +
> +static struct kmem_cache *slab_blocks;
> +
> +static struct gpu_buddy_block *gpu_block_alloc(struct gpu_buddy *mm,
> +                                              struct gpu_buddy_block *pa=
rent,
> +                                              unsigned int order,
> +                                              u64 offset)
> +{
> +       struct gpu_buddy_block *block;
> +
> +       BUG_ON(order > GPU_BUDDY_MAX_ORDER);
> +
> +       block =3D kmem_cache_zalloc(slab_blocks, GFP_KERNEL);
> +       if (!block)
> +               return NULL;
> +
> +       block->header =3D offset;
> +       block->header |=3D order;
> +       block->parent =3D parent;
> +
> +       RB_CLEAR_NODE(&block->rb);
> +
> +       BUG_ON(block->header & GPU_BUDDY_HEADER_UNUSED);
> +       return block;
> +}
> +
> +static void gpu_block_free(struct gpu_buddy *mm,
> +                          struct gpu_buddy_block *block)
> +{
> +       kmem_cache_free(slab_blocks, block);
> +}
> +
> +static enum gpu_buddy_free_tree
> +get_block_tree(struct gpu_buddy_block *block)
> +{
> +       return gpu_buddy_block_is_clear(block) ?
> +              GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
> +}
> +
> +static struct gpu_buddy_block *
> +rbtree_get_free_block(const struct rb_node *node)
> +{
> +       return node ? rb_entry(node, struct gpu_buddy_block, rb) : NULL;
> +}
> +
> +static struct gpu_buddy_block *
> +rbtree_last_free_block(struct rb_root *root)
> +{
> +       return rbtree_get_free_block(rb_last(root));
> +}
> +
> +static bool rbtree_is_empty(struct rb_root *root)
> +{
> +       return RB_EMPTY_ROOT(root);
> +}
> +
> +static bool gpu_buddy_block_offset_less(const struct gpu_buddy_block *bl=
ock,
> +                                       const struct gpu_buddy_block *nod=
e)
> +{
> +       return gpu_buddy_block_offset(block) < gpu_buddy_block_offset(nod=
e);
> +}
> +
> +static bool rbtree_block_offset_less(struct rb_node *block,
> +                                    const struct rb_node *node)
> +{
> +       return gpu_buddy_block_offset_less(rbtree_get_free_block(block),
> +                                          rbtree_get_free_block(node));
> +}
> +
> +static void rbtree_insert(struct gpu_buddy *mm,
> +                         struct gpu_buddy_block *block,
> +                         enum gpu_buddy_free_tree tree)
> +{
> +       rb_add(&block->rb,
> +              &mm->free_trees[tree][gpu_buddy_block_order(block)],
> +              rbtree_block_offset_less);
> +}
> +
> +static void rbtree_remove(struct gpu_buddy *mm,
> +                         struct gpu_buddy_block *block)
> +{
> +       unsigned int order =3D gpu_buddy_block_order(block);
> +       enum gpu_buddy_free_tree tree;
> +       struct rb_root *root;
> +
> +       tree =3D get_block_tree(block);
> +       root =3D &mm->free_trees[tree][order];
> +
> +       rb_erase(&block->rb, root);
> +       RB_CLEAR_NODE(&block->rb);
> +}
> +
> +static void clear_reset(struct gpu_buddy_block *block)
> +{
> +       block->header &=3D ~GPU_BUDDY_HEADER_CLEAR;
> +}
> +
> +static void mark_cleared(struct gpu_buddy_block *block)
> +{
> +       block->header |=3D GPU_BUDDY_HEADER_CLEAR;
> +}
> +
> +static void mark_allocated(struct gpu_buddy *mm,
> +                          struct gpu_buddy_block *block)
> +{
> +       block->header &=3D ~GPU_BUDDY_HEADER_STATE;
> +       block->header |=3D GPU_BUDDY_ALLOCATED;
> +
> +       rbtree_remove(mm, block);
> +}
> +
> +static void mark_free(struct gpu_buddy *mm,
> +                     struct gpu_buddy_block *block)
> +{
> +       enum gpu_buddy_free_tree tree;
> +
> +       block->header &=3D ~GPU_BUDDY_HEADER_STATE;
> +       block->header |=3D GPU_BUDDY_FREE;
> +
> +       tree =3D get_block_tree(block);
> +       rbtree_insert(mm, block, tree);
> +}
> +
> +static void mark_split(struct gpu_buddy *mm,
> +                      struct gpu_buddy_block *block)
> +{
> +       block->header &=3D ~GPU_BUDDY_HEADER_STATE;
> +       block->header |=3D GPU_BUDDY_SPLIT;
> +
> +       rbtree_remove(mm, block);
> +}
> +
> +static inline bool overlaps(u64 s1, u64 e1, u64 s2, u64 e2)
> +{
> +       return s1 <=3D e2 && e1 >=3D s2;
> +}
> +
> +static inline bool contains(u64 s1, u64 e1, u64 s2, u64 e2)
> +{
> +       return s1 <=3D s2 && e1 >=3D e2;
> +}
> +
> +static struct gpu_buddy_block *
> +__get_buddy(struct gpu_buddy_block *block)
> +{
> +       struct gpu_buddy_block *parent;
> +
> +       parent =3D block->parent;
> +       if (!parent)
> +               return NULL;
> +
> +       if (parent->left =3D=3D block)
> +               return parent->right;
> +
> +       return parent->left;
> +}
> +
> +static unsigned int __gpu_buddy_free(struct gpu_buddy *mm,
> +                                    struct gpu_buddy_block *block,
> +                                    bool force_merge)
> +{
> +       struct gpu_buddy_block *parent;
> +       unsigned int order;
> +
> +       while ((parent =3D block->parent)) {
> +               struct gpu_buddy_block *buddy;
> +
> +               buddy =3D __get_buddy(block);
> +
> +               if (!gpu_buddy_block_is_free(buddy))
> +                       break;
> +
> +               if (!force_merge) {
> +                       /*
> +                        * Check the block and its buddy clear state and =
exit
> +                        * the loop if they both have the dissimilar stat=
e.
> +                        */
> +                       if (gpu_buddy_block_is_clear(block) !=3D
> +                           gpu_buddy_block_is_clear(buddy))
> +                               break;
> +
> +                       if (gpu_buddy_block_is_clear(block))
> +                               mark_cleared(parent);
> +               }
> +
> +               rbtree_remove(mm, buddy);
> +               if (force_merge && gpu_buddy_block_is_clear(buddy))
> +                       mm->clear_avail -=3D gpu_buddy_block_size(mm, bud=
dy);
> +
> +               gpu_block_free(mm, block);
> +               gpu_block_free(mm, buddy);
> +
> +               block =3D parent;
> +       }
> +
> +       order =3D gpu_buddy_block_order(block);
> +       mark_free(mm, block);
> +
> +       return order;
> +}
> +
> +static int __force_merge(struct gpu_buddy *mm,
> +                        u64 start,
> +                        u64 end,
> +                        unsigned int min_order)
> +{
> +       unsigned int tree, order;
> +       int i;
> +
> +       if (!min_order)
> +               return -ENOMEM;
> +
> +       if (min_order > mm->max_order)
> +               return -EINVAL;
> +
> +       for_each_free_tree(tree) {
> +               for (i =3D min_order - 1; i >=3D 0; i--) {
> +                       struct rb_node *iter =3D rb_last(&mm->free_trees[=
tree][i]);
> +
> +                       while (iter) {
> +                               struct gpu_buddy_block *block, *buddy;
> +                               u64 block_start, block_end;
> +
> +                               block =3D rbtree_get_free_block(iter);
> +                               iter =3D rb_prev(iter);
> +
> +                               if (!block || !block->parent)
> +                                       continue;
> +
> +                               block_start =3D gpu_buddy_block_offset(bl=
ock);
> +                               block_end =3D block_start + gpu_buddy_blo=
ck_size(mm, block) - 1;
> +
> +                               if (!contains(start, end, block_start, bl=
ock_end))
> +                                       continue;
> +
> +                               buddy =3D __get_buddy(block);
> +                               if (!gpu_buddy_block_is_free(buddy))
> +                                       continue;
> +
> +                               WARN_ON(gpu_buddy_block_is_clear(block) =
=3D=3D
> +                                       gpu_buddy_block_is_clear(buddy));
> +
> +                               /*
> +                                * Advance to the next node when the curr=
ent node is the buddy,
> +                                * as freeing the block will also remove =
its buddy from the tree.
> +                                */
> +                               if (iter =3D=3D &buddy->rb)
> +                                       iter =3D rb_prev(iter);
> +
> +                               rbtree_remove(mm, block);
> +                               if (gpu_buddy_block_is_clear(block))
> +                                       mm->clear_avail -=3D gpu_buddy_bl=
ock_size(mm, block);
> +
> +                               order =3D __gpu_buddy_free(mm, block, tru=
e);
> +                               if (order >=3D min_order)
> +                                       return 0;
> +                       }
> +               }
> +       }
> +
> +       return -ENOMEM;
> +}
> +
> +/**
> + * gpu_buddy_init - init memory manager
> + *
> + * @mm: GPU buddy manager to initialize
> + * @size: size in bytes to manage
> + * @chunk_size: minimum page size in bytes for our allocations
> + *
> + * Initializes the memory manager and its resources.
> + *
> + * Returns:
> + * 0 on success, error code on failure.
> + */
> +int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size)
> +{
> +       unsigned int i, j, root_count =3D 0;
> +       u64 offset =3D 0;
> +
> +       if (size < chunk_size)
> +               return -EINVAL;
> +
> +       if (chunk_size < SZ_4K)
> +               return -EINVAL;
> +
> +       if (!is_power_of_2(chunk_size))
> +               return -EINVAL;
> +
> +       size =3D round_down(size, chunk_size);
> +
> +       mm->size =3D size;
> +       mm->avail =3D size;
> +       mm->clear_avail =3D 0;
> +       mm->chunk_size =3D chunk_size;
> +       mm->max_order =3D ilog2(size) - ilog2(chunk_size);
> +
> +       BUG_ON(mm->max_order > GPU_BUDDY_MAX_ORDER);
> +
> +       mm->free_trees =3D kmalloc_array(GPU_BUDDY_MAX_FREE_TREES,
> +                                      sizeof(*mm->free_trees),
> +                                      GFP_KERNEL);
> +       if (!mm->free_trees)
> +               return -ENOMEM;
> +
> +       for_each_free_tree(i) {
> +               mm->free_trees[i] =3D kmalloc_array(mm->max_order + 1,
> +                                                 sizeof(struct rb_root),
> +                                                 GFP_KERNEL);
> +               if (!mm->free_trees[i])
> +                       goto out_free_tree;
> +
> +               for (j =3D 0; j <=3D mm->max_order; ++j)
> +                       mm->free_trees[i][j] =3D RB_ROOT;
> +       }
> +
> +       mm->n_roots =3D hweight64(size);
> +
> +       mm->roots =3D kmalloc_array(mm->n_roots,
> +                                 sizeof(struct gpu_buddy_block *),
> +                                 GFP_KERNEL);
> +       if (!mm->roots)
> +               goto out_free_tree;
> +
> +       /*
> +        * Split into power-of-two blocks, in case we are given a size th=
at is
> +        * not itself a power-of-two.
> +        */
> +       do {
> +               struct gpu_buddy_block *root;
> +               unsigned int order;
> +               u64 root_size;
> +
> +               order =3D ilog2(size) - ilog2(chunk_size);
> +               root_size =3D chunk_size << order;
> +
> +               root =3D gpu_block_alloc(mm, NULL, order, offset);
> +               if (!root)
> +                       goto out_free_roots;
> +
> +               mark_free(mm, root);
> +
> +               BUG_ON(root_count > mm->max_order);
> +               BUG_ON(gpu_buddy_block_size(mm, root) < chunk_size);
> +
> +               mm->roots[root_count] =3D root;
> +
> +               offset +=3D root_size;
> +               size -=3D root_size;
> +               root_count++;
> +       } while (size);
> +
> +       return 0;
> +
> +out_free_roots:
> +       while (root_count--)
> +               gpu_block_free(mm, mm->roots[root_count]);
> +       kfree(mm->roots);
> +out_free_tree:
> +       while (i--)
> +               kfree(mm->free_trees[i]);
> +       kfree(mm->free_trees);
> +       return -ENOMEM;
> +}
> +EXPORT_SYMBOL(gpu_buddy_init);
> +
> +/**
> + * gpu_buddy_fini - tear down the memory manager
> + *
> + * @mm: GPU buddy manager to free
> + *
> + * Cleanup memory manager resources and the freetree
> + */
> +void gpu_buddy_fini(struct gpu_buddy *mm)
> +{
> +       u64 root_size, size, start;
> +       unsigned int order;
> +       int i;
> +
> +       size =3D mm->size;
> +
> +       for (i =3D 0; i < mm->n_roots; ++i) {
> +               order =3D ilog2(size) - ilog2(mm->chunk_size);
> +               start =3D gpu_buddy_block_offset(mm->roots[i]);
> +               __force_merge(mm, start, start + size, order);
> +
> +               if (WARN_ON(!gpu_buddy_block_is_free(mm->roots[i])))
> +                       kunit_fail_current_test("buddy_fini() root");
> +
> +               gpu_block_free(mm, mm->roots[i]);
> +
> +               root_size =3D mm->chunk_size << order;
> +               size -=3D root_size;
> +       }
> +
> +       WARN_ON(mm->avail !=3D mm->size);
> +
> +       for_each_free_tree(i)
> +               kfree(mm->free_trees[i]);
> +       kfree(mm->roots);
> +}
> +EXPORT_SYMBOL(gpu_buddy_fini);
> +
> +static int split_block(struct gpu_buddy *mm,
> +                      struct gpu_buddy_block *block)
> +{
> +       unsigned int block_order =3D gpu_buddy_block_order(block) - 1;
> +       u64 offset =3D gpu_buddy_block_offset(block);
> +
> +       BUG_ON(!gpu_buddy_block_is_free(block));
> +       BUG_ON(!gpu_buddy_block_order(block));
> +
> +       block->left =3D gpu_block_alloc(mm, block, block_order, offset);
> +       if (!block->left)
> +               return -ENOMEM;
> +
> +       block->right =3D gpu_block_alloc(mm, block, block_order,
> +                                      offset + (mm->chunk_size << block_=
order));
> +       if (!block->right) {
> +               gpu_block_free(mm, block->left);
> +               return -ENOMEM;
> +       }
> +
> +       mark_split(mm, block);
> +
> +       if (gpu_buddy_block_is_clear(block)) {
> +               mark_cleared(block->left);
> +               mark_cleared(block->right);
> +               clear_reset(block);
> +       }
> +
> +       mark_free(mm, block->left);
> +       mark_free(mm, block->right);
> +
> +       return 0;
> +}
> +
> +/**
> + * gpu_get_buddy - get buddy address
> + *
> + * @block: GPU buddy block
> + *
> + * Returns the corresponding buddy block for @block, or NULL
> + * if this is a root block and can't be merged further.
> + * Requires some kind of locking to protect against
> + * any concurrent allocate and free operations.
> + */
> +struct gpu_buddy_block *
> +gpu_get_buddy(struct gpu_buddy_block *block)
> +{
> +       return __get_buddy(block);
> +}
> +EXPORT_SYMBOL(gpu_get_buddy);
> +
> +/**
> + * gpu_buddy_reset_clear - reset blocks clear state
> + *
> + * @mm: GPU buddy manager
> + * @is_clear: blocks clear state
> + *
> + * Reset the clear state based on @is_clear value for each block
> + * in the freetree.
> + */
> +void gpu_buddy_reset_clear(struct gpu_buddy *mm, bool is_clear)
> +{
> +       enum gpu_buddy_free_tree src_tree, dst_tree;
> +       u64 root_size, size, start;
> +       unsigned int order;
> +       int i;
> +
> +       size =3D mm->size;
> +       for (i =3D 0; i < mm->n_roots; ++i) {
> +               order =3D ilog2(size) - ilog2(mm->chunk_size);
> +               start =3D gpu_buddy_block_offset(mm->roots[i]);
> +               __force_merge(mm, start, start + size, order);
> +
> +               root_size =3D mm->chunk_size << order;
> +               size -=3D root_size;
> +       }
> +
> +       src_tree =3D is_clear ? GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TR=
EE;
> +       dst_tree =3D is_clear ? GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TR=
EE;
> +
> +       for (i =3D 0; i <=3D mm->max_order; ++i) {
> +               struct rb_root *root =3D &mm->free_trees[src_tree][i];
> +               struct gpu_buddy_block *block, *tmp;
> +
> +               rbtree_postorder_for_each_entry_safe(block, tmp, root, rb=
) {
> +                       rbtree_remove(mm, block);
> +                       if (is_clear) {
> +                               mark_cleared(block);
> +                               mm->clear_avail +=3D gpu_buddy_block_size=
(mm, block);
> +                       } else {
> +                               clear_reset(block);
> +                               mm->clear_avail -=3D gpu_buddy_block_size=
(mm, block);
> +                       }
> +
> +                       rbtree_insert(mm, block, dst_tree);
> +               }
> +       }
> +}
> +EXPORT_SYMBOL(gpu_buddy_reset_clear);
> +
> +/**
> + * gpu_buddy_free_block - free a block
> + *
> + * @mm: GPU buddy manager
> + * @block: block to be freed
> + */
> +void gpu_buddy_free_block(struct gpu_buddy *mm,
> +                         struct gpu_buddy_block *block)
> +{
> +       BUG_ON(!gpu_buddy_block_is_allocated(block));
> +       mm->avail +=3D gpu_buddy_block_size(mm, block);
> +       if (gpu_buddy_block_is_clear(block))
> +               mm->clear_avail +=3D gpu_buddy_block_size(mm, block);
> +
> +       __gpu_buddy_free(mm, block, false);
> +}
> +EXPORT_SYMBOL(gpu_buddy_free_block);
> +
> +static void __gpu_buddy_free_list(struct gpu_buddy *mm,
> +                                 struct list_head *objects,
> +                                 bool mark_clear,
> +                                 bool mark_dirty)
> +{
> +       struct gpu_buddy_block *block, *on;
> +
> +       WARN_ON(mark_dirty && mark_clear);
> +
> +       list_for_each_entry_safe(block, on, objects, link) {
> +               if (mark_clear)
> +                       mark_cleared(block);
> +               else if (mark_dirty)
> +                       clear_reset(block);
> +               gpu_buddy_free_block(mm, block);
> +               cond_resched();
> +       }
> +       INIT_LIST_HEAD(objects);
> +}
> +
> +static void gpu_buddy_free_list_internal(struct gpu_buddy *mm,
> +                                        struct list_head *objects)
> +{
> +       /*
> +        * Don't touch the clear/dirty bit, since allocation is still int=
ernal
> +        * at this point. For example we might have just failed part of t=
he
> +        * allocation.
> +        */
> +       __gpu_buddy_free_list(mm, objects, false, false);
> +}
> +
> +/**
> + * gpu_buddy_free_list - free blocks
> + *
> + * @mm: GPU buddy manager
> + * @objects: input list head to free blocks
> + * @flags: optional flags like GPU_BUDDY_CLEARED
> + */
> +void gpu_buddy_free_list(struct gpu_buddy *mm,
> +                        struct list_head *objects,
> +                        unsigned int flags)
> +{
> +       bool mark_clear =3D flags & GPU_BUDDY_CLEARED;
> +
> +       __gpu_buddy_free_list(mm, objects, mark_clear, !mark_clear);
> +}
> +EXPORT_SYMBOL(gpu_buddy_free_list);
> +
> +static bool block_incompatible(struct gpu_buddy_block *block, unsigned i=
nt flags)
> +{
> +       bool needs_clear =3D flags & GPU_BUDDY_CLEAR_ALLOCATION;
> +
> +       return needs_clear !=3D gpu_buddy_block_is_clear(block);
> +}
> +
> +static struct gpu_buddy_block *
> +__alloc_range_bias(struct gpu_buddy *mm,
> +                  u64 start, u64 end,
> +                  unsigned int order,
> +                  unsigned long flags,
> +                  bool fallback)
> +{
> +       u64 req_size =3D mm->chunk_size << order;
> +       struct gpu_buddy_block *block;
> +       struct gpu_buddy_block *buddy;
> +       LIST_HEAD(dfs);
> +       int err;
> +       int i;
> +
> +       end =3D end - 1;
> +
> +       for (i =3D 0; i < mm->n_roots; ++i)
> +               list_add_tail(&mm->roots[i]->tmp_link, &dfs);
> +
> +       do {
> +               u64 block_start;
> +               u64 block_end;
> +
> +               block =3D list_first_entry_or_null(&dfs,
> +                                                struct gpu_buddy_block,
> +                                                tmp_link);
> +               if (!block)
> +                       break;
> +
> +               list_del(&block->tmp_link);
> +
> +               if (gpu_buddy_block_order(block) < order)
> +                       continue;
> +
> +               block_start =3D gpu_buddy_block_offset(block);
> +               block_end =3D block_start + gpu_buddy_block_size(mm, bloc=
k) - 1;
> +
> +               if (!overlaps(start, end, block_start, block_end))
> +                       continue;
> +
> +               if (gpu_buddy_block_is_allocated(block))
> +                       continue;
> +
> +               if (block_start < start || block_end > end) {
> +                       u64 adjusted_start =3D max(block_start, start);
> +                       u64 adjusted_end =3D min(block_end, end);
> +
> +                       if (round_down(adjusted_end + 1, req_size) <=3D
> +                           round_up(adjusted_start, req_size))
> +                               continue;
> +               }
> +
> +               if (!fallback && block_incompatible(block, flags))
> +                       continue;
> +
> +               if (contains(start, end, block_start, block_end) &&
> +                   order =3D=3D gpu_buddy_block_order(block)) {
> +                       /*
> +                        * Find the free block within the range.
> +                        */
> +                       if (gpu_buddy_block_is_free(block))
> +                               return block;
> +
> +                       continue;
> +               }
> +
> +               if (!gpu_buddy_block_is_split(block)) {
> +                       err =3D split_block(mm, block);
> +                       if (unlikely(err))
> +                               goto err_undo;
> +               }
> +
> +               list_add(&block->right->tmp_link, &dfs);
> +               list_add(&block->left->tmp_link, &dfs);
> +       } while (1);
> +
> +       return ERR_PTR(-ENOSPC);
> +
> +err_undo:
> +       /*
> +        * We really don't want to leave around a bunch of split blocks, =
since
> +        * bigger is better, so make sure we merge everything back before=
 we
> +        * free the allocated blocks.
> +        */
> +       buddy =3D __get_buddy(block);
> +       if (buddy &&
> +           (gpu_buddy_block_is_free(block) &&
> +            gpu_buddy_block_is_free(buddy)))
> +               __gpu_buddy_free(mm, block, false);
> +       return ERR_PTR(err);
> +}
> +
> +static struct gpu_buddy_block *
> +__gpu_buddy_alloc_range_bias(struct gpu_buddy *mm,
> +                            u64 start, u64 end,
> +                            unsigned int order,
> +                            unsigned long flags)
> +{
> +       struct gpu_buddy_block *block;
> +       bool fallback =3D false;
> +
> +       block =3D __alloc_range_bias(mm, start, end, order,
> +                                  flags, fallback);
> +       if (IS_ERR(block))
> +               return __alloc_range_bias(mm, start, end, order,
> +                                         flags, !fallback);
> +
> +       return block;
> +}
> +
> +static struct gpu_buddy_block *
> +get_maxblock(struct gpu_buddy *mm,
> +            unsigned int order,
> +            enum gpu_buddy_free_tree tree)
> +{
> +       struct gpu_buddy_block *max_block =3D NULL, *block =3D NULL;
> +       struct rb_root *root;
> +       unsigned int i;
> +
> +       for (i =3D order; i <=3D mm->max_order; ++i) {
> +               root =3D &mm->free_trees[tree][i];
> +               block =3D rbtree_last_free_block(root);
> +               if (!block)
> +                       continue;
> +
> +               if (!max_block) {
> +                       max_block =3D block;
> +                       continue;
> +               }
> +
> +               if (gpu_buddy_block_offset(block) >
> +                   gpu_buddy_block_offset(max_block)) {
> +                       max_block =3D block;
> +               }
> +       }
> +
> +       return max_block;
> +}
> +
> +static struct gpu_buddy_block *
> +alloc_from_freetree(struct gpu_buddy *mm,
> +                   unsigned int order,
> +                   unsigned long flags)
> +{
> +       struct gpu_buddy_block *block =3D NULL;
> +       struct rb_root *root;
> +       enum gpu_buddy_free_tree tree;
> +       unsigned int tmp;
> +       int err;
> +
> +       tree =3D (flags & GPU_BUDDY_CLEAR_ALLOCATION) ?
> +               GPU_BUDDY_CLEAR_TREE : GPU_BUDDY_DIRTY_TREE;
> +
> +       if (flags & GPU_BUDDY_TOPDOWN_ALLOCATION) {
> +               block =3D get_maxblock(mm, order, tree);
> +               if (block)
> +                       /* Store the obtained block order */
> +                       tmp =3D gpu_buddy_block_order(block);
> +       } else {
> +               for (tmp =3D order; tmp <=3D mm->max_order; ++tmp) {
> +                       /* Get RB tree root for this order and tree */
> +                       root =3D &mm->free_trees[tree][tmp];
> +                       block =3D rbtree_last_free_block(root);
> +                       if (block)
> +                               break;
> +               }
> +       }
> +
> +       if (!block) {
> +               /* Try allocating from the other tree */
> +               tree =3D (tree =3D=3D GPU_BUDDY_CLEAR_TREE) ?
> +                       GPU_BUDDY_DIRTY_TREE : GPU_BUDDY_CLEAR_TREE;
> +
> +               for (tmp =3D order; tmp <=3D mm->max_order; ++tmp) {
> +                       root =3D &mm->free_trees[tree][tmp];
> +                       block =3D rbtree_last_free_block(root);
> +                       if (block)
> +                               break;
> +               }
> +
> +               if (!block)
> +                       return ERR_PTR(-ENOSPC);
> +       }
> +
> +       BUG_ON(!gpu_buddy_block_is_free(block));
> +
> +       while (tmp !=3D order) {
> +               err =3D split_block(mm, block);
> +               if (unlikely(err))
> +                       goto err_undo;
> +
> +               block =3D block->right;
> +               tmp--;
> +       }
> +       return block;
> +
> +err_undo:
> +       if (tmp !=3D order)
> +               __gpu_buddy_free(mm, block, false);
> +       return ERR_PTR(err);
> +}
> +
> +static int __alloc_range(struct gpu_buddy *mm,
> +                        struct list_head *dfs,
> +                        u64 start, u64 size,
> +                        struct list_head *blocks,
> +                        u64 *total_allocated_on_err)
> +{
> +       struct gpu_buddy_block *block;
> +       struct gpu_buddy_block *buddy;
> +       u64 total_allocated =3D 0;
> +       LIST_HEAD(allocated);
> +       u64 end;
> +       int err;
> +
> +       end =3D start + size - 1;
> +
> +       do {
> +               u64 block_start;
> +               u64 block_end;
> +
> +               block =3D list_first_entry_or_null(dfs,
> +                                                struct gpu_buddy_block,
> +                                                tmp_link);
> +               if (!block)
> +                       break;
> +
> +               list_del(&block->tmp_link);
> +
> +               block_start =3D gpu_buddy_block_offset(block);
> +               block_end =3D block_start + gpu_buddy_block_size(mm, bloc=
k) - 1;
> +
> +               if (!overlaps(start, end, block_start, block_end))
> +                       continue;
> +
> +               if (gpu_buddy_block_is_allocated(block)) {
> +                       err =3D -ENOSPC;
> +                       goto err_free;
> +               }
> +
> +               if (contains(start, end, block_start, block_end)) {
> +                       if (gpu_buddy_block_is_free(block)) {
> +                               mark_allocated(mm, block);
> +                               total_allocated +=3D gpu_buddy_block_size=
(mm, block);
> +                               mm->avail -=3D gpu_buddy_block_size(mm, b=
lock);
> +                               if (gpu_buddy_block_is_clear(block))
> +                                       mm->clear_avail -=3D gpu_buddy_bl=
ock_size(mm, block);
> +                               list_add_tail(&block->link, &allocated);
> +                               continue;
> +                       } else if (!mm->clear_avail) {
> +                               err =3D -ENOSPC;
> +                               goto err_free;
> +                       }
> +               }
> +
> +               if (!gpu_buddy_block_is_split(block)) {
> +                       err =3D split_block(mm, block);
> +                       if (unlikely(err))
> +                               goto err_undo;
> +               }
> +
> +               list_add(&block->right->tmp_link, dfs);
> +               list_add(&block->left->tmp_link, dfs);
> +       } while (1);
> +
> +       if (total_allocated < size) {
> +               err =3D -ENOSPC;
> +               goto err_free;
> +       }
> +
> +       list_splice_tail(&allocated, blocks);
> +
> +       return 0;
> +
> +err_undo:
> +       /*
> +        * We really don't want to leave around a bunch of split blocks, =
since
> +        * bigger is better, so make sure we merge everything back before=
 we
> +        * free the allocated blocks.
> +        */
> +       buddy =3D __get_buddy(block);
> +       if (buddy &&
> +           (gpu_buddy_block_is_free(block) &&
> +            gpu_buddy_block_is_free(buddy)))
> +               __gpu_buddy_free(mm, block, false);
> +
> +err_free:
> +       if (err =3D=3D -ENOSPC && total_allocated_on_err) {
> +               list_splice_tail(&allocated, blocks);
> +               *total_allocated_on_err =3D total_allocated;
> +       } else {
> +               gpu_buddy_free_list_internal(mm, &allocated);
> +       }
> +
> +       return err;
> +}
> +
> +static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
> +                                  u64 start,
> +                                  u64 size,
> +                                  u64 *total_allocated_on_err,
> +                                  struct list_head *blocks)
> +{
> +       LIST_HEAD(dfs);
> +       int i;
> +
> +       for (i =3D 0; i < mm->n_roots; ++i)
> +               list_add_tail(&mm->roots[i]->tmp_link, &dfs);
> +
> +       return __alloc_range(mm, &dfs, start, size,
> +                            blocks, total_allocated_on_err);
> +}
> +
> +static int __alloc_contig_try_harder(struct gpu_buddy *mm,
> +                                    u64 size,
> +                                    u64 min_block_size,
> +                                    struct list_head *blocks)
> +{
> +       u64 rhs_offset, lhs_offset, lhs_size, filled;
> +       struct gpu_buddy_block *block;
> +       unsigned int tree, order;
> +       LIST_HEAD(blocks_lhs);
> +       unsigned long pages;
> +       u64 modify_size;
> +       int err;
> +
> +       modify_size =3D rounddown_pow_of_two(size);
> +       pages =3D modify_size >> ilog2(mm->chunk_size);
> +       order =3D fls(pages) - 1;
> +       if (order =3D=3D 0)
> +               return -ENOSPC;
> +
> +       for_each_free_tree(tree) {
> +               struct rb_root *root;
> +               struct rb_node *iter;
> +
> +               root =3D &mm->free_trees[tree][order];
> +               if (rbtree_is_empty(root))
> +                       continue;
> +
> +               iter =3D rb_last(root);
> +               while (iter) {
> +                       block =3D rbtree_get_free_block(iter);
> +
> +                       /* Allocate blocks traversing RHS */
> +                       rhs_offset =3D gpu_buddy_block_offset(block);
> +                       err =3D  __gpu_buddy_alloc_range(mm, rhs_offset, =
size,
> +                                                      &filled, blocks);
> +                       if (!err || err !=3D -ENOSPC)
> +                               return err;
> +
> +                       lhs_size =3D max((size - filled), min_block_size)=
;
> +                       if (!IS_ALIGNED(lhs_size, min_block_size))
> +                               lhs_size =3D round_up(lhs_size, min_block=
_size);
> +
> +                       /* Allocate blocks traversing LHS */
> +                       lhs_offset =3D gpu_buddy_block_offset(block) - lh=
s_size;
> +                       err =3D  __gpu_buddy_alloc_range(mm, lhs_offset, =
lhs_size,
> +                                                      NULL, &blocks_lhs)=
;
> +                       if (!err) {
> +                               list_splice(&blocks_lhs, blocks);
> +                               return 0;
> +                       } else if (err !=3D -ENOSPC) {
> +                               gpu_buddy_free_list_internal(mm, blocks);
> +                               return err;
> +                       }
> +                       /* Free blocks for the next iteration */
> +                       gpu_buddy_free_list_internal(mm, blocks);
> +
> +                       iter =3D rb_prev(iter);
> +               }
> +       }
> +
> +       return -ENOSPC;
> +}
> +
> +/**
> + * gpu_buddy_block_trim - free unused pages
> + *
> + * @mm: GPU buddy manager
> + * @start: start address to begin the trimming.
> + * @new_size: original size requested
> + * @blocks: Input and output list of allocated blocks.
> + * MUST contain single block as input to be trimmed.
> + * On success will contain the newly allocated blocks
> + * making up the @new_size. Blocks always appear in
> + * ascending order
> + *
> + * For contiguous allocation, we round up the size to the nearest
> + * power of two value, drivers consume *actual* size, so remaining
> + * portions are unused and can be optionally freed with this function
> + *
> + * Returns:
> + * 0 on success, error code on failure.
> + */
> +int gpu_buddy_block_trim(struct gpu_buddy *mm,
> +                        u64 *start,
> +                        u64 new_size,
> +                        struct list_head *blocks)
> +{
> +       struct gpu_buddy_block *parent;
> +       struct gpu_buddy_block *block;
> +       u64 block_start, block_end;
> +       LIST_HEAD(dfs);
> +       u64 new_start;
> +       int err;
> +
> +       if (!list_is_singular(blocks))
> +               return -EINVAL;
> +
> +       block =3D list_first_entry(blocks,
> +                                struct gpu_buddy_block,
> +                                link);
> +
> +       block_start =3D gpu_buddy_block_offset(block);
> +       block_end =3D block_start + gpu_buddy_block_size(mm, block);
> +
> +       if (WARN_ON(!gpu_buddy_block_is_allocated(block)))
> +               return -EINVAL;
> +
> +       if (new_size > gpu_buddy_block_size(mm, block))
> +               return -EINVAL;
> +
> +       if (!new_size || !IS_ALIGNED(new_size, mm->chunk_size))
> +               return -EINVAL;
> +
> +       if (new_size =3D=3D gpu_buddy_block_size(mm, block))
> +               return 0;
> +
> +       new_start =3D block_start;
> +       if (start) {
> +               new_start =3D *start;
> +
> +               if (new_start < block_start)
> +                       return -EINVAL;
> +
> +               if (!IS_ALIGNED(new_start, mm->chunk_size))
> +                       return -EINVAL;
> +
> +               if (range_overflows(new_start, new_size, block_end))
> +                       return -EINVAL;
> +       }
> +
> +       list_del(&block->link);
> +       mark_free(mm, block);
> +       mm->avail +=3D gpu_buddy_block_size(mm, block);
> +       if (gpu_buddy_block_is_clear(block))
> +               mm->clear_avail +=3D gpu_buddy_block_size(mm, block);
> +
> +       /* Prevent recursively freeing this node */
> +       parent =3D block->parent;
> +       block->parent =3D NULL;
> +
> +       list_add(&block->tmp_link, &dfs);
> +       err =3D  __alloc_range(mm, &dfs, new_start, new_size, blocks, NUL=
L);
> +       if (err) {
> +               mark_allocated(mm, block);
> +               mm->avail -=3D gpu_buddy_block_size(mm, block);
> +               if (gpu_buddy_block_is_clear(block))
> +                       mm->clear_avail -=3D gpu_buddy_block_size(mm, blo=
ck);
> +               list_add(&block->link, blocks);
> +       }
> +
> +       block->parent =3D parent;
> +       return err;
> +}
> +EXPORT_SYMBOL(gpu_buddy_block_trim);
> +
> +static struct gpu_buddy_block *
> +__gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
> +                        u64 start, u64 end,
> +                        unsigned int order,
> +                        unsigned long flags)
> +{
> +       if (flags & GPU_BUDDY_RANGE_ALLOCATION)
> +               /* Allocate traversing within the range */
> +               return  __gpu_buddy_alloc_range_bias(mm, start, end,
> +                                                    order, flags);
> +       else
> +               /* Allocate from freetree */
> +               return alloc_from_freetree(mm, order, flags);
> +}
> +
> +/**
> + * gpu_buddy_alloc_blocks - allocate power-of-two blocks
> + *
> + * @mm: GPU buddy manager to allocate from
> + * @start: start of the allowed range for this block
> + * @end: end of the allowed range for this block
> + * @size: size of the allocation in bytes
> + * @min_block_size: alignment of the allocation
> + * @blocks: output list head to add allocated blocks
> + * @flags: GPU_BUDDY_*_ALLOCATION flags
> + *
> + * alloc_range_bias() called on range limitations, which traverses
> + * the tree and returns the desired block.
> + *
> + * alloc_from_freetree() called when *no* range restrictions
> + * are enforced, which picks the block from the freetree.
> + *
> + * Returns:
> + * 0 on success, error code on failure.
> + */
> +int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
> +                          u64 start, u64 end, u64 size,
> +                          u64 min_block_size,
> +                          struct list_head *blocks,
> +                          unsigned long flags)
> +{
> +       struct gpu_buddy_block *block =3D NULL;
> +       u64 original_size, original_min_size;
> +       unsigned int min_order, order;
> +       LIST_HEAD(allocated);
> +       unsigned long pages;
> +       int err;
> +
> +       if (size < mm->chunk_size)
> +               return -EINVAL;
> +
> +       if (min_block_size < mm->chunk_size)
> +               return -EINVAL;
> +
> +       if (!is_power_of_2(min_block_size))
> +               return -EINVAL;
> +
> +       if (!IS_ALIGNED(start | end | size, mm->chunk_size))
> +               return -EINVAL;
> +
> +       if (end > mm->size)
> +               return -EINVAL;
> +
> +       if (range_overflows(start, size, mm->size))
> +               return -EINVAL;
> +
> +       /* Actual range allocation */
> +       if (start + size =3D=3D end) {
> +               if (!IS_ALIGNED(start | end, min_block_size))
> +                       return -EINVAL;
> +
> +               return __gpu_buddy_alloc_range(mm, start, size, NULL, blo=
cks);
> +       }
> +
> +       original_size =3D size;
> +       original_min_size =3D min_block_size;
> +
> +       /* Roundup the size to power of 2 */
> +       if (flags & GPU_BUDDY_CONTIGUOUS_ALLOCATION) {
> +               size =3D roundup_pow_of_two(size);
> +               min_block_size =3D size;
> +       /* Align size value to min_block_size */
> +       } else if (!IS_ALIGNED(size, min_block_size)) {
> +               size =3D round_up(size, min_block_size);
> +       }
> +
> +       pages =3D size >> ilog2(mm->chunk_size);
> +       order =3D fls(pages) - 1;
> +       min_order =3D ilog2(min_block_size) - ilog2(mm->chunk_size);
> +
> +       do {
> +               order =3D min(order, (unsigned int)fls(pages) - 1);
> +               BUG_ON(order > mm->max_order);
> +               BUG_ON(order < min_order);
> +
> +               do {
> +                       block =3D __gpu_buddy_alloc_blocks(mm, start,
> +                                                        end,
> +                                                        order,
> +                                                        flags);
> +                       if (!IS_ERR(block))
> +                               break;
> +
> +                       if (order-- =3D=3D min_order) {
> +                               /* Try allocation through force merge met=
hod */
> +                               if (mm->clear_avail &&
> +                                   !__force_merge(mm, start, end, min_or=
der)) {
> +                                       block =3D __gpu_buddy_alloc_block=
s(mm, start,
> +                                                                        =
end,
> +                                                                        =
min_order,
> +                                                                        =
flags);
> +                                       if (!IS_ERR(block)) {
> +                                               order =3D min_order;
> +                                               break;
> +                                       }
> +                               }
> +
> +                               /*
> +                                * Try contiguous block allocation throug=
h
> +                                * try harder method.
> +                                */
> +                               if (flags & GPU_BUDDY_CONTIGUOUS_ALLOCATI=
ON &&
> +                                   !(flags & GPU_BUDDY_RANGE_ALLOCATION)=
)
> +                                       return __alloc_contig_try_harder(=
mm,
> +                                                                        =
original_size,
> +                                                                        =
original_min_size,
> +                                                                        =
blocks);
> +                               err =3D -ENOSPC;
> +                               goto err_free;
> +                       }
> +               } while (1);
> +
> +               mark_allocated(mm, block);
> +               mm->avail -=3D gpu_buddy_block_size(mm, block);
> +               if (gpu_buddy_block_is_clear(block))
> +                       mm->clear_avail -=3D gpu_buddy_block_size(mm, blo=
ck);
> +               kmemleak_update_trace(block);
> +               list_add_tail(&block->link, &allocated);
> +
> +               pages -=3D BIT(order);
> +
> +               if (!pages)
> +                       break;
> +       } while (1);
> +
> +       /* Trim the allocated block to the required size */
> +       if (!(flags & GPU_BUDDY_TRIM_DISABLE) &&
> +           original_size !=3D size) {
> +               struct list_head *trim_list;
> +               LIST_HEAD(temp);
> +               u64 trim_size;
> +
> +               trim_list =3D &allocated;
> +               trim_size =3D original_size;
> +
> +               if (!list_is_singular(&allocated)) {
> +                       block =3D list_last_entry(&allocated, typeof(*blo=
ck), link);
> +                       list_move(&block->link, &temp);
> +                       trim_list =3D &temp;
> +                       trim_size =3D gpu_buddy_block_size(mm, block) -
> +                               (size - original_size);
> +               }
> +
> +               gpu_buddy_block_trim(mm,
> +                                    NULL,
> +                                    trim_size,
> +                                    trim_list);
> +
> +               if (!list_empty(&temp))
> +                       list_splice_tail(trim_list, &allocated);
> +       }
> +
> +       list_splice_tail(&allocated, blocks);
> +       return 0;
> +
> +err_free:
> +       gpu_buddy_free_list_internal(mm, &allocated);
> +       return err;
> +}
> +EXPORT_SYMBOL(gpu_buddy_alloc_blocks);
> +
> +/**
> + * gpu_buddy_block_print - print block information
> + *
> + * @mm: GPU buddy manager
> + * @block: GPU buddy block
> + */
> +void gpu_buddy_block_print(struct gpu_buddy *mm,
> +                          struct gpu_buddy_block *block)
> +{
> +       u64 start =3D gpu_buddy_block_offset(block);
> +       u64 size =3D gpu_buddy_block_size(mm, block);
> +
> +       pr_info("%#018llx-%#018llx: %llu\n", start, start + size, size);
> +}
> +EXPORT_SYMBOL(gpu_buddy_block_print);
> +
> +/**
> + * gpu_buddy_print - print allocator state
> + *
> + * @mm: GPU buddy manager
> + */
> +void gpu_buddy_print(struct gpu_buddy *mm)
> +{
> +       int order;
> +
> +       pr_info("chunk_size: %lluKiB, total: %lluMiB, free: %lluMiB, clea=
r_free: %lluMiB\n",
> +               mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20, mm=
->clear_avail >> 20);
> +
> +       for (order =3D mm->max_order; order >=3D 0; order--) {
> +               struct gpu_buddy_block *block, *tmp;
> +               struct rb_root *root;
> +               u64 count =3D 0, free;
> +               unsigned int tree;
> +
> +               for_each_free_tree(tree) {
> +                       root =3D &mm->free_trees[tree][order];
> +
> +                       rbtree_postorder_for_each_entry_safe(block, tmp, =
root, rb) {
> +                               BUG_ON(!gpu_buddy_block_is_free(block));
> +                               count++;
> +                       }
> +               }
> +
> +               free =3D count * (mm->chunk_size << order);
> +               if (free < SZ_1M)
> +                       pr_info("order-%2d free: %8llu KiB, blocks: %llu\=
n",
> +                               order, free >> 10, count);
> +               else
> +                       pr_info("order-%2d free: %8llu MiB, blocks: %llu\=
n",
> +                               order, free >> 20, count);
> +       }
> +}
> +EXPORT_SYMBOL(gpu_buddy_print);
> +
> +static void gpu_buddy_module_exit(void)
> +{
> +       kmem_cache_destroy(slab_blocks);
> +}
> +
> +static int __init gpu_buddy_module_init(void)
> +{
> +       slab_blocks =3D KMEM_CACHE(gpu_buddy_block, 0);
> +       if (!slab_blocks)
> +               return -ENOMEM;
> +
> +       return 0;
> +}
> +
> +module_init(gpu_buddy_module_init);
> +module_exit(gpu_buddy_module_exit);
> +
> +MODULE_DESCRIPTION("GPU Buddy Allocator");
> +MODULE_LICENSE("Dual MIT/GPL");
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 7e6bc0b3a589..0475defb37f0 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -220,6 +220,7 @@ config DRM_GPUSVM
>  config DRM_BUDDY
>         tristate
>         depends on DRM
> +       select GPU_BUDDY
>         help
>           A page based buddy allocator
>
> diff --git a/drivers/gpu/drm/Kconfig.debug b/drivers/gpu/drm/Kconfig.debu=
g
> index 05dc43c0b8c5..1f4c408c7920 100644
> --- a/drivers/gpu/drm/Kconfig.debug
> +++ b/drivers/gpu/drm/Kconfig.debug
> @@ -71,6 +71,7 @@ config DRM_KUNIT_TEST
>         select DRM_KUNIT_TEST_HELPERS
>         select DRM_LIB_RANDOM
>         select DRM_SYSFB_HELPER
> +       select GPU_BUDDY
>         select PRIME_NUMBERS
>         default KUNIT_ALL_TESTS
>         help
> @@ -88,10 +89,11 @@ config DRM_TTM_KUNIT_TEST
>         tristate "KUnit tests for TTM" if !KUNIT_ALL_TESTS
>         default n
>         depends on DRM && KUNIT && MMU && (UML || COMPILE_TEST)
> -       select DRM_TTM
>         select DRM_BUDDY
> +       select DRM_TTM
>         select DRM_EXPORT_FOR_TESTS if m
>         select DRM_KUNIT_TEST_HELPERS
> +       select GPU_BUDDY
>         default KUNIT_ALL_TESTS
>         help
>           Enables unit tests for TTM, a GPU memory manager subsystem used
> diff --git a/drivers/gpu/drm/amd/amdgpu/Kconfig b/drivers/gpu/drm/amd/amd=
gpu/Kconfig
> index 7f515be5185d..bb131543e1d9 100644
> --- a/drivers/gpu/drm/amd/amdgpu/Kconfig
> +++ b/drivers/gpu/drm/amd/amdgpu/Kconfig
> @@ -23,6 +23,7 @@ config DRM_AMDGPU
>         select CRC16
>         select BACKLIGHT_CLASS_DEVICE
>         select INTERVAL_TREE
> +       select GPU_BUDDY
>         select DRM_BUDDY
>         select DRM_SUBALLOC_HELPER
>         select DRM_EXEC
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_ras.c
> index 2a6cf7963dde..e0bd8a68877f 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c
> @@ -5654,7 +5654,7 @@ int amdgpu_ras_add_critical_region(struct amdgpu_de=
vice *adev,
>         struct amdgpu_ras *con =3D amdgpu_ras_get_context(adev);
>         struct amdgpu_vram_mgr_resource *vres;
>         struct ras_critical_region *region;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         int ret =3D 0;
>
>         if (!bo || !bo->tbo.resource)
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h b/drivers/gpu=
/drm/amd/amdgpu/amdgpu_res_cursor.h
> index be2e56ce1355..8908d9e08a30 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h
> @@ -55,7 +55,7 @@ static inline void amdgpu_res_first(struct ttm_resource=
 *res,
>                                     uint64_t start, uint64_t size,
>                                     struct amdgpu_res_cursor *cur)
>  {
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         struct list_head *head, *next;
>         struct drm_mm_node *node;
>
> @@ -71,7 +71,7 @@ static inline void amdgpu_res_first(struct ttm_resource=
 *res,
>                 head =3D &to_amdgpu_vram_mgr_resource(res)->blocks;
>
>                 block =3D list_first_entry_or_null(head,
> -                                                struct drm_buddy_block,
> +                                                struct gpu_buddy_block,
>                                                  link);
>                 if (!block)
>                         goto fallback;
> @@ -81,7 +81,7 @@ static inline void amdgpu_res_first(struct ttm_resource=
 *res,
>
>                         next =3D block->link.next;
>                         if (next !=3D head)
> -                               block =3D list_entry(next, struct drm_bud=
dy_block, link);
> +                               block =3D list_entry(next, struct gpu_bud=
dy_block, link);
>                 }
>
>                 cur->start =3D amdgpu_vram_mgr_block_start(block) + start=
;
> @@ -125,7 +125,7 @@ static inline void amdgpu_res_first(struct ttm_resour=
ce *res,
>   */
>  static inline void amdgpu_res_next(struct amdgpu_res_cursor *cur, uint64=
_t size)
>  {
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         struct drm_mm_node *node;
>         struct list_head *next;
>
> @@ -146,7 +146,7 @@ static inline void amdgpu_res_next(struct amdgpu_res_=
cursor *cur, uint64_t size)
>                 block =3D cur->node;
>
>                 next =3D block->link.next;
> -               block =3D list_entry(next, struct drm_buddy_block, link);
> +               block =3D list_entry(next, struct gpu_buddy_block, link);
>
>                 cur->node =3D block;
>                 cur->start =3D amdgpu_vram_mgr_block_start(block);
> @@ -175,7 +175,7 @@ static inline void amdgpu_res_next(struct amdgpu_res_=
cursor *cur, uint64_t size)
>   */
>  static inline bool amdgpu_res_cleared(struct amdgpu_res_cursor *cur)
>  {
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>
>         switch (cur->mem_type) {
>         case TTM_PL_VRAM:
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c b/drivers/gpu/d=
rm/amd/amdgpu/amdgpu_vram_mgr.c
> index 9d934c07fa6b..6c06a9c9b13f 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
> @@ -23,6 +23,8 @@
>   */
>
>  #include <linux/dma-mapping.h>
> +
> +#include <drm/drm_buddy.h>
>  #include <drm/ttm/ttm_range_manager.h>
>  #include <drm/drm_drv.h>
>
> @@ -52,15 +54,15 @@ to_amdgpu_device(struct amdgpu_vram_mgr *mgr)
>         return container_of(mgr, struct amdgpu_device, mman.vram_mgr);
>  }
>
> -static inline struct drm_buddy_block *
> +static inline struct gpu_buddy_block *
>  amdgpu_vram_mgr_first_block(struct list_head *list)
>  {
> -       return list_first_entry_or_null(list, struct drm_buddy_block, lin=
k);
> +       return list_first_entry_or_null(list, struct gpu_buddy_block, lin=
k);
>  }
>
>  static inline bool amdgpu_is_vram_mgr_blocks_contiguous(struct list_head=
 *head)
>  {
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         u64 start, size;
>
>         block =3D amdgpu_vram_mgr_first_block(head);
> @@ -71,7 +73,7 @@ static inline bool amdgpu_is_vram_mgr_blocks_contiguous=
(struct list_head *head)
>                 start =3D amdgpu_vram_mgr_block_start(block);
>                 size =3D amdgpu_vram_mgr_block_size(block);
>
> -               block =3D list_entry(block->link.next, struct drm_buddy_b=
lock, link);
> +               block =3D list_entry(block->link.next, struct gpu_buddy_b=
lock, link);
>                 if (start + size !=3D amdgpu_vram_mgr_block_start(block))
>                         return false;
>         }
> @@ -81,7 +83,7 @@ static inline bool amdgpu_is_vram_mgr_blocks_contiguous=
(struct list_head *head)
>
>  static inline u64 amdgpu_vram_mgr_blocks_size(struct list_head *head)
>  {
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         u64 size =3D 0;
>
>         list_for_each_entry(block, head, link)
> @@ -254,7 +256,7 @@ const struct attribute_group amdgpu_vram_mgr_attr_gro=
up =3D {
>   * Calculate how many bytes of the DRM BUDDY block are inside visible VR=
AM
>   */
>  static u64 amdgpu_vram_mgr_vis_size(struct amdgpu_device *adev,
> -                                   struct drm_buddy_block *block)
> +                                   struct gpu_buddy_block *block)
>  {
>         u64 start =3D amdgpu_vram_mgr_block_start(block);
>         u64 end =3D start + amdgpu_vram_mgr_block_size(block);
> @@ -279,7 +281,7 @@ u64 amdgpu_vram_mgr_bo_visible_size(struct amdgpu_bo =
*bo)
>         struct amdgpu_device *adev =3D amdgpu_ttm_adev(bo->tbo.bdev);
>         struct ttm_resource *res =3D bo->tbo.resource;
>         struct amdgpu_vram_mgr_resource *vres =3D to_amdgpu_vram_mgr_reso=
urce(res);
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         u64 usage =3D 0;
>
>         if (amdgpu_gmc_vram_full_visible(&adev->gmc))
> @@ -299,15 +301,15 @@ static void amdgpu_vram_mgr_do_reserve(struct ttm_r=
esource_manager *man)
>  {
>         struct amdgpu_vram_mgr *mgr =3D to_vram_mgr(man);
>         struct amdgpu_device *adev =3D to_amdgpu_device(mgr);
> -       struct drm_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy *mm =3D &mgr->mm;
>         struct amdgpu_vram_reservation *rsv, *temp;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         uint64_t vis_usage;
>
>         list_for_each_entry_safe(rsv, temp, &mgr->reservations_pending, b=
locks) {
> -               if (drm_buddy_alloc_blocks(mm, rsv->start, rsv->start + r=
sv->size,
> +               if (gpu_buddy_alloc_blocks(mm, rsv->start, rsv->start + r=
sv->size,
>                                            rsv->size, mm->chunk_size, &rs=
v->allocated,
> -                                          DRM_BUDDY_RANGE_ALLOCATION))
> +                                          GPU_BUDDY_RANGE_ALLOCATION))
>                         continue;
>
>                 block =3D amdgpu_vram_mgr_first_block(&rsv->allocated);
> @@ -403,7 +405,7 @@ int amdgpu_vram_mgr_query_address_block_info(struct a=
mdgpu_vram_mgr *mgr,
>                         uint64_t address, struct amdgpu_vram_block_info *=
info)
>  {
>         struct amdgpu_vram_mgr_resource *vres;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         u64 start, size;
>         int ret =3D -ENOENT;
>
> @@ -450,8 +452,8 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>         struct amdgpu_vram_mgr_resource *vres;
>         u64 size, remaining_size, lpfn, fpfn;
>         unsigned int adjust_dcc_size =3D 0;
> -       struct drm_buddy *mm =3D &mgr->mm;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy_block *block;
>         unsigned long pages_per_block;
>         int r;
>
> @@ -493,17 +495,17 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_=
manager *man,
>         INIT_LIST_HEAD(&vres->blocks);
>
>         if (place->flags & TTM_PL_FLAG_TOPDOWN)
> -               vres->flags |=3D DRM_BUDDY_TOPDOWN_ALLOCATION;
> +               vres->flags |=3D GPU_BUDDY_TOPDOWN_ALLOCATION;
>
>         if (bo->flags & AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS)
> -               vres->flags |=3D DRM_BUDDY_CONTIGUOUS_ALLOCATION;
> +               vres->flags |=3D GPU_BUDDY_CONTIGUOUS_ALLOCATION;
>
>         if (bo->flags & AMDGPU_GEM_CREATE_VRAM_CLEARED)
> -               vres->flags |=3D DRM_BUDDY_CLEAR_ALLOCATION;
> +               vres->flags |=3D GPU_BUDDY_CLEAR_ALLOCATION;
>
>         if (fpfn || lpfn !=3D mgr->mm.size)
>                 /* Allocate blocks in desired range */
> -               vres->flags |=3D DRM_BUDDY_RANGE_ALLOCATION;
> +               vres->flags |=3D GPU_BUDDY_RANGE_ALLOCATION;
>
>         if (bo->flags & AMDGPU_GEM_CREATE_GFX12_DCC &&
>             adev->gmc.gmc_funcs->get_dcc_alignment)
> @@ -516,7 +518,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>                 dcc_size =3D roundup_pow_of_two(vres->base.size + adjust_=
dcc_size);
>                 remaining_size =3D (u64)dcc_size;
>
> -               vres->flags |=3D DRM_BUDDY_TRIM_DISABLE;
> +               vres->flags |=3D GPU_BUDDY_TRIM_DISABLE;
>         }
>
>         mutex_lock(&mgr->lock);
> @@ -536,7 +538,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>
>                 BUG_ON(min_block_size < mm->chunk_size);
>
> -               r =3D drm_buddy_alloc_blocks(mm, fpfn,
> +               r =3D gpu_buddy_alloc_blocks(mm, fpfn,
>                                            lpfn,
>                                            size,
>                                            min_block_size,
> @@ -545,7 +547,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>
>                 if (unlikely(r =3D=3D -ENOSPC) && pages_per_block =3D=3D =
~0ul &&
>                     !(place->flags & TTM_PL_FLAG_CONTIGUOUS)) {
> -                       vres->flags &=3D ~DRM_BUDDY_CONTIGUOUS_ALLOCATION=
;
> +                       vres->flags &=3D ~GPU_BUDDY_CONTIGUOUS_ALLOCATION=
;
>                         pages_per_block =3D max_t(u32, 2UL << (20UL - PAG=
E_SHIFT),
>                                                 tbo->page_alignment);
>
> @@ -566,7 +568,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>         list_add_tail(&vres->vres_node, &mgr->allocated_vres_list);
>
>         if (bo->flags & AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS && adjust_dcc_s=
ize) {
> -               struct drm_buddy_block *dcc_block;
> +               struct gpu_buddy_block *dcc_block;
>                 unsigned long dcc_start;
>                 u64 trim_start;
>
> @@ -576,7 +578,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>                         roundup((unsigned long)amdgpu_vram_mgr_block_star=
t(dcc_block),
>                                 adjust_dcc_size);
>                 trim_start =3D (u64)dcc_start;
> -               drm_buddy_block_trim(mm, &trim_start,
> +               gpu_buddy_block_trim(mm, &trim_start,
>                                      (u64)vres->base.size,
>                                      &vres->blocks);
>         }
> @@ -614,7 +616,7 @@ static int amdgpu_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>         return 0;
>
>  error_free_blocks:
> -       drm_buddy_free_list(mm, &vres->blocks, 0);
> +       gpu_buddy_free_list(mm, &vres->blocks, 0);
>         mutex_unlock(&mgr->lock);
>  error_fini:
>         ttm_resource_fini(man, &vres->base);
> @@ -637,8 +639,8 @@ static void amdgpu_vram_mgr_del(struct ttm_resource_m=
anager *man,
>         struct amdgpu_vram_mgr_resource *vres =3D to_amdgpu_vram_mgr_reso=
urce(res);
>         struct amdgpu_vram_mgr *mgr =3D to_vram_mgr(man);
>         struct amdgpu_device *adev =3D to_amdgpu_device(mgr);
> -       struct drm_buddy *mm =3D &mgr->mm;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy_block *block;
>         uint64_t vis_usage =3D 0;
>
>         mutex_lock(&mgr->lock);
> @@ -649,7 +651,7 @@ static void amdgpu_vram_mgr_del(struct ttm_resource_m=
anager *man,
>         list_for_each_entry(block, &vres->blocks, link)
>                 vis_usage +=3D amdgpu_vram_mgr_vis_size(adev, block);
>
> -       drm_buddy_free_list(mm, &vres->blocks, vres->flags);
> +       gpu_buddy_free_list(mm, &vres->blocks, vres->flags);
>         amdgpu_vram_mgr_do_reserve(man);
>         mutex_unlock(&mgr->lock);
>
> @@ -688,7 +690,7 @@ int amdgpu_vram_mgr_alloc_sgt(struct amdgpu_device *a=
dev,
>         if (!*sgt)
>                 return -ENOMEM;
>
> -       /* Determine the number of DRM_BUDDY blocks to export */
> +       /* Determine the number of GPU_BUDDY blocks to export */
>         amdgpu_res_first(res, offset, length, &cursor);
>         while (cursor.remaining) {
>                 num_entries++;
> @@ -704,10 +706,10 @@ int amdgpu_vram_mgr_alloc_sgt(struct amdgpu_device =
*adev,
>                 sg->length =3D 0;
>
>         /*
> -        * Walk down DRM_BUDDY blocks to populate scatterlist nodes
> -        * @note: Use iterator api to get first the DRM_BUDDY block
> +        * Walk down GPU_BUDDY blocks to populate scatterlist nodes
> +        * @note: Use iterator api to get first the GPU_BUDDY block
>          * and the number of bytes from it. Access the following
> -        * DRM_BUDDY block(s) if more buffer needs to exported
> +        * GPU_BUDDY block(s) if more buffer needs to exported
>          */
>         amdgpu_res_first(res, offset, length, &cursor);
>         for_each_sgtable_sg((*sgt), sg, i) {
> @@ -792,10 +794,10 @@ uint64_t amdgpu_vram_mgr_vis_usage(struct amdgpu_vr=
am_mgr *mgr)
>  void amdgpu_vram_mgr_clear_reset_blocks(struct amdgpu_device *adev)
>  {
>         struct amdgpu_vram_mgr *mgr =3D &adev->mman.vram_mgr;
> -       struct drm_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy *mm =3D &mgr->mm;
>
>         mutex_lock(&mgr->lock);
> -       drm_buddy_reset_clear(mm, false);
> +       gpu_buddy_reset_clear(mm, false);
>         mutex_unlock(&mgr->lock);
>  }
>
> @@ -815,7 +817,7 @@ static bool amdgpu_vram_mgr_intersects(struct ttm_res=
ource_manager *man,
>                                        size_t size)
>  {
>         struct amdgpu_vram_mgr_resource *mgr =3D to_amdgpu_vram_mgr_resou=
rce(res);
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>
>         /* Check each drm buddy block individually */
>         list_for_each_entry(block, &mgr->blocks, link) {
> @@ -848,7 +850,7 @@ static bool amdgpu_vram_mgr_compatible(struct ttm_res=
ource_manager *man,
>                                        size_t size)
>  {
>         struct amdgpu_vram_mgr_resource *mgr =3D to_amdgpu_vram_mgr_resou=
rce(res);
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>
>         /* Check each drm buddy block individually */
>         list_for_each_entry(block, &mgr->blocks, link) {
> @@ -877,7 +879,7 @@ static void amdgpu_vram_mgr_debug(struct ttm_resource=
_manager *man,
>                                   struct drm_printer *printer)
>  {
>         struct amdgpu_vram_mgr *mgr =3D to_vram_mgr(man);
> -       struct drm_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy *mm =3D &mgr->mm;
>         struct amdgpu_vram_reservation *rsv;
>
>         drm_printf(printer, "  vis usage:%llu\n",
> @@ -930,7 +932,7 @@ int amdgpu_vram_mgr_init(struct amdgpu_device *adev)
>         mgr->default_page_size =3D PAGE_SIZE;
>
>         man->func =3D &amdgpu_vram_mgr_func;
> -       err =3D drm_buddy_init(&mgr->mm, man->size, PAGE_SIZE);
> +       err =3D gpu_buddy_init(&mgr->mm, man->size, PAGE_SIZE);
>         if (err)
>                 return err;
>
> @@ -965,11 +967,11 @@ void amdgpu_vram_mgr_fini(struct amdgpu_device *ade=
v)
>                 kfree(rsv);
>
>         list_for_each_entry_safe(rsv, temp, &mgr->reserved_pages, blocks)=
 {
> -               drm_buddy_free_list(&mgr->mm, &rsv->allocated, 0);
> +               gpu_buddy_free_list(&mgr->mm, &rsv->allocated, 0);
>                 kfree(rsv);
>         }
>         if (!adev->gmc.is_app_apu)
> -               drm_buddy_fini(&mgr->mm);
> +               gpu_buddy_fini(&mgr->mm);
>         mutex_unlock(&mgr->lock);
>
>         ttm_resource_manager_cleanup(man);
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.h b/drivers/gpu/d=
rm/amd/amdgpu/amdgpu_vram_mgr.h
> index 5f5fd9a911c2..429a21a2e9b2 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.h
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.h
> @@ -24,11 +24,11 @@
>  #ifndef __AMDGPU_VRAM_MGR_H__
>  #define __AMDGPU_VRAM_MGR_H__
>
> -#include <drm/drm_buddy.h>
> +#include <linux/gpu_buddy.h>
>
>  struct amdgpu_vram_mgr {
>         struct ttm_resource_manager manager;
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         /* protects access to buffer objects */
>         struct mutex lock;
>         struct list_head reservations_pending;
> @@ -57,19 +57,19 @@ struct amdgpu_vram_mgr_resource {
>         struct amdgpu_vres_task task;
>  };
>
> -static inline u64 amdgpu_vram_mgr_block_start(struct drm_buddy_block *bl=
ock)
> +static inline u64 amdgpu_vram_mgr_block_start(struct gpu_buddy_block *bl=
ock)
>  {
> -       return drm_buddy_block_offset(block);
> +       return gpu_buddy_block_offset(block);
>  }
>
> -static inline u64 amdgpu_vram_mgr_block_size(struct drm_buddy_block *blo=
ck)
> +static inline u64 amdgpu_vram_mgr_block_size(struct gpu_buddy_block *blo=
ck)
>  {
> -       return (u64)PAGE_SIZE << drm_buddy_block_order(block);
> +       return (u64)PAGE_SIZE << gpu_buddy_block_order(block);
>  }
>
> -static inline bool amdgpu_vram_mgr_is_cleared(struct drm_buddy_block *bl=
ock)
> +static inline bool amdgpu_vram_mgr_is_cleared(struct gpu_buddy_block *bl=
ock)
>  {
> -       return drm_buddy_block_is_clear(block);
> +       return gpu_buddy_block_is_clear(block);
>  }
>
>  static inline struct amdgpu_vram_mgr_resource *
> @@ -82,8 +82,8 @@ static inline void amdgpu_vram_mgr_set_cleared(struct t=
tm_resource *res)
>  {
>         struct amdgpu_vram_mgr_resource *ares =3D to_amdgpu_vram_mgr_reso=
urce(res);
>
> -       WARN_ON(ares->flags & DRM_BUDDY_CLEARED);
> -       ares->flags |=3D DRM_BUDDY_CLEARED;
> +       WARN_ON(ares->flags & GPU_BUDDY_CLEARED);
> +       ares->flags |=3D GPU_BUDDY_CLEARED;
>  }
>
>  int amdgpu_vram_mgr_query_address_block_info(struct amdgpu_vram_mgr *mgr=
,
> diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
> index 2f279b46bd2c..188b36054e59 100644
> --- a/drivers/gpu/drm/drm_buddy.c
> +++ b/drivers/gpu/drm/drm_buddy.c
> @@ -3,1262 +3,25 @@
>   * Copyright =C2=A9 2021 Intel Corporation
>   */
>
> -#include <kunit/test-bug.h>
> -
>  #include <linux/export.h>
> -#include <linux/kmemleak.h>
>  #include <linux/module.h>
>  #include <linux/sizes.h>
>
>  #include <drm/drm_buddy.h>
>  #include <drm/drm_print.h>
>
> -enum drm_buddy_free_tree {
> -       DRM_BUDDY_CLEAR_TREE =3D 0,
> -       DRM_BUDDY_DIRTY_TREE,
> -       DRM_BUDDY_MAX_FREE_TREES,
> -};
> -
> -static struct kmem_cache *slab_blocks;
> -
> -#define for_each_free_tree(tree) \
> -       for ((tree) =3D 0; (tree) < DRM_BUDDY_MAX_FREE_TREES; (tree)++)
> -
> -static struct drm_buddy_block *drm_block_alloc(struct drm_buddy *mm,
> -                                              struct drm_buddy_block *pa=
rent,
> -                                              unsigned int order,
> -                                              u64 offset)
> -{
> -       struct drm_buddy_block *block;
> -
> -       BUG_ON(order > DRM_BUDDY_MAX_ORDER);
> -
> -       block =3D kmem_cache_zalloc(slab_blocks, GFP_KERNEL);
> -       if (!block)
> -               return NULL;
> -
> -       block->header =3D offset;
> -       block->header |=3D order;
> -       block->parent =3D parent;
> -
> -       RB_CLEAR_NODE(&block->rb);
> -
> -       BUG_ON(block->header & DRM_BUDDY_HEADER_UNUSED);
> -       return block;
> -}
> -
> -static void drm_block_free(struct drm_buddy *mm,
> -                          struct drm_buddy_block *block)
> -{
> -       kmem_cache_free(slab_blocks, block);
> -}
> -
> -static enum drm_buddy_free_tree
> -get_block_tree(struct drm_buddy_block *block)
> -{
> -       return drm_buddy_block_is_clear(block) ?
> -              DRM_BUDDY_CLEAR_TREE : DRM_BUDDY_DIRTY_TREE;
> -}
> -
> -static struct drm_buddy_block *
> -rbtree_get_free_block(const struct rb_node *node)
> -{
> -       return node ? rb_entry(node, struct drm_buddy_block, rb) : NULL;
> -}
> -
> -static struct drm_buddy_block *
> -rbtree_last_free_block(struct rb_root *root)
> -{
> -       return rbtree_get_free_block(rb_last(root));
> -}
> -
> -static bool rbtree_is_empty(struct rb_root *root)
> -{
> -       return RB_EMPTY_ROOT(root);
> -}
> -
> -static bool drm_buddy_block_offset_less(const struct drm_buddy_block *bl=
ock,
> -                                       const struct drm_buddy_block *nod=
e)
> -{
> -       return drm_buddy_block_offset(block) < drm_buddy_block_offset(nod=
e);
> -}
> -
> -static bool rbtree_block_offset_less(struct rb_node *block,
> -                                    const struct rb_node *node)
> -{
> -       return drm_buddy_block_offset_less(rbtree_get_free_block(block),
> -                                          rbtree_get_free_block(node));
> -}
> -
> -static void rbtree_insert(struct drm_buddy *mm,
> -                         struct drm_buddy_block *block,
> -                         enum drm_buddy_free_tree tree)
> -{
> -       rb_add(&block->rb,
> -              &mm->free_trees[tree][drm_buddy_block_order(block)],
> -              rbtree_block_offset_less);
> -}
> -
> -static void rbtree_remove(struct drm_buddy *mm,
> -                         struct drm_buddy_block *block)
> -{
> -       unsigned int order =3D drm_buddy_block_order(block);
> -       enum drm_buddy_free_tree tree;
> -       struct rb_root *root;
> -
> -       tree =3D get_block_tree(block);
> -       root =3D &mm->free_trees[tree][order];
> -
> -       rb_erase(&block->rb, root);
> -       RB_CLEAR_NODE(&block->rb);
> -}
> -
> -static void clear_reset(struct drm_buddy_block *block)
> -{
> -       block->header &=3D ~DRM_BUDDY_HEADER_CLEAR;
> -}
> -
> -static void mark_cleared(struct drm_buddy_block *block)
> -{
> -       block->header |=3D DRM_BUDDY_HEADER_CLEAR;
> -}
> -
> -static void mark_allocated(struct drm_buddy *mm,
> -                          struct drm_buddy_block *block)
> -{
> -       block->header &=3D ~DRM_BUDDY_HEADER_STATE;
> -       block->header |=3D DRM_BUDDY_ALLOCATED;
> -
> -       rbtree_remove(mm, block);
> -}
> -
> -static void mark_free(struct drm_buddy *mm,
> -                     struct drm_buddy_block *block)
> -{
> -       enum drm_buddy_free_tree tree;
> -
> -       block->header &=3D ~DRM_BUDDY_HEADER_STATE;
> -       block->header |=3D DRM_BUDDY_FREE;
> -
> -       tree =3D get_block_tree(block);
> -       rbtree_insert(mm, block, tree);
> -}
> -
> -static void mark_split(struct drm_buddy *mm,
> -                      struct drm_buddy_block *block)
> -{
> -       block->header &=3D ~DRM_BUDDY_HEADER_STATE;
> -       block->header |=3D DRM_BUDDY_SPLIT;
> -
> -       rbtree_remove(mm, block);
> -}
> -
> -static inline bool overlaps(u64 s1, u64 e1, u64 s2, u64 e2)
> -{
> -       return s1 <=3D e2 && e1 >=3D s2;
> -}
> -
> -static inline bool contains(u64 s1, u64 e1, u64 s2, u64 e2)
> -{
> -       return s1 <=3D s2 && e1 >=3D e2;
> -}
> -
> -static struct drm_buddy_block *
> -__get_buddy(struct drm_buddy_block *block)
> -{
> -       struct drm_buddy_block *parent;
> -
> -       parent =3D block->parent;
> -       if (!parent)
> -               return NULL;
> -
> -       if (parent->left =3D=3D block)
> -               return parent->right;
> -
> -       return parent->left;
> -}
> -
> -static unsigned int __drm_buddy_free(struct drm_buddy *mm,
> -                                    struct drm_buddy_block *block,
> -                                    bool force_merge)
> -{
> -       struct drm_buddy_block *parent;
> -       unsigned int order;
> -
> -       while ((parent =3D block->parent)) {
> -               struct drm_buddy_block *buddy;
> -
> -               buddy =3D __get_buddy(block);
> -
> -               if (!drm_buddy_block_is_free(buddy))
> -                       break;
> -
> -               if (!force_merge) {
> -                       /*
> -                        * Check the block and its buddy clear state and =
exit
> -                        * the loop if they both have the dissimilar stat=
e.
> -                        */
> -                       if (drm_buddy_block_is_clear(block) !=3D
> -                           drm_buddy_block_is_clear(buddy))
> -                               break;
> -
> -                       if (drm_buddy_block_is_clear(block))
> -                               mark_cleared(parent);
> -               }
> -
> -               rbtree_remove(mm, buddy);
> -               if (force_merge && drm_buddy_block_is_clear(buddy))
> -                       mm->clear_avail -=3D drm_buddy_block_size(mm, bud=
dy);
> -
> -               drm_block_free(mm, block);
> -               drm_block_free(mm, buddy);
> -
> -               block =3D parent;
> -       }
> -
> -       order =3D drm_buddy_block_order(block);
> -       mark_free(mm, block);
> -
> -       return order;
> -}
> -
> -static int __force_merge(struct drm_buddy *mm,
> -                        u64 start,
> -                        u64 end,
> -                        unsigned int min_order)
> -{
> -       unsigned int tree, order;
> -       int i;
> -
> -       if (!min_order)
> -               return -ENOMEM;
> -
> -       if (min_order > mm->max_order)
> -               return -EINVAL;
> -
> -       for_each_free_tree(tree) {
> -               for (i =3D min_order - 1; i >=3D 0; i--) {
> -                       struct rb_node *iter =3D rb_last(&mm->free_trees[=
tree][i]);
> -
> -                       while (iter) {
> -                               struct drm_buddy_block *block, *buddy;
> -                               u64 block_start, block_end;
> -
> -                               block =3D rbtree_get_free_block(iter);
> -                               iter =3D rb_prev(iter);
> -
> -                               if (!block || !block->parent)
> -                                       continue;
> -
> -                               block_start =3D drm_buddy_block_offset(bl=
ock);
> -                               block_end =3D block_start + drm_buddy_blo=
ck_size(mm, block) - 1;
> -
> -                               if (!contains(start, end, block_start, bl=
ock_end))
> -                                       continue;
> -
> -                               buddy =3D __get_buddy(block);
> -                               if (!drm_buddy_block_is_free(buddy))
> -                                       continue;
> -
> -                               WARN_ON(drm_buddy_block_is_clear(block) =
=3D=3D
> -                                       drm_buddy_block_is_clear(buddy));
> -
> -                               /*
> -                                * Advance to the next node when the curr=
ent node is the buddy,
> -                                * as freeing the block will also remove =
its buddy from the tree.
> -                                */
> -                               if (iter =3D=3D &buddy->rb)
> -                                       iter =3D rb_prev(iter);
> -
> -                               rbtree_remove(mm, block);
> -                               if (drm_buddy_block_is_clear(block))
> -                                       mm->clear_avail -=3D drm_buddy_bl=
ock_size(mm, block);
> -
> -                               order =3D __drm_buddy_free(mm, block, tru=
e);
> -                               if (order >=3D min_order)
> -                                       return 0;
> -                       }
> -               }
> -       }
> -
> -       return -ENOMEM;
> -}
> -
> -/**
> - * drm_buddy_init - init memory manager
> - *
> - * @mm: DRM buddy manager to initialize
> - * @size: size in bytes to manage
> - * @chunk_size: minimum page size in bytes for our allocations
> - *
> - * Initializes the memory manager and its resources.
> - *
> - * Returns:
> - * 0 on success, error code on failure.
> - */
> -int drm_buddy_init(struct drm_buddy *mm, u64 size, u64 chunk_size)
> -{
> -       unsigned int i, j, root_count =3D 0;
> -       u64 offset =3D 0;
> -
> -       if (size < chunk_size)
> -               return -EINVAL;
> -
> -       if (chunk_size < SZ_4K)
> -               return -EINVAL;
> -
> -       if (!is_power_of_2(chunk_size))
> -               return -EINVAL;
> -
> -       size =3D round_down(size, chunk_size);
> -
> -       mm->size =3D size;
> -       mm->avail =3D size;
> -       mm->clear_avail =3D 0;
> -       mm->chunk_size =3D chunk_size;
> -       mm->max_order =3D ilog2(size) - ilog2(chunk_size);
> -
> -       BUG_ON(mm->max_order > DRM_BUDDY_MAX_ORDER);
> -
> -       mm->free_trees =3D kmalloc_array(DRM_BUDDY_MAX_FREE_TREES,
> -                                      sizeof(*mm->free_trees),
> -                                      GFP_KERNEL);
> -       if (!mm->free_trees)
> -               return -ENOMEM;
> -
> -       for_each_free_tree(i) {
> -               mm->free_trees[i] =3D kmalloc_array(mm->max_order + 1,
> -                                                 sizeof(struct rb_root),
> -                                                 GFP_KERNEL);
> -               if (!mm->free_trees[i])
> -                       goto out_free_tree;
> -
> -               for (j =3D 0; j <=3D mm->max_order; ++j)
> -                       mm->free_trees[i][j] =3D RB_ROOT;
> -       }
> -
> -       mm->n_roots =3D hweight64(size);
> -
> -       mm->roots =3D kmalloc_array(mm->n_roots,
> -                                 sizeof(struct drm_buddy_block *),
> -                                 GFP_KERNEL);
> -       if (!mm->roots)
> -               goto out_free_tree;
> -
> -       /*
> -        * Split into power-of-two blocks, in case we are given a size th=
at is
> -        * not itself a power-of-two.
> -        */
> -       do {
> -               struct drm_buddy_block *root;
> -               unsigned int order;
> -               u64 root_size;
> -
> -               order =3D ilog2(size) - ilog2(chunk_size);
> -               root_size =3D chunk_size << order;
> -
> -               root =3D drm_block_alloc(mm, NULL, order, offset);
> -               if (!root)
> -                       goto out_free_roots;
> -
> -               mark_free(mm, root);
> -
> -               BUG_ON(root_count > mm->max_order);
> -               BUG_ON(drm_buddy_block_size(mm, root) < chunk_size);
> -
> -               mm->roots[root_count] =3D root;
> -
> -               offset +=3D root_size;
> -               size -=3D root_size;
> -               root_count++;
> -       } while (size);
> -
> -       return 0;
> -
> -out_free_roots:
> -       while (root_count--)
> -               drm_block_free(mm, mm->roots[root_count]);
> -       kfree(mm->roots);
> -out_free_tree:
> -       while (i--)
> -               kfree(mm->free_trees[i]);
> -       kfree(mm->free_trees);
> -       return -ENOMEM;
> -}
> -EXPORT_SYMBOL(drm_buddy_init);
> -
> -/**
> - * drm_buddy_fini - tear down the memory manager
> - *
> - * @mm: DRM buddy manager to free
> - *
> - * Cleanup memory manager resources and the freetree
> - */
> -void drm_buddy_fini(struct drm_buddy *mm)
> -{
> -       u64 root_size, size, start;
> -       unsigned int order;
> -       int i;
> -
> -       size =3D mm->size;
> -
> -       for (i =3D 0; i < mm->n_roots; ++i) {
> -               order =3D ilog2(size) - ilog2(mm->chunk_size);
> -               start =3D drm_buddy_block_offset(mm->roots[i]);
> -               __force_merge(mm, start, start + size, order);
> -
> -               if (WARN_ON(!drm_buddy_block_is_free(mm->roots[i])))
> -                       kunit_fail_current_test("buddy_fini() root");
> -
> -               drm_block_free(mm, mm->roots[i]);
> -
> -               root_size =3D mm->chunk_size << order;
> -               size -=3D root_size;
> -       }
> -
> -       WARN_ON(mm->avail !=3D mm->size);
> -
> -       for_each_free_tree(i)
> -               kfree(mm->free_trees[i]);
> -       kfree(mm->roots);
> -}
> -EXPORT_SYMBOL(drm_buddy_fini);
> -
> -static int split_block(struct drm_buddy *mm,
> -                      struct drm_buddy_block *block)
> -{
> -       unsigned int block_order =3D drm_buddy_block_order(block) - 1;
> -       u64 offset =3D drm_buddy_block_offset(block);
> -
> -       BUG_ON(!drm_buddy_block_is_free(block));
> -       BUG_ON(!drm_buddy_block_order(block));
> -
> -       block->left =3D drm_block_alloc(mm, block, block_order, offset);
> -       if (!block->left)
> -               return -ENOMEM;
> -
> -       block->right =3D drm_block_alloc(mm, block, block_order,
> -                                      offset + (mm->chunk_size << block_=
order));
> -       if (!block->right) {
> -               drm_block_free(mm, block->left);
> -               return -ENOMEM;
> -       }
> -
> -       mark_split(mm, block);
> -
> -       if (drm_buddy_block_is_clear(block)) {
> -               mark_cleared(block->left);
> -               mark_cleared(block->right);
> -               clear_reset(block);
> -       }
> -
> -       mark_free(mm, block->left);
> -       mark_free(mm, block->right);
> -
> -       return 0;
> -}
> -
> -/**
> - * drm_get_buddy - get buddy address
> - *
> - * @block: DRM buddy block
> - *
> - * Returns the corresponding buddy block for @block, or NULL
> - * if this is a root block and can't be merged further.
> - * Requires some kind of locking to protect against
> - * any concurrent allocate and free operations.
> - */
> -struct drm_buddy_block *
> -drm_get_buddy(struct drm_buddy_block *block)
> -{
> -       return __get_buddy(block);
> -}
> -EXPORT_SYMBOL(drm_get_buddy);
> -
> -/**
> - * drm_buddy_reset_clear - reset blocks clear state
> - *
> - * @mm: DRM buddy manager
> - * @is_clear: blocks clear state
> - *
> - * Reset the clear state based on @is_clear value for each block
> - * in the freetree.
> - */
> -void drm_buddy_reset_clear(struct drm_buddy *mm, bool is_clear)
> -{
> -       enum drm_buddy_free_tree src_tree, dst_tree;
> -       u64 root_size, size, start;
> -       unsigned int order;
> -       int i;
> -
> -       size =3D mm->size;
> -       for (i =3D 0; i < mm->n_roots; ++i) {
> -               order =3D ilog2(size) - ilog2(mm->chunk_size);
> -               start =3D drm_buddy_block_offset(mm->roots[i]);
> -               __force_merge(mm, start, start + size, order);
> -
> -               root_size =3D mm->chunk_size << order;
> -               size -=3D root_size;
> -       }
> -
> -       src_tree =3D is_clear ? DRM_BUDDY_DIRTY_TREE : DRM_BUDDY_CLEAR_TR=
EE;
> -       dst_tree =3D is_clear ? DRM_BUDDY_CLEAR_TREE : DRM_BUDDY_DIRTY_TR=
EE;
> -
> -       for (i =3D 0; i <=3D mm->max_order; ++i) {
> -               struct rb_root *root =3D &mm->free_trees[src_tree][i];
> -               struct drm_buddy_block *block, *tmp;
> -
> -               rbtree_postorder_for_each_entry_safe(block, tmp, root, rb=
) {
> -                       rbtree_remove(mm, block);
> -                       if (is_clear) {
> -                               mark_cleared(block);
> -                               mm->clear_avail +=3D drm_buddy_block_size=
(mm, block);
> -                       } else {
> -                               clear_reset(block);
> -                               mm->clear_avail -=3D drm_buddy_block_size=
(mm, block);
> -                       }
> -
> -                       rbtree_insert(mm, block, dst_tree);
> -               }
> -       }
> -}
> -EXPORT_SYMBOL(drm_buddy_reset_clear);
> -
> -/**
> - * drm_buddy_free_block - free a block
> - *
> - * @mm: DRM buddy manager
> - * @block: block to be freed
> - */
> -void drm_buddy_free_block(struct drm_buddy *mm,
> -                         struct drm_buddy_block *block)
> -{
> -       BUG_ON(!drm_buddy_block_is_allocated(block));
> -       mm->avail +=3D drm_buddy_block_size(mm, block);
> -       if (drm_buddy_block_is_clear(block))
> -               mm->clear_avail +=3D drm_buddy_block_size(mm, block);
> -
> -       __drm_buddy_free(mm, block, false);
> -}
> -EXPORT_SYMBOL(drm_buddy_free_block);
> -
> -static void __drm_buddy_free_list(struct drm_buddy *mm,
> -                                 struct list_head *objects,
> -                                 bool mark_clear,
> -                                 bool mark_dirty)
> -{
> -       struct drm_buddy_block *block, *on;
> -
> -       WARN_ON(mark_dirty && mark_clear);
> -
> -       list_for_each_entry_safe(block, on, objects, link) {
> -               if (mark_clear)
> -                       mark_cleared(block);
> -               else if (mark_dirty)
> -                       clear_reset(block);
> -               drm_buddy_free_block(mm, block);
> -               cond_resched();
> -       }
> -       INIT_LIST_HEAD(objects);
> -}
> -
> -static void drm_buddy_free_list_internal(struct drm_buddy *mm,
> -                                        struct list_head *objects)
> -{
> -       /*
> -        * Don't touch the clear/dirty bit, since allocation is still int=
ernal
> -        * at this point. For example we might have just failed part of t=
he
> -        * allocation.
> -        */
> -       __drm_buddy_free_list(mm, objects, false, false);
> -}
> -
> -/**
> - * drm_buddy_free_list - free blocks
> - *
> - * @mm: DRM buddy manager
> - * @objects: input list head to free blocks
> - * @flags: optional flags like DRM_BUDDY_CLEARED
> - */
> -void drm_buddy_free_list(struct drm_buddy *mm,
> -                        struct list_head *objects,
> -                        unsigned int flags)
> -{
> -       bool mark_clear =3D flags & DRM_BUDDY_CLEARED;
> -
> -       __drm_buddy_free_list(mm, objects, mark_clear, !mark_clear);
> -}
> -EXPORT_SYMBOL(drm_buddy_free_list);
> -
> -static bool block_incompatible(struct drm_buddy_block *block, unsigned i=
nt flags)
> -{
> -       bool needs_clear =3D flags & DRM_BUDDY_CLEAR_ALLOCATION;
> -
> -       return needs_clear !=3D drm_buddy_block_is_clear(block);
> -}
> -
> -static struct drm_buddy_block *
> -__alloc_range_bias(struct drm_buddy *mm,
> -                  u64 start, u64 end,
> -                  unsigned int order,
> -                  unsigned long flags,
> -                  bool fallback)
> -{
> -       u64 req_size =3D mm->chunk_size << order;
> -       struct drm_buddy_block *block;
> -       struct drm_buddy_block *buddy;
> -       LIST_HEAD(dfs);
> -       int err;
> -       int i;
> -
> -       end =3D end - 1;
> -
> -       for (i =3D 0; i < mm->n_roots; ++i)
> -               list_add_tail(&mm->roots[i]->tmp_link, &dfs);
> -
> -       do {
> -               u64 block_start;
> -               u64 block_end;
> -
> -               block =3D list_first_entry_or_null(&dfs,
> -                                                struct drm_buddy_block,
> -                                                tmp_link);
> -               if (!block)
> -                       break;
> -
> -               list_del(&block->tmp_link);
> -
> -               if (drm_buddy_block_order(block) < order)
> -                       continue;
> -
> -               block_start =3D drm_buddy_block_offset(block);
> -               block_end =3D block_start + drm_buddy_block_size(mm, bloc=
k) - 1;
> -
> -               if (!overlaps(start, end, block_start, block_end))
> -                       continue;
> -
> -               if (drm_buddy_block_is_allocated(block))
> -                       continue;
> -
> -               if (block_start < start || block_end > end) {
> -                       u64 adjusted_start =3D max(block_start, start);
> -                       u64 adjusted_end =3D min(block_end, end);
> -
> -                       if (round_down(adjusted_end + 1, req_size) <=3D
> -                           round_up(adjusted_start, req_size))
> -                               continue;
> -               }
> -
> -               if (!fallback && block_incompatible(block, flags))
> -                       continue;
> -
> -               if (contains(start, end, block_start, block_end) &&
> -                   order =3D=3D drm_buddy_block_order(block)) {
> -                       /*
> -                        * Find the free block within the range.
> -                        */
> -                       if (drm_buddy_block_is_free(block))
> -                               return block;
> -
> -                       continue;
> -               }
> -
> -               if (!drm_buddy_block_is_split(block)) {
> -                       err =3D split_block(mm, block);
> -                       if (unlikely(err))
> -                               goto err_undo;
> -               }
> -
> -               list_add(&block->right->tmp_link, &dfs);
> -               list_add(&block->left->tmp_link, &dfs);
> -       } while (1);
> -
> -       return ERR_PTR(-ENOSPC);
> -
> -err_undo:
> -       /*
> -        * We really don't want to leave around a bunch of split blocks, =
since
> -        * bigger is better, so make sure we merge everything back before=
 we
> -        * free the allocated blocks.
> -        */
> -       buddy =3D __get_buddy(block);
> -       if (buddy &&
> -           (drm_buddy_block_is_free(block) &&
> -            drm_buddy_block_is_free(buddy)))
> -               __drm_buddy_free(mm, block, false);
> -       return ERR_PTR(err);
> -}
> -
> -static struct drm_buddy_block *
> -__drm_buddy_alloc_range_bias(struct drm_buddy *mm,
> -                            u64 start, u64 end,
> -                            unsigned int order,
> -                            unsigned long flags)
> -{
> -       struct drm_buddy_block *block;
> -       bool fallback =3D false;
> -
> -       block =3D __alloc_range_bias(mm, start, end, order,
> -                                  flags, fallback);
> -       if (IS_ERR(block))
> -               return __alloc_range_bias(mm, start, end, order,
> -                                         flags, !fallback);
> -
> -       return block;
> -}
> -
> -static struct drm_buddy_block *
> -get_maxblock(struct drm_buddy *mm,
> -            unsigned int order,
> -            enum drm_buddy_free_tree tree)
> -{
> -       struct drm_buddy_block *max_block =3D NULL, *block =3D NULL;
> -       struct rb_root *root;
> -       unsigned int i;
> -
> -       for (i =3D order; i <=3D mm->max_order; ++i) {
> -               root =3D &mm->free_trees[tree][i];
> -               block =3D rbtree_last_free_block(root);
> -               if (!block)
> -                       continue;
> -
> -               if (!max_block) {
> -                       max_block =3D block;
> -                       continue;
> -               }
> -
> -               if (drm_buddy_block_offset(block) >
> -                   drm_buddy_block_offset(max_block)) {
> -                       max_block =3D block;
> -               }
> -       }
> -
> -       return max_block;
> -}
> -
> -static struct drm_buddy_block *
> -alloc_from_freetree(struct drm_buddy *mm,
> -                   unsigned int order,
> -                   unsigned long flags)
> -{
> -       struct drm_buddy_block *block =3D NULL;
> -       struct rb_root *root;
> -       enum drm_buddy_free_tree tree;
> -       unsigned int tmp;
> -       int err;
> -
> -       tree =3D (flags & DRM_BUDDY_CLEAR_ALLOCATION) ?
> -               DRM_BUDDY_CLEAR_TREE : DRM_BUDDY_DIRTY_TREE;
> -
> -       if (flags & DRM_BUDDY_TOPDOWN_ALLOCATION) {
> -               block =3D get_maxblock(mm, order, tree);
> -               if (block)
> -                       /* Store the obtained block order */
> -                       tmp =3D drm_buddy_block_order(block);
> -       } else {
> -               for (tmp =3D order; tmp <=3D mm->max_order; ++tmp) {
> -                       /* Get RB tree root for this order and tree */
> -                       root =3D &mm->free_trees[tree][tmp];
> -                       block =3D rbtree_last_free_block(root);
> -                       if (block)
> -                               break;
> -               }
> -       }
> -
> -       if (!block) {
> -               /* Try allocating from the other tree */
> -               tree =3D (tree =3D=3D DRM_BUDDY_CLEAR_TREE) ?
> -                       DRM_BUDDY_DIRTY_TREE : DRM_BUDDY_CLEAR_TREE;
> -
> -               for (tmp =3D order; tmp <=3D mm->max_order; ++tmp) {
> -                       root =3D &mm->free_trees[tree][tmp];
> -                       block =3D rbtree_last_free_block(root);
> -                       if (block)
> -                               break;
> -               }
> -
> -               if (!block)
> -                       return ERR_PTR(-ENOSPC);
> -       }
> -
> -       BUG_ON(!drm_buddy_block_is_free(block));
> -
> -       while (tmp !=3D order) {
> -               err =3D split_block(mm, block);
> -               if (unlikely(err))
> -                       goto err_undo;
> -
> -               block =3D block->right;
> -               tmp--;
> -       }
> -       return block;
> -
> -err_undo:
> -       if (tmp !=3D order)
> -               __drm_buddy_free(mm, block, false);
> -       return ERR_PTR(err);
> -}
> -
> -static int __alloc_range(struct drm_buddy *mm,
> -                        struct list_head *dfs,
> -                        u64 start, u64 size,
> -                        struct list_head *blocks,
> -                        u64 *total_allocated_on_err)
> -{
> -       struct drm_buddy_block *block;
> -       struct drm_buddy_block *buddy;
> -       u64 total_allocated =3D 0;
> -       LIST_HEAD(allocated);
> -       u64 end;
> -       int err;
> -
> -       end =3D start + size - 1;
> -
> -       do {
> -               u64 block_start;
> -               u64 block_end;
> -
> -               block =3D list_first_entry_or_null(dfs,
> -                                                struct drm_buddy_block,
> -                                                tmp_link);
> -               if (!block)
> -                       break;
> -
> -               list_del(&block->tmp_link);
> -
> -               block_start =3D drm_buddy_block_offset(block);
> -               block_end =3D block_start + drm_buddy_block_size(mm, bloc=
k) - 1;
> -
> -               if (!overlaps(start, end, block_start, block_end))
> -                       continue;
> -
> -               if (drm_buddy_block_is_allocated(block)) {
> -                       err =3D -ENOSPC;
> -                       goto err_free;
> -               }
> -
> -               if (contains(start, end, block_start, block_end)) {
> -                       if (drm_buddy_block_is_free(block)) {
> -                               mark_allocated(mm, block);
> -                               total_allocated +=3D drm_buddy_block_size=
(mm, block);
> -                               mm->avail -=3D drm_buddy_block_size(mm, b=
lock);
> -                               if (drm_buddy_block_is_clear(block))
> -                                       mm->clear_avail -=3D drm_buddy_bl=
ock_size(mm, block);
> -                               list_add_tail(&block->link, &allocated);
> -                               continue;
> -                       } else if (!mm->clear_avail) {
> -                               err =3D -ENOSPC;
> -                               goto err_free;
> -                       }
> -               }
> -
> -               if (!drm_buddy_block_is_split(block)) {
> -                       err =3D split_block(mm, block);
> -                       if (unlikely(err))
> -                               goto err_undo;
> -               }
> -
> -               list_add(&block->right->tmp_link, dfs);
> -               list_add(&block->left->tmp_link, dfs);
> -       } while (1);
> -
> -       if (total_allocated < size) {
> -               err =3D -ENOSPC;
> -               goto err_free;
> -       }
> -
> -       list_splice_tail(&allocated, blocks);
> -
> -       return 0;
> -
> -err_undo:
> -       /*
> -        * We really don't want to leave around a bunch of split blocks, =
since
> -        * bigger is better, so make sure we merge everything back before=
 we
> -        * free the allocated blocks.
> -        */
> -       buddy =3D __get_buddy(block);
> -       if (buddy &&
> -           (drm_buddy_block_is_free(block) &&
> -            drm_buddy_block_is_free(buddy)))
> -               __drm_buddy_free(mm, block, false);
> -
> -err_free:
> -       if (err =3D=3D -ENOSPC && total_allocated_on_err) {
> -               list_splice_tail(&allocated, blocks);
> -               *total_allocated_on_err =3D total_allocated;
> -       } else {
> -               drm_buddy_free_list_internal(mm, &allocated);
> -       }
> -
> -       return err;
> -}
> -
> -static int __drm_buddy_alloc_range(struct drm_buddy *mm,
> -                                  u64 start,
> -                                  u64 size,
> -                                  u64 *total_allocated_on_err,
> -                                  struct list_head *blocks)
> -{
> -       LIST_HEAD(dfs);
> -       int i;
> -
> -       for (i =3D 0; i < mm->n_roots; ++i)
> -               list_add_tail(&mm->roots[i]->tmp_link, &dfs);
> -
> -       return __alloc_range(mm, &dfs, start, size,
> -                            blocks, total_allocated_on_err);
> -}
> -
> -static int __alloc_contig_try_harder(struct drm_buddy *mm,
> -                                    u64 size,
> -                                    u64 min_block_size,
> -                                    struct list_head *blocks)
> -{
> -       u64 rhs_offset, lhs_offset, lhs_size, filled;
> -       struct drm_buddy_block *block;
> -       unsigned int tree, order;
> -       LIST_HEAD(blocks_lhs);
> -       unsigned long pages;
> -       u64 modify_size;
> -       int err;
> -
> -       modify_size =3D rounddown_pow_of_two(size);
> -       pages =3D modify_size >> ilog2(mm->chunk_size);
> -       order =3D fls(pages) - 1;
> -       if (order =3D=3D 0)
> -               return -ENOSPC;
> -
> -       for_each_free_tree(tree) {
> -               struct rb_root *root;
> -               struct rb_node *iter;
> -
> -               root =3D &mm->free_trees[tree][order];
> -               if (rbtree_is_empty(root))
> -                       continue;
> -
> -               iter =3D rb_last(root);
> -               while (iter) {
> -                       block =3D rbtree_get_free_block(iter);
> -
> -                       /* Allocate blocks traversing RHS */
> -                       rhs_offset =3D drm_buddy_block_offset(block);
> -                       err =3D  __drm_buddy_alloc_range(mm, rhs_offset, =
size,
> -                                                      &filled, blocks);
> -                       if (!err || err !=3D -ENOSPC)
> -                               return err;
> -
> -                       lhs_size =3D max((size - filled), min_block_size)=
;
> -                       if (!IS_ALIGNED(lhs_size, min_block_size))
> -                               lhs_size =3D round_up(lhs_size, min_block=
_size);
> -
> -                       /* Allocate blocks traversing LHS */
> -                       lhs_offset =3D drm_buddy_block_offset(block) - lh=
s_size;
> -                       err =3D  __drm_buddy_alloc_range(mm, lhs_offset, =
lhs_size,
> -                                                      NULL, &blocks_lhs)=
;
> -                       if (!err) {
> -                               list_splice(&blocks_lhs, blocks);
> -                               return 0;
> -                       } else if (err !=3D -ENOSPC) {
> -                               drm_buddy_free_list_internal(mm, blocks);
> -                               return err;
> -                       }
> -                       /* Free blocks for the next iteration */
> -                       drm_buddy_free_list_internal(mm, blocks);
> -
> -                       iter =3D rb_prev(iter);
> -               }
> -       }
> -
> -       return -ENOSPC;
> -}
> -
> -/**
> - * drm_buddy_block_trim - free unused pages
> - *
> - * @mm: DRM buddy manager
> - * @start: start address to begin the trimming.
> - * @new_size: original size requested
> - * @blocks: Input and output list of allocated blocks.
> - * MUST contain single block as input to be trimmed.
> - * On success will contain the newly allocated blocks
> - * making up the @new_size. Blocks always appear in
> - * ascending order
> - *
> - * For contiguous allocation, we round up the size to the nearest
> - * power of two value, drivers consume *actual* size, so remaining
> - * portions are unused and can be optionally freed with this function
> - *
> - * Returns:
> - * 0 on success, error code on failure.
> - */
> -int drm_buddy_block_trim(struct drm_buddy *mm,
> -                        u64 *start,
> -                        u64 new_size,
> -                        struct list_head *blocks)
> -{
> -       struct drm_buddy_block *parent;
> -       struct drm_buddy_block *block;
> -       u64 block_start, block_end;
> -       LIST_HEAD(dfs);
> -       u64 new_start;
> -       int err;
> -
> -       if (!list_is_singular(blocks))
> -               return -EINVAL;
> -
> -       block =3D list_first_entry(blocks,
> -                                struct drm_buddy_block,
> -                                link);
> -
> -       block_start =3D drm_buddy_block_offset(block);
> -       block_end =3D block_start + drm_buddy_block_size(mm, block);
> -
> -       if (WARN_ON(!drm_buddy_block_is_allocated(block)))
> -               return -EINVAL;
> -
> -       if (new_size > drm_buddy_block_size(mm, block))
> -               return -EINVAL;
> -
> -       if (!new_size || !IS_ALIGNED(new_size, mm->chunk_size))
> -               return -EINVAL;
> -
> -       if (new_size =3D=3D drm_buddy_block_size(mm, block))
> -               return 0;
> -
> -       new_start =3D block_start;
> -       if (start) {
> -               new_start =3D *start;
> -
> -               if (new_start < block_start)
> -                       return -EINVAL;
> -
> -               if (!IS_ALIGNED(new_start, mm->chunk_size))
> -                       return -EINVAL;
> -
> -               if (range_overflows(new_start, new_size, block_end))
> -                       return -EINVAL;
> -       }
> -
> -       list_del(&block->link);
> -       mark_free(mm, block);
> -       mm->avail +=3D drm_buddy_block_size(mm, block);
> -       if (drm_buddy_block_is_clear(block))
> -               mm->clear_avail +=3D drm_buddy_block_size(mm, block);
> -
> -       /* Prevent recursively freeing this node */
> -       parent =3D block->parent;
> -       block->parent =3D NULL;
> -
> -       list_add(&block->tmp_link, &dfs);
> -       err =3D  __alloc_range(mm, &dfs, new_start, new_size, blocks, NUL=
L);
> -       if (err) {
> -               mark_allocated(mm, block);
> -               mm->avail -=3D drm_buddy_block_size(mm, block);
> -               if (drm_buddy_block_is_clear(block))
> -                       mm->clear_avail -=3D drm_buddy_block_size(mm, blo=
ck);
> -               list_add(&block->link, blocks);
> -       }
> -
> -       block->parent =3D parent;
> -       return err;
> -}
> -EXPORT_SYMBOL(drm_buddy_block_trim);
> -
> -static struct drm_buddy_block *
> -__drm_buddy_alloc_blocks(struct drm_buddy *mm,
> -                        u64 start, u64 end,
> -                        unsigned int order,
> -                        unsigned long flags)
> -{
> -       if (flags & DRM_BUDDY_RANGE_ALLOCATION)
> -               /* Allocate traversing within the range */
> -               return  __drm_buddy_alloc_range_bias(mm, start, end,
> -                                                    order, flags);
> -       else
> -               /* Allocate from freetree */
> -               return alloc_from_freetree(mm, order, flags);
> -}
> -
> -/**
> - * drm_buddy_alloc_blocks - allocate power-of-two blocks
> - *
> - * @mm: DRM buddy manager to allocate from
> - * @start: start of the allowed range for this block
> - * @end: end of the allowed range for this block
> - * @size: size of the allocation in bytes
> - * @min_block_size: alignment of the allocation
> - * @blocks: output list head to add allocated blocks
> - * @flags: DRM_BUDDY_*_ALLOCATION flags
> - *
> - * alloc_range_bias() called on range limitations, which traverses
> - * the tree and returns the desired block.
> - *
> - * alloc_from_freetree() called when *no* range restrictions
> - * are enforced, which picks the block from the freetree.
> - *
> - * Returns:
> - * 0 on success, error code on failure.
> - */
> -int drm_buddy_alloc_blocks(struct drm_buddy *mm,
> -                          u64 start, u64 end, u64 size,
> -                          u64 min_block_size,
> -                          struct list_head *blocks,
> -                          unsigned long flags)
> -{
> -       struct drm_buddy_block *block =3D NULL;
> -       u64 original_size, original_min_size;
> -       unsigned int min_order, order;
> -       LIST_HEAD(allocated);
> -       unsigned long pages;
> -       int err;
> -
> -       if (size < mm->chunk_size)
> -               return -EINVAL;
> -
> -       if (min_block_size < mm->chunk_size)
> -               return -EINVAL;
> -
> -       if (!is_power_of_2(min_block_size))
> -               return -EINVAL;
> -
> -       if (!IS_ALIGNED(start | end | size, mm->chunk_size))
> -               return -EINVAL;
> -
> -       if (end > mm->size)
> -               return -EINVAL;
> -
> -       if (range_overflows(start, size, mm->size))
> -               return -EINVAL;
> -
> -       /* Actual range allocation */
> -       if (start + size =3D=3D end) {
> -               if (!IS_ALIGNED(start | end, min_block_size))
> -                       return -EINVAL;
> -
> -               return __drm_buddy_alloc_range(mm, start, size, NULL, blo=
cks);
> -       }
> -
> -       original_size =3D size;
> -       original_min_size =3D min_block_size;
> -
> -       /* Roundup the size to power of 2 */
> -       if (flags & DRM_BUDDY_CONTIGUOUS_ALLOCATION) {
> -               size =3D roundup_pow_of_two(size);
> -               min_block_size =3D size;
> -       /* Align size value to min_block_size */
> -       } else if (!IS_ALIGNED(size, min_block_size)) {
> -               size =3D round_up(size, min_block_size);
> -       }
> -
> -       pages =3D size >> ilog2(mm->chunk_size);
> -       order =3D fls(pages) - 1;
> -       min_order =3D ilog2(min_block_size) - ilog2(mm->chunk_size);
> -
> -       do {
> -               order =3D min(order, (unsigned int)fls(pages) - 1);
> -               BUG_ON(order > mm->max_order);
> -               BUG_ON(order < min_order);
> -
> -               do {
> -                       block =3D __drm_buddy_alloc_blocks(mm, start,
> -                                                        end,
> -                                                        order,
> -                                                        flags);
> -                       if (!IS_ERR(block))
> -                               break;
> -
> -                       if (order-- =3D=3D min_order) {
> -                               /* Try allocation through force merge met=
hod */
> -                               if (mm->clear_avail &&
> -                                   !__force_merge(mm, start, end, min_or=
der)) {
> -                                       block =3D __drm_buddy_alloc_block=
s(mm, start,
> -                                                                        =
end,
> -                                                                        =
min_order,
> -                                                                        =
flags);
> -                                       if (!IS_ERR(block)) {
> -                                               order =3D min_order;
> -                                               break;
> -                                       }
> -                               }
> -
> -                               /*
> -                                * Try contiguous block allocation throug=
h
> -                                * try harder method.
> -                                */
> -                               if (flags & DRM_BUDDY_CONTIGUOUS_ALLOCATI=
ON &&
> -                                   !(flags & DRM_BUDDY_RANGE_ALLOCATION)=
)
> -                                       return __alloc_contig_try_harder(=
mm,
> -                                                                        =
original_size,
> -                                                                        =
original_min_size,
> -                                                                        =
blocks);
> -                               err =3D -ENOSPC;
> -                               goto err_free;
> -                       }
> -               } while (1);
> -
> -               mark_allocated(mm, block);
> -               mm->avail -=3D drm_buddy_block_size(mm, block);
> -               if (drm_buddy_block_is_clear(block))
> -                       mm->clear_avail -=3D drm_buddy_block_size(mm, blo=
ck);
> -               kmemleak_update_trace(block);
> -               list_add_tail(&block->link, &allocated);
> -
> -               pages -=3D BIT(order);
> -
> -               if (!pages)
> -                       break;
> -       } while (1);
> -
> -       /* Trim the allocated block to the required size */
> -       if (!(flags & DRM_BUDDY_TRIM_DISABLE) &&
> -           original_size !=3D size) {
> -               struct list_head *trim_list;
> -               LIST_HEAD(temp);
> -               u64 trim_size;
> -
> -               trim_list =3D &allocated;
> -               trim_size =3D original_size;
> -
> -               if (!list_is_singular(&allocated)) {
> -                       block =3D list_last_entry(&allocated, typeof(*blo=
ck), link);
> -                       list_move(&block->link, &temp);
> -                       trim_list =3D &temp;
> -                       trim_size =3D drm_buddy_block_size(mm, block) -
> -                               (size - original_size);
> -               }
> -
> -               drm_buddy_block_trim(mm,
> -                                    NULL,
> -                                    trim_size,
> -                                    trim_list);
> -
> -               if (!list_empty(&temp))
> -                       list_splice_tail(trim_list, &allocated);
> -       }
> -
> -       list_splice_tail(&allocated, blocks);
> -       return 0;
> -
> -err_free:
> -       drm_buddy_free_list_internal(mm, &allocated);
> -       return err;
> -}
> -EXPORT_SYMBOL(drm_buddy_alloc_blocks);
> -
>  /**
>   * drm_buddy_block_print - print block information
>   *
> - * @mm: DRM buddy manager
> - * @block: DRM buddy block
> + * @mm: GPU buddy manager
> + * @block: GPU buddy block
>   * @p: DRM printer to use
>   */
> -void drm_buddy_block_print(struct drm_buddy *mm,
> -                          struct drm_buddy_block *block,
> +void drm_buddy_block_print(struct gpu_buddy *mm, struct gpu_buddy_block =
*block,
>                            struct drm_printer *p)
>  {
> -       u64 start =3D drm_buddy_block_offset(block);
> -       u64 size =3D drm_buddy_block_size(mm, block);
> +       u64 start =3D gpu_buddy_block_offset(block);
> +       u64 size =3D gpu_buddy_block_size(mm, block);
>
>         drm_printf(p, "%#018llx-%#018llx: %llu\n", start, start + size, s=
ize);
>  }
> @@ -1267,18 +30,21 @@ EXPORT_SYMBOL(drm_buddy_block_print);
>  /**
>   * drm_buddy_print - print allocator state
>   *
> - * @mm: DRM buddy manager
> + * @mm: GPU buddy manager
>   * @p: DRM printer to use
>   */
> -void drm_buddy_print(struct drm_buddy *mm, struct drm_printer *p)
> +void drm_buddy_print(struct gpu_buddy *mm, struct drm_printer *p)
>  {
>         int order;
>
> -       drm_printf(p, "chunk_size: %lluKiB, total: %lluMiB, free: %lluMiB=
, clear_free: %lluMiB\n",
> -                  mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20,=
 mm->clear_avail >> 20);
> +       drm_printf(
> +               p,
> +               "chunk_size: %lluKiB, total: %lluMiB, free: %lluMiB, clea=
r_free: %lluMiB\n",
> +               mm->chunk_size >> 10, mm->size >> 20, mm->avail >> 20,
> +               mm->clear_avail >> 20);
>
>         for (order =3D mm->max_order; order >=3D 0; order--) {
> -               struct drm_buddy_block *block, *tmp;
> +               struct gpu_buddy_block *block, *tmp;
>                 struct rb_root *root;
>                 u64 count =3D 0, free;
>                 unsigned int tree;
> @@ -1286,8 +52,9 @@ void drm_buddy_print(struct drm_buddy *mm, struct drm=
_printer *p)
>                 for_each_free_tree(tree) {
>                         root =3D &mm->free_trees[tree][order];
>
> -                       rbtree_postorder_for_each_entry_safe(block, tmp, =
root, rb) {
> -                               BUG_ON(!drm_buddy_block_is_free(block));
> +                       rbtree_postorder_for_each_entry_safe(block, tmp, =
root,
> +                                                            rb) {
> +                               BUG_ON(!gpu_buddy_block_is_free(block));
>                                 count++;
>                         }
>                 }
> @@ -1305,22 +72,5 @@ void drm_buddy_print(struct drm_buddy *mm, struct dr=
m_printer *p)
>  }
>  EXPORT_SYMBOL(drm_buddy_print);
>
> -static void drm_buddy_module_exit(void)
> -{
> -       kmem_cache_destroy(slab_blocks);
> -}
> -
> -static int __init drm_buddy_module_init(void)
> -{
> -       slab_blocks =3D KMEM_CACHE(drm_buddy_block, 0);
> -       if (!slab_blocks)
> -               return -ENOMEM;
> -
> -       return 0;
> -}
> -
> -module_init(drm_buddy_module_init);
> -module_exit(drm_buddy_module_exit);
> -
> -MODULE_DESCRIPTION("DRM Buddy Allocator");
> +MODULE_DESCRIPTION("DRM-specific GPU Buddy Allocator Print Helpers");
>  MODULE_LICENSE("Dual MIT/GPL");
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 5e939004b646..859aeca87c19 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -38,6 +38,7 @@ config DRM_I915
>         select CEC_CORE if CEC_NOTIFIER
>         select VMAP_PFN
>         select DRM_TTM
> +       select GPU_BUDDY
>         select DRM_BUDDY
>         select AUXILIARY_BUS
>         help
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i9=
15/i915_scatterlist.c
> index 4d830740946d..6a34dae13769 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.c
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.c
> @@ -7,7 +7,7 @@
>  #include "i915_scatterlist.h"
>  #include "i915_ttm_buddy_manager.h"
>
> -#include <drm/drm_buddy.h>
> +#include <linux/gpu_buddy.h>
>  #include <drm/drm_mm.h>
>
>  #include <linux/slab.h>
> @@ -167,9 +167,9 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(=
struct ttm_resource *res,
>         struct i915_ttm_buddy_resource *bman_res =3D to_ttm_buddy_resourc=
e(res);
>         const u64 size =3D res->size;
>         const u32 max_segment =3D round_down(UINT_MAX, page_alignment);
> -       struct drm_buddy *mm =3D bman_res->mm;
> +       struct gpu_buddy *mm =3D bman_res->mm;
>         struct list_head *blocks =3D &bman_res->blocks;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         struct i915_refct_sgt *rsgt;
>         struct scatterlist *sg;
>         struct sg_table *st;
> @@ -202,8 +202,8 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(=
struct ttm_resource *res,
>         list_for_each_entry(block, blocks, link) {
>                 u64 block_size, offset;
>
> -               block_size =3D min_t(u64, size, drm_buddy_block_size(mm, =
block));
> -               offset =3D drm_buddy_block_offset(block);
> +               block_size =3D min_t(u64, size, gpu_buddy_block_size(mm, =
block));
> +               offset =3D gpu_buddy_block_offset(block);
>
>                 while (block_size) {
>                         u64 len;
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/=
drm/i915/i915_ttm_buddy_manager.c
> index d5c6e6605086..f43d7f2771ad 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -4,6 +4,7 @@
>   */
>
>  #include <linux/slab.h>
> +#include <linux/gpu_buddy.h>
>
>  #include <drm/drm_buddy.h>
>  #include <drm/drm_print.h>
> @@ -16,7 +17,7 @@
>
>  struct i915_ttm_buddy_manager {
>         struct ttm_resource_manager manager;
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         struct list_head reserved;
>         struct mutex lock;
>         unsigned long visible_size;
> @@ -38,7 +39,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource=
_manager *man,
>  {
>         struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
>         struct i915_ttm_buddy_resource *bman_res;
> -       struct drm_buddy *mm =3D &bman->mm;
> +       struct gpu_buddy *mm =3D &bman->mm;
>         unsigned long n_pages, lpfn;
>         u64 min_page_size;
>         u64 size;
> @@ -57,13 +58,13 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resour=
ce_manager *man,
>         bman_res->mm =3D mm;
>
>         if (place->flags & TTM_PL_FLAG_TOPDOWN)
> -               bman_res->flags |=3D DRM_BUDDY_TOPDOWN_ALLOCATION;
> +               bman_res->flags |=3D GPU_BUDDY_TOPDOWN_ALLOCATION;
>
>         if (place->flags & TTM_PL_FLAG_CONTIGUOUS)
> -               bman_res->flags |=3D DRM_BUDDY_CONTIGUOUS_ALLOCATION;
> +               bman_res->flags |=3D GPU_BUDDY_CONTIGUOUS_ALLOCATION;
>
>         if (place->fpfn || lpfn !=3D man->size)
> -               bman_res->flags |=3D DRM_BUDDY_RANGE_ALLOCATION;
> +               bman_res->flags |=3D GPU_BUDDY_RANGE_ALLOCATION;
>
>         GEM_BUG_ON(!bman_res->base.size);
>         size =3D bman_res->base.size;
> @@ -89,7 +90,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource=
_manager *man,
>                 goto err_free_res;
>         }
>
> -       err =3D drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT=
,
> +       err =3D gpu_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT=
,
>                                      (u64)lpfn << PAGE_SHIFT,
>                                      (u64)n_pages << PAGE_SHIFT,
>                                      min_page_size,
> @@ -101,15 +102,15 @@ static int i915_ttm_buddy_man_alloc(struct ttm_reso=
urce_manager *man,
>         if (lpfn <=3D bman->visible_size) {
>                 bman_res->used_visible_size =3D PFN_UP(bman_res->base.siz=
e);
>         } else {
> -               struct drm_buddy_block *block;
> +               struct gpu_buddy_block *block;
>
>                 list_for_each_entry(block, &bman_res->blocks, link) {
>                         unsigned long start =3D
> -                               drm_buddy_block_offset(block) >> PAGE_SHI=
FT;
> +                               gpu_buddy_block_offset(block) >> PAGE_SHI=
FT;
>
>                         if (start < bman->visible_size) {
>                                 unsigned long end =3D start +
> -                                       (drm_buddy_block_size(mm, block) =
>> PAGE_SHIFT);
> +                                       (gpu_buddy_block_size(mm, block) =
>> PAGE_SHIFT);
>
>                                 bman_res->used_visible_size +=3D
>                                         min(end, bman->visible_size) - st=
art;
> @@ -126,7 +127,7 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resour=
ce_manager *man,
>         return 0;
>
>  err_free_blocks:
> -       drm_buddy_free_list(mm, &bman_res->blocks, 0);
> +       gpu_buddy_free_list(mm, &bman_res->blocks, 0);
>         mutex_unlock(&bman->lock);
>  err_free_res:
>         ttm_resource_fini(man, &bman_res->base);
> @@ -141,7 +142,7 @@ static void i915_ttm_buddy_man_free(struct ttm_resour=
ce_manager *man,
>         struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
>
>         mutex_lock(&bman->lock);
> -       drm_buddy_free_list(&bman->mm, &bman_res->blocks, 0);
> +       gpu_buddy_free_list(&bman->mm, &bman_res->blocks, 0);
>         bman->visible_avail +=3D bman_res->used_visible_size;
>         mutex_unlock(&bman->lock);
>
> @@ -156,8 +157,8 @@ static bool i915_ttm_buddy_man_intersects(struct ttm_=
resource_manager *man,
>  {
>         struct i915_ttm_buddy_resource *bman_res =3D to_ttm_buddy_resourc=
e(res);
>         struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
> -       struct drm_buddy *mm =3D &bman->mm;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy *mm =3D &bman->mm;
> +       struct gpu_buddy_block *block;
>
>         if (!place->fpfn && !place->lpfn)
>                 return true;
> @@ -176,9 +177,9 @@ static bool i915_ttm_buddy_man_intersects(struct ttm_=
resource_manager *man,
>         /* Check each drm buddy block individually */
>         list_for_each_entry(block, &bman_res->blocks, link) {
>                 unsigned long fpfn =3D
> -                       drm_buddy_block_offset(block) >> PAGE_SHIFT;
> +                       gpu_buddy_block_offset(block) >> PAGE_SHIFT;
>                 unsigned long lpfn =3D fpfn +
> -                       (drm_buddy_block_size(mm, block) >> PAGE_SHIFT);
> +                       (gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>
>                 if (place->fpfn < lpfn && place->lpfn > fpfn)
>                         return true;
> @@ -194,8 +195,8 @@ static bool i915_ttm_buddy_man_compatible(struct ttm_=
resource_manager *man,
>  {
>         struct i915_ttm_buddy_resource *bman_res =3D to_ttm_buddy_resourc=
e(res);
>         struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
> -       struct drm_buddy *mm =3D &bman->mm;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy *mm =3D &bman->mm;
> +       struct gpu_buddy_block *block;
>
>         if (!place->fpfn && !place->lpfn)
>                 return true;
> @@ -209,9 +210,9 @@ static bool i915_ttm_buddy_man_compatible(struct ttm_=
resource_manager *man,
>         /* Check each drm buddy block individually */
>         list_for_each_entry(block, &bman_res->blocks, link) {
>                 unsigned long fpfn =3D
> -                       drm_buddy_block_offset(block) >> PAGE_SHIFT;
> +                       gpu_buddy_block_offset(block) >> PAGE_SHIFT;
>                 unsigned long lpfn =3D fpfn +
> -                       (drm_buddy_block_size(mm, block) >> PAGE_SHIFT);
> +                       (gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>
>                 if (fpfn < place->fpfn || lpfn > place->lpfn)
>                         return false;
> @@ -224,7 +225,7 @@ static void i915_ttm_buddy_man_debug(struct ttm_resou=
rce_manager *man,
>                                      struct drm_printer *printer)
>  {
>         struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>
>         mutex_lock(&bman->lock);
>         drm_printf(printer, "default_page_size: %lluKiB\n",
> @@ -293,7 +294,7 @@ int i915_ttm_buddy_man_init(struct ttm_device *bdev,
>         if (!bman)
>                 return -ENOMEM;
>
> -       err =3D drm_buddy_init(&bman->mm, size, chunk_size);
> +       err =3D gpu_buddy_init(&bman->mm, size, chunk_size);
>         if (err)
>                 goto err_free_bman;
>
> @@ -333,7 +334,7 @@ int i915_ttm_buddy_man_fini(struct ttm_device *bdev, =
unsigned int type)
>  {
>         struct ttm_resource_manager *man =3D ttm_manager_type(bdev, type)=
;
>         struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
> -       struct drm_buddy *mm =3D &bman->mm;
> +       struct gpu_buddy *mm =3D &bman->mm;
>         int ret;
>
>         ttm_resource_manager_set_used(man, false);
> @@ -345,8 +346,8 @@ int i915_ttm_buddy_man_fini(struct ttm_device *bdev, =
unsigned int type)
>         ttm_set_driver_manager(bdev, type, NULL);
>
>         mutex_lock(&bman->lock);
> -       drm_buddy_free_list(mm, &bman->reserved, 0);
> -       drm_buddy_fini(mm);
> +       gpu_buddy_free_list(mm, &bman->reserved, 0);
> +       gpu_buddy_fini(mm);
>         bman->visible_avail +=3D bman->visible_reserved;
>         WARN_ON_ONCE(bman->visible_avail !=3D bman->visible_size);
>         mutex_unlock(&bman->lock);
> @@ -371,15 +372,15 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_=
manager *man,
>                                u64 start, u64 size)
>  {
>         struct i915_ttm_buddy_manager *bman =3D to_buddy_manager(man);
> -       struct drm_buddy *mm =3D &bman->mm;
> +       struct gpu_buddy *mm =3D &bman->mm;
>         unsigned long fpfn =3D start >> PAGE_SHIFT;
>         unsigned long flags =3D 0;
>         int ret;
>
> -       flags |=3D DRM_BUDDY_RANGE_ALLOCATION;
> +       flags |=3D GPU_BUDDY_RANGE_ALLOCATION;
>
>         mutex_lock(&bman->lock);
> -       ret =3D drm_buddy_alloc_blocks(mm, start,
> +       ret =3D gpu_buddy_alloc_blocks(mm, start,
>                                      start + size,
>                                      size, mm->chunk_size,
>                                      &bman->reserved,
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h b/drivers/gpu/=
drm/i915/i915_ttm_buddy_manager.h
> index d64620712830..4a92dcf09766 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
> @@ -13,14 +13,14 @@
>
>  struct ttm_device;
>  struct ttm_resource_manager;
> -struct drm_buddy;
> +struct gpu_buddy;
>
>  /**
>   * struct i915_ttm_buddy_resource
>   *
>   * @base: struct ttm_resource base class we extend
>   * @blocks: the list of struct i915_buddy_block for this resource/alloca=
tion
> - * @flags: DRM_BUDDY_*_ALLOCATION flags
> + * @flags: GPU_BUDDY_*_ALLOCATION flags
>   * @used_visible_size: How much of this resource, if any, uses the CPU v=
isible
>   * portion, in pages.
>   * @mm: the struct i915_buddy_mm for this resource
> @@ -33,7 +33,7 @@ struct i915_ttm_buddy_resource {
>         struct list_head blocks;
>         unsigned long flags;
>         unsigned long used_visible_size;
> -       struct drm_buddy *mm;
> +       struct gpu_buddy *mm;
>  };
>
>  /**
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drive=
rs/gpu/drm/i915/selftests/intel_memory_region.c
> index 7b856b5090f9..8307390943a2 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -6,7 +6,7 @@
>  #include <linux/prime_numbers.h>
>  #include <linux/sort.h>
>
> -#include <drm/drm_buddy.h>
> +#include <linux/gpu_buddy.h>
>
>  #include "../i915_selftest.h"
>
> @@ -371,7 +371,7 @@ static int igt_mock_splintered_region(void *arg)
>         struct drm_i915_private *i915 =3D mem->i915;
>         struct i915_ttm_buddy_resource *res;
>         struct drm_i915_gem_object *obj;
> -       struct drm_buddy *mm;
> +       struct gpu_buddy *mm;
>         unsigned int expected_order;
>         LIST_HEAD(objects);
>         u64 size;
> @@ -447,8 +447,8 @@ static int igt_mock_max_segment(void *arg)
>         struct drm_i915_private *i915 =3D mem->i915;
>         struct i915_ttm_buddy_resource *res;
>         struct drm_i915_gem_object *obj;
> -       struct drm_buddy_block *block;
> -       struct drm_buddy *mm;
> +       struct gpu_buddy_block *block;
> +       struct gpu_buddy *mm;
>         struct list_head *blocks;
>         struct scatterlist *sg;
>         I915_RND_STATE(prng);
> @@ -487,8 +487,8 @@ static int igt_mock_max_segment(void *arg)
>         mm =3D res->mm;
>         size =3D 0;
>         list_for_each_entry(block, blocks, link) {
> -               if (drm_buddy_block_size(mm, block) > size)
> -                       size =3D drm_buddy_block_size(mm, block);
> +               if (gpu_buddy_block_size(mm, block) > size)
> +                       size =3D gpu_buddy_block_size(mm, block);
>         }
>         if (size < max_segment) {
>                 pr_err("%s: Failed to create a huge contiguous block [> %=
u], largest block %lld\n",
> @@ -527,14 +527,14 @@ static u64 igt_object_mappable_total(struct drm_i91=
5_gem_object *obj)
>         struct intel_memory_region *mr =3D obj->mm.region;
>         struct i915_ttm_buddy_resource *bman_res =3D
>                 to_ttm_buddy_resource(obj->mm.res);
> -       struct drm_buddy *mm =3D bman_res->mm;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy *mm =3D bman_res->mm;
> +       struct gpu_buddy_block *block;
>         u64 total;
>
>         total =3D 0;
>         list_for_each_entry(block, &bman_res->blocks, link) {
> -               u64 start =3D drm_buddy_block_offset(block);
> -               u64 end =3D start + drm_buddy_block_size(mm, block);
> +               u64 start =3D gpu_buddy_block_offset(block);
> +               u64 end =3D start + gpu_buddy_block_size(mm, block);
>
>                 if (start < resource_size(&mr->io))
>                         total +=3D min_t(u64, end, resource_size(&mr->io)=
) - start;
> diff --git a/drivers/gpu/drm/tests/Makefile b/drivers/gpu/drm/tests/Makef=
ile
> index 87d5d5f9332a..d2e2e3d8349a 100644
> --- a/drivers/gpu/drm/tests/Makefile
> +++ b/drivers/gpu/drm/tests/Makefile
> @@ -7,7 +7,6 @@ obj-$(CONFIG_DRM_KUNIT_TEST) +=3D \
>         drm_atomic_test.o \
>         drm_atomic_state_test.o \
>         drm_bridge_test.o \
> -       drm_buddy_test.o \
>         drm_cmdline_parser_test.o \
>         drm_connector_test.o \
>         drm_damage_helper_test.o \
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c b/drivers/g=
pu/drm/ttm/tests/ttm_bo_validate_test.c
> index 2eda87882e65..ffa12473077c 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> @@ -3,6 +3,7 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
>  #include <linux/delay.h>
> +#include <linux/gpu_buddy.h>
>  #include <linux/kthread.h>
>
>  #include <drm/ttm/ttm_resource.h>
> @@ -251,7 +252,7 @@ static void ttm_bo_validate_basic(struct kunit *test)
>                                    NULL, &dummy_ttm_bo_destroy);
>         KUNIT_EXPECT_EQ(test, err, 0);
>
> -       snd_place =3D ttm_place_kunit_init(test, snd_mem, DRM_BUDDY_TOPDO=
WN_ALLOCATION);
> +       snd_place =3D ttm_place_kunit_init(test, snd_mem, GPU_BUDDY_TOPDO=
WN_ALLOCATION);
>         snd_placement =3D ttm_placement_kunit_init(test, snd_place, 1);
>
>         err =3D ttm_bo_validate(bo, snd_placement, &ctx_val);
> @@ -263,7 +264,7 @@ static void ttm_bo_validate_basic(struct kunit *test)
>         KUNIT_EXPECT_TRUE(test, ttm_tt_is_populated(bo->ttm));
>         KUNIT_EXPECT_EQ(test, bo->resource->mem_type, snd_mem);
>         KUNIT_EXPECT_EQ(test, bo->resource->placement,
> -                       DRM_BUDDY_TOPDOWN_ALLOCATION);
> +                       GPU_BUDDY_TOPDOWN_ALLOCATION);
>
>         ttm_bo_fini(bo);
>         ttm_mock_manager_fini(priv->ttm_dev, snd_mem);
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c b/drivers/gpu/d=
rm/ttm/tests/ttm_mock_manager.c
> index dd395229e388..294d56d9067e 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_mock_manager.c
> @@ -31,7 +31,7 @@ static int ttm_mock_manager_alloc(struct ttm_resource_m=
anager *man,
>  {
>         struct ttm_mock_manager *manager =3D to_mock_mgr(man);
>         struct ttm_mock_resource *mock_res;
> -       struct drm_buddy *mm =3D &manager->mm;
> +       struct gpu_buddy *mm =3D &manager->mm;
>         u64 lpfn, fpfn, alloc_size;
>         int err;
>
> @@ -47,14 +47,14 @@ static int ttm_mock_manager_alloc(struct ttm_resource=
_manager *man,
>         INIT_LIST_HEAD(&mock_res->blocks);
>
>         if (place->flags & TTM_PL_FLAG_TOPDOWN)
> -               mock_res->flags |=3D DRM_BUDDY_TOPDOWN_ALLOCATION;
> +               mock_res->flags |=3D GPU_BUDDY_TOPDOWN_ALLOCATION;
>
>         if (place->flags & TTM_PL_FLAG_CONTIGUOUS)
> -               mock_res->flags |=3D DRM_BUDDY_CONTIGUOUS_ALLOCATION;
> +               mock_res->flags |=3D GPU_BUDDY_CONTIGUOUS_ALLOCATION;
>
>         alloc_size =3D (uint64_t)mock_res->base.size;
>         mutex_lock(&manager->lock);
> -       err =3D drm_buddy_alloc_blocks(mm, fpfn, lpfn, alloc_size,
> +       err =3D gpu_buddy_alloc_blocks(mm, fpfn, lpfn, alloc_size,
>                                      manager->default_page_size,
>                                      &mock_res->blocks,
>                                      mock_res->flags);
> @@ -67,7 +67,7 @@ static int ttm_mock_manager_alloc(struct ttm_resource_m=
anager *man,
>         return 0;
>
>  error_free_blocks:
> -       drm_buddy_free_list(mm, &mock_res->blocks, 0);
> +       gpu_buddy_free_list(mm, &mock_res->blocks, 0);
>         ttm_resource_fini(man, &mock_res->base);
>         mutex_unlock(&manager->lock);
>
> @@ -79,10 +79,10 @@ static void ttm_mock_manager_free(struct ttm_resource=
_manager *man,
>  {
>         struct ttm_mock_manager *manager =3D to_mock_mgr(man);
>         struct ttm_mock_resource *mock_res =3D to_mock_mgr_resource(res);
> -       struct drm_buddy *mm =3D &manager->mm;
> +       struct gpu_buddy *mm =3D &manager->mm;
>
>         mutex_lock(&manager->lock);
> -       drm_buddy_free_list(mm, &mock_res->blocks, 0);
> +       gpu_buddy_free_list(mm, &mock_res->blocks, 0);
>         mutex_unlock(&manager->lock);
>
>         ttm_resource_fini(man, res);
> @@ -106,7 +106,7 @@ int ttm_mock_manager_init(struct ttm_device *bdev, u3=
2 mem_type, u32 size)
>
>         mutex_init(&manager->lock);
>
> -       err =3D drm_buddy_init(&manager->mm, size, PAGE_SIZE);
> +       err =3D gpu_buddy_init(&manager->mm, size, PAGE_SIZE);
>
>         if (err) {
>                 kfree(manager);
> @@ -142,7 +142,7 @@ void ttm_mock_manager_fini(struct ttm_device *bdev, u=
32 mem_type)
>         ttm_resource_manager_set_used(man, false);
>
>         mutex_lock(&mock_man->lock);
> -       drm_buddy_fini(&mock_man->mm);
> +       gpu_buddy_fini(&mock_man->mm);
>         mutex_unlock(&mock_man->lock);
>
>         ttm_set_driver_manager(bdev, mem_type, NULL);
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.h b/drivers/gpu/d=
rm/ttm/tests/ttm_mock_manager.h
> index e4c95f86a467..08710756fd8e 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_mock_manager.h
> +++ b/drivers/gpu/drm/ttm/tests/ttm_mock_manager.h
> @@ -5,11 +5,11 @@
>  #ifndef TTM_MOCK_MANAGER_H
>  #define TTM_MOCK_MANAGER_H
>
> -#include <drm/drm_buddy.h>
> +#include <linux/gpu_buddy.h>
>
>  struct ttm_mock_manager {
>         struct ttm_resource_manager man;
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         u64 default_page_size;
>         /* protects allocations of mock buffer objects */
>         struct mutex lock;
> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> index 4b288eb3f5b0..982ef754742e 100644
> --- a/drivers/gpu/drm/xe/Kconfig
> +++ b/drivers/gpu/drm/xe/Kconfig
> @@ -11,6 +11,7 @@ config DRM_XE
>         # the shmem_readpage() which depends upon tmpfs
>         select SHMEM
>         select TMPFS
> +       select GPU_BUDDY
>         select DRM_BUDDY
>         select DRM_CLIENT_SELECTION
>         select DRM_KMS_HELPER
> diff --git a/drivers/gpu/drm/xe/xe_res_cursor.h b/drivers/gpu/drm/xe/xe_r=
es_cursor.h
> index 4e00008b7081..5f4ab08c0686 100644
> --- a/drivers/gpu/drm/xe/xe_res_cursor.h
> +++ b/drivers/gpu/drm/xe/xe_res_cursor.h
> @@ -58,7 +58,7 @@ struct xe_res_cursor {
>         /** @dma_addr: Current element in a struct drm_pagemap_addr array=
 */
>         const struct drm_pagemap_addr *dma_addr;
>         /** @mm: Buddy allocator for VRAM cursor */
> -       struct drm_buddy *mm;
> +       struct gpu_buddy *mm;
>         /**
>          * @dma_start: DMA start address for the current segment.
>          * This may be different to @dma_addr.addr since elements in
> @@ -69,7 +69,7 @@ struct xe_res_cursor {
>         u64 dma_seg_size;
>  };
>
> -static struct drm_buddy *xe_res_get_buddy(struct ttm_resource *res)
> +static struct gpu_buddy *xe_res_get_buddy(struct ttm_resource *res)
>  {
>         struct ttm_resource_manager *mgr;
>
> @@ -104,30 +104,30 @@ static inline void xe_res_first(struct ttm_resource=
 *res,
>         case XE_PL_STOLEN:
>         case XE_PL_VRAM0:
>         case XE_PL_VRAM1: {
> -               struct drm_buddy_block *block;
> +               struct gpu_buddy_block *block;
>                 struct list_head *head, *next;
> -               struct drm_buddy *mm =3D xe_res_get_buddy(res);
> +               struct gpu_buddy *mm =3D xe_res_get_buddy(res);
>
>                 head =3D &to_xe_ttm_vram_mgr_resource(res)->blocks;
>
>                 block =3D list_first_entry_or_null(head,
> -                                                struct drm_buddy_block,
> +                                                struct gpu_buddy_block,
>                                                  link);
>                 if (!block)
>                         goto fallback;
>
> -               while (start >=3D drm_buddy_block_size(mm, block)) {
> -                       start -=3D drm_buddy_block_size(mm, block);
> +               while (start >=3D gpu_buddy_block_size(mm, block)) {
> +                       start -=3D gpu_buddy_block_size(mm, block);
>
>                         next =3D block->link.next;
>                         if (next !=3D head)
> -                               block =3D list_entry(next, struct drm_bud=
dy_block,
> +                               block =3D list_entry(next, struct gpu_bud=
dy_block,
>                                                    link);
>                 }
>
>                 cur->mm =3D mm;
> -               cur->start =3D drm_buddy_block_offset(block) + start;
> -               cur->size =3D min(drm_buddy_block_size(mm, block) - start=
,
> +               cur->start =3D gpu_buddy_block_offset(block) + start;
> +               cur->size =3D min(gpu_buddy_block_size(mm, block) - start=
,
>                                 size);
>                 cur->remaining =3D size;
>                 cur->node =3D block;
> @@ -259,7 +259,7 @@ static inline void xe_res_first_dma(const struct drm_=
pagemap_addr *dma_addr,
>   */
>  static inline void xe_res_next(struct xe_res_cursor *cur, u64 size)
>  {
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         struct list_head *next;
>         u64 start;
>
> @@ -295,18 +295,18 @@ static inline void xe_res_next(struct xe_res_cursor=
 *cur, u64 size)
>                 block =3D cur->node;
>
>                 next =3D block->link.next;
> -               block =3D list_entry(next, struct drm_buddy_block, link);
> +               block =3D list_entry(next, struct gpu_buddy_block, link);
>
>
> -               while (start >=3D drm_buddy_block_size(cur->mm, block)) {
> -                       start -=3D drm_buddy_block_size(cur->mm, block);
> +               while (start >=3D gpu_buddy_block_size(cur->mm, block)) {
> +                       start -=3D gpu_buddy_block_size(cur->mm, block);
>
>                         next =3D block->link.next;
> -                       block =3D list_entry(next, struct drm_buddy_block=
, link);
> +                       block =3D list_entry(next, struct gpu_buddy_block=
, link);
>                 }
>
> -               cur->start =3D drm_buddy_block_offset(block) + start;
> -               cur->size =3D min(drm_buddy_block_size(cur->mm, block) - =
start,
> +               cur->start =3D gpu_buddy_block_offset(block) + start;
> +               cur->size =3D min(gpu_buddy_block_size(cur->mm, block) - =
start,
>                                 cur->remaining);
>                 cur->node =3D block;
>                 break;
> diff --git a/drivers/gpu/drm/xe/xe_svm.c b/drivers/gpu/drm/xe/xe_svm.c
> index f97e0af6a9b0..2b7e266f9bdd 100644
> --- a/drivers/gpu/drm/xe/xe_svm.c
> +++ b/drivers/gpu/drm/xe/xe_svm.c
> @@ -688,7 +688,7 @@ static u64 block_offset_to_pfn(struct xe_vram_region =
*vr, u64 offset)
>         return PHYS_PFN(offset + vr->hpa_base);
>  }
>
> -static struct drm_buddy *vram_to_buddy(struct xe_vram_region *vram)
> +static struct gpu_buddy *vram_to_buddy(struct xe_vram_region *vram)
>  {
>         return &vram->ttm.mm;
>  }
> @@ -699,16 +699,16 @@ static int xe_svm_populate_devmem_pfn(struct drm_pa=
gemap_devmem *devmem_allocati
>         struct xe_bo *bo =3D to_xe_bo(devmem_allocation);
>         struct ttm_resource *res =3D bo->ttm.resource;
>         struct list_head *blocks =3D &to_xe_ttm_vram_mgr_resource(res)->b=
locks;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         int j =3D 0;
>
>         list_for_each_entry(block, blocks, link) {
>                 struct xe_vram_region *vr =3D block->private;
> -               struct drm_buddy *buddy =3D vram_to_buddy(vr);
> -               u64 block_pfn =3D block_offset_to_pfn(vr, drm_buddy_block=
_offset(block));
> +               struct gpu_buddy *buddy =3D vram_to_buddy(vr);
> +               u64 block_pfn =3D block_offset_to_pfn(vr, gpu_buddy_block=
_offset(block));
>                 int i;
>
> -               for (i =3D 0; i < drm_buddy_block_size(buddy, block) >> P=
AGE_SHIFT; ++i)
> +               for (i =3D 0; i < gpu_buddy_block_size(buddy, block) >> P=
AGE_SHIFT; ++i)
>                         pfn[j++] =3D block_pfn + i;
>         }
>
> @@ -876,7 +876,7 @@ static int xe_drm_pagemap_populate_mm(struct drm_page=
map *dpagemap,
>         struct dma_fence *pre_migrate_fence =3D NULL;
>         struct xe_device *xe =3D vr->xe;
>         struct device *dev =3D xe->drm.dev;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         struct xe_validation_ctx vctx;
>         struct list_head *blocks;
>         struct drm_exec exec;
> diff --git a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c b/drivers/gpu/drm/xe/xe=
_ttm_vram_mgr.c
> index 9f70802fce92..8192957261e8 100644
> --- a/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
> +++ b/drivers/gpu/drm/xe/xe_ttm_vram_mgr.c
> @@ -4,8 +4,9 @@
>   * Copyright (C) 2021-2022 Red Hat
>   */
>
> -#include <drm/drm_managed.h>
> +#include <drm/drm_buddy.h>
>  #include <drm/drm_drv.h>
> +#include <drm/drm_managed.h>
>
>  #include <drm/ttm/ttm_placement.h>
>  #include <drm/ttm/ttm_range_manager.h>
> @@ -17,16 +18,16 @@
>  #include "xe_ttm_vram_mgr.h"
>  #include "xe_vram_types.h"
>
> -static inline struct drm_buddy_block *
> +static inline struct gpu_buddy_block *
>  xe_ttm_vram_mgr_first_block(struct list_head *list)
>  {
> -       return list_first_entry_or_null(list, struct drm_buddy_block, lin=
k);
> +       return list_first_entry_or_null(list, struct gpu_buddy_block, lin=
k);
>  }
>
> -static inline bool xe_is_vram_mgr_blocks_contiguous(struct drm_buddy *mm=
,
> +static inline bool xe_is_vram_mgr_blocks_contiguous(struct gpu_buddy *mm=
,
>                                                     struct list_head *hea=
d)
>  {
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         u64 start, size;
>
>         block =3D xe_ttm_vram_mgr_first_block(head);
> @@ -34,12 +35,12 @@ static inline bool xe_is_vram_mgr_blocks_contiguous(s=
truct drm_buddy *mm,
>                 return false;
>
>         while (head !=3D block->link.next) {
> -               start =3D drm_buddy_block_offset(block);
> -               size =3D drm_buddy_block_size(mm, block);
> +               start =3D gpu_buddy_block_offset(block);
> +               size =3D gpu_buddy_block_size(mm, block);
>
> -               block =3D list_entry(block->link.next, struct drm_buddy_b=
lock,
> +               block =3D list_entry(block->link.next, struct gpu_buddy_b=
lock,
>                                    link);
> -               if (start + size !=3D drm_buddy_block_offset(block))
> +               if (start + size !=3D gpu_buddy_block_offset(block))
>                         return false;
>         }
>
> @@ -53,7 +54,7 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_mana=
ger *man,
>  {
>         struct xe_ttm_vram_mgr *mgr =3D to_xe_ttm_vram_mgr(man);
>         struct xe_ttm_vram_mgr_resource *vres;
> -       struct drm_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy *mm =3D &mgr->mm;
>         u64 size, min_page_size;
>         unsigned long lpfn;
>         int err;
> @@ -80,10 +81,10 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_ma=
nager *man,
>         INIT_LIST_HEAD(&vres->blocks);
>
>         if (place->flags & TTM_PL_FLAG_TOPDOWN)
> -               vres->flags |=3D DRM_BUDDY_TOPDOWN_ALLOCATION;
> +               vres->flags |=3D GPU_BUDDY_TOPDOWN_ALLOCATION;
>
>         if (place->fpfn || lpfn !=3D man->size >> PAGE_SHIFT)
> -               vres->flags |=3D DRM_BUDDY_RANGE_ALLOCATION;
> +               vres->flags |=3D GPU_BUDDY_RANGE_ALLOCATION;
>
>         if (WARN_ON(!vres->base.size)) {
>                 err =3D -EINVAL;
> @@ -119,27 +120,27 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_=
manager *man,
>                 lpfn =3D max_t(unsigned long, place->fpfn + (size >> PAGE=
_SHIFT), lpfn);
>         }
>
> -       err =3D drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT=
,
> +       err =3D gpu_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT=
,
>                                      (u64)lpfn << PAGE_SHIFT, size,
>                                      min_page_size, &vres->blocks, vres->=
flags);
>         if (err)
>                 goto error_unlock;
>
>         if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
> -               if (!drm_buddy_block_trim(mm, NULL, vres->base.size, &vre=
s->blocks))
> +               if (!gpu_buddy_block_trim(mm, NULL, vres->base.size, &vre=
s->blocks))
>                         size =3D vres->base.size;
>         }
>
>         if (lpfn <=3D mgr->visible_size >> PAGE_SHIFT) {
>                 vres->used_visible_size =3D size;
>         } else {
> -               struct drm_buddy_block *block;
> +               struct gpu_buddy_block *block;
>
>                 list_for_each_entry(block, &vres->blocks, link) {
> -                       u64 start =3D drm_buddy_block_offset(block);
> +                       u64 start =3D gpu_buddy_block_offset(block);
>
>                         if (start < mgr->visible_size) {
> -                               u64 end =3D start + drm_buddy_block_size(=
mm, block);
> +                               u64 end =3D start + gpu_buddy_block_size(=
mm, block);
>
>                                 vres->used_visible_size +=3D
>                                         min(end, mgr->visible_size) - sta=
rt;
> @@ -159,11 +160,11 @@ static int xe_ttm_vram_mgr_new(struct ttm_resource_=
manager *man,
>          * the object.
>          */
>         if (vres->base.placement & TTM_PL_FLAG_CONTIGUOUS) {
> -               struct drm_buddy_block *block =3D list_first_entry(&vres-=
>blocks,
> +               struct gpu_buddy_block *block =3D list_first_entry(&vres-=
>blocks,
>                                                                  typeof(*=
block),
>                                                                  link);
>
> -               vres->base.start =3D drm_buddy_block_offset(block) >> PAG=
E_SHIFT;
> +               vres->base.start =3D gpu_buddy_block_offset(block) >> PAG=
E_SHIFT;
>         } else {
>                 vres->base.start =3D XE_BO_INVALID_OFFSET;
>         }
> @@ -185,10 +186,10 @@ static void xe_ttm_vram_mgr_del(struct ttm_resource=
_manager *man,
>         struct xe_ttm_vram_mgr_resource *vres =3D
>                 to_xe_ttm_vram_mgr_resource(res);
>         struct xe_ttm_vram_mgr *mgr =3D to_xe_ttm_vram_mgr(man);
> -       struct drm_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy *mm =3D &mgr->mm;
>
>         mutex_lock(&mgr->lock);
> -       drm_buddy_free_list(mm, &vres->blocks, 0);
> +       gpu_buddy_free_list(mm, &vres->blocks, 0);
>         mgr->visible_avail +=3D vres->used_visible_size;
>         mutex_unlock(&mgr->lock);
>
> @@ -201,7 +202,7 @@ static void xe_ttm_vram_mgr_debug(struct ttm_resource=
_manager *man,
>                                   struct drm_printer *printer)
>  {
>         struct xe_ttm_vram_mgr *mgr =3D to_xe_ttm_vram_mgr(man);
> -       struct drm_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy *mm =3D &mgr->mm;
>
>         mutex_lock(&mgr->lock);
>         drm_printf(printer, "default_page_size: %lluKiB\n",
> @@ -224,8 +225,8 @@ static bool xe_ttm_vram_mgr_intersects(struct ttm_res=
ource_manager *man,
>         struct xe_ttm_vram_mgr *mgr =3D to_xe_ttm_vram_mgr(man);
>         struct xe_ttm_vram_mgr_resource *vres =3D
>                 to_xe_ttm_vram_mgr_resource(res);
> -       struct drm_buddy *mm =3D &mgr->mm;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy_block *block;
>
>         if (!place->fpfn && !place->lpfn)
>                 return true;
> @@ -235,9 +236,9 @@ static bool xe_ttm_vram_mgr_intersects(struct ttm_res=
ource_manager *man,
>
>         list_for_each_entry(block, &vres->blocks, link) {
>                 unsigned long fpfn =3D
> -                       drm_buddy_block_offset(block) >> PAGE_SHIFT;
> +                       gpu_buddy_block_offset(block) >> PAGE_SHIFT;
>                 unsigned long lpfn =3D fpfn +
> -                       (drm_buddy_block_size(mm, block) >> PAGE_SHIFT);
> +                       (gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>
>                 if (place->fpfn < lpfn && place->lpfn > fpfn)
>                         return true;
> @@ -254,8 +255,8 @@ static bool xe_ttm_vram_mgr_compatible(struct ttm_res=
ource_manager *man,
>         struct xe_ttm_vram_mgr *mgr =3D to_xe_ttm_vram_mgr(man);
>         struct xe_ttm_vram_mgr_resource *vres =3D
>                 to_xe_ttm_vram_mgr_resource(res);
> -       struct drm_buddy *mm =3D &mgr->mm;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy *mm =3D &mgr->mm;
> +       struct gpu_buddy_block *block;
>
>         if (!place->fpfn && !place->lpfn)
>                 return true;
> @@ -265,9 +266,9 @@ static bool xe_ttm_vram_mgr_compatible(struct ttm_res=
ource_manager *man,
>
>         list_for_each_entry(block, &vres->blocks, link) {
>                 unsigned long fpfn =3D
> -                       drm_buddy_block_offset(block) >> PAGE_SHIFT;
> +                       gpu_buddy_block_offset(block) >> PAGE_SHIFT;
>                 unsigned long lpfn =3D fpfn +
> -                       (drm_buddy_block_size(mm, block) >> PAGE_SHIFT);
> +                       (gpu_buddy_block_size(mm, block) >> PAGE_SHIFT);
>
>                 if (fpfn < place->fpfn || lpfn > place->lpfn)
>                         return false;
> @@ -297,7 +298,7 @@ static void xe_ttm_vram_mgr_fini(struct drm_device *d=
ev, void *arg)
>
>         WARN_ON_ONCE(mgr->visible_avail !=3D mgr->visible_size);
>
> -       drm_buddy_fini(&mgr->mm);
> +       gpu_buddy_fini(&mgr->mm);
>
>         ttm_resource_manager_cleanup(&mgr->manager);
>
> @@ -328,7 +329,7 @@ int __xe_ttm_vram_mgr_init(struct xe_device *xe, stru=
ct xe_ttm_vram_mgr *mgr,
>         mgr->visible_avail =3D io_size;
>
>         ttm_resource_manager_init(man, &xe->ttm, size);
> -       err =3D drm_buddy_init(&mgr->mm, man->size, default_page_size);
> +       err =3D gpu_buddy_init(&mgr->mm, man->size, default_page_size);
>         if (err)
>                 return err;
>
> @@ -376,7 +377,7 @@ int xe_ttm_vram_mgr_alloc_sgt(struct xe_device *xe,
>         if (!*sgt)
>                 return -ENOMEM;
>
> -       /* Determine the number of DRM_BUDDY blocks to export */
> +       /* Determine the number of GPU_BUDDY blocks to export */
>         xe_res_first(res, offset, length, &cursor);
>         while (cursor.remaining) {
>                 num_entries++;
> @@ -393,10 +394,10 @@ int xe_ttm_vram_mgr_alloc_sgt(struct xe_device *xe,
>                 sg->length =3D 0;
>
>         /*
> -        * Walk down DRM_BUDDY blocks to populate scatterlist nodes
> -        * @note: Use iterator api to get first the DRM_BUDDY block
> +        * Walk down GPU_BUDDY blocks to populate scatterlist nodes
> +        * @note: Use iterator api to get first the GPU_BUDDY block
>          * and the number of bytes from it. Access the following
> -        * DRM_BUDDY block(s) if more buffer needs to exported
> +        * GPU_BUDDY block(s) if more buffer needs to exported
>          */
>         xe_res_first(res, offset, length, &cursor);
>         for_each_sgtable_sg((*sgt), sg, i) {
> diff --git a/drivers/gpu/drm/xe/xe_ttm_vram_mgr_types.h b/drivers/gpu/drm=
/xe/xe_ttm_vram_mgr_types.h
> index a71e14818ec2..9106da056b49 100644
> --- a/drivers/gpu/drm/xe/xe_ttm_vram_mgr_types.h
> +++ b/drivers/gpu/drm/xe/xe_ttm_vram_mgr_types.h
> @@ -6,7 +6,7 @@
>  #ifndef _XE_TTM_VRAM_MGR_TYPES_H_
>  #define _XE_TTM_VRAM_MGR_TYPES_H_
>
> -#include <drm/drm_buddy.h>
> +#include <linux/gpu_buddy.h>
>  #include <drm/ttm/ttm_device.h>
>
>  /**
> @@ -18,7 +18,7 @@ struct xe_ttm_vram_mgr {
>         /** @manager: Base TTM resource manager */
>         struct ttm_resource_manager manager;
>         /** @mm: DRM buddy allocator which manages the VRAM */
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         /** @visible_size: Proped size of the CPU visible portion */
>         u64 visible_size;
>         /** @visible_avail: CPU visible portion still unallocated */
> diff --git a/drivers/gpu/tests/Makefile b/drivers/gpu/tests/Makefile
> new file mode 100644
> index 000000000000..31a5ff44cb4e
> --- /dev/null
> +++ b/drivers/gpu/tests/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_GPU_BUDDY_KUNIT_TEST) +=3D gpu_buddy_test.o gpu_random.o
> diff --git a/drivers/gpu/drm/tests/drm_buddy_test.c b/drivers/gpu/tests/g=
pu_buddy_test.c
> similarity index 68%
> rename from drivers/gpu/drm/tests/drm_buddy_test.c
> rename to drivers/gpu/tests/gpu_buddy_test.c
> index 5f40b5343bd8..dcd4741a905d 100644
> --- a/drivers/gpu/drm/tests/drm_buddy_test.c
> +++ b/drivers/gpu/tests/gpu_buddy_test.c
> @@ -10,9 +10,9 @@
>  #include <linux/sched/signal.h>
>  #include <linux/sizes.h>
>
> -#include <drm/drm_buddy.h>
> +#include <linux/gpu_buddy.h>
>
> -#include "../lib/drm_random.h"
> +#include "gpu_random.h"
>
>  static unsigned int random_seed;
>
> @@ -21,9 +21,9 @@ static inline u64 get_size(int order, u64 chunk_size)
>         return (1 << order) * chunk_size;
>  }
>
> -static void drm_test_buddy_fragmentation_performance(struct kunit *test)
> +static void gpu_test_buddy_fragmentation_performance(struct kunit *test)
>  {
> -       struct drm_buddy_block *block, *tmp;
> +       struct gpu_buddy_block *block, *tmp;
>         int num_blocks, i, ret, count =3D 0;
>         LIST_HEAD(allocated_blocks);
>         unsigned long elapsed_ms;
> @@ -32,7 +32,7 @@ static void drm_test_buddy_fragmentation_performance(st=
ruct kunit *test)
>         LIST_HEAD(clear_list);
>         LIST_HEAD(dirty_list);
>         LIST_HEAD(free_list);
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         u64 mm_size =3D SZ_4G;
>         ktime_t start, end;
>
> @@ -47,7 +47,7 @@ static void drm_test_buddy_fragmentation_performance(st=
ruct kunit *test)
>          * quickly the allocator can satisfy larger, aligned requests fro=
m a pool of
>          * highly fragmented space.
>          */
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_init(&mm, mm_size, SZ_4K),
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, SZ_4K),
>                                "buddy_init failed\n");
>
>         num_blocks =3D mm_size / SZ_64K;
> @@ -55,7 +55,7 @@ static void drm_test_buddy_fragmentation_performance(st=
ruct kunit *test)
>         start =3D ktime_get();
>         /* Allocate with maximum fragmentation - 8K blocks with 64K align=
ment */
>         for (i =3D 0; i < num_blocks; i++)
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
0, mm_size, SZ_8K, SZ_64K,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
0, mm_size, SZ_8K, SZ_64K,
>                                                                     &allo=
cated_blocks, 0),
>                                         "buddy_alloc hit an error size=3D=
%u\n", SZ_8K);
>
> @@ -68,21 +68,21 @@ static void drm_test_buddy_fragmentation_performance(=
struct kunit *test)
>         }
>
>         /* Free with different flags to ensure no coalescing */
> -       drm_buddy_free_list(&mm, &clear_list, DRM_BUDDY_CLEARED);
> -       drm_buddy_free_list(&mm, &dirty_list, 0);
> +       gpu_buddy_free_list(&mm, &clear_list, GPU_BUDDY_CLEARED);
> +       gpu_buddy_free_list(&mm, &dirty_list, 0);
>
>         for (i =3D 0; i < num_blocks; i++)
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
0, mm_size, SZ_64K, SZ_64K,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
0, mm_size, SZ_64K, SZ_64K,
>                                                                     &test=
_blocks, 0),
>                                         "buddy_alloc hit an error size=3D=
%u\n", SZ_64K);
> -       drm_buddy_free_list(&mm, &test_blocks, 0);
> +       gpu_buddy_free_list(&mm, &test_blocks, 0);
>
>         end =3D ktime_get();
>         elapsed_ms =3D ktime_to_ms(ktime_sub(end, start));
>
>         kunit_info(test, "Fragmented allocation took %lu ms\n", elapsed_m=
s);
>
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_fini(&mm);
>
>         /*
>          * Reverse free order under fragmentation
> @@ -96,13 +96,13 @@ static void drm_test_buddy_fragmentation_performance(=
struct kunit *test)
>          * deallocation occurs in the opposite order of allocation, expos=
ing the
>          * cost difference between a linear freelist scan and an ordered =
tree lookup.
>          */
> -       ret =3D drm_buddy_init(&mm, mm_size, SZ_4K);
> +       ret =3D gpu_buddy_init(&mm, mm_size, SZ_4K);
>         KUNIT_ASSERT_EQ(test, ret, 0);
>
>         start =3D ktime_get();
>         /* Allocate maximum fragmentation */
>         for (i =3D 0; i < num_blocks; i++)
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
0, mm_size, SZ_8K, SZ_64K,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
0, mm_size, SZ_8K, SZ_64K,
>                                                                     &allo=
cated_blocks, 0),
>                                         "buddy_alloc hit an error size=3D=
%u\n", SZ_8K);
>
> @@ -111,28 +111,28 @@ static void drm_test_buddy_fragmentation_performanc=
e(struct kunit *test)
>                         list_move_tail(&block->link, &free_list);
>                 count++;
>         }
> -       drm_buddy_free_list(&mm, &free_list, DRM_BUDDY_CLEARED);
> +       gpu_buddy_free_list(&mm, &free_list, GPU_BUDDY_CLEARED);
>
>         list_for_each_entry_safe_reverse(block, tmp, &allocated_blocks, l=
ink)
>                 list_move(&block->link, &reverse_list);
> -       drm_buddy_free_list(&mm, &reverse_list, DRM_BUDDY_CLEARED);
> +       gpu_buddy_free_list(&mm, &reverse_list, GPU_BUDDY_CLEARED);
>
>         end =3D ktime_get();
>         elapsed_ms =3D ktime_to_ms(ktime_sub(end, start));
>
>         kunit_info(test, "Reverse-ordered free took %lu ms\n", elapsed_ms=
);
>
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static void drm_test_buddy_alloc_range_bias(struct kunit *test)
> +static void gpu_test_buddy_alloc_range_bias(struct kunit *test)
>  {
>         u32 mm_size, size, ps, bias_size, bias_start, bias_end, bias_rem;
> -       DRM_RND_STATE(prng, random_seed);
> +       GPU_RND_STATE(prng, random_seed);
>         unsigned int i, count, *order;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         unsigned long flags;
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         LIST_HEAD(allocated);
>
>         bias_size =3D SZ_1M;
> @@ -142,11 +142,11 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>
>         kunit_info(test, "mm_size=3D%u, ps=3D%u\n", mm_size, ps);
>
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_init(&mm, mm_size, ps),
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, ps),
>                                "buddy_init failed\n");
>
>         count =3D mm_size / bias_size;
> -       order =3D drm_random_order(count, &prng);
> +       order =3D gpu_random_order(count, &prng);
>         KUNIT_EXPECT_TRUE(test, order);
>
>         /*
> @@ -166,79 +166,79 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>
>                 /* internal round_up too big */
>                 KUNIT_ASSERT_TRUE_MSG(test,
> -                                     drm_buddy_alloc_blocks(&mm, bias_st=
art,
> +                                     gpu_buddy_alloc_blocks(&mm, bias_st=
art,
>                                                              bias_end, bi=
as_size + ps, bias_size,
>                                                              &allocated,
> -                                                            DRM_BUDDY_RA=
NGE_ALLOCATION),
> +                                                            GPU_BUDDY_RA=
NGE_ALLOCATION),
>                                       "buddy_alloc failed with bias(%x-%x=
), size=3D%u, ps=3D%u\n",
>                                       bias_start, bias_end, bias_size, bi=
as_size);
>
>                 /* size too big */
>                 KUNIT_ASSERT_TRUE_MSG(test,
> -                                     drm_buddy_alloc_blocks(&mm, bias_st=
art,
> +                                     gpu_buddy_alloc_blocks(&mm, bias_st=
art,
>                                                              bias_end, bi=
as_size + ps, ps,
>                                                              &allocated,
> -                                                            DRM_BUDDY_RA=
NGE_ALLOCATION),
> +                                                            GPU_BUDDY_RA=
NGE_ALLOCATION),
>                                       "buddy_alloc didn't fail with bias(=
%x-%x), size=3D%u, ps=3D%u\n",
>                                       bias_start, bias_end, bias_size + p=
s, ps);
>
>                 /* bias range too small for size */
>                 KUNIT_ASSERT_TRUE_MSG(test,
> -                                     drm_buddy_alloc_blocks(&mm, bias_st=
art + ps,
> +                                     gpu_buddy_alloc_blocks(&mm, bias_st=
art + ps,
>                                                              bias_end, bi=
as_size, ps,
>                                                              &allocated,
> -                                                            DRM_BUDDY_RA=
NGE_ALLOCATION),
> +                                                            GPU_BUDDY_RA=
NGE_ALLOCATION),
>                                       "buddy_alloc didn't fail with bias(=
%x-%x), size=3D%u, ps=3D%u\n",
>                                       bias_start + ps, bias_end, bias_siz=
e, ps);
>
>                 /* bias misaligned */
>                 KUNIT_ASSERT_TRUE_MSG(test,
> -                                     drm_buddy_alloc_blocks(&mm, bias_st=
art + ps,
> +                                     gpu_buddy_alloc_blocks(&mm, bias_st=
art + ps,
>                                                              bias_end - p=
s,
>                                                              bias_size >>=
 1, bias_size >> 1,
>                                                              &allocated,
> -                                                            DRM_BUDDY_RA=
NGE_ALLOCATION),
> +                                                            GPU_BUDDY_RA=
NGE_ALLOCATION),
>                                       "buddy_alloc h didn't fail with bia=
s(%x-%x), size=3D%u, ps=3D%u\n",
>                                       bias_start + ps, bias_end - ps, bia=
s_size >> 1, bias_size >> 1);
>
>                 /* single big page */
>                 KUNIT_ASSERT_FALSE_MSG(test,
> -                                      drm_buddy_alloc_blocks(&mm, bias_s=
tart,
> +                                      gpu_buddy_alloc_blocks(&mm, bias_s=
tart,
>                                                               bias_end, b=
ias_size, bias_size,
>                                                               &tmp,
> -                                                             DRM_BUDDY_R=
ANGE_ALLOCATION),
> +                                                             GPU_BUDDY_R=
ANGE_ALLOCATION),
>                                        "buddy_alloc i failed with bias(%x=
-%x), size=3D%u, ps=3D%u\n",
>                                        bias_start, bias_end, bias_size, b=
ias_size);
> -               drm_buddy_free_list(&mm, &tmp, 0);
> +               gpu_buddy_free_list(&mm, &tmp, 0);
>
>                 /* single page with internal round_up */
>                 KUNIT_ASSERT_FALSE_MSG(test,
> -                                      drm_buddy_alloc_blocks(&mm, bias_s=
tart,
> +                                      gpu_buddy_alloc_blocks(&mm, bias_s=
tart,
>                                                               bias_end, p=
s, bias_size,
>                                                               &tmp,
> -                                                             DRM_BUDDY_R=
ANGE_ALLOCATION),
> +                                                             GPU_BUDDY_R=
ANGE_ALLOCATION),
>                                        "buddy_alloc failed with bias(%x-%=
x), size=3D%u, ps=3D%u\n",
>                                        bias_start, bias_end, ps, bias_siz=
e);
> -               drm_buddy_free_list(&mm, &tmp, 0);
> +               gpu_buddy_free_list(&mm, &tmp, 0);
>
>                 /* random size within */
>                 size =3D max(round_up(prandom_u32_state(&prng) % bias_rem=
, ps), ps);
>                 if (size)
>                         KUNIT_ASSERT_FALSE_MSG(test,
> -                                              drm_buddy_alloc_blocks(&mm=
, bias_start,
> +                                              gpu_buddy_alloc_blocks(&mm=
, bias_start,
>                                                                       bia=
s_end, size, ps,
>                                                                       &tm=
p,
> -                                                                     DRM=
_BUDDY_RANGE_ALLOCATION),
> +                                                                     GPU=
_BUDDY_RANGE_ALLOCATION),
>                                                "buddy_alloc failed with b=
ias(%x-%x), size=3D%u, ps=3D%u\n",
>                                                bias_start, bias_end, size=
, ps);
>
>                 bias_rem -=3D size;
>                 /* too big for current avail */
>                 KUNIT_ASSERT_TRUE_MSG(test,
> -                                     drm_buddy_alloc_blocks(&mm, bias_st=
art,
> +                                     gpu_buddy_alloc_blocks(&mm, bias_st=
art,
>                                                              bias_end, bi=
as_rem + ps, ps,
>                                                              &allocated,
> -                                                            DRM_BUDDY_RA=
NGE_ALLOCATION),
> +                                                            GPU_BUDDY_RA=
NGE_ALLOCATION),
>                                       "buddy_alloc didn't fail with bias(=
%x-%x), size=3D%u, ps=3D%u\n",
>                                       bias_start, bias_end, bias_rem + ps=
, ps);
>
> @@ -248,10 +248,10 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>                         size =3D max(size, ps);
>
>                         KUNIT_ASSERT_FALSE_MSG(test,
> -                                              drm_buddy_alloc_blocks(&mm=
, bias_start,
> +                                              gpu_buddy_alloc_blocks(&mm=
, bias_start,
>                                                                       bia=
s_end, size, ps,
>                                                                       &al=
located,
> -                                                                     DRM=
_BUDDY_RANGE_ALLOCATION),
> +                                                                     GPU=
_BUDDY_RANGE_ALLOCATION),
>                                                "buddy_alloc failed with b=
ias(%x-%x), size=3D%u, ps=3D%u\n",
>                                                bias_start, bias_end, size=
, ps);
>                         /*
> @@ -259,15 +259,15 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>                          * unallocated, and ideally not always on the bia=
s
>                          * boundaries.
>                          */
> -                       drm_buddy_free_list(&mm, &tmp, 0);
> +                       gpu_buddy_free_list(&mm, &tmp, 0);
>                 } else {
>                         list_splice_tail(&tmp, &allocated);
>                 }
>         }
>
>         kfree(order);
> -       drm_buddy_free_list(&mm, &allocated, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &allocated, 0);
> +       gpu_buddy_fini(&mm);
>
>         /*
>          * Something more free-form. Idea is to pick a random starting bi=
as
> @@ -278,7 +278,7 @@ static void drm_test_buddy_alloc_range_bias(struct ku=
nit *test)
>          * allocated nodes in the middle of the address space.
>          */
>
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_init(&mm, mm_size, ps),
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, ps),
>                                "buddy_init failed\n");
>
>         bias_start =3D round_up(prandom_u32_state(&prng) % (mm_size - ps)=
, ps);
> @@ -290,10 +290,10 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>                 u32 size =3D max(round_up(prandom_u32_state(&prng) % bias=
_rem, ps), ps);
>
>                 KUNIT_ASSERT_FALSE_MSG(test,
> -                                      drm_buddy_alloc_blocks(&mm, bias_s=
tart,
> +                                      gpu_buddy_alloc_blocks(&mm, bias_s=
tart,
>                                                               bias_end, s=
ize, ps,
>                                                               &allocated,
> -                                                             DRM_BUDDY_R=
ANGE_ALLOCATION),
> +                                                             GPU_BUDDY_R=
ANGE_ALLOCATION),
>                                        "buddy_alloc failed with bias(%x-%=
x), size=3D%u, ps=3D%u\n",
>                                        bias_start, bias_end, size, ps);
>                 bias_rem -=3D size;
> @@ -319,24 +319,24 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>         KUNIT_ASSERT_EQ(test, bias_start, 0);
>         KUNIT_ASSERT_EQ(test, bias_end, mm_size);
>         KUNIT_ASSERT_TRUE_MSG(test,
> -                             drm_buddy_alloc_blocks(&mm, bias_start, bia=
s_end,
> +                             gpu_buddy_alloc_blocks(&mm, bias_start, bia=
s_end,
>                                                      ps, ps,
>                                                      &allocated,
> -                                                    DRM_BUDDY_RANGE_ALLO=
CATION),
> +                                                    GPU_BUDDY_RANGE_ALLO=
CATION),
>                               "buddy_alloc passed with bias(%x-%x), size=
=3D%u\n",
>                               bias_start, bias_end, ps);
>
> -       drm_buddy_free_list(&mm, &allocated, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &allocated, 0);
> +       gpu_buddy_fini(&mm);
>
>         /*
> -        * Allocate cleared blocks in the bias range when the DRM buddy's=
 clear avail is
> +        * Allocate cleared blocks in the bias range when the GPU buddy's=
 clear avail is
>          * zero. This will validate the bias range allocation in scenario=
s like system boot
>          * when no cleared blocks are available and exercise the fallback=
 path too. The resulting
>          * blocks should always be dirty.
>          */
>
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_init(&mm, mm_size, ps),
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, ps),
>                                "buddy_init failed\n");
>
>         bias_start =3D round_up(prandom_u32_state(&prng) % (mm_size - ps)=
, ps);
> @@ -344,11 +344,11 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>         bias_end =3D max(bias_end, bias_start + ps);
>         bias_rem =3D bias_end - bias_start;
>
> -       flags =3D DRM_BUDDY_CLEAR_ALLOCATION | DRM_BUDDY_RANGE_ALLOCATION=
;
> +       flags =3D GPU_BUDDY_CLEAR_ALLOCATION | GPU_BUDDY_RANGE_ALLOCATION=
;
>         size =3D max(round_up(prandom_u32_state(&prng) % bias_rem, ps), p=
s);
>
>         KUNIT_ASSERT_FALSE_MSG(test,
> -                              drm_buddy_alloc_blocks(&mm, bias_start,
> +                              gpu_buddy_alloc_blocks(&mm, bias_start,
>                                                       bias_end, size, ps,
>                                                       &allocated,
>                                                       flags),
> @@ -356,27 +356,27 @@ static void drm_test_buddy_alloc_range_bias(struct =
kunit *test)
>                                bias_start, bias_end, size, ps);
>
>         list_for_each_entry(block, &allocated, link)
> -               KUNIT_EXPECT_EQ(test, drm_buddy_block_is_clear(block), fa=
lse);
> +               KUNIT_EXPECT_EQ(test, gpu_buddy_block_is_clear(block), fa=
lse);
>
> -       drm_buddy_free_list(&mm, &allocated, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &allocated, 0);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static void drm_test_buddy_alloc_clear(struct kunit *test)
> +static void gpu_test_buddy_alloc_clear(struct kunit *test)
>  {
>         unsigned long n_pages, total, i =3D 0;
>         const unsigned long ps =3D SZ_4K;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         const int max_order =3D 12;
>         LIST_HEAD(allocated);
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         unsigned int order;
>         u32 mm_size, size;
>         LIST_HEAD(dirty);
>         LIST_HEAD(clean);
>
>         mm_size =3D SZ_4K << max_order;
> -       KUNIT_EXPECT_FALSE(test, drm_buddy_init(&mm, mm_size, ps));
> +       KUNIT_EXPECT_FALSE(test, gpu_buddy_init(&mm, mm_size, ps));
>
>         KUNIT_EXPECT_EQ(test, mm.max_order, max_order);
>
> @@ -389,11 +389,11 @@ static void drm_test_buddy_alloc_clear(struct kunit=
 *test)
>          * is indeed all dirty pages and vice versa. Free it all again,
>          * keeping the dirty/clear status.
>          */
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
>                                                             5 * ps, ps, &=
allocated,
> -                                                           DRM_BUDDY_TOP=
DOWN_ALLOCATION),
> +                                                           GPU_BUDDY_TOP=
DOWN_ALLOCATION),
>                                 "buddy_alloc hit an error size=3D%lu\n", =
5 * ps);
> -       drm_buddy_free_list(&mm, &allocated, DRM_BUDDY_CLEARED);
> +       gpu_buddy_free_list(&mm, &allocated, GPU_BUDDY_CLEARED);
>
>         n_pages =3D 10;
>         do {
> @@ -406,37 +406,37 @@ static void drm_test_buddy_alloc_clear(struct kunit=
 *test)
>                         flags =3D 0;
>                 } else {
>                         list =3D &clean;
> -                       flags =3D DRM_BUDDY_CLEAR_ALLOCATION;
> +                       flags =3D GPU_BUDDY_CLEAR_ALLOCATION;
>                 }
>
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
0, mm_size,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
0, mm_size,
>                                                                     ps, p=
s, list,
>                                                                     flags=
),
>                                         "buddy_alloc hit an error size=3D=
%lu\n", ps);
>         } while (++i < n_pages);
>
>         list_for_each_entry(block, &clean, link)
> -               KUNIT_EXPECT_EQ(test, drm_buddy_block_is_clear(block), tr=
ue);
> +               KUNIT_EXPECT_EQ(test, gpu_buddy_block_is_clear(block), tr=
ue);
>
>         list_for_each_entry(block, &dirty, link)
> -               KUNIT_EXPECT_EQ(test, drm_buddy_block_is_clear(block), fa=
lse);
> +               KUNIT_EXPECT_EQ(test, gpu_buddy_block_is_clear(block), fa=
lse);
>
> -       drm_buddy_free_list(&mm, &clean, DRM_BUDDY_CLEARED);
> +       gpu_buddy_free_list(&mm, &clean, GPU_BUDDY_CLEARED);
>
>         /*
>          * Trying to go over the clear limit for some allocation.
>          * The allocation should never fail with reasonable page-size.
>          */
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
>                                                             10 * ps, ps, =
&clean,
> -                                                           DRM_BUDDY_CLE=
AR_ALLOCATION),
> +                                                           GPU_BUDDY_CLE=
AR_ALLOCATION),
>                                 "buddy_alloc hit an error size=3D%lu\n", =
10 * ps);
>
> -       drm_buddy_free_list(&mm, &clean, DRM_BUDDY_CLEARED);
> -       drm_buddy_free_list(&mm, &dirty, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &clean, GPU_BUDDY_CLEARED);
> +       gpu_buddy_free_list(&mm, &dirty, 0);
> +       gpu_buddy_fini(&mm);
>
> -       KUNIT_EXPECT_FALSE(test, drm_buddy_init(&mm, mm_size, ps));
> +       KUNIT_EXPECT_FALSE(test, gpu_buddy_init(&mm, mm_size, ps));
>
>         /*
>          * Create a new mm. Intentionally fragment the address space by c=
reating
> @@ -458,34 +458,34 @@ static void drm_test_buddy_alloc_clear(struct kunit=
 *test)
>                 else
>                         list =3D &clean;
>
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
0, mm_size,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
0, mm_size,
>                                                                     ps, p=
s, list, 0),
>                                         "buddy_alloc hit an error size=3D=
%lu\n", ps);
>         } while (++i < n_pages);
>
> -       drm_buddy_free_list(&mm, &clean, DRM_BUDDY_CLEARED);
> -       drm_buddy_free_list(&mm, &dirty, 0);
> +       gpu_buddy_free_list(&mm, &clean, GPU_BUDDY_CLEARED);
> +       gpu_buddy_free_list(&mm, &dirty, 0);
>
>         order =3D 1;
>         do {
>                 size =3D SZ_4K << order;
>
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
0, mm_size,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
0, mm_size,
>                                                                     size,=
 size, &allocated,
> -                                                                   DRM_B=
UDDY_CLEAR_ALLOCATION),
> +                                                                   GPU_B=
UDDY_CLEAR_ALLOCATION),
>                                         "buddy_alloc hit an error size=3D=
%u\n", size);
>                 total =3D 0;
>                 list_for_each_entry(block, &allocated, link) {
>                         if (size !=3D mm_size)
> -                               KUNIT_EXPECT_EQ(test, drm_buddy_block_is_=
clear(block), false);
> -                       total +=3D drm_buddy_block_size(&mm, block);
> +                               KUNIT_EXPECT_EQ(test, gpu_buddy_block_is_=
clear(block), false);
> +                       total +=3D gpu_buddy_block_size(&mm, block);
>                 }
>                 KUNIT_EXPECT_EQ(test, total, size);
>
> -               drm_buddy_free_list(&mm, &allocated, 0);
> +               gpu_buddy_free_list(&mm, &allocated, 0);
>         } while (++order <=3D max_order);
>
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_fini(&mm);
>
>         /*
>          * Create a new mm with a non power-of-two size. Allocate a rando=
m size from each
> @@ -494,44 +494,44 @@ static void drm_test_buddy_alloc_clear(struct kunit=
 *test)
>          */
>         mm_size =3D (SZ_4K << max_order) + (SZ_4K << (max_order - 2));
>
> -       KUNIT_EXPECT_FALSE(test, drm_buddy_init(&mm, mm_size, ps));
> +       KUNIT_EXPECT_FALSE(test, gpu_buddy_init(&mm, mm_size, ps));
>         KUNIT_EXPECT_EQ(test, mm.max_order, max_order);
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, SZ_4K=
 << max_order,
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, SZ_4K=
 << max_order,
>                                                             4 * ps, ps, &=
allocated,
> -                                                           DRM_BUDDY_RAN=
GE_ALLOCATION),
> +                                                           GPU_BUDDY_RAN=
GE_ALLOCATION),
>                                 "buddy_alloc hit an error size=3D%lu\n", =
4 * ps);
> -       drm_buddy_free_list(&mm, &allocated, DRM_BUDDY_CLEARED);
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, SZ_4K=
 << max_order,
> +       gpu_buddy_free_list(&mm, &allocated, GPU_BUDDY_CLEARED);
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, SZ_4K=
 << max_order,
>                                                             2 * ps, ps, &=
allocated,
> -                                                           DRM_BUDDY_CLE=
AR_ALLOCATION),
> +                                                           GPU_BUDDY_CLE=
AR_ALLOCATION),
>                                 "buddy_alloc hit an error size=3D%lu\n", =
2 * ps);
> -       drm_buddy_free_list(&mm, &allocated, DRM_BUDDY_CLEARED);
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, SZ_4K <<=
 max_order, mm_size,
> +       gpu_buddy_free_list(&mm, &allocated, GPU_BUDDY_CLEARED);
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, SZ_4K <<=
 max_order, mm_size,
>                                                             ps, ps, &allo=
cated,
> -                                                           DRM_BUDDY_RAN=
GE_ALLOCATION),
> +                                                           GPU_BUDDY_RAN=
GE_ALLOCATION),
>                                 "buddy_alloc hit an error size=3D%lu\n", =
ps);
> -       drm_buddy_free_list(&mm, &allocated, DRM_BUDDY_CLEARED);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &allocated, GPU_BUDDY_CLEARED);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static void drm_test_buddy_alloc_contiguous(struct kunit *test)
> +static void gpu_test_buddy_alloc_contiguous(struct kunit *test)
>  {
>         const unsigned long ps =3D SZ_4K, mm_size =3D 16 * 3 * SZ_4K;
>         unsigned long i, n_pages, total;
> -       struct drm_buddy_block *block;
> -       struct drm_buddy mm;
> +       struct gpu_buddy_block *block;
> +       struct gpu_buddy mm;
>         LIST_HEAD(left);
>         LIST_HEAD(middle);
>         LIST_HEAD(right);
>         LIST_HEAD(allocated);
>
> -       KUNIT_EXPECT_FALSE(test, drm_buddy_init(&mm, mm_size, ps));
> +       KUNIT_EXPECT_FALSE(test, gpu_buddy_init(&mm, mm_size, ps));
>
>         /*
>          * Idea is to fragment the address space by alternating block
>          * allocations between three different lists; one for left, middl=
e and
>          * right. We can then free a list to simulate fragmentation. In
> -        * particular we want to exercise the DRM_BUDDY_CONTIGUOUS_ALLOCA=
TION,
> +        * particular we want to exercise the GPU_BUDDY_CONTIGUOUS_ALLOCA=
TION,
>          * including the try_harder path.
>          */
>
> @@ -548,66 +548,66 @@ static void drm_test_buddy_alloc_contiguous(struct =
kunit *test)
>                 else
>                         list =3D &right;
>                 KUNIT_ASSERT_FALSE_MSG(test,
> -                                      drm_buddy_alloc_blocks(&mm, 0, mm_=
size,
> +                                      gpu_buddy_alloc_blocks(&mm, 0, mm_=
size,
>                                                               ps, ps, lis=
t, 0),
>                                        "buddy_alloc hit an error size=3D%=
lu\n",
>                                        ps);
>         } while (++i < n_pages);
>
> -       KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
> +       KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
>                                                            3 * ps, ps, &a=
llocated,
> -                                                          DRM_BUDDY_CONT=
IGUOUS_ALLOCATION),
> +                                                          GPU_BUDDY_CONT=
IGUOUS_ALLOCATION),
>                                "buddy_alloc didn't error size=3D%lu\n", 3=
 * ps);
>
> -       drm_buddy_free_list(&mm, &middle, 0);
> -       KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
> +       gpu_buddy_free_list(&mm, &middle, 0);
> +       KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
>                                                            3 * ps, ps, &a=
llocated,
> -                                                          DRM_BUDDY_CONT=
IGUOUS_ALLOCATION),
> +                                                          GPU_BUDDY_CONT=
IGUOUS_ALLOCATION),
>                                "buddy_alloc didn't error size=3D%lu\n", 3=
 * ps);
> -       KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
> +       KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
>                                                            2 * ps, ps, &a=
llocated,
> -                                                          DRM_BUDDY_CONT=
IGUOUS_ALLOCATION),
> +                                                          GPU_BUDDY_CONT=
IGUOUS_ALLOCATION),
>                                "buddy_alloc didn't error size=3D%lu\n", 2=
 * ps);
>
> -       drm_buddy_free_list(&mm, &right, 0);
> -       KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
> +       gpu_buddy_free_list(&mm, &right, 0);
> +       KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_siz=
e,
>                                                            3 * ps, ps, &a=
llocated,
> -                                                          DRM_BUDDY_CONT=
IGUOUS_ALLOCATION),
> +                                                          GPU_BUDDY_CONT=
IGUOUS_ALLOCATION),
>                                "buddy_alloc didn't error size=3D%lu\n", 3=
 * ps);
>         /*
>          * At this point we should have enough contiguous space for 2 blo=
cks,
>          * however they are never buddies (since we freed middle and righ=
t) so
>          * will require the try_harder logic to find them.
>          */
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
>                                                             2 * ps, ps, &=
allocated,
> -                                                           DRM_BUDDY_CON=
TIGUOUS_ALLOCATION),
> +                                                           GPU_BUDDY_CON=
TIGUOUS_ALLOCATION),
>                                "buddy_alloc hit an error size=3D%lu\n", 2=
 * ps);
>
> -       drm_buddy_free_list(&mm, &left, 0);
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
> +       gpu_buddy_free_list(&mm, &left, 0);
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, 0, mm_si=
ze,
>                                                             3 * ps, ps, &=
allocated,
> -                                                           DRM_BUDDY_CON=
TIGUOUS_ALLOCATION),
> +                                                           GPU_BUDDY_CON=
TIGUOUS_ALLOCATION),
>                                "buddy_alloc hit an error size=3D%lu\n", 3=
 * ps);
>
>         total =3D 0;
>         list_for_each_entry(block, &allocated, link)
> -               total +=3D drm_buddy_block_size(&mm, block);
> +               total +=3D gpu_buddy_block_size(&mm, block);
>
>         KUNIT_ASSERT_EQ(test, total, ps * 2 + ps * 3);
>
> -       drm_buddy_free_list(&mm, &allocated, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &allocated, 0);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static void drm_test_buddy_alloc_pathological(struct kunit *test)
> +static void gpu_test_buddy_alloc_pathological(struct kunit *test)
>  {
>         u64 mm_size, size, start =3D 0;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         const int max_order =3D 3;
>         unsigned long flags =3D 0;
>         int order, top;
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         LIST_HEAD(blocks);
>         LIST_HEAD(holes);
>         LIST_HEAD(tmp);
> @@ -620,7 +620,7 @@ static void drm_test_buddy_alloc_pathological(struct =
kunit *test)
>          */
>
>         mm_size =3D SZ_4K << max_order;
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_init(&mm, mm_size, SZ_4K),
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, SZ_4K),
>                                "buddy_init failed\n");
>
>         KUNIT_EXPECT_EQ(test, mm.max_order, max_order);
> @@ -630,18 +630,18 @@ static void drm_test_buddy_alloc_pathological(struc=
t kunit *test)
>                 block =3D list_first_entry_or_null(&blocks, typeof(*block=
), link);
>                 if (block) {
>                         list_del(&block->link);
> -                       drm_buddy_free_block(&mm, block);
> +                       gpu_buddy_free_block(&mm, block);
>                 }
>
>                 for (order =3D top; order--;) {
>                         size =3D get_size(order, mm.chunk_size);
> -                       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_bloc=
ks(&mm, start,
> +                       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_bloc=
ks(&mm, start,
>                                                                          =
   mm_size, size, size,
>                                                                          =
       &tmp, flags),
>                                         "buddy_alloc hit -ENOMEM with ord=
er=3D%d, top=3D%d\n",
>                                         order, top);
>
> -                       block =3D list_first_entry_or_null(&tmp, struct d=
rm_buddy_block, link);
> +                       block =3D list_first_entry_or_null(&tmp, struct g=
pu_buddy_block, link);
>                         KUNIT_ASSERT_TRUE_MSG(test, block, "alloc_blocks =
has no blocks\n");
>
>                         list_move_tail(&block->link, &blocks);
> @@ -649,45 +649,45 @@ static void drm_test_buddy_alloc_pathological(struc=
t kunit *test)
>
>                 /* There should be one final page for this sub-allocation=
 */
>                 size =3D get_size(0, mm.chunk_size);
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
start, mm_size,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
start, mm_size,
>                                                                     size,=
 size, &tmp, flags),
>                                                            "buddy_alloc h=
it -ENOMEM for hole\n");
>
> -               block =3D list_first_entry_or_null(&tmp, struct drm_buddy=
_block, link);
> +               block =3D list_first_entry_or_null(&tmp, struct gpu_buddy=
_block, link);
>                 KUNIT_ASSERT_TRUE_MSG(test, block, "alloc_blocks has no b=
locks\n");
>
>                 list_move_tail(&block->link, &holes);
>
>                 size =3D get_size(top, mm.chunk_size);
> -               KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, s=
tart, mm_size,
> +               KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, s=
tart, mm_size,
>                                                                    size, =
size, &tmp, flags),
>                                                           "buddy_alloc un=
expectedly succeeded at top-order %d/%d, it should be full!",
>                                                           top, max_order)=
;
>         }
>
> -       drm_buddy_free_list(&mm, &holes, 0);
> +       gpu_buddy_free_list(&mm, &holes, 0);
>
>         /* Nothing larger than blocks of chunk_size now available */
>         for (order =3D 1; order <=3D max_order; order++) {
>                 size =3D get_size(order, mm.chunk_size);
> -               KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, s=
tart, mm_size,
> +               KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, s=
tart, mm_size,
>                                                                    size, =
size, &tmp, flags),
>                                                           "buddy_alloc un=
expectedly succeeded at order %d, it should be full!",
>                                                           order);
>         }
>
>         list_splice_tail(&holes, &blocks);
> -       drm_buddy_free_list(&mm, &blocks, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &blocks, 0);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static void drm_test_buddy_alloc_pessimistic(struct kunit *test)
> +static void gpu_test_buddy_alloc_pessimistic(struct kunit *test)
>  {
>         u64 mm_size, size, start =3D 0;
> -       struct drm_buddy_block *block, *bn;
> +       struct gpu_buddy_block *block, *bn;
>         const unsigned int max_order =3D 16;
>         unsigned long flags =3D 0;
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         unsigned int order;
>         LIST_HEAD(blocks);
>         LIST_HEAD(tmp);
> @@ -699,19 +699,19 @@ static void drm_test_buddy_alloc_pessimistic(struct=
 kunit *test)
>          */
>
>         mm_size =3D SZ_4K << max_order;
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_init(&mm, mm_size, SZ_4K),
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, SZ_4K),
>                                "buddy_init failed\n");
>
>         KUNIT_EXPECT_EQ(test, mm.max_order, max_order);
>
>         for (order =3D 0; order < max_order; order++) {
>                 size =3D get_size(order, mm.chunk_size);
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
start, mm_size,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
start, mm_size,
>                                                                     size,=
 size, &tmp, flags),
>                                                            "buddy_alloc h=
it -ENOMEM with order=3D%d\n",
>                                                            order);
>
> -               block =3D list_first_entry_or_null(&tmp, struct drm_buddy=
_block, link);
> +               block =3D list_first_entry_or_null(&tmp, struct gpu_buddy=
_block, link);
>                 KUNIT_ASSERT_TRUE_MSG(test, block, "alloc_blocks has no b=
locks\n");
>
>                 list_move_tail(&block->link, &blocks);
> @@ -719,11 +719,11 @@ static void drm_test_buddy_alloc_pessimistic(struct=
 kunit *test)
>
>         /* And now the last remaining block available */
>         size =3D get_size(0, mm.chunk_size);
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, start, m=
m_size,
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, start, m=
m_size,
>                                                             size, size, &=
tmp, flags),
>                                                    "buddy_alloc hit -ENOM=
EM on final alloc\n");
>
> -       block =3D list_first_entry_or_null(&tmp, struct drm_buddy_block, =
link);
> +       block =3D list_first_entry_or_null(&tmp, struct gpu_buddy_block, =
link);
>         KUNIT_ASSERT_TRUE_MSG(test, block, "alloc_blocks has no blocks\n"=
);
>
>         list_move_tail(&block->link, &blocks);
> @@ -731,58 +731,58 @@ static void drm_test_buddy_alloc_pessimistic(struct=
 kunit *test)
>         /* Should be completely full! */
>         for (order =3D max_order; order--;) {
>                 size =3D get_size(order, mm.chunk_size);
> -               KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, s=
tart, mm_size,
> +               KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, s=
tart, mm_size,
>                                                                    size, =
size, &tmp, flags),
>                                                           "buddy_alloc un=
expectedly succeeded, it should be full!");
>         }
>
>         block =3D list_last_entry(&blocks, typeof(*block), link);
>         list_del(&block->link);
> -       drm_buddy_free_block(&mm, block);
> +       gpu_buddy_free_block(&mm, block);
>
>         /* As we free in increasing size, we make available larger blocks=
 */
>         order =3D 1;
>         list_for_each_entry_safe(block, bn, &blocks, link) {
>                 list_del(&block->link);
> -               drm_buddy_free_block(&mm, block);
> +               gpu_buddy_free_block(&mm, block);
>
>                 size =3D get_size(order, mm.chunk_size);
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
start, mm_size,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
start, mm_size,
>                                                                     size,=
 size, &tmp, flags),
>                                                            "buddy_alloc h=
it -ENOMEM with order=3D%d\n",
>                                                            order);
>
> -               block =3D list_first_entry_or_null(&tmp, struct drm_buddy=
_block, link);
> +               block =3D list_first_entry_or_null(&tmp, struct gpu_buddy=
_block, link);
>                 KUNIT_ASSERT_TRUE_MSG(test, block, "alloc_blocks has no b=
locks\n");
>
>                 list_del(&block->link);
> -               drm_buddy_free_block(&mm, block);
> +               gpu_buddy_free_block(&mm, block);
>                 order++;
>         }
>
>         /* To confirm, now the whole mm should be available */
>         size =3D get_size(max_order, mm.chunk_size);
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, start, m=
m_size,
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, start, m=
m_size,
>                                                             size, size, &=
tmp, flags),
>                                                    "buddy_alloc (realloc)=
 hit -ENOMEM with order=3D%d\n",
>                                                    max_order);
>
> -       block =3D list_first_entry_or_null(&tmp, struct drm_buddy_block, =
link);
> +       block =3D list_first_entry_or_null(&tmp, struct gpu_buddy_block, =
link);
>         KUNIT_ASSERT_TRUE_MSG(test, block, "alloc_blocks has no blocks\n"=
);
>
>         list_del(&block->link);
> -       drm_buddy_free_block(&mm, block);
> -       drm_buddy_free_list(&mm, &blocks, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_block(&mm, block);
> +       gpu_buddy_free_list(&mm, &blocks, 0);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static void drm_test_buddy_alloc_optimistic(struct kunit *test)
> +static void gpu_test_buddy_alloc_optimistic(struct kunit *test)
>  {
>         u64 mm_size, size, start =3D 0;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         unsigned long flags =3D 0;
>         const int max_order =3D 16;
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>         LIST_HEAD(blocks);
>         LIST_HEAD(tmp);
>         int order;
> @@ -794,19 +794,19 @@ static void drm_test_buddy_alloc_optimistic(struct =
kunit *test)
>
>         mm_size =3D SZ_4K * ((1 << (max_order + 1)) - 1);
>
> -       KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_init(&mm, mm_size, SZ_4K),
> +       KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_init(&mm, mm_size, SZ_4K),
>                                "buddy_init failed\n");
>
>         KUNIT_EXPECT_EQ(test, mm.max_order, max_order);
>
>         for (order =3D 0; order <=3D max_order; order++) {
>                 size =3D get_size(order, mm.chunk_size);
> -               KUNIT_ASSERT_FALSE_MSG(test, drm_buddy_alloc_blocks(&mm, =
start, mm_size,
> +               KUNIT_ASSERT_FALSE_MSG(test, gpu_buddy_alloc_blocks(&mm, =
start, mm_size,
>                                                                     size,=
 size, &tmp, flags),
>                                                            "buddy_alloc h=
it -ENOMEM with order=3D%d\n",
>                                                            order);
>
> -               block =3D list_first_entry_or_null(&tmp, struct drm_buddy=
_block, link);
> +               block =3D list_first_entry_or_null(&tmp, struct gpu_buddy=
_block, link);
>                 KUNIT_ASSERT_TRUE_MSG(test, block, "alloc_blocks has no b=
locks\n");
>
>                 list_move_tail(&block->link, &blocks);
> @@ -814,80 +814,80 @@ static void drm_test_buddy_alloc_optimistic(struct =
kunit *test)
>
>         /* Should be completely full! */
>         size =3D get_size(0, mm.chunk_size);
> -       KUNIT_ASSERT_TRUE_MSG(test, drm_buddy_alloc_blocks(&mm, start, mm=
_size,
> +       KUNIT_ASSERT_TRUE_MSG(test, gpu_buddy_alloc_blocks(&mm, start, mm=
_size,
>                                                            size, size, &t=
mp, flags),
>                                                   "buddy_alloc unexpected=
ly succeeded, it should be full!");
>
> -       drm_buddy_free_list(&mm, &blocks, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &blocks, 0);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static void drm_test_buddy_alloc_limit(struct kunit *test)
> +static void gpu_test_buddy_alloc_limit(struct kunit *test)
>  {
>         u64 size =3D U64_MAX, start =3D 0;
> -       struct drm_buddy_block *block;
> +       struct gpu_buddy_block *block;
>         unsigned long flags =3D 0;
>         LIST_HEAD(allocated);
> -       struct drm_buddy mm;
> +       struct gpu_buddy mm;
>
> -       KUNIT_EXPECT_FALSE(test, drm_buddy_init(&mm, size, SZ_4K));
> +       KUNIT_EXPECT_FALSE(test, gpu_buddy_init(&mm, size, SZ_4K));
>
> -       KUNIT_EXPECT_EQ_MSG(test, mm.max_order, DRM_BUDDY_MAX_ORDER,
> +       KUNIT_EXPECT_EQ_MSG(test, mm.max_order, GPU_BUDDY_MAX_ORDER,
>                             "mm.max_order(%d) !=3D %d\n", mm.max_order,
> -                                               DRM_BUDDY_MAX_ORDER);
> +                                               GPU_BUDDY_MAX_ORDER);
>
>         size =3D mm.chunk_size << mm.max_order;
> -       KUNIT_EXPECT_FALSE(test, drm_buddy_alloc_blocks(&mm, start, size,=
 size,
> +       KUNIT_EXPECT_FALSE(test, gpu_buddy_alloc_blocks(&mm, start, size,=
 size,
>                                                         mm.chunk_size, &a=
llocated, flags));
>
> -       block =3D list_first_entry_or_null(&allocated, struct drm_buddy_b=
lock, link);
> +       block =3D list_first_entry_or_null(&allocated, struct gpu_buddy_b=
lock, link);
>         KUNIT_EXPECT_TRUE(test, block);
>
> -       KUNIT_EXPECT_EQ_MSG(test, drm_buddy_block_order(block), mm.max_or=
der,
> +       KUNIT_EXPECT_EQ_MSG(test, gpu_buddy_block_order(block), mm.max_or=
der,
>                             "block order(%d) !=3D %d\n",
> -                                               drm_buddy_block_order(blo=
ck), mm.max_order);
> +                                               gpu_buddy_block_order(blo=
ck), mm.max_order);
>
> -       KUNIT_EXPECT_EQ_MSG(test, drm_buddy_block_size(&mm, block),
> +       KUNIT_EXPECT_EQ_MSG(test, gpu_buddy_block_size(&mm, block),
>                             BIT_ULL(mm.max_order) * mm.chunk_size,
>                                                 "block size(%llu) !=3D %l=
lu\n",
> -                                               drm_buddy_block_size(&mm,=
 block),
> +                                               gpu_buddy_block_size(&mm,=
 block),
>                                                 BIT_ULL(mm.max_order) * m=
m.chunk_size);
>
> -       drm_buddy_free_list(&mm, &allocated, 0);
> -       drm_buddy_fini(&mm);
> +       gpu_buddy_free_list(&mm, &allocated, 0);
> +       gpu_buddy_fini(&mm);
>  }
>
> -static int drm_buddy_suite_init(struct kunit_suite *suite)
> +static int gpu_buddy_suite_init(struct kunit_suite *suite)
>  {
>         while (!random_seed)
>                 random_seed =3D get_random_u32();
>
> -       kunit_info(suite, "Testing DRM buddy manager, with random_seed=3D=
0x%x\n",
> +       kunit_info(suite, "Testing GPU buddy manager, with random_seed=3D=
0x%x\n",
>                    random_seed);
>
>         return 0;
>  }
>
> -static struct kunit_case drm_buddy_tests[] =3D {
> -       KUNIT_CASE(drm_test_buddy_alloc_limit),
> -       KUNIT_CASE(drm_test_buddy_alloc_optimistic),
> -       KUNIT_CASE(drm_test_buddy_alloc_pessimistic),
> -       KUNIT_CASE(drm_test_buddy_alloc_pathological),
> -       KUNIT_CASE(drm_test_buddy_alloc_contiguous),
> -       KUNIT_CASE(drm_test_buddy_alloc_clear),
> -       KUNIT_CASE(drm_test_buddy_alloc_range_bias),
> -       KUNIT_CASE(drm_test_buddy_fragmentation_performance),
> +static struct kunit_case gpu_buddy_tests[] =3D {
> +       KUNIT_CASE(gpu_test_buddy_alloc_limit),
> +       KUNIT_CASE(gpu_test_buddy_alloc_optimistic),
> +       KUNIT_CASE(gpu_test_buddy_alloc_pessimistic),
> +       KUNIT_CASE(gpu_test_buddy_alloc_pathological),
> +       KUNIT_CASE(gpu_test_buddy_alloc_contiguous),
> +       KUNIT_CASE(gpu_test_buddy_alloc_clear),
> +       KUNIT_CASE(gpu_test_buddy_alloc_range_bias),
> +       KUNIT_CASE(gpu_test_buddy_fragmentation_performance),
>         {}
>  };
>
> -static struct kunit_suite drm_buddy_test_suite =3D {
> -       .name =3D "drm_buddy",
> -       .suite_init =3D drm_buddy_suite_init,
> -       .test_cases =3D drm_buddy_tests,
> +static struct kunit_suite gpu_buddy_test_suite =3D {
> +       .name =3D "gpu_buddy",
> +       .suite_init =3D gpu_buddy_suite_init,
> +       .test_cases =3D gpu_buddy_tests,
>  };
>
> -kunit_test_suite(drm_buddy_test_suite);
> +kunit_test_suite(gpu_buddy_test_suite);
>
>  MODULE_AUTHOR("Intel Corporation");
> -MODULE_DESCRIPTION("Kunit test for drm_buddy functions");
> +MODULE_DESCRIPTION("Kunit test for gpu_buddy functions");
>  MODULE_LICENSE("GPL");
> diff --git a/drivers/gpu/tests/gpu_random.c b/drivers/gpu/tests/gpu_rando=
m.c
> new file mode 100644
> index 000000000000..54f1f6a3a6c1
> --- /dev/null
> +++ b/drivers/gpu/tests/gpu_random.c
> @@ -0,0 +1,48 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/bitops.h>
> +#include <linux/export.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/random.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#include "gpu_random.h"
> +
> +u32 gpu_prandom_u32_max_state(u32 ep_ro, struct rnd_state *state)
> +{
> +       return upper_32_bits((u64)prandom_u32_state(state) * ep_ro);
> +}
> +EXPORT_SYMBOL(gpu_prandom_u32_max_state);
> +
> +void gpu_random_reorder(unsigned int *order, unsigned int count,
> +                       struct rnd_state *state)
> +{
> +       unsigned int i, j;
> +
> +       for (i =3D 0; i < count; ++i) {
> +               BUILD_BUG_ON(sizeof(unsigned int) > sizeof(u32));
> +               j =3D gpu_prandom_u32_max_state(count, state);
> +               swap(order[i], order[j]);
> +       }
> +}
> +EXPORT_SYMBOL(gpu_random_reorder);
> +
> +unsigned int *gpu_random_order(unsigned int count, struct rnd_state *sta=
te)
> +{
> +       unsigned int *order, i;
> +
> +       order =3D kmalloc_array(count, sizeof(*order), GFP_KERNEL);
> +       if (!order)
> +               return order;
> +
> +       for (i =3D 0; i < count; i++)
> +               order[i] =3D i;
> +
> +       gpu_random_reorder(order, count, state);
> +       return order;
> +}
> +EXPORT_SYMBOL(gpu_random_order);
> +
> +MODULE_DESCRIPTION("GPU Randomization Utilities");
> +MODULE_LICENSE("Dual MIT/GPL");
> diff --git a/drivers/gpu/tests/gpu_random.h b/drivers/gpu/tests/gpu_rando=
m.h
> new file mode 100644
> index 000000000000..b68cf3448264
> --- /dev/null
> +++ b/drivers/gpu/tests/gpu_random.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __GPU_RANDOM_H__
> +#define __GPU_RANDOM_H__
> +
> +/* This is a temporary home for a couple of utility functions that shoul=
d
> + * be transposed to lib/ at the earliest convenience.
> + */
> +
> +#include <linux/prandom.h>
> +
> +#define GPU_RND_STATE_INITIALIZER(seed__) ({                           \
> +       struct rnd_state state__;                                       \
> +       prandom_seed_state(&state__, (seed__));                         \
> +       state__;                                                        \
> +})
> +
> +#define GPU_RND_STATE(name__, seed__) \
> +       struct rnd_state name__ =3D GPU_RND_STATE_INITIALIZER(seed__)
> +
> +unsigned int *gpu_random_order(unsigned int count,
> +                              struct rnd_state *state);
> +void gpu_random_reorder(unsigned int *order,
> +                       unsigned int count,
> +                       struct rnd_state *state);
> +u32 gpu_prandom_u32_max_state(u32 ep_ro,
> +                             struct rnd_state *state);
> +
> +#endif /* !__GPU_RANDOM_H__ */
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index d51777df12d1..6ae1383b0e2e 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -37,6 +37,8 @@ source "drivers/char/agp/Kconfig"
>
>  source "drivers/gpu/vga/Kconfig"
>
> +source "drivers/gpu/Kconfig"
> +
>  source "drivers/gpu/host1x/Kconfig"
>  source "drivers/gpu/ipu-v3/Kconfig"
>  source "drivers/gpu/nova-core/Kconfig"
> diff --git a/include/drm/drm_buddy.h b/include/drm/drm_buddy.h
> index b909fa8f810a..3054369bebff 100644
> --- a/include/drm/drm_buddy.h
> +++ b/include/drm/drm_buddy.h
> @@ -6,166 +6,13 @@
>  #ifndef __DRM_BUDDY_H__
>  #define __DRM_BUDDY_H__
>
> -#include <linux/bitops.h>
> -#include <linux/list.h>
> -#include <linux/slab.h>
> -#include <linux/sched.h>
> -#include <linux/rbtree.h>
> +#include <linux/gpu_buddy.h>
>
>  struct drm_printer;
>
> -#define DRM_BUDDY_RANGE_ALLOCATION             BIT(0)
> -#define DRM_BUDDY_TOPDOWN_ALLOCATION           BIT(1)
> -#define DRM_BUDDY_CONTIGUOUS_ALLOCATION                BIT(2)
> -#define DRM_BUDDY_CLEAR_ALLOCATION             BIT(3)
> -#define DRM_BUDDY_CLEARED                      BIT(4)
> -#define DRM_BUDDY_TRIM_DISABLE                 BIT(5)
> -
> -struct drm_buddy_block {
> -#define DRM_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
> -#define DRM_BUDDY_HEADER_STATE  GENMASK_ULL(11, 10)
> -#define   DRM_BUDDY_ALLOCATED     (1 << 10)
> -#define   DRM_BUDDY_FREE          (2 << 10)
> -#define   DRM_BUDDY_SPLIT         (3 << 10)
> -#define DRM_BUDDY_HEADER_CLEAR  GENMASK_ULL(9, 9)
> -/* Free to be used, if needed in the future */
> -#define DRM_BUDDY_HEADER_UNUSED GENMASK_ULL(8, 6)
> -#define DRM_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
> -       u64 header;
> -
> -       struct drm_buddy_block *left;
> -       struct drm_buddy_block *right;
> -       struct drm_buddy_block *parent;
> -
> -       void *private; /* owned by creator */
> -
> -       /*
> -        * While the block is allocated by the user through drm_buddy_all=
oc*,
> -        * the user has ownership of the link, for example to maintain wi=
thin
> -        * a list, if so desired. As soon as the block is freed with
> -        * drm_buddy_free* ownership is given back to the mm.
> -        */
> -       union {
> -               struct rb_node rb;
> -               struct list_head link;
> -       };
> -
> -       struct list_head tmp_link;
> -};
> -
> -/* Order-zero must be at least SZ_4K */
> -#define DRM_BUDDY_MAX_ORDER (63 - 12)
> -
> -/*
> - * Binary Buddy System.
> - *
> - * Locking should be handled by the user, a simple mutex around
> - * drm_buddy_alloc* and drm_buddy_free* should suffice.
> - */
> -struct drm_buddy {
> -       /* Maintain a free list for each order. */
> -       struct rb_root **free_trees;
> -
> -       /*
> -        * Maintain explicit binary tree(s) to track the allocation of th=
e
> -        * address space. This gives us a simple way of finding a buddy b=
lock
> -        * and performing the potentially recursive merge step when freei=
ng a
> -        * block.  Nodes are either allocated or free, in which case they=
 will
> -        * also exist on the respective free list.
> -        */
> -       struct drm_buddy_block **roots;
> -
> -       /*
> -        * Anything from here is public, and remains static for the lifet=
ime of
> -        * the mm. Everything above is considered do-not-touch.
> -        */
> -       unsigned int n_roots;
> -       unsigned int max_order;
> -
> -       /* Must be at least SZ_4K */
> -       u64 chunk_size;
> -       u64 size;
> -       u64 avail;
> -       u64 clear_avail;
> -};
> -
> -static inline u64
> -drm_buddy_block_offset(const struct drm_buddy_block *block)
> -{
> -       return block->header & DRM_BUDDY_HEADER_OFFSET;
> -}
> -
> -static inline unsigned int
> -drm_buddy_block_order(struct drm_buddy_block *block)
> -{
> -       return block->header & DRM_BUDDY_HEADER_ORDER;
> -}
> -
> -static inline unsigned int
> -drm_buddy_block_state(struct drm_buddy_block *block)
> -{
> -       return block->header & DRM_BUDDY_HEADER_STATE;
> -}
> -
> -static inline bool
> -drm_buddy_block_is_allocated(struct drm_buddy_block *block)
> -{
> -       return drm_buddy_block_state(block) =3D=3D DRM_BUDDY_ALLOCATED;
> -}
> -
> -static inline bool
> -drm_buddy_block_is_clear(struct drm_buddy_block *block)
> -{
> -       return block->header & DRM_BUDDY_HEADER_CLEAR;
> -}
> -
> -static inline bool
> -drm_buddy_block_is_free(struct drm_buddy_block *block)
> -{
> -       return drm_buddy_block_state(block) =3D=3D DRM_BUDDY_FREE;
> -}
> -
> -static inline bool
> -drm_buddy_block_is_split(struct drm_buddy_block *block)
> -{
> -       return drm_buddy_block_state(block) =3D=3D DRM_BUDDY_SPLIT;
> -}
> -
> -static inline u64
> -drm_buddy_block_size(struct drm_buddy *mm,
> -                    struct drm_buddy_block *block)
> -{
> -       return mm->chunk_size << drm_buddy_block_order(block);
> -}
> -
> -int drm_buddy_init(struct drm_buddy *mm, u64 size, u64 chunk_size);
> -
> -void drm_buddy_fini(struct drm_buddy *mm);
> -
> -struct drm_buddy_block *
> -drm_get_buddy(struct drm_buddy_block *block);
> -
> -int drm_buddy_alloc_blocks(struct drm_buddy *mm,
> -                          u64 start, u64 end, u64 size,
> -                          u64 min_page_size,
> -                          struct list_head *blocks,
> -                          unsigned long flags);
> -
> -int drm_buddy_block_trim(struct drm_buddy *mm,
> -                        u64 *start,
> -                        u64 new_size,
> -                        struct list_head *blocks);
> -
> -void drm_buddy_reset_clear(struct drm_buddy *mm, bool is_clear);
> -
> -void drm_buddy_free_block(struct drm_buddy *mm, struct drm_buddy_block *=
block);
> -
> -void drm_buddy_free_list(struct drm_buddy *mm,
> -                        struct list_head *objects,
> -                        unsigned int flags);
> -
> -void drm_buddy_print(struct drm_buddy *mm, struct drm_printer *p);
> -void drm_buddy_block_print(struct drm_buddy *mm,
> -                          struct drm_buddy_block *block,
> +/* DRM-specific GPU Buddy Allocator print helpers */
> +void drm_buddy_print(struct gpu_buddy *mm, struct drm_printer *p);
> +void drm_buddy_block_print(struct gpu_buddy *mm,
> +                          struct gpu_buddy_block *block,
>                            struct drm_printer *p);
>  #endif
> diff --git a/include/linux/gpu_buddy.h b/include/linux/gpu_buddy.h
> new file mode 100644
> index 000000000000..3e4bd11ccb71
> --- /dev/null
> +++ b/include/linux/gpu_buddy.h
> @@ -0,0 +1,177 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +#ifndef __GPU_BUDDY_H__
> +#define __GPU_BUDDY_H__
> +
> +#include <linux/bitops.h>
> +#include <linux/list.h>
> +#include <linux/rbtree.h>
> +#include <linux/slab.h>
> +#include <linux/sched.h>
> +
> +#define GPU_BUDDY_RANGE_ALLOCATION             BIT(0)
> +#define GPU_BUDDY_TOPDOWN_ALLOCATION           BIT(1)
> +#define GPU_BUDDY_CONTIGUOUS_ALLOCATION                BIT(2)
> +#define GPU_BUDDY_CLEAR_ALLOCATION             BIT(3)
> +#define GPU_BUDDY_CLEARED                      BIT(4)
> +#define GPU_BUDDY_TRIM_DISABLE                 BIT(5)
> +
> +enum gpu_buddy_free_tree {
> +       GPU_BUDDY_CLEAR_TREE =3D 0,
> +       GPU_BUDDY_DIRTY_TREE,
> +       GPU_BUDDY_MAX_FREE_TREES,
> +};
> +
> +#define for_each_free_tree(tree) \
> +       for ((tree) =3D 0; (tree) < GPU_BUDDY_MAX_FREE_TREES; (tree)++)
> +
> +struct gpu_buddy_block {
> +#define GPU_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
> +#define GPU_BUDDY_HEADER_STATE  GENMASK_ULL(11, 10)
> +#define   GPU_BUDDY_ALLOCATED     (1 << 10)
> +#define   GPU_BUDDY_FREE          (2 << 10)
> +#define   GPU_BUDDY_SPLIT         (3 << 10)
> +#define GPU_BUDDY_HEADER_CLEAR  GENMASK_ULL(9, 9)
> +/* Free to be used, if needed in the future */
> +#define GPU_BUDDY_HEADER_UNUSED GENMASK_ULL(8, 6)
> +#define GPU_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
> +       u64 header;
> +
> +       struct gpu_buddy_block *left;
> +       struct gpu_buddy_block *right;
> +       struct gpu_buddy_block *parent;
> +
> +       void *private; /* owned by creator */
> +
> +       /*
> +        * While the block is allocated by the user through gpu_buddy_all=
oc*,
> +        * the user has ownership of the link, for example to maintain wi=
thin
> +        * a list, if so desired. As soon as the block is freed with
> +        * gpu_buddy_free* ownership is given back to the mm.
> +        */
> +       union {
> +               struct rb_node rb;
> +               struct list_head link;
> +       };
> +
> +       struct list_head tmp_link;
> +};
> +
> +/* Order-zero must be at least SZ_4K */
> +#define GPU_BUDDY_MAX_ORDER (63 - 12)
> +
> +/*
> + * Binary Buddy System.
> + *
> + * Locking should be handled by the user, a simple mutex around
> + * gpu_buddy_alloc* and gpu_buddy_free* should suffice.
> + */
> +struct gpu_buddy {
> +       /* Maintain a free list for each order. */
> +       struct rb_root **free_trees;
> +
> +       /*
> +        * Maintain explicit binary tree(s) to track the allocation of th=
e
> +        * address space. This gives us a simple way of finding a buddy b=
lock
> +        * and performing the potentially recursive merge step when freei=
ng a
> +        * block.  Nodes are either allocated or free, in which case they=
 will
> +        * also exist on the respective free list.
> +        */
> +       struct gpu_buddy_block **roots;
> +
> +       /*
> +        * Anything from here is public, and remains static for the lifet=
ime of
> +        * the mm. Everything above is considered do-not-touch.
> +        */
> +       unsigned int n_roots;
> +       unsigned int max_order;
> +
> +       /* Must be at least SZ_4K */
> +       u64 chunk_size;
> +       u64 size;
> +       u64 avail;
> +       u64 clear_avail;
> +};
> +
> +static inline u64
> +gpu_buddy_block_offset(const struct gpu_buddy_block *block)
> +{
> +       return block->header & GPU_BUDDY_HEADER_OFFSET;
> +}
> +
> +static inline unsigned int
> +gpu_buddy_block_order(struct gpu_buddy_block *block)
> +{
> +       return block->header & GPU_BUDDY_HEADER_ORDER;
> +}
> +
> +static inline unsigned int
> +gpu_buddy_block_state(struct gpu_buddy_block *block)
> +{
> +       return block->header & GPU_BUDDY_HEADER_STATE;
> +}
> +
> +static inline bool
> +gpu_buddy_block_is_allocated(struct gpu_buddy_block *block)
> +{
> +       return gpu_buddy_block_state(block) =3D=3D GPU_BUDDY_ALLOCATED;
> +}
> +
> +static inline bool
> +gpu_buddy_block_is_clear(struct gpu_buddy_block *block)
> +{
> +       return block->header & GPU_BUDDY_HEADER_CLEAR;
> +}
> +
> +static inline bool
> +gpu_buddy_block_is_free(struct gpu_buddy_block *block)
> +{
> +       return gpu_buddy_block_state(block) =3D=3D GPU_BUDDY_FREE;
> +}
> +
> +static inline bool
> +gpu_buddy_block_is_split(struct gpu_buddy_block *block)
> +{
> +       return gpu_buddy_block_state(block) =3D=3D GPU_BUDDY_SPLIT;
> +}
> +
> +static inline u64
> +gpu_buddy_block_size(struct gpu_buddy *mm,
> +                    struct gpu_buddy_block *block)
> +{
> +       return mm->chunk_size << gpu_buddy_block_order(block);
> +}
> +
> +int gpu_buddy_init(struct gpu_buddy *mm, u64 size, u64 chunk_size);
> +
> +void gpu_buddy_fini(struct gpu_buddy *mm);
> +
> +struct gpu_buddy_block *
> +gpu_get_buddy(struct gpu_buddy_block *block);
> +
> +int gpu_buddy_alloc_blocks(struct gpu_buddy *mm,
> +                          u64 start, u64 end, u64 size,
> +                          u64 min_page_size,
> +                          struct list_head *blocks,
> +                          unsigned long flags);
> +
> +int gpu_buddy_block_trim(struct gpu_buddy *mm,
> +                        u64 *start,
> +                        u64 new_size,
> +                        struct list_head *blocks);
> +
> +void gpu_buddy_reset_clear(struct gpu_buddy *mm, bool is_clear);
> +
> +void gpu_buddy_free_block(struct gpu_buddy *mm, struct gpu_buddy_block *=
block);
> +
> +void gpu_buddy_free_list(struct gpu_buddy *mm,
> +                        struct list_head *objects,
> +                        unsigned int flags);
> +
> +void gpu_buddy_print(struct gpu_buddy *mm);
> +void gpu_buddy_block_print(struct gpu_buddy *mm,
> +                          struct gpu_buddy_block *block);
> +#endif
> --
> 2.34.1
>
