Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787617D7DB4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 09:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787FC10E76D;
	Thu, 26 Oct 2023 07:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB66E10E76D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 07:37:49 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1qvuw5-00000000CNZ-3S57; Thu, 26 Oct 2023 10:37:47 +0300
Message-ID: <9a437097e2fcaabf42b8ba784f31f4e54bbab68c.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 10:37:44 +0300
In-Reply-To: <20231008101206.1665236-1-animesh.manna@intel.com>
References: <20231008101206.1665236-1-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 2023-10-08 at 15:42 +0530, Animesh Manna wrote:
> Refactor DSB implementation to be compatible with Xe driver.
>=20
> v1: RFC version.
> v2: Make intel_dsb structure opaque from external usage. [Jani]
> v3: Rebased on latest.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---

Looks great overall! Just a couple of small comments below.


[...]
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 3e32aa49b8eb..ec89d968a873 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -13,12 +13,13 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dsb.h"
> +#include "intel_dsb_buffer.h"
>  #include "intel_dsb_regs.h"
>  #include "intel_vblank.h"
>  #include "intel_vrr.h"
>  #include "skl_watermark.h"
> =20
> -struct i915_vma;
> +#define CACHELINE_BYTES 64

I see that this macro is defined in GT and you want to avoid depending
on the definition from GT, but you don't make any other changes related
to the cacheline size here, so maybe this change should be a separate
patch? Also, it looks a bit magic without an explanation on where the
number is coming from.

=20
[...]
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gp=
u/drm/i915/display/intel_dsb_buffer.c
> new file mode 100644
> index 000000000000..723937591831
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> @@ -0,0 +1,64 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright 2023, Intel Corporation.
> + */
> +
> +#include "gem/i915_gem_internal.h"
> +#include "i915_drv.h"
> +#include "i915_vma.h"
> +#include "intel_display_types.h"
> +#include "intel_dsb_buffer.h"
> +
> +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
> +{
> +	return i915_ggtt_offset(dsb_buf->vma);
> +}
> +
> +void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u=
32 val)
> +{
> +	dsb_buf->cmd_buf[idx] =3D val;
> +}
> +
> +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
> +{
> +	return dsb_buf->cmd_buf[idx];
> +}
> +
> +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, =
u32 val, u32 sz)
> +{
> +	memset(&dsb_buf->cmd_buf[idx], val, sz);

I think you should check the array boundaries here, to be sure.=20
Probably a good idea to do with the other functions as well, but I
think this is the most critical and easiest to make mistakes with.

--
Cheers,
Luca.

