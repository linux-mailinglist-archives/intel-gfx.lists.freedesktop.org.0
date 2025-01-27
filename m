Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D90A1D3D8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 10:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ABFD10E2FD;
	Mon, 27 Jan 2025 09:48:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nsu5/wvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B840910E2F2;
 Mon, 27 Jan 2025 09:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737971283; x=1769507283;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=m2J4OATeVe3YVMyCGv6itJzjTE26yyzB6eRkuq1JEck=;
 b=Nsu5/wvQcwumDMA6opcOjUofTdo3Qz+TEVK6PBFPGE24WdzoiAtSAqhb
 NyME6n0tAKgaP+JWlqq/9B1sPxkZdfb0MJNl/dKXZIdd5ZLA0KH0MTs4F
 SPOWZvq10rkep2Ztt8lSv4Cr1lPGTLcFIdagh+abTFiBTeSV2HPb+uqTn
 RTiRh8EKVNNfzXpqjG3Mylp23wmezh0eafLodyFts0zCdYQxC+n2Si4Z/
 UIQMaO/+0y/aZxS4PvFoXIKZnaXNVSAS5yGU2ae4XVT8aZTzfVdzZlBGE
 +LuHyhTKemXSjRcm9BuSwqQURNoI9VhRmWkSfbCyAKPICOEiW+WB2aVht g==;
X-CSE-ConnectionGUID: oQRrUfTTSDmX29RNvHmjvQ==
X-CSE-MsgGUID: WENZu5LKRheEG2XaA5n6cA==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="60891682"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="60891682"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 01:48:02 -0800
X-CSE-ConnectionGUID: n4IMW0YeRdCZfwUEv/+/wg==
X-CSE-MsgGUID: WxRMniuzShSikJM0Zfu6Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="108914373"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 01:48:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
In-Reply-To: <20250117220747.87927-3-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com>
Date: Mon, 27 Jan 2025 11:47:58 +0200
Message-ID: <87bjvsbnap.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 17 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> index 5488fbdf29b8..d11b0ab50b3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -11,6 +11,7 @@
>  #include <linux/refcount.h>
>  
>  #include "i915_reg_defs.h"
> +#include "intel_dmc_wl_debugfs.h"
>  
>  struct intel_display;
>  
> @@ -27,6 +28,7 @@ struct intel_dmc_wl {
>  	 */
>  	u32 dc_state;
>  	struct delayed_work work;
> +	struct intel_dmc_wl_dbg dbg;
>  };
>  

With intel_de.h including intel_dmc_wl.h, we'll have almost all of
display include intel_dmc_wl_debugfs.h, and getting the definition of
struct intel_dmc_wl_dbg, really for no good reason.

I really like to flip this around. You need to have a *good reason* to
expose stuff to the entire display driver all of a sudden. Instead of
requiring a good reason to hide stuff.

BR,
Jani.



