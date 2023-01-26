Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F2567D077
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 16:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF9510E946;
	Thu, 26 Jan 2023 15:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A3910E946;
 Thu, 26 Jan 2023 15:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674747714; x=1706283714;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NSvV8fkuO7j4mc30ntcjDpr6RTJ4dJ5O2JZMU7VnYpk=;
 b=l+qKh4Gd92D04wGWEGjcjqEBLDPHQWQ+SvrfxcXA10I9rZzUlVTcaYd0
 Mp3BgHA/krAHy3o67N1q8vEVBfoLC08FXiWC2B/POZb58LhDNViiECeZR
 alDsz4sfcJBZqXnGDDrvShrY8jUmNYiJQFL2wlq/PZq6wmY8JwdF4vrgy
 NedExyVE6SnH4McXEovFs9SEapYLSbNWxENG2tTmQKXgqR2z9SiUV97AH
 TO9vpMvDtpCP93kFZLr5tI17kODyPyGV48O/DA1HqiprU7u0lKlKXla+0
 8Jll76rfPnb6sGUGvs8/iWf/Sik8BRQ5dHWghhriliqKYuTMfoZTsUwtT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="413070626"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="413070626"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:41:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="726292448"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="726292448"
Received: from mrudniew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.1.114])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:41:26 -0800
Date: Thu, 26 Jan 2023 16:41:24 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230126154124.hlcokp3b62d3ncvv@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Eero Tamminen <eero.t.tamminen@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230112174730.1101192-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/4] intel_gpu_top: Automatically
 enclose JSON output into brackets
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
Cc: intel-gfx@lists.freedesktop.org, Eero Tamminen <eero.t.tamminen@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-01-12 at 17:47:28 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Parsers need the whole output enclosed into square brackets so every
> period sample becomes an array element.
> 
> So far we have been suggesting this in the man page but we can trivially
> make the tool output that itself.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Eero Tamminen <eero.t.tamminen@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  man/intel_gpu_top.rst | 2 +-
>  tools/intel_gpu_top.c | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index b0c95446a011..3317e04816b4 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -85,7 +85,7 @@ Filter types: ::
>  JSON OUTPUT
>  ===========
>  
> -To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point a JSON array element and will avoid "Multiple root elements" JSON validation error.
> +JSON output will be correctly terminated when the tool cleanly exits, otherwise one square bracket needs to be added before parsing.
>  
>  LIMITATIONS
>  ===========
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 6de8a164fcff..c4d98de4fe31 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -2597,6 +2597,9 @@ int main(int argc, char **argv)
>  	scan_clients(clients, false);
>  	codename = igt_device_get_pretty_name(&card, false);
>  
> +	if (output_mode == JSON)
> +		printf("[\n");
> +
>  	while (!stop_top) {
>  		struct clients *disp_clients;
>  		bool consumed = false;
> @@ -2683,6 +2686,9 @@ int main(int argc, char **argv)
>  			usleep(period_us);
>  	}
>  
> +	if (output_mode == JSON)
> +		printf("]\n");
> +
>  	if (clients)
>  		free_clients(clients);
>  
> -- 
> 2.34.1
> 
