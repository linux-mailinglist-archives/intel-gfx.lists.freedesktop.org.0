Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A3BBA175C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 23:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348B410E2DC;
	Thu, 25 Sep 2025 21:07:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBX+X4xG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E900B10E2DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Sep 2025 21:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758834443; x=1790370443;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LkvY410aVirPead12rwTnP/Hk2cxc8xEHjYDN+VmJ8U=;
 b=KBX+X4xG45lmfhjowiPVb6uYqXr999tgvQGc2Nkf/BXVShOhLm2zm33b
 12OxOCSH6szbJ2GeK5ECZKGd88ZVefT06FS/Z52yU3WLYpy1HFny26KPA
 WftBpM+XFr6sF8XhX6T/mNqa/PyrjsCFu8HDYE/Nt4MWTtMz0jqrJ8phF
 cAl29WReoIGqM3pa/kWepTNLpTjBoR/RZ5y9m+TnSBmGlNDC6Ex3e4mib
 4RUXizLOa/SyKeXt/EpIQq1oPPV0XHpLWCGvQVTY27HQaVKznN0e3SPV6
 WlmAtCvDHfCKFcI+afb++9diGdveOLt+lceHkT0NQ3ft4fRWKVKtplN4p g==;
X-CSE-ConnectionGUID: K9MLCTRbTeGPzoDuQscgIQ==
X-CSE-MsgGUID: AbqaWOpBQTmptM7olvYMxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61218295"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61218295"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 14:07:22 -0700
X-CSE-ConnectionGUID: 7mUi+fD9SiCfY6RgyxvHeA==
X-CSE-MsgGUID: qOGdi8ffTlywHniuh6kqvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; d="scan'208";a="177014112"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 14:07:20 -0700
Date: Fri, 26 Sep 2025 00:07:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@kernel.org>, Madhur Kumar <madhurkumar004@gmail.com>
Subject: Re: [CI] drm/i915: i915_pmu: Use sysfs_emit() instead of sprintf()
Message-ID: <aNWvBGyPXCJnv8oV@intel.com>
References: <20250924204141.1199857-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250924204141.1199857-1-andi.shyti@linux.intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Sep 24, 2025 at 10:41:41PM +0200, Andi Shyti wrote:
> From: Madhur Kumar <madhurkumar004@gmail.com>
> 
> Follow the advice in Documentation/filesystems/sysfs.rst:
> show() should only use sysfs_emit() or sysfs_emit_at() when formatting
> the value to be returned to user space.
> 
> Signed-off-by: Madhur Kumar <madhurkumar004@gmail.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Link: https://lore.kernel.org/r/20250923195051.1277855-1-madhurkumar004@gmail.com
> ---
> Hi,
> 
> I'm resending this patch because unfortunately CI doesn't test
> patches from non allowed users. Although trivial, we need all the
> patches to be tested.

FYI you can just bounce the original mail to intel-gfx and CI will
pick it up.

> 
> Thanks Madhur,
> Andi
> 
>  drivers/gpu/drm/i915/i915_pmu.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 5bc696bfbb0f..d8f69bba79a9 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -895,7 +895,7 @@ static ssize_t i915_pmu_format_show(struct device *dev,
>  	struct i915_str_attribute *eattr;
>  
>  	eattr = container_of(attr, struct i915_str_attribute, attr);
> -	return sprintf(buf, "%s\n", eattr->str);
> +	return sysfs_emit(buf, "%s\n", eattr->str);
>  }
>  
>  #define I915_PMU_FORMAT_ATTR(_name, _config) \
> @@ -925,7 +925,7 @@ static ssize_t i915_pmu_event_show(struct device *dev,
>  	struct i915_ext_attribute *eattr;
>  
>  	eattr = container_of(attr, struct i915_ext_attribute, attr);
> -	return sprintf(buf, "config=0x%lx\n", eattr->val);
> +	return sysfs_emit(buf, "config=0x%lx\n", eattr->val);
>  }
>  
>  #define __event(__counter, __name, __unit) \
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
