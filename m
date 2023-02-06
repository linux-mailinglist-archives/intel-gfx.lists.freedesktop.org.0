Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2530868BF99
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 15:08:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D88D10E06B;
	Mon,  6 Feb 2023 14:08:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60CC10E06B;
 Mon,  6 Feb 2023 14:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675692503; x=1707228503;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ghd6C8qXnZjVqH88dekVpVHAd2GYrDEP1dUdYsxtyQk=;
 b=Gocq9bdAeBKBHfcHaYJovD4Y5M/mCVOjkSSoRfisL7Zc4CqanjXs1+1W
 fQMnf4kOrCUXObxgsRFPgjm9cmn5z2A5sul4KEHnPPHCohw+5NkN9+pvm
 C6D6bdlkhZw59f9wmGLQ6MHc/iZq+lYLSvplb3K6rzZGP88ipSH44UzwC
 sDoluKMgwkjHlQ6jFpcAsdtYzfNQRMdBqCLZYfOYRQ572DBvzAMPErAOG
 ZVLlmIDmwW3MA5/dBzxRikEN4oZRr2/Gwc0TVSVarVzgK1VhaEl7XPmx7
 noAoRBQvuBY7G1DZ/Kt4pva/PwrrMJiQC4xlnLltePay6SjLDLZ95nWCN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="312864119"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="312864119"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 06:04:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="911937853"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="911937853"
Received: from ksazon-mobl.ger.corp.intel.com (HELO localhost) ([10.213.7.186])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 06:04:31 -0800
Date: Mon, 6 Feb 2023 15:04:29 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230206140429.z7e5i5ed6mz3xkew@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@chromium.org>,
 Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
 <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
 <20230203164224.6y3qx4yztt7hd5cu@kamilkon-desk1>
 <0edf920f-0ba8-2aa7-6b52-07facb400b3f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0edf920f-0ba8-2aa7-6b52-07facb400b3f@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 8/8] gputop: Basic vendor
 agnostic GPU top tool
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
Cc: Rob Clark <robdclark@chromium.org>,
 Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>,
 Intel-gfx@lists.freedesktop.org,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-02-06 at 09:19:02 +0000, Tvrtko Ursulin wrote:
> 
> On 03/02/2023 16:42, Kamil Konieczny wrote:
> > Hi Tvrtko,
> > 
> > On 2023-01-31 at 11:32:37 +0000, Tvrtko Ursulin wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > Rudimentary vendor agnostic example of how lib_igt_drm_clients can be used
> > > to display a sorted by card and usage list of processes using GPUs.
> > > 
> > > Borrows a bit of code from intel_gpu_top but for now omits the fancy
> > > features like interactive functionality, card selection, client
> > > aggregation, sort modes, JSON output  and pretty engine names. Also no
> > > support for global GPU or system metrics.
> > > 
> > > On the other hand it shows clients from all DRM cards which
> > > intel_gpu_top does not do.
> > > 
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Cc: Rob Clark <robdclark@chromium.org>
> > > Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
> > > Acked-by: Christian König <christian.koenig@amd.com>
> > 
> > I run it with:
> > # ./gputop
> > 
> > but it do not work on my Skylake card, I see no output,
> > kernel 5.19.0-29-generic, ubuntu 22.10
> 
> Odd, 5.19 should have the support. Intel_gpu_top works - it is showing the
> individual clients?

There is no display nor any gpu app running, when I run some igt tests
then it does sometimes prints some activity. Intel_gpu_top works and
shows headers and zero activity so it mislead me.

> 
> > 
> > # ./lsgpu
> > card0                    Intel Skylake (Gen9)              drm:/dev/dri/card0
> > └─renderD128                                               drm:/dev/dri/renderD128
> > 
> > Please add some options like debug, version, debug with high
> > verbose level, help. It seems like q or Q do not exit.
> 
> As the cover letter hints I was only set out to demonstrate an extremely
> rudimentary vendor agnostic tool. To quote the cover letter more - "..It
> also makes no effort to provide sorting modes, well any interactivity, or
> any pretty names for GPUs or engines..". I have no scope presently to make
> it better or nicer.
> 
> The tool however can serve as a starting point and people had reported it
> working as-is with a few other drivers, AMD, msm and most recently I believe
> etnaviv. So perhaps a pool of people to further improve it will be found
> there in the future.
> 
> In summary I think it's worth reviewing so that the common code gets
> extracted from intel_gpu_top into respective libraries. After that I was
> hoping other people start contributing further improvements.
> 
> Regards,
> 
> Tvrtko

I agree it is good starting point, it may have something like overall
gpu activity, imho something which shows gpu % usage (mem % and power %)
for all GPUs present.

Regards,
Kamil

