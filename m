Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BD0504791
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Apr 2022 12:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA64510E162;
	Sun, 17 Apr 2022 10:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C4210E162
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Apr 2022 10:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650191011; x=1681727011;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=4On0Cbfe3F9jJRPrNu/4wPAof3QOsnIgvlEOmaEeLjI=;
 b=dvIFl/VH+FzRSr0lWeYET4dcVtoGiZy46DDk+g7+YHfqhTEPaF93P1ta
 D8eimJ8++DIMTl2olNJg/Hq+gRohvLvql5znsLORCWF/OG/2PrPFAI1WF
 1T/xEBmic1NjVkQc/pRG/XH5IUtDjYwkceDCrFOufZwruapmxeEkRAbnK
 We76EX9UbdGuRZO4I8cygtxprE+5UHrEYqiUxcB7HKJQgymVrZvXIHV3U
 JOAU/cWsdZc4yoL/pMhi5n7Uqr5kIQd1OWbRbP/feJespGTIpOYuWdJKr
 WnoqHpLZVHii+yl71QcCwVRdNkd8nIvcENV3PoCWjm2LTr8mWIoqjaHt7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="349826832"
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="349826832"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2022 03:23:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="664299045"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2022 03:23:29 -0700
Date: Sun, 17 Apr 2022 13:13:49 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220416064418.2364582-1-lucas.demarchi@intel.com>
Message-ID: <alpine.DEB.2.22.394.2204171309420.1532214@eliteleevi.tm.intel.com>
References: <20220416064418.2364582-1-lucas.demarchi@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda/i915: Fix one too many
 pci_dev_put()
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org,
 alsa-devel@alsa-project.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, 15 Apr 2022, Lucas De Marchi wrote:

> pci_get_class() will already unref the pci device passed as argument.
> So if it's unconditionally unref'ed, even if the loop is not stopped,

thanks Lucas. And yes indeed, overlooked that pci_get_class() 
will decrement the from device is specified.

> --- a/sound/hda/hdac_i915.c
> +++ b/sound/hda/hdac_i915.c
> @@ -127,11 +127,10 @@ static int i915_gfx_present(struct pci_dev *hdac_pci)
>  		display_dev = pci_get_class(class, display_dev);
>  
>  		if (display_dev && display_dev->vendor == PCI_VENDOR_ID_INTEL &&
> -		    connectivity_check(display_dev, hdac_pci))
> +		    connectivity_check(display_dev, hdac_pci)) {
> +			pci_dev_put(display_dev);
>  			match = true;
> -
> -		pci_dev_put(display_dev);
> -
> +		}

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai
