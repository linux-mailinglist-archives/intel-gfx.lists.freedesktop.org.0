Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FB3265FBB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 14:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5176EA20;
	Fri, 11 Sep 2020 12:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82576EA20;
 Fri, 11 Sep 2020 12:44:29 +0000 (UTC)
IronPort-SDR: tFfqmvjcUN/CBgovttizzLCbmCDC3z3u4lVGR4WKuYUUcUB9rDzkF0SYjroddmKFx74trhs9Hg
 WfMexwKTehww==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="138262252"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="138262252"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 05:44:29 -0700
IronPort-SDR: E/tFw/+Z93hiMBb9LiJVdvTPEButG5UeUcQnSyACkWQpDxdSNlej5p1IKJZ1sgX7DWV5KYX6bO
 y1lASXsd9MlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="334503028"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008.jf.intel.com with ESMTP; 11 Sep 2020 05:44:27 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kGi4Z-0001Om-SV; Fri, 11 Sep 2020 15:22:35 +0300
Date: Fri, 11 Sep 2020 15:22:35 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20200911122235.GO7444@platvala-desk.ger.corp.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
 <20200911103039.4574-22-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200911103039.4574-22-janusz.krzysztofik@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v6 21/24] tests/core_hotunplug:
 HSW/BDW audio issue workaround
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 11, 2020 at 12:30:36PM +0200, Janusz Krzysztofik wrote:
> Unbinding the i915 driver on some Haswell and Broadwell platforms with
> Azalia audio results in a kernel WARNING on "i915 raw-wakerefs=1
> wakelocks=1 on cleanup".  The issue can be worked around by manually
> enabling runtime power management for the conflicting audio adapter.
> Use that method but also display a warning to preserve visibility of
> the issue.  Also tag the workaround with a FIXME comment.
> 
> v2: Extend the scope of the workaround over Broadwell
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/core_hotunplug.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index ac106d964..3e2a76ddb 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -484,8 +484,23 @@ igt_main
>  		igt_skip_on_f(fd_drm < 0, "No known DRM device found\n");
>  
>  		if (is_i915_device(fd_drm)) {
> +			uint32_t devid = intel_get_drm_devid(fd_drm);
> +
>  			gem_quiescent_gpu(fd_drm);
>  			igt_require_gem(fd_drm);
> +
> +			/**
> +			 * FIXME: Unbinding the i915 driver on some Haswell
> +			 * platforms with Azalia audio results in a kernel WARN
> +			 * on "i915 raw-wakerefs=1 wakelocks=1 on cleanup".  The
> +			 * below CI friendly user level workaround prevents the
> +			 * warning from appearing.  Drop this hack as soon as
> +			 * this is fixed in the kernel.
> +			 */
> +			if (igt_warn_on_f(IS_HASWELL(devid) ||
> +					  IS_BROADWELL(devid),
> +			    "Manually enabling audio PM to work around a kernel WARN\n"))
> +				igt_pm_enable_audio_runtime_pm();

What happens without this? Is it just a kernel warning, or does the
operation also fail?

If the former, what does this gain? All it does is we lose the
capability to track whether the kernel still has that issue, we still
have to filter this warning in cibuglog.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
