Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB0B961597
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 19:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B2B10E3D9;
	Tue, 27 Aug 2024 17:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="GNQwbNL5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE4710E3DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 17:36:23 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-37193ef72a4so3388023f8f.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 10:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1724780182; x=1725384982; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=AnCcCItuJ5G/haNqbjLIr2OaKlilLY6HRLhaTO1hMzY=;
 b=GNQwbNL5AHp0QjLDRfOF3Yf3+S21v56t/EF2bYy33aSC380uMdExHAeLiaLoJJdXVx
 msFPZUdV9Rz+qC8spxV5fG+mzJlPvJyqnxluVg0Bj274lEnTGygzWAGYcyQBGw9p8BTU
 UF19pWvOg8blFOx6L/ln2pYhKAHaS5Uf9noQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724780182; x=1725384982;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AnCcCItuJ5G/haNqbjLIr2OaKlilLY6HRLhaTO1hMzY=;
 b=l4xH3c1ePmSj3Fpy5GyFx2yD4Qthb5zRlcIc31jdhWJIWqzZKxOBSRCTzuoTIGKAtF
 Bl0P3/uYzDWZ2Mg04/lWeT5arRofppAPCml18/tLOoZDpMWoNyYNdIkz0+NqM55nMx89
 kABORTIp95N8aPXzduynRNMxiJpTxEnehC4/XAsvWN+Wf0hwsaoCbe/CiwN/RScjkGDS
 nfGVFINAqhr4ojeoOMoYSLkBul01KtqVMp4GkUGK9KlItucy0tLBrzXzioqO/XJpSwBs
 7nvw9eYGkxwurnNfGeupedH8guo43op86kURxuvRAp4iAxGOzs9rdN/2HycKRYhcXesP
 ocsQ==
X-Gm-Message-State: AOJu0YyqC+YX8AJboVpJnkKCEYRrOZrhkX6ZH++Pvu+WJS/vizRtcD0d
 9ZH7IS7ykSsAk7LuHEZ7n0ndF5RUhnRrW5LtjteeOmuz2y5WyTfpd/xN4sQtfa5yZxSRxGQAcpX
 z
X-Google-Smtp-Source: AGHT+IHyoz0EQ46mpXNv2pqYLC2FnI2RiE3bZEG7RjaFns5G0WOWxtKwTKGQwWa0uz6s1TF7Id5CfA==
X-Received: by 2002:adf:ecc7:0:b0:369:e72c:876c with SMTP id
 ffacd0b85a97d-37311909456mr9471022f8f.45.1724780181473; 
 Tue, 27 Aug 2024 10:36:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3730810fb33sm13551154f8f.13.2024.08.27.10.36.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2024 10:36:21 -0700 (PDT)
Date: Tue, 27 Aug 2024 19:36:19 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v3 15/15] drm/i915/gt: Allow the user to change the CCS
 mode through sysfs
Message-ID: <Zs4Ok-9Kqc8ZfkxR@phenom.ffwll.local>
References: <20240823130855.72436-1-andi.shyti@linux.intel.com>
 <20240823130855.72436-16-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240823130855.72436-16-andi.shyti@linux.intel.com>
X-Operating-System: Linux phenom 6.9.12-amd64 
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

On Fri, Aug 23, 2024 at 03:08:55PM +0200, Andi Shyti wrote:
> Create the 'ccs_mode' file under
> 
> /sys/class/drm/cardX/gt/gt0/ccs_mode
> 
> This file allows the user to read and set the current CCS mode.
> 
>  - Reading: The user can read the current CCS mode, which can be
>    1, 2, or 4. This value is derived from the current engine
>    mask.
> 
>  - Writing: The user can set the CCS mode to 1, 2, or 4,
>    depending on the desired number of exposed engines and the
>    required load balancing.
> 
> The interface will return -EBUSY if other clients are connected
> to i915, or -EINVAL if an invalid value is set.

This does not agree with the code. The code is a _lot_ more clever.
-Sima

