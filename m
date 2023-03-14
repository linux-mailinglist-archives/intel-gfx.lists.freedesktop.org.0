Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12ACF6B8EF0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 10:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7100B10E159;
	Tue, 14 Mar 2023 09:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB2C10E15A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 09:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678787034; x=1710323034;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Mo/T5VuZqgiE3IKbmBoV+Hyj2PnXz1ZaJSRPjyMAZ6M=;
 b=bunHoF0NBpt8FNQsSYg80VrOETsbI1xVKyDjqBJPOWqtTL+f2kr6klQ3
 j0qj8sGR2H+gi1csCJqyDZpTkSwyQDxndEbimO34aC8TTMlZgWQ5OZluz
 YFoREuycPxFJNLfOztQZ6SVy/3NmrEHZl5ZNPoZawVIxArj4Jq7ehgvQY
 JHRoPL8T0yrubiqla065WMaUI5yvWjNIcWDaMp939g7k0lJRHUzH1w+9X
 UhzMaPsNmESyRouHGNMHTm0caYEA/IZc7jhlP/zXm9R/eYijvlBaSUcpw
 KImu+iW209tcHSY9JUMS5HWZ05h+w2aYfFgh2fT2V4kOMk7hdbG6GcLv7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423647801"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="423647801"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:43:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="628986855"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="628986855"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.33.210])
 ([10.252.33.210])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:43:53 -0700
Message-ID: <3238742c-0c57-b8cf-11fe-fd4a57979049@linux.intel.com>
Date: Tue, 14 Mar 2023 10:43:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230314092728.3977741-1-imre.deak@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230314092728.3977741-1-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/opregion: Fix CONFIG_ACPI=n builds
 adding missing intel_opregion_cleanup() prototype
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


On 3/14/2023 10:27 AM, Imre Deak wrote:
> Add the missing intel_opregion_cleanup() prototype fixing CONFIG_ACPI=n
> builds.
>
> Fixes: 3e226e4a2180 ("drm/i915/opregion: Cleanup opregion after errors during driver loading")
> Cc: Jani Nikula <jani.nikula@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Link: https://lore.kernel.org/oe-kbuild-all/202303141610.6L1VO7Gw-lkp@intel.com/
> Signed-off-by: Imre Deak <imre.deak@intel.com>


Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_opregion.h | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 181eb3e9abbf3..fd2ea8ef0fa20 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -86,6 +86,10 @@ static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
>   	return 0;
>   }
>   
> +static inline void intel_opregion_cleanup(struct drm_i915_private *i915)
> +{
> +}
> +
>   static inline void intel_opregion_register(struct drm_i915_private *dev_priv)
>   {
>   }
