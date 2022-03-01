Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CC14C91F8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D6B410E769;
	Tue,  1 Mar 2022 17:40:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0491E10E6AE
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:40:31 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id bk29so4401162wrb.4
 for <Intel-gfx@lists.freedesktop.org>; Tue, 01 Mar 2022 09:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=J5x86wGEzlOJA99oBRXgoqZotuS1NsKC0R3vQF0NeRs=;
 b=QO3l0cH5lRM1nNa+SeIW1iglYNNOgnFPr7BftSZBVz7Y2pTGd3gOtqNsiyFjUmqpNa
 vf8IlMZq/O5wIWHba4wEItGyD8yf2wJ6T3VwDV5kKLZq50a6O2sIS/cy9dL2PcKQYBFb
 cDqmAQArrGPwYLZzZvp6jxxKUddVZv/CQ825Eeg8YrOefaUPlmGmY00gtkARo1dmqnZs
 CATTdzxoAPG0E15E/AInFZVXTb3Z4A6Hg/6EMTLqhitALEKJKe7BkNAPT1mydfYlT61m
 eGuUlVD+oSl3cr9VeXPvInocumi61VUmtOTbgd9MPhzJQpkYuEpkeB2mICSc7VzfQAlF
 jVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J5x86wGEzlOJA99oBRXgoqZotuS1NsKC0R3vQF0NeRs=;
 b=pgM7N5pDV3xEGzRxfX6cxTKP2bZg4O0u6++V8EObPEGXKnKe/N1C2kgo/3sHaI39YM
 prDYFxRRrFOgP6Fw5SSFI/na7zvE7tDI5Vw2vRg/2tEoFi0T3j110P9TF+AGAUX1SpdS
 g4YAOTLDoncyd1iZmRw7Z3WHIRRlXDtUdzhB7hmur0Jap27X/Uhg0iYSDHMO1RemxRhU
 NfXDLGmbQND7e0Tg3O7VAlTbhJyEWkP9JZd4UfcpoJMRIwLRJvmwVrkqSi+TvUWFkxok
 TFkY8g+huchILRQ3REb5NvAkkeEvLaJrWKPJnTE3ci+YP0zr3RVfkie+GjTRFLj0J6cT
 oixQ==
X-Gm-Message-State: AOAM5322aTPBFZ4sPjhaMTdzQ/6CNsj1NhcXXvn6RgLqVuUKo0tyQ59D
 +c9kjiN4tcLPHp3I/cPLEvq6CN+AZwB/Lln6h5U=
X-Google-Smtp-Source: ABdhPJxzGVllzH59L9b+2ZGuuEIx6lFmMym34mVGVKzcAeHtPivW0iCdH/9sFeyfh2dhhg70poGvCR+t89li9wvNy40=
X-Received: by 2002:a5d:44c7:0:b0:1ed:e11c:9b73 with SMTP id
 z7-20020a5d44c7000000b001ede11c9b73mr19954952wrr.574.1646156428302; Tue, 01
 Mar 2022 09:40:28 -0800 (PST)
MIME-Version: 1.0
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
 <20220222140422.1121163-9-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220222140422.1121163-9-tvrtko.ursulin@linux.intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 1 Mar 2022 09:40:58 -0800
