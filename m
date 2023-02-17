Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF94A69A3BB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 03:05:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABE810E0D2;
	Fri, 17 Feb 2023 02:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A999E10E0D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 02:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676599499; x=1708135499;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=oi+hH+4CpUVdktkZ3dhMsWfW4sEPwV05/lGbu8d6jJk=;
 b=VA4D8SSjVzJeycZLY44WEjs2vyz4o8UzIIRlRNi4YT9pLeDC88g0DgGY
 dMN37BjfGoYFBVv4gIkYaJgfHSGcfDMnxHaBqbS+VWbK+LF6hvoeX0AvD
 IX2l+MwX/NwRv2ZSXq05a706atVPVbqwZv3aLV+241diZNC+2650PxK+z
 Ws+S82XDpJEmZtLWroGfXLVjoYs8BN4cdvn0OBqhnOEqp+zfrRluVPhrh
 N/ah91reTCFjcg0fLNAHtDqUiJGax+T61Mwz71vdrjPT0I6exarUQPfSN
 hQvi2zYJ2CWm4QprkcKBO8uqWX6L2OAcDq/Fl9MKrfzSDPKYlX/ekUkon A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="396565973"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="396565973"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 18:04:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="672431324"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="672431324"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.69.178])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 18:04:58 -0800
Date: Thu, 16 Feb 2023 18:04:45 -0800
Message-ID: <87fsb5f3nm.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230217005850.2511422-6-umesh.nerlige.ramappa@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-6-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915/perf: Fail modprobe if
 i915_perf_init fails on OOM
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Feb 2023 16:58:46 -0800, Umesh Nerlige Ramappa wrote:
>
> i915_perf_init can fail due to OOM. Fail driver init if i915_perf_init
> fails.
>
> v2: (Jani)
> - Reorder patch in the series

Jani seemed ok with this: that a drm_err will get lost in the dmesg deluge
on OOM so it's better to fail the probe as long as it's only due to OOM.

> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 4 +++-
>  drivers/gpu/drm/i915/i915_perf.c   | 8 ++++++--
>  drivers/gpu/drm/i915/i915_perf.h   | 2 +-
>  3 files changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 0c0ae3eabb4b..998ca41c9713 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -477,7 +477,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>	if (ret)
>		return ret;
>
> -	i915_perf_init(dev_priv);
> +	ret = i915_perf_init(dev_priv);

Maybe add a comment here like this to allay people's concerns?

	/* The only non-zero ret here is -ENOMEM */

or even:

	drm_WARN_ON(&dev_priv->drm, ret && ret != -ENOMEM);

Otherwise this is:

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

> +	if (ret)
> +		return ret;
>
>	ret = i915_ggtt_probe_hw(dev_priv);
>	if (ret)
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 37c4cc44d68c..3306653c0b85 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -4941,7 +4941,7 @@ static void i915_perf_init_info(struct drm_i915_private *i915)
>   * Note: i915-perf initialization is split into an 'init' and 'register'
>   * phase with the i915_perf_register() exposing state to userspace.
>   */
> -void i915_perf_init(struct drm_i915_private *i915)
> +int i915_perf_init(struct drm_i915_private *i915)
>  {
>	struct i915_perf *perf = &i915->perf;
>
> @@ -5057,12 +5057,16 @@ void i915_perf_init(struct drm_i915_private *i915)
>		perf->i915 = i915;
>
>		ret = oa_init_engine_groups(perf);
> -		if (ret)
> +		if (ret) {
>			drm_err(&i915->drm,
>				"OA initialization failed %d\n", ret);
> +			return ret;
> +		}
>
>		oa_init_supported_formats(perf);
>	}
> +
> +	return 0;
>  }
>
>  static int destroy_config(int id, void *p, void *data)
> diff --git a/drivers/gpu/drm/i915/i915_perf.h b/drivers/gpu/drm/i915/i915_perf.h
> index f96e09a4af04..253637651d5e 100644
> --- a/drivers/gpu/drm/i915/i915_perf.h
> +++ b/drivers/gpu/drm/i915/i915_perf.h
> @@ -18,7 +18,7 @@ struct i915_oa_config;
>  struct intel_context;
>  struct intel_engine_cs;
>
> -void i915_perf_init(struct drm_i915_private *i915);
> +int i915_perf_init(struct drm_i915_private *i915);
>  void i915_perf_fini(struct drm_i915_private *i915);
>  void i915_perf_register(struct drm_i915_private *i915);
>  void i915_perf_unregister(struct drm_i915_private *i915);
> --
> 2.36.1
>
