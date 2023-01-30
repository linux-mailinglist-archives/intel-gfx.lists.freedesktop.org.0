Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980D76816FA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 17:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B2D10E0A2;
	Mon, 30 Jan 2023 16:54:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01FA10E0A2;
 Mon, 30 Jan 2023 16:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675097672; x=1706633672;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Cn/lwATg9DL2ZwbO+VvdubUQcQUc79lQRll5nf1Xzao=;
 b=I8Uojy69cen16uYXFvatJmporHW1DbEjO5A73cgBdBldkaRNrIcy0ZHy
 dpXy/lwj3z5InHb/13HEfSXoZDrv0ub/rJTQwk1JG9UcuBK0OjsCDOt1u
 SbToltc1cTMp5nfLDh+TvMJJxcKOiQnym7esgXCkSraCGcWi+GVeMDNDk
 GzN1yX2AGtaxaiEBjUOAY+8qDw9RXqf/EE3rTMPPnG0TmEJhGcDxaejXa
 Fq1JxfT/u/RiFHlEGHqRFdEAfcJ7RZyyXjbiHxgKmWT0foH5qlQ+Aludn
 AuZw5IXhdoODKcKOlvX/9bVoUY8yr8dRX4UV4AeC4Xocsfs3t69v4S7c4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326275422"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="326275422"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 08:54:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="806753536"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="806753536"
Received: from abanka-mobl.ger.corp.intel.com (HELO localhost) ([10.213.3.236])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 08:54:30 -0800
Date: Mon, 30 Jan 2023 17:54:28 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Message-ID: <20230130165428.ulsf7zc24bquu55x@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-6-tvrtko.ursulin@linux.intel.com>
 <20230127161052.thz5q2sqxtge2cwn@kamilkon-desk1>
 <facc58f1-ec41-67bc-3cb2-a15965b7a27d@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <facc58f1-ec41-67bc-3cb2-a15965b7a27d@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 5/6] intel_gpu_top: Fix
 cleanup on old kernels / unsupported GPU
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2023-01-30 at 10:55:42 +0000, Tvrtko Ursulin wrote:
> 
> On 27/01/2023 16:10, Kamil Konieczny wrote:
> > Hi Tvrtko,
> > 
> > On 2023-01-27 at 11:12:40 +0000, Tvrtko Ursulin wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > Avoid trying to dereference null engines on exit when there are either
> > > none which are supported, or kernel does not have i915 PMU support.
> > > 
> > > Also fix a memory leak on the same failure path just so Valgrind runs are
> > > quite.
> > > 
> > > v2:
> > >   * Fix a memory leak in the same failure mode too.
> > 
> > Please rebase, patch do not apply.
> 
> Hm how, CI applied it fine. Maybe you mean as standalone? There is the same
> patch here:
> https://patchwork.freedesktop.org/patch/519751/?series=113096&rev=2
> 
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Acked-by: Nirmoy Das <nirmoy.das@intel.com> # v1
> > -------------------------------------------- ^^^^^
> > Delete this.
> 
> I can do that only if Nirmoy agrees. ;)
> 
> Regards,
> 
> Tvrtko

It is already too late, that was merged some time ago and got
into git history so nothing can be done now.

Regards,
Kamil

> 
> > Rest looks good,
> > 
> > Regards,
> > Kamil
> > 
> > > ---
> > >   tools/intel_gpu_top.c | 21 ++++++++++++++-------
> > >   1 file changed, 14 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> > > index 7aa233570463..0a1de41b3374 100644
> > > --- a/tools/intel_gpu_top.c
> > > +++ b/tools/intel_gpu_top.c
> > > @@ -340,7 +340,7 @@ static struct engines *discover_engines(char *device)
> > >   	d = opendir(sysfs_root);
> > >   	if (!d)
> > > -		return NULL;
> > > +		goto err;
> > >   	while ((dent = readdir(d)) != NULL) {
> > >   		const char *endswith = "-busy";
> > > @@ -423,10 +423,8 @@ static struct engines *discover_engines(char *device)
> > >   	}
> > >   	if (ret) {
> > > -		free(engines);
> > >   		errno = ret;
> > > -
> > > -		return NULL;
> > > +		goto err;
> > >   	}
> > >   	qsort(engine_ptr(engines, 0), engines->num_engines,
> > > @@ -435,6 +433,11 @@ static struct engines *discover_engines(char *device)
> > >   	engines->root = d;
> > >   	return engines;
> > > +
> > > +err:
> > > +	free(engines);
> > > +
> > > +	return NULL;
> > >   }
> > >   static void free_engines(struct engines *engines)
> > > @@ -448,6 +451,9 @@ static void free_engines(struct engines *engines)
> > >   	};
> > >   	unsigned int i;
> > > +	if (!engines)
> > > +		return;
> > > +
> > >   	for (pmu = &free_list[0]; *pmu; pmu++) {
> > >   		if ((*pmu)->present)
> > >   			free((char *)(*pmu)->units);
> > > @@ -2568,7 +2574,7 @@ int main(int argc, char **argv)
> > >   			"Failed to detect engines! (%s)\n(Kernel 4.16 or newer is required for i915 PMU support.)\n",
> > >   			strerror(errno));
> > >   		ret = EXIT_FAILURE;
> > > -		goto err;
> > > +		goto err_engines;
> > >   	}
> > >   	ret = pmu_init(engines);
> > > @@ -2585,7 +2591,7 @@ int main(int argc, char **argv)
> > >   "More information can be found at 'Perf events and tool security' document:\n"
> > >   "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
> > >   		ret = EXIT_FAILURE;
> > > -		goto err;
> > > +		goto err_pmu;
> > >   	}
> > >   	ret = EXIT_SUCCESS;
> > > @@ -2699,8 +2705,9 @@ int main(int argc, char **argv)
> > >   		free_clients(clients);
> > >   	free(codename);
> > > -err:
> > > +err_pmu:
> > >   	free_engines(engines);
> > > +err_engines:
> > >   	free(pmu_device);
> > >   exit:
> > >   	igt_devices_free();
> > > -- 
> > > 2.34.1
> > > 