Message-ID: <CAF6AEGtNdv1eLSw1Q3O1Tn1+JqBnRHRiyr7dYOsSX3-o4k46=w@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915: Expose client engine
 utilisation via fdinfo
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
Cc: Rob Clark <robdclark@chromium.org>,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Chris Healy <cphealy@gmail.com>, David M Nieto <David.Nieto@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 22, 2022 at 6:05 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Similar to AMD commit
> 874442541133 ("drm/amdgpu: Add show_fdinfo() interface"), using the
> infrastructure added in previous patches, we add basic client info
> and GPU engine utilisation for i915.
>
> Example of the output:
>
>   pos:    0
>   flags:  0100002
>   mnt_id: 21
>   drm-driver: i915
>   drm-pdev:   0000:00:02.0
>   drm-client-id:      7
>   drm-engine-render:  9288864723 ns
>   drm-engine-copy:    2035071108 ns
>   drm-engine-video:   0 ns
>   drm-engine-video-enhance:   0 ns
>
> v2:
>  * Update for removal of name and pid.
>
> v3:
>  * Use drm_driver.name.
>
> v4:
>  * Added drm-engine-capacity- tag.
>  * Fix typo. (Umesh)
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: David M Nieto <David.Nieto@amd.com>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Chris Healy <cphealy@gmail.com>
> Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> # v3

Acked-by: Rob Clark <robdclark@gmail.com>

