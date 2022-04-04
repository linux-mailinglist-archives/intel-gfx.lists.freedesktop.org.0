Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 410EE4F11BF
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 11:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E390610EBFC;
	Mon,  4 Apr 2022 09:13:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6248010EC04;
 Mon,  4 Apr 2022 09:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649063585; x=1680599585;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=cWVa//dXmWbB8C4BAJ+z2jgTbZqcWX/1ZfzFFcL8928=;
 b=nwV2uZgZFmFl27K35Nwo9VhVhqCD3ZFqFI8w/Ybd45K5Sx6muN9tBW5+
 qnsMYFu8Kk2To/DiKSb3gbT8XPHmQleN536N9h/G1sOqUUfpoeeljIQY4
 pVvUPZYpXOuSA+xG7GQMnS5GKp69XYqA9X3mD3np2Tsa6UnfSa22ZgbNG
 cu9vBuv6pyC5peSpcLf+fvgLm57I2UI6siGRMPfWnGm5oWYcqTCzrzBrb
 6chsZXq5BYWBBmn/vWTtx6EM4C3UpFp9UN5i+Ui1WPGT0bx4pUHyMWvLC
 KWGG49q3VCWjWE618v63Xsd8HBla9EW5dHUvE2pQiAni5qfALAnVpWQ7O Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="260460880"
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="260460880"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 02:13:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="504840067"
Received: from mosinski-mobl3.ger.corp.intel.com (HELO [10.213.193.174])
 ([10.213.193.174])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 02:13:03 -0700
Message-ID: <5a6d725f-02a3-bbdf-4585-5e0b491f2721@linux.intel.com>
Date: Mon, 4 Apr 2022 10:12:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
References: <20220401142205.3123159-1-tvrtko.ursulin@linux.intel.com>
 <20220401142205.3123159-9-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220401142205.3123159-9-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [CI 8/8] drm/i915: Expose client engine utilisation
 via fdinfo
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/04/2022 15:22, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Similar to AMD commit
> 874442541133 ("drm/amdgpu: Add show_fdinfo() interface"), using the
> infrastructure added in previous patches, we add basic client info
> and GPU engine utilisation for i915.
> 
> Example of the output:
> 
>    pos:    0
>    flags:  0100002
>    mnt_id: 21
>    drm-driver: i915
>    drm-pdev:   0000:00:02.0
>    drm-client-id:      7
>    drm-engine-render:  9288864723 ns
>    drm-engine-copy:    2035071108 ns
>    drm-engine-video:   0 ns
>    drm-engine-video-enhance:   0 ns
> 
> v2:
>   * Update for removal of name and pid.
> 
> v3:
>   * Use drm_driver.name.
> 
> v4:
>   * Added drm-engine-capacity- tag.
>   * Fix typo. (Umesh)
> 
> v5:
>   * Don't output engine data before Gen8.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: David M Nieto <David.Nieto@amd.com>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Chris Healy <cphealy@gmail.com>
> Acked-by: Christian König <christian.koenig@amd.com>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Forgot to apply an earlier:

Acked-by: Rob Clark <robdclark@gmail.com>

Regards,

Tvrtko