>  void intel_dmc_wl_init(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> new file mode 100644
> index 000000000000..41e59d775fe5
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> @@ -0,0 +1,251 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2025 Intel Corporation
> + */
> +
> +#include <linux/debugfs.h>
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_managed.h>
> +#include <drm/drm_print.h>
> +
> +#include "intel_display_core.h"
> +#include "intel_dmc_wl_debugfs.h"
> +
> +#define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
> +
> +/*
> + * DOC: DMC wakelock debugfs
> + *
> + * The DMC wakelock code needs to keep track of register offsets that need the
> + * wakelock for proper access. If one of the necessary offsets are missed, then
> + * the failure in asserting the wakelock is very likely to cause problems down
> + * the road.
> + *
> + * A miss could happen for at least two different reasons:
> + *
> + * - We might have forgotten to add the offset (or range) to the relevant
> + *   tables tracked by the driver in the first place.
> + *
> + * - Or updates to either the DMC firmware or the display IP that require new
> + *   offsets to be tracked and we fail to realize that.
> + *
> + * To help capture these cases, we provide the intel_dmc_wl/ debugfs directory,
> + * which exports a buffer of untracked register offsets.
> + *
> + * Untracked offsets
> + * -----------------
> + *
> + * This is a buffer that records every register offset that went through the
> + * DMC wakelock check and was deemed not needing the wakelock for MMIO access.
> + *
> + * To activate the logging of offsets into such a buffer, one can do::
> + *
> + *   # echo -1 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + *
> + * This will create a buffer with the maximum number of entries allowed
> + * (DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX). A positive value can be used instead to
> + * define a different size:
> + *
> + *   # echo 1024 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + *
> + * Every write to untracked_size will cause the buffer to be reset.
> + *
> + * It is also possible to read untracked_size in order to get the current
> + * value.
> + *
> + * After enabled, the buffer starts getting filled with offsets as MMIOs are
> + * performed by the driver.
> + *
> + * In order to view the content of the buffer, one can do::
> + *
> + *   # cat /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked
> + *   0x000c4000
> + *   0x0016fe50
> + *   0x000c7200
> + *   0x000c7204
> + *   0x00045230
> + *   0x00046440
> + *   0x00045234
> + *   0x0016fa48
> + *   0x0016fa40
> + *   0x0016fa5c
> + *   (...)
> + *
> + * The order of those offsets does not reflect the order the checks were done
> + * (some recently seen offsets are skipped to save space).
> + *
> + * Once done with it, the logging can be disabled with::
> + *
> + *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + */
> +
> +static int untracked_size_get(void *data, u64 *val)
> +{
> +	struct intel_display *display = data;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +	*val = dbg->untracked.size;
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int untracked_size_set(void *data, u64 val)
> +{
> +	struct intel_display *display = data;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	s64 new_size;
> +	u32 *old_offsets;
> +	u32 *new_offsets;
> +	unsigned long flags;
> +
> +	new_size = (s64)val;
> +
> +	if (new_size == -1) {
> +		new_size = DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX;
> +	} else if (new_size < 0) {
> +		drm_err(display->drm,
> +			"%lld is invalid for untracked_size, the only negative value allowed is -1\n",
> +			new_size);
> +		return -EINVAL;
> +	} else if (new_size > DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX) {
> +		drm_err(display->drm,
> +			"%lld too big for untracked_size, maximum allowed value is %d\n",
> +			new_size,
> +			DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX);
> +		return -EINVAL;
> +	}
> +
> +	if (new_size == 0) {
> +		new_offsets = NULL;
> +	} else {
> +		new_offsets = drmm_kmalloc_array(display->drm, new_size, sizeof(*new_offsets),
> +						 GFP_KERNEL);
> +
> +		if (!new_offsets)
> +			return -ENOMEM;
> +	}
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +	old_offsets = dbg->untracked.offsets;
> +	dbg->untracked.offsets = new_offsets;
> +	dbg->untracked.size = new_size;
> +	dbg->untracked.head = 0;
> +	dbg->untracked.len = 0;
> +	dbg->untracked.overflow = false;
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	if (old_offsets)
> +		drmm_kfree(display->drm, old_offsets);
> +
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE_SIGNED(untracked_size_fops,
> +			       untracked_size_get,
> +			       untracked_size_set,
> +			       "%lld\n");
> +
> +static int untracked_show(struct seq_file *m, void *data)
> +{
> +	struct intel_display *display = m->private;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	unsigned long flags;
> +	size_t remaining;
> +	size_t i;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +
> +	remaining = dbg->untracked.len;
> +	i = dbg->untracked.head;
> +
> +	while (remaining--) {
> +		if (i == 0)
> +			i = dbg->untracked.size;
> +
> +		seq_printf(m, "0x%08x\n", dbg->untracked.offsets[--i]);
> +	}
> +
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(untracked);
> +
> +void intel_dmc_wl_debugfs_init(struct intel_display *display)
> +{
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +
> +	spin_lock_init(&dbg->lock);
> +}
> +
> +void intel_dmc_wl_debugfs_register(struct intel_display *display)
> +{
> +	struct dentry *dir;
> +
> +	if (!HAS_DMC_WAKELOCK(display))
> +		return;
> +
> +	dir = debugfs_create_dir("intel_dmc_wl", display->drm->debugfs_root);
> +	if (IS_ERR(dir))
> +		return;
> +
> +	debugfs_create_file("untracked_size", 0644, dir, display,
> +			    &untracked_size_fops);
> +	debugfs_create_file("untracked", 0644, dir, display,
> +			    &untracked_fops);
> +}
> +
> +static bool untracked_has_recent_offset(struct intel_display *display, u32 offset)
> +{
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	int look_back = 32;
> +	size_t i;
> +
> +	if (look_back > dbg->untracked.len)
> +		look_back = dbg->untracked.len;
> +
> +	i = dbg->untracked.head;
> +
> +	while (look_back--) {
> +		if (i == 0)
> +			i = dbg->untracked.size;
> +
> +		if (dbg->untracked.offsets[--i] == offset)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset)
> +{
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +
> +	if (!dbg->untracked.size)
> +		goto out_unlock;
> +
> +	/* Save some space by not repeating recent offsets. */
> +	if (untracked_has_recent_offset(display, offset))
> +		goto out_unlock;
> +
> +	dbg->untracked.offsets[dbg->untracked.head] = offset;
> +	dbg->untracked.head = (dbg->untracked.head + 1) % dbg->untracked.size;
> +	if (dbg->untracked.len < dbg->untracked.size)
> +		dbg->untracked.len++;
> +
> +	if (dbg->untracked.len == dbg->untracked.size && !dbg->untracked.overflow) {
> +		dbg->untracked.overflow = true;
> +		drm_warn(display->drm, "Overflow detected in DMC wakelock debugfs untracked offsets\n");
> +	}
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> new file mode 100644
> index 000000000000..9437c324966f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DMC_WL_DEBUGFS_H__
> +#define __INTEL_DMC_WL_DEBUGFS_H__
> +
> +#include <linux/types.h>
> +#include <linux/spinlock.h>
> +
> +struct intel_display;
> +
> +struct intel_dmc_wl_dbg {
> +	spinlock_t lock; /* protects everything below */
> +	struct {
> +		u32 *offsets;
> +		size_t head;
> +		size_t len;
> +		size_t size;
> +		bool overflow;
> +	} untracked;
> +};
> +
> +void intel_dmc_wl_debugfs_init(struct intel_display *display);
> +void intel_dmc_wl_debugfs_register(struct intel_display *display);
> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset);
> +
> +#endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 81f63258a7e1..f03fbdbcb1a4 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_display_wa.o \
>  	i915-display/intel_dkl_phy.o \
>  	i915-display/intel_dmc.o \
> +	i915-display/intel_dmc_wl_debugfs.o \
>  	i915-display/intel_dp.o \
>  	i915-display/intel_dp_aux.o \
>  	i915-display/intel_dp_aux_backlight.o \

-- 
Jani Nikula, Intel
