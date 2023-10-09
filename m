Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EFE7BE854
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC96010E296;
	Mon,  9 Oct 2023 17:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8405710E290;
 Mon,  9 Oct 2023 17:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696873059; x=1728409059;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OcTOspHkUa4xG8ulFK9IJS4cToxANGYDefUtiKXQ2QE=;
 b=VU44ktgaU+31D4ycPi20L6J6wyLl79EcN5my2voo3lon5VzrVgIfVd2c
 fZ6mQpV2rsmUw90wMaaZkyexoeRjeNY5gm7SFOwWiCpJLyhKb8jpZAL8r
 R+EB90lPNVpLMxyYR5XUPlFVczaN/aLjBYhz1YDgI1lZomqUs5CgLTVXd
 7uKUo87/itPOOXTpkmijnEgr0Tgahv8nBJEwm91iC/MzbIeukx1x/anvU
 1kFsdrbvs5w+GjzffmnTCQpNsTTIQwblYfanerG70PdNPkUlLNAdjkG4+
 FB/LNflffRfjQDacUw5k9kP29LihyCXHGFwwry8EkLM2u/qD5v+XVWDP2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="388073221"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="388073221"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:37:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="702997825"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="702997825"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2023 10:37:33 -0700
Date: Mon, 9 Oct 2023 19:37:31 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231009173731.sqtkomm45leyplq5@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
 <20231009122750.519112-22-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231009122750.519112-22-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 09/11] lib/kunit: Prepare for KTAP
 parsing after modprobe completed
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,
On 2023-10-09 at 14:28:00 +0200, Janusz Krzysztofik wrote:
> We are going to add support for reading a list of kunit test cases
> provided by a kunit test module prior to executing those test cases.  That
--------------------------------------------------------------------- ^^
Two spaces, use only one.

> will be done by first loading kunit modules in list only mode, then
> reading the list from /dev/kmsg with our KTAP parser.  Since that parsing
-------------------------------------------------------^^
Same here.

> will be performed after the kunit test module is successfully loaded and
> there will be no concurrently running modprobe thread, we need to make
> synchronization of reads from /dev/kmsg with potential errors modprobe
> thread optional.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 50 ++++++++++++++++++++++++++------------------------
>  1 file changed, 26 insertions(+), 24 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index fed0855c84..ed41aa1235 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -802,34 +802,36 @@ static int kunit_kmsg_result_get(struct igt_list_head *results,
>  		if (igt_debug_on(igt_kernel_tainted(&taints)))
>  			return -ENOTRECOVERABLE;
>  
> -		err = igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
> -		if (err == -1)
> -			return -errno;
> -		else if (unlikely(err))
> -			return err;
> -
> -		err = pthread_mutex_lock(&modprobe->lock);
> -		switch (err) {
> -		case EOWNERDEAD:
> -			/* leave the mutex unrecoverable */
> -			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
> -			__attribute__ ((fallthrough));
> -		case ENOTRECOVERABLE:
> -			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> -			if (igt_debug_on(modprobe->err))
> -				return modprobe->err;
> -			break;
> -		case 0:
> -			break;
> -		default:
> -			igt_debug("pthread_mutex_lock() error: %d\n", err);
> -			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> -			return -err;
> +		if (modprobe) {
> +			err = igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
> +			if (err == -1)
> +				return -errno;
> +			else if (unlikely(err))
> +				return err;
> +
> +			err = pthread_mutex_lock(&modprobe->lock);
> +			switch (err) {
> +			case EOWNERDEAD:
> +				/* leave the mutex unrecoverable */
> +				igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
> +				__attribute__ ((fallthrough));
> +			case ENOTRECOVERABLE:
> +				igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> +				if (igt_debug_on(modprobe->err))
> +					return modprobe->err;
> +				break;
> +			case 0:
> +				break;
> +			default:
> +				igt_debug("pthread_mutex_lock() error: %d\n", err);
> +				igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> +				return -err;
> +			}
>  		}
>  
>  		ret = read(fd, record, BUF_LEN);
>  
> -		if (!err) {
> +		if (modprobe && !err) {
>  			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
>  			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
>  		}
> -- 
> 2.42.0
> 
