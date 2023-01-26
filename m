Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AD067D0A3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 16:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA42F10E947;
	Thu, 26 Jan 2023 15:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8376310E947;
 Thu, 26 Jan 2023 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674748222; x=1706284222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r0f5QqNN4FJB44wO5uZwVx9U8GI3vDrFtHd9qH+rids=;
 b=Yqdcwu1gHPRkAixM7qhgSqKYNWAfDSkVXrz/lh89waO0mUyeMnijR9mn
 XZg4ji05jW9N1nD8FgUJZYK0NroeVqSIAtL4i6v86HDP0Xc7H7Y1xuJ6y
 8P54YJe/JEc3egO0gp+TrE+EUSxUovYWxh5H4ihAo1l2t7KgMeDzQdUzb
 slqK8rR1ce77rmP989YbpZofUQ+Z5cWX/j61EWKPgU4HQq6DR0s/9tnKB
 GkS2+aNeEbXiN6YWX+/lZoyUKS96t/L669WCmv0c473cBb9G7OyaEr55I
 ZKYMsREKNoqeyBvIuqzueEfWDlvsd6EAsvV+i/oyY1wEZpg3MHdUQesTF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="389203155"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="389203155"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:50:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="693363805"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="693363805"
Received: from mrudniew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.1.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:50:20 -0800
Date: Thu, 26 Jan 2023 16:50:17 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230126155017.hx37o7gmvolcah5p@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-5-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230112174730.1101192-5-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 4/4] intel_gpu_top: Aggregate engine
 classes in all output modes
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-01-12 at 17:47:30 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Use the same default for stdout and JSON output modes as it is for
> interactive.
> 
> Previously added command line switch can be used to go back to showing all
> physical engines.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index e91b47baf72b..7aa233570463 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -2509,11 +2509,12 @@ int main(int argc, char **argv)
>  	if (signal(SIGINT, sigint_handler) == SIG_ERR)
>  		fprintf(stderr, "Failed to install signal handler!\n");
>  
> +	class_view = !physical_engines;
> +
>  	switch (output_mode) {
>  	case INTERACTIVE:
>  		pops = &term_pops;
>  		interactive_stdin();
> -		class_view = !physical_engines;
>  		break;
>  	case STDOUT:
>  		pops = &stdout_pops;
> -- 
> 2.34.1
> 
