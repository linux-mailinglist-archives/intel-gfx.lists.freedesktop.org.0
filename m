Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02C6596ED3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CAF9147A;
	Wed, 17 Aug 2022 12:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CF1913D8;
 Wed, 17 Aug 2022 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660740833; x=1692276833;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1R4DB1G7Hcgf/dX0qGb2/3M2dRd09LWjtatw/huUQB4=;
 b=KvVXW6fBXXklSGtwU0S9N8WvHibUXho7pBMpGNnHqLeozKrSCvB0Z+bk
 LJGI6j6m2jy37YepVmnzLJLWFoTiBIEEFvS/YDEtNGVeP+5GG4DP4U6//
 l797UdZsj3Wjk1YrgKiZTvPEmVM4EEUN3OwjxGeQxXsPyhF0mNRunzuW0
 /A2xmSeMM9+lFMeOp+CxzwQ4Y4WQo9FgONOqFVJEs5C5GpVs7Ab00uHmx
 wipG6Pe0HB3MemH+AVhd9Vr8jPMrbwNq61VXfwH1HZeLkp5/1Ptd37zx2
 fINdmj2q6+SU23+AMRZSWJDHmdkqSWI/zxfaiQnls8Kd/Tmho1NXlhI81 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="318492074"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="318492074"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:53:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="667603030"
Received: from maurocar-mobl2.ger.corp.intel.com (HELO maurocar-mobl2)
 ([10.252.50.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:53:50 -0700
Date: Wed, 17 Aug 2022 14:53:48 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20220817145348.562fcaa2@maurocar-mobl2>
In-Reply-To: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
References: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] tests/gem_exec_fence: Fix wrong
 engine checked for store_dword capability
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
 Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,

On Fri, 12 Aug 2022 11:53:44 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

It seems that there is a numeration issue on this series, as the patches
on it are:

   [PATCH i-g-t 1/3] tests/gem_exec_fence: Fix wrong engine checked for store_dword capability
   [PATCH i-g-t v2 2/3] tests/gem_exec_fence: Exclude 0  from use in store batches
   [PATCH i-g-t v3 3/3] tests/gem_exec_fence: Restore  pre-hang checks in *await-hang scenarios

Maybe some broken script? It is also missing a cover letter.

> Commit ed7c8cfb67e3 ("tests/i915/gem_exec_fence: Add
> __for_each_physical_engine to utilize all engines."), while replacing
> depraciated for_each_physical_engine(e, fd) loop with
> __for_each_physical_engine(fd, e2) and gem_can_store_dword() inside that
> loop with gem_class_can_store_dword(), didn't switch to e2 consequently --
> eb_ring(e) argument of gem_can_store_dword() was replaced with e->class
> passed to gem_class_can_store_dword() instead of e2->class.  As a result,
> a batch that stores dword is now submitted to all engines, also those that
> don't support that operation.  Fix it.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  tests/i915/gem_exec_fence.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
> index 7ff7614dad..048870053a 100644
> --- a/tests/i915/gem_exec_fence.c
> +++ b/tests/i915/gem_exec_fence.c
> @@ -331,7 +331,7 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  
>  	i = 0;
>  	for_each_ctx_engine(fd, ctx, e2) {
> -		if (!gem_class_can_store_dword(fd, e->class))
> +		if (!gem_class_can_store_dword(fd, e2->class))
>  			continue;
>  
>  		if (flags & NONBLOCK) {
