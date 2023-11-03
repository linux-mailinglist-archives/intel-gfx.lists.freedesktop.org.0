Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D4B7E07FD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 19:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF19D10E188;
	Fri,  3 Nov 2023 18:21:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A76110E188;
 Fri,  3 Nov 2023 18:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699035690; x=1730571690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=anNPIocR8rqGnyM3bozMjOV5OEdthH6jVUAReWfu4K0=;
 b=M6gg0bWnUoCiRUeK7luQw2NijbWeqbZxPY2HG4R270z/UQj5m6sz8ltj
 USKbjfiYuFTWp46cYJT3gEsQY2U9ABMyLYbjAL9XJ3RdavCDlgE52Mkxd
 WVXi4pAP2VhmEDTK41thzLnI3Fl/CzeagHEG7O+IEhqz1zqcw/k/G1FSW
 MBiduAdEFUWS8H39dC0NvLj1+plKF5Gcd2t1TIOTAE6RtTJD2bTkjqI4r
 dVz1VUZJ+IgukQdSjqD88y3cU+oxYuYS65NxsB1s7gdxdDEdjpyMGqo6o
 e/KAes7/RJsaFFnxc6ImD8bcfuKVnfleVQrRY/ClHGtPFIoQ0/sFBL8Zf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="386167265"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="386167265"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 11:21:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="796703148"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="796703148"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2023 11:21:27 -0700
Date: Fri, 3 Nov 2023 19:21:08 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231103182108.kl7i3jyjs4qlbdzs@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231012081547.852052-2-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/9] tests/i915/drm_fdinfo: Check
 engine info is supported
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
Cc: Intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,
On 2023-10-12 at 09:15:39 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> On top of checking that parsing works, check that there are some engines
> present. This will be needed once the memory stats are added and so return
> value from __igt_parse_drm_fdinfo() will then be possible to be greater
> than zero even when engine stats are not supported.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tests/intel/drm_fdinfo.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
> index aca19db50680..344c44dce78b 100644
> --- a/tests/intel/drm_fdinfo.c
> +++ b/tests/intel/drm_fdinfo.c
> @@ -737,6 +737,7 @@ igt_main
>  
>  		igt_require_gem(i915);
>  		igt_require(igt_parse_drm_fdinfo(i915, &info, NULL, 0, NULL, 0));
> +		igt_require(info.num_engines);
>  
>  		ctx = intel_ctx_create_all_physical(i915);
>  
> -- 
> 2.39.2
> 
