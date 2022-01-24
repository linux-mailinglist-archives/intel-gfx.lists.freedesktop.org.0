Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D45A04983FE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 17:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D36510E18C;
	Mon, 24 Jan 2022 16:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456E810E18C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 16:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643040068; x=1674576068;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OyajA1I/0oXJu+kd/7mvbMCs8teqv8udV0X82TJWNjA=;
 b=nSXfRVoWO19AmLTo4L/3451DwogCyix4mMfSpFgCHQBoWjxCPw4f++mm
 scmWz1Pxc/IdrgqO+RsYZKeg/THxXkjfAs2y3jvVM74vNijtsnfPx30Vt
 LaMxpqDPuxgdeIDad3EeOAVg10Rov2/oL/LTErStPS29O7paKcg0R+25l
 k7DHM1OuYZMN2fo2hlkazTWbbtfCtJCCYLGD6h5SCrn5E1n310hPGHsHK
 hUuWb+YoYflFECAglEAVSU0zeXqSVPoewfKSpd2euShudbLu4x5eoVCjZ
 +ZPWZawiUXtS2QqD8UzfSGCmRr8eZLDsmbf8GPqR9BmHAcXzL43GVdGU0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="309395314"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="309395314"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 08:00:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="534285149"
Received: from epreiss-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.23])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 08:00:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch,
 ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220121222252.3296117-4-adrian.larumbe@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
 <20220121222252.3296117-4-adrian.larumbe@collabora.com>
Date: Mon, 24 Jan 2022 18:00:37 +0200
Message-ID: <878rv52key.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 3/5] drm/i915/flat-CCS: move
 GET_CCS_SIZE macro into driver-wide header
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Jan 2022, Adrian Larumbe <adrian.larumbe@collabora.com> wrote:
> It has to be used by other files other than low-level migration code.

Maybe, but i915_drv.h is not the dumping ground for this
stuff. Especially you shouldn't add anything in i915_drv.h that requires
you to pull in other headers. The goal is to go in the completely
opposite direction.

BR,
Jani.

>
> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_migrate.c | 1 -
>  drivers/gpu/drm/i915/i915_drv.h         | 5 +++++
>  2 files changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index a210c911905e..716f2f51c7f9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -16,7 +16,6 @@ struct insert_pte_data {
>  };
>  
>  #define CHUNK_SZ SZ_8M /* ~1ms at 8GiB/s preemption delay */
> -#define GET_CCS_SIZE(i915, size)	(HAS_FLAT_CCS(i915) ? (size) >> 8 : 0)
>  
>  static bool engine_supports_migration(struct intel_engine_cs *engine)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 5623892ceab9..6b890a6674e4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -105,6 +105,7 @@
>  #include "i915_request.h"
>  #include "i915_scheduler.h"
>  #include "gt/intel_timeline.h"
> +#include "gt/intel_gpu_commands.h"
>  #include "i915_vma.h"
>  
>  
> @@ -1526,6 +1527,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_FLAT_CCS(dev_priv)   (INTEL_INFO(dev_priv)->has_flat_ccs)
>  
> +#define GET_CCS_SIZE(i915, size) (HAS_FLAT_CCS(i915) ? \
> +				  DIV_ROUND_UP(size, NUM_CCS_BYTES_PER_BLOCK) \
> +				  0)
> +
>  #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
>  
>  #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)

-- 
Jani Nikula, Intel Open Source Graphics Center
