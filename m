Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D51876049AB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 16:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E8810EAED;
	Wed, 19 Oct 2022 14:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B12D10EAED
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 14:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666190890; x=1697726890;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uJTMXmX1oRfX3+L2xd9ohpHl0G7E6bA26pcap5gdQL8=;
 b=dYIYkWFjqda1SmeRhYJpHqueL9QFtBPfvpJ2La31q74vQ+ncLmqhxOII
 6rQYj+OgyWk4c+NRaDyVnYWMP+MXBDY4/z8nkOvCbHb6X5R7AOQpWfIfH
 roj77q0yGWXwxwNQGM7aV9ByhdtjU2aXXp3fVodab5FNxu4sS2eHJQc3P
 GquWjMh8hoRbkZAsF7PeJpYy2iNQWmcTv/sR0lCVUWZRuCiQsfsSb4Tp2
 L+PTSgHA5yyadHIHcDGHSyr2BBiUsLdVNUhvVjx3Uq44KZG87nUvhyWzb
 GXLkhO+2pEkbi2ZAB5QDeSJQ8ay198OseFz9oKIdwk7IxGw7i487esMnw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="392732151"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="392732151"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 07:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="631700957"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="631700957"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 19 Oct 2022 07:48:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 17:48:02 +0300
Date: Wed, 19 Oct 2022 17:48:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y1AOIgr0X/NyQZlH@intel.com>
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
 <20221019143818.244339-2-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221019143818.244339-2-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: use intel_uncore_rmw
 when appropriate
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 19, 2022 at 04:38:18PM +0200, Andrzej Hajda wrote:
> This patch replaces all occurences of the form
> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
> with intel_uncore_rmw.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index fc23c562d9b2a7..070005dd0da476 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -625,9 +625,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
>  	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
>  
>  	/* Ack interrupts, disable EFC interrupt */
> -	intel_uncore_write(uncore, MEMINTREN,
> -			   intel_uncore_read(uncore, MEMINTREN) &
> -			   ~MEMINT_EVAL_CHG_EN);
> +	intel_uncore_rmw(uncore, MEMINTREN, MEMINT_EVAL_CHG_EN, 0);
>  	intel_uncore_write(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
>  
>  	/* Go back to the starting frequency */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