> ---
>   Documentation/gpu/drm-usage-stats.rst  |  6 ++
>   Documentation/gpu/i915.rst             | 28 +++++++++
>   drivers/gpu/drm/i915/i915_driver.c     |  3 +
>   drivers/gpu/drm/i915/i915_drm_client.c | 84 ++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_drm_client.h |  4 ++
>   5 files changed, 125 insertions(+)
> 
> diff --git a/Documentation/gpu/drm-usage-stats.rst b/Documentation/gpu/drm-usage-stats.rst
> index b8cc28f4da6f..6c9f166a8d6f 100644
> --- a/Documentation/gpu/drm-usage-stats.rst
> +++ b/Documentation/gpu/drm-usage-stats.rst
> @@ -104,3 +104,9 @@ object belong to this client, in the respective memory region.
>   
>   Default unit shall be bytes with optional unit specifiers of 'KiB' or 'MiB'
>   indicating kibi- or mebi-bytes.
> +
> +===============================
> +Driver specific implementations
> +===============================
> +
> +:ref:`i915-usage-stats`
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 0f08693d05cd..54060cd6c419 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -697,3 +697,31 @@ The style guide for ``i915_reg.h``.
>   
>   .. kernel-doc:: drivers/gpu/drm/i915/i915_reg.h
>      :doc: The i915 register macro definition style guide
> +
> +.. _i915-usage-stats:
> +
> +i915 DRM client usage stats implementation
> +==========================================
> +
> +The drm/i915 driver implements the DRM client usage stats specification as
> +documented in :ref:`drm-client-usage-stats`.
> +
> +Example of the output showing the implemented key value pairs and entirety of
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
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b2df273e6d7b..3ffb617d75c9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1745,6 +1745,9 @@ static const struct file_operations i915_driver_fops = {
>   	.read = drm_read,
>   	.compat_ioctl = i915_ioc32_compat_ioctl,
>   	.llseek = noop_llseek,
> +#ifdef CONFIG_PROC_FS
> +	.show_fdinfo = i915_drm_client_fdinfo,
> +#endif
>   };
>   
>   static int
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
> index 91a8559bebf7..e539f6b23060 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.c
> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> @@ -7,7 +7,13 @@
>   #include <linux/slab.h>
>   #include <linux/types.h>
>   
> +#include <uapi/drm/i915_drm.h>
> +
> +#include <drm/drm_print.h>
> +
> +#include "gem/i915_gem_context.h"
>   #include "i915_drm_client.h"
> +#include "i915_file_private.h"
>   #include "i915_gem.h"
>   #include "i915_utils.h"
>   
> @@ -68,3 +74,81 @@ void i915_drm_clients_fini(struct i915_drm_clients *clients)
>   	GEM_BUG_ON(!xa_empty(&clients->xarray));
>   	xa_destroy(&clients->xarray);
>   }
> +
> +#ifdef CONFIG_PROC_FS
> +static const char * const uabi_class_names[] = {
> +	[I915_ENGINE_CLASS_RENDER] = "render",
> +	[I915_ENGINE_CLASS_COPY] = "copy",
> +	[I915_ENGINE_CLASS_VIDEO] = "video",
> +	[I915_ENGINE_CLASS_VIDEO_ENHANCE] = "video-enhance",
> +};
> +
> +static u64 busy_add(struct i915_gem_context *ctx, unsigned int class)
> +{
> +	struct i915_gem_engines_iter it;
> +	struct intel_context *ce;
> +	u64 total = 0;
> +
> +	for_each_gem_engine(ce, rcu_dereference(ctx->engines), it) {
> +		if (ce->engine->uabi_class != class)
> +			continue;
> +
> +		total += intel_context_get_total_runtime_ns(ce);
> +	}
> +
> +	return total;
> +}
> +
> +static void
> +show_client_class(struct seq_file *m,
> +		  struct i915_drm_client *client,
> +		  unsigned int class)
> +{
> +	const struct list_head *list = &client->ctx_list;
> +	u64 total = atomic64_read(&client->past_runtime[class]);
> +	const unsigned int capacity =
> +		client->clients->i915->engine_uabi_class_count[class];
> +	struct i915_gem_context *ctx;
> +
> +	rcu_read_lock();
> +	list_for_each_entry_rcu(ctx, list, client_link)
> +		total += busy_add(ctx, class);
> +	rcu_read_unlock();
> +
> +	seq_printf(m, "drm-engine-%s:\t%llu ns\n",
> +		   uabi_class_names[class], total);
> +
> +	if (capacity > 1)
> +		seq_printf(m, "drm-engine-capacity-%s:\t%u\n",
> +			   uabi_class_names[class],
> +			   capacity);
> +}
> +
> +void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
> +{
> +	struct drm_file *file = f->private_data;
> +	struct drm_i915_file_private *file_priv = file->driver_priv;
> +	struct drm_i915_private *i915 = file_priv->dev_priv;
> +	struct i915_drm_client *client = file_priv->client;
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	unsigned int i;
> +
> +	/*
> +	 * ******************************************************************
> +	 * For text output format description please see drm-usage-stats.rst!
> +	 * ******************************************************************
> +	 */
> +
> +	seq_printf(m, "drm-driver:\t%s\n", i915->drm.driver->name);
> +	seq_printf(m, "drm-pdev:\t%04x:%02x:%02x.%d\n",
> +		   pci_domain_nr(pdev->bus), pdev->bus->number,
> +		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
> +	seq_printf(m, "drm-client-id:\t%u\n", client->id);
> +
> +	if (GRAPHICS_VER(i915) < 8)
> +		return;
> +
> +	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
> +		show_client_class(m, client, i);
> +}
> +#endif
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
> index 191368386ace..5f5b02b01ba0 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -59,6 +59,10 @@ static inline void i915_drm_client_put(struct i915_drm_client *client)
>   
>   struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *clients);
>   
> +#ifdef CONFIG_PROC_FS
> +void i915_drm_client_fdinfo(struct seq_file *m, struct file *f);
> +#endif
> +
>   void i915_drm_clients_fini(struct i915_drm_clients *clients);
>   
>   #endif /* !__I915_DRM_CLIENT_H__ */