> 
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 82 ++++++++++++++++++++-
>  1 file changed, 80 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
> index cc46ee9dea3f..1ed6153ff8cf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
> @@ -6,6 +6,7 @@
>  #include "i915_drv.h"
>  #include "intel_engine_user.h"
>  #include "intel_gt_ccs_mode.h"
> +#include "intel_gt_pm.h"
>  #include "intel_gt_print.h"
>  #include "intel_gt_regs.h"
>  #include "intel_gt_sysfs.h"
> @@ -172,7 +173,7 @@ static int rb_engine_cmp(struct rb_node *rb_new, const struct rb_node *rb_old)
>  	return new->uabi_class - old->uabi_class;
>  }
>  
> -static void __maybe_unused add_uabi_ccs_engines(struct intel_gt *gt, u32 ccs_mode)
> +static void add_uabi_ccs_engines(struct intel_gt *gt, u32 ccs_mode)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
>  	intel_engine_mask_t new_ccs_mask, tmp;
> @@ -230,7 +231,7 @@ static void __maybe_unused add_uabi_ccs_engines(struct intel_gt *gt, u32 ccs_mod
>  	mutex_unlock(&i915->uabi_engines_mutex);
>  }
>  
> -static void __maybe_unused remove_uabi_ccs_engines(struct intel_gt *gt, u8 ccs_mode)
> +static void remove_uabi_ccs_engines(struct intel_gt *gt, u8 ccs_mode)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
>  	intel_engine_mask_t new_ccs_mask, tmp;
> @@ -273,8 +274,85 @@ static ssize_t num_cslices_show(struct device *dev,
>  }
>  static DEVICE_ATTR_RO(num_cslices);
>  
> +static ssize_t ccs_mode_show(struct device *dev,
> +			     struct device_attribute *attr, char *buff)
> +{
> +	struct intel_gt *gt = kobj_to_gt(&dev->kobj);
> +	u32 ccs_mode;
> +
> +	ccs_mode = hweight32(gt->ccs.id_mask);
> +
> +	return sysfs_emit(buff, "%u\n", ccs_mode);
> +}
> +
> +static ssize_t ccs_mode_store(struct device *dev,
> +			      struct device_attribute *attr,
> +			      const char *buff, size_t count)
> +{
> +	struct intel_gt *gt = kobj_to_gt(&dev->kobj);
> +	int num_cslices = hweight32(CCS_MASK(gt));
> +	int ccs_mode = hweight32(gt->ccs.id_mask);
> +	ssize_t ret;
> +	u32 val;
> +
> +	ret = kstrtou32(buff, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * As of now possible values to be set are 1, 2, 4,
> +	 * up to the maximum number of available slices
> +	 */
> +	if (!val || val > num_cslices || (num_cslices % val))
> +		return -EINVAL;
> +
> +	/* Let's wait until the GT is no longer in use */
> +	ret = intel_gt_pm_wait_for_idle(gt);
> +	if (ret)
> +		return ret;
> +
> +	mutex_lock(&gt->wakeref.mutex);
> +
> +	/*
> +	 * Let's check again that the GT is idle,
> +	 * we don't want to change the CCS mode
> +	 * while someone is using the GT
> +	 */
> +	if (intel_gt_pm_is_awake(gt)) {
> +		ret = -EBUSY;
> +		goto out;
> +	}
> +
> +	/*
> +	 * Nothing to do if the requested setting
> +	 * is the same as the current one
> +	 */
> +	if (val == ccs_mode)
> +		goto out;
> +	else if (val > ccs_mode)
> +		add_uabi_ccs_engines(gt, val);
> +	else
> +		remove_uabi_ccs_engines(gt, val);
> +
> +out:
> +	mutex_unlock(&gt->wakeref.mutex);
> +
> +	return ret ?: count;
> +}
> +static DEVICE_ATTR_RW(ccs_mode);
> +
>  void intel_gt_sysfs_ccs_init(struct intel_gt *gt)
>  {
>  	if (sysfs_create_file(&gt->sysfs_gt, &dev_attr_num_cslices.attr))
>  		gt_warn(gt, "Failed to create sysfs num_cslices files\n");
> +
> +	/*
> +	 * Do not create the ccs_mode file for non DG2 platforms
> +	 * because they don't need it as they have only one CCS engine
> +	 */
> +	if (!IS_DG2(gt->i915))
> +		return;
> +
> +	if (sysfs_create_file(&gt->sysfs_gt, &dev_attr_ccs_mode.attr))
> +		gt_warn(gt, "Failed to create sysfs ccs_mode files\n");
>  }
> -- 
> 2.45.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
