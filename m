Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C4524F2A7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 08:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D86B6EC5F;
	Mon, 24 Aug 2020 06:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1485A6EC5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 06:39:05 +0000 (UTC)
IronPort-SDR: PbNwG27qksGNGEubftSQsXYPPzDlX+D+RidWjVrhE3NaVwe98b3In/JAd28lw1sLeZ9FmWAkUf
 cn5KRF0jDNhw==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="153436215"
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; d="scan'208";a="153436215"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2020 23:39:05 -0700
IronPort-SDR: wxb/tjVJbgST36CeyGnARED3buYJur+NdS8kLza738Rd0mMW19Eqw7BGQnCZ5sPfQmUt5RZuFP
 uFBo73BEiE3w==
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; d="scan'208";a="298595027"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2020 23:39:03 -0700
Date: Mon, 24 Aug 2020 11:57:37 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Nischal Varide <nischal.varide@intel.com>
Message-ID: <20200824062737.GB25390@intel.com>
References: <20200819043409.26010-1-nischal.varide@intel.com>
 <20200819043409.26010-5-nischal.varide@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819043409.26010-5-nischal.varide@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/5]
 Critical-KlockWorks-Fix-intel_crt.c-Possible-Null
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-08-19 at 10:04:09 +0530, Nischal Varide wrote:
> This Patch fixes the Critical KlockWork Errors and here a Possible Null
> Pointer Dereferencing is addressed with a Null Pointer check before
> Dereferencing
> 
> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 5b4510ce5693..b5777fdc8cac 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -504,6 +504,9 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
>  	bool ret;
>  	u32 save_adpa;
>  
> +	if (!(dev_priv))
> +		return false;
> +
IMHO this should be treated as false alarm, since i915_driver_probe()
has allocated a drm_i915_private i915 priv structure and initilizes drm_dev
at early phase, if any erros over there it will be bailed out at early
stages. IOW to_i915(drm_dev) will never return null.
Thanks,
Anshuman Gupta.

>  	/*
>  	 * Doing a force trigger causes a hpd interrupt to get sent, which can
>  	 * get us stuck in a loop if we're polling:
> -- 
> 2.26.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