> ---
>  Documentation/gpu/drm-usage-stats.rst  |  6 ++
>  Documentation/gpu/i915.rst             | 28 +++++++++
>  drivers/gpu/drm/i915/i915_driver.c     |  3 +
>  drivers/gpu/drm/i915/i915_drm_client.c | 81 ++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drm_client.h |  4 ++
>  5 files changed, 122 insertions(+)
>
> diff --git a/Documentation/gpu/drm-usage-stats.rst b/Documentation/gpu/dr=
m-usage-stats.rst
> index b8cc28f4da6f..6c9f166a8d6f 100644
> --- a/Documentation/gpu/drm-usage-stats.rst
> +++ b/Documentation/gpu/drm-usage-stats.rst
> @@ -104,3 +104,9 @@ object belong to this client, in the respective memor=
y region.
>
>  Default unit shall be bytes with optional unit specifiers of 'KiB' or 'M=
iB'
>  indicating kibi- or mebi-bytes.
> +
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> +Driver specific implementations
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> +
> +:ref:`i915-usage-stats`
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index bcaefc952764..cfc64f5795a4 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -709,3 +709,31 @@ The style guide for ``i915_reg.h``.
>
>  .. kernel-doc:: drivers/gpu/drm/i915/i915_reg.h
>     :doc: The i915 register macro definition style guide
> +
> +.. _i915-usage-stats:
> +
> +i915 DRM client usage stats implementation
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The drm/i915 driver implements the DRM client usage stats specification =
as
> +documented in :ref:`drm-client-usage-stats`.
> +
> +Example of the output showing the implemented key value pairs and entire=
ty of
> +the currently possible format options:
> +
> +::
> +
> +      pos:    0
> +      flags:  0100002
> +      mnt_id: 21
> +      drm-driver: i915
> +      drm-pdev:   0000:00:02.0
> +      drm-client-id:      7
> +      drm-engine-render:  9288864723 ns
> +      drm-engine-copy:    2035071108 ns
> +      drm-engine-video:   0 ns
> +      drm-engine-capacity-video:   2
> +      drm-engine-video-enhance:   0 ns
> +
> +Possible `drm-engine-` key names are: `render`, `copy`, `video` and
> +`video-enhance`.
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 4bf6715c5c3a..fe33e79cef8b 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1746,6 +1746,9 @@ static const struct file_operations i915_driver_fop=
s =3D {
>         .read =3D drm_read,
>         .compat_ioctl =3D i915_ioc32_compat_ioctl,
>         .llseek =3D noop_llseek,
> +#ifdef CONFIG_PROC_FS
> +       .show_fdinfo =3D i915_drm_client_fdinfo,
> +#endif
>  };
>
>  static int
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i91=
5/i915_drm_client.c
> index 91a8559bebf7..54b40f451959 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.c
> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> @@ -7,7 +7,13 @@
>  #include <linux/slab.h>
>  #include <linux/types.h>
>
> +#include <uapi/drm/i915_drm.h>
> +
> +#include <drm/drm_print.h>
> +
> +#include "gem/i915_gem_context.h"
>  #include "i915_drm_client.h"
> +#include "i915_file_private.h"
>  #include "i915_gem.h"
>  #include "i915_utils.h"
>
> @@ -68,3 +74,78 @@ void i915_drm_clients_fini(struct i915_drm_clients *cl=
ients)
>         GEM_BUG_ON(!xa_empty(&clients->xarray));
>         xa_destroy(&clients->xarray);
>  }
> +
> +#ifdef CONFIG_PROC_FS
> +static const char * const uabi_class_names[] =3D {
> +       [I915_ENGINE_CLASS_RENDER] =3D "render",
> +       [I915_ENGINE_CLASS_COPY] =3D "copy",
> +       [I915_ENGINE_CLASS_VIDEO] =3D "video",
> +       [I915_ENGINE_CLASS_VIDEO_ENHANCE] =3D "video-enhance",
> +};
> +
> +static u64 busy_add(struct i915_gem_context *ctx, unsigned int class)
> +{
> +       struct i915_gem_engines_iter it;
> +       struct intel_context *ce;
> +       u64 total =3D 0;
> +
> +       for_each_gem_engine(ce, rcu_dereference(ctx->engines), it) {
> +               if (ce->engine->uabi_class !=3D class)
> +                       continue;
> +
> +               total +=3D intel_context_get_total_runtime_ns(ce);
> +       }
> +
> +       return total;
> +}
> +
> +static void
> +show_client_class(struct seq_file *m,
> +                 struct i915_drm_client *client,
> +                 unsigned int class)
> +{
> +       const struct list_head *list =3D &client->ctx_list;
> +       u64 total =3D atomic64_read(&client->past_runtime[class]);
> +       const unsigned int capacity =3D
> +               client->clients->i915->engine_uabi_class_count[class];
> +       struct i915_gem_context *ctx;
> +
> +       rcu_read_lock();
> +       list_for_each_entry_rcu(ctx, list, client_link)
> +               total +=3D busy_add(ctx, class);
> +       rcu_read_unlock();
> +
> +       seq_printf(m, "drm-engine-%s:\t%llu ns\n",
> +                  uabi_class_names[class], total);
> +
> +       if (capacity > 1)
> +               seq_printf(m, "drm-engine-capacity-%s:\t%u\n",
> +                          uabi_class_names[class],
> +                          capacity);
> +}
> +
> +void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
> +{
> +       struct drm_file *file =3D f->private_data;
> +       struct drm_i915_file_private *file_priv =3D file->driver_priv;
> +       struct drm_i915_private *i915 =3D file_priv->dev_priv;
> +       struct i915_drm_client *client =3D file_priv->client;
> +       struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> +       unsigned int i;
> +
> +       /*
> +        * **************************************************************=
****
> +        * For text output format description please see drm-usage-stats.=
rst!
> +        * **************************************************************=
****
> +        */
> +
> +       seq_printf(m, "drm-driver:\t%s\n", i915->drm.driver->name);
> +       seq_printf(m, "drm-pdev:\t%04x:%02x:%02x.%d\n",
> +                  pci_domain_nr(pdev->bus), pdev->bus->number,
> +                  PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
> +       seq_printf(m, "drm-client-id:\t%u\n", client->id);
> +
> +       for (i =3D 0; i < ARRAY_SIZE(uabi_class_names); i++)
> +               show_client_class(m, client, i);
> +}
> +#endif
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i91=
5/i915_drm_client.h
> index 191368386ace..5f5b02b01ba0 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -59,6 +59,10 @@ static inline void i915_drm_client_put(struct i915_drm=
_client *client)
>
>  struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *cli=
ents);
>
> +#ifdef CONFIG_PROC_FS
> +void i915_drm_client_fdinfo(struct seq_file *m, struct file *f);
> +#endif
> +
>  void i915_drm_clients_fini(struct i915_drm_clients *clients);
>
>  #endif /* !__I915_DRM_CLIENT_H__ */
> --
> 2.32.0
>
