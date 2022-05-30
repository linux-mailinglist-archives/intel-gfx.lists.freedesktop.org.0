Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439FF53739B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 04:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6924D10E22E;
	Mon, 30 May 2022 02:40:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8D510E1FF;
 Mon, 30 May 2022 02:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653878411; x=1685414411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VH9Ac6j2zJEKnLbl4nEyt4ebwXWIMcHyFIJDmaWFKq0=;
 b=Eqs0pgsSoStugy8jwj2q+hTSLILTMMHUSCxx6FN+7+N4OILQnC/5KkpW
 X2Qhgb945mPplynEXOQfLgSoluO6p9DTW2iDr9kcKsoo5DO0qe0eu17p0
 1O+x49Yl0p1uwsmJ8nsktnFdD8pQUOGjU33oGhEFI18tFFX6wNEYZp4oq
 VGFreQ8C+PPKMdenenNnt2O8B/GDGTyd4suDtX+/7BS/q5kfQOCIf46P5
 9tDLb6P5bU5yEN2GLEdiz95ruBKOxNiWn+gvekMAyi8PmhJipIP79EwoJ
 Q3Kg8hdWsLNozwTRKboD+HRnocrTviejbsbZ8Ya2PmXtGj5ldkFk5O2Ww w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="255363797"
X-IronPort-AV: E=Sophos;i="5.91,261,1647327600"; d="scan'208";a="255363797"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2022 19:40:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,261,1647327600"; d="scan'208";a="575728472"
Received: from rshamets-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.26.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2022 19:40:09 -0700
Date: Mon, 30 May 2022 04:40:06 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YpQuhjGGOVBBHrkt@zkempczy-mobl2>
References: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220527105042.2233128-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] lib/igt_device_scan:
 Free filtered devices in igt_devices_free
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 27, 2022 at 11:50:40AM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Fix a possible oversight.

Yes, properly coded in igt_device_scan() only. Thanks for spotting this.

> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  lib/igt_device_scan.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index 3c23fe0eb520..a30433ae2cff 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -814,6 +814,11 @@ void igt_devices_free(void)
>  		igt_device_free(dev);
>  		free(dev);
>  	}
> +
> +	igt_list_for_each_entry_safe(dev, tmp, &igt_devs.filtered, link) {
> +		igt_list_del(&dev->link);
> +		free(dev);
> +	}

Small nit - I would change the order (filtered list I would remove first).
igt_device_free() also frees dev->devnode, ... so if we would change the 
code to be more "parallel" it would be better to avoid use-after-free.

With this:

Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

--
Zbigniew

>  }
>  
>  /**
> -- 
> 2.32.0
> 
