Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D1E7C01A1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0DD10E3C8;
	Tue, 10 Oct 2023 16:30:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05C010E3AB;
 Tue, 10 Oct 2023 16:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696955449; x=1728491449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rXcF4Wfwd15EM5b234ciDV8mbEcK2fvJJgfeGs4t9K0=;
 b=UxueOWaXUZvZ8tkmH53G61bLxc8OprDgoG3SEQEekeDPZS6+vc6+XyOt
 sIc2caVBNjYEh67dgO0cbR/Ov0L6O35Wk2w7S8Uvq9seBnnPAcm43j/3O
 gFU9jdcP9EoeU8pb79HaJkGcOWsE/VCi4XG4oRmOnukTx769E1K5EH1+r
 LQz1CBOSMD5oIMa/pBHhL3Rh3mVR3lGGNlXm1D3OQkICpnoRywug34doY
 yYlC4SAs7sWxx2tb6V6y1L1LqM9Q6RcTiehgZHDQsBON9ssw9zzuaib5Z
 eVITkekzKe5hT0hf0avyopoQpGNohwUsFB5pGo3UBTbgPZMjZZTZJK+gx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384298144"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="384298144"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:30:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="897262602"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="897262602"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 09:29:04 -0700
Date: Tue, 10 Oct 2023 18:30:44 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231010163044.pvbbajwua4jpi26g@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
 <20231010110714.749239-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231010110714.749239-2-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/4] tools/intel_gpu_top: Fix clients
 header width when no clients
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
On 2023-10-10 at 12:07:11 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Recent refactoring broke the clients header in cases when there are no
> clients displayed. To fix it we need to account the width of the "NAME"
> label.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 10601e66b18e..60fe06917531 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1967,6 +1967,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  		     int con_w, int con_h, int *class_w)
>  {
>  	struct intel_clients *iclients = clients->private_data;
> +	const int max_name_len = clients->max_name_len < 4 ?
> +				 4 : clients->max_name_len; /* At least "NAME" */
>  
>  	if (output_mode == INTERACTIVE) {
>  		unsigned int num_active = 0;
> @@ -1990,9 +1992,8 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  					num_active++;
>  			}
>  
> -			*class_w = width =
> -				(con_w - len - clients->max_name_len - 1) /
> -				num_active;
> +			*class_w = width = (con_w - len - max_name_len - 1) /
> +					   num_active;
>  
>  			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
>  				const char *name = iclients->classes.names[i];
> -- 
> 2.39.2
> 
