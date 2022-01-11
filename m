Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2082D48A99F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 09:37:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765F31134F1;
	Tue, 11 Jan 2022 08:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9F1112A5C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 08:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641890216; x=1673426216;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fb8nWMAZrmWV41xVjkHvGnRCVsb+6xDWT6E89YI2w8A=;
 b=bLTWyQxHyjPu4zyXjGklZQy9n/75dXMmabloHCNB24BLD6cHTq714gTX
 Uos2bNPZ/Ojn1lhTK7yW9vEC/w6Zut9yEGLxh8CQeAM66BTFBy+XIBS+G
 v8tse1t9N8RdhdcPVlcO80/rv/WbmADypO6BB8jfwbXFj/4IevtChSqpE
 x14rtfdTTQ5u8rWB3fjxwi0xvdvpZof5Vj7RGkgKZ9LRG2tzhCZkP8KZr
 BEsnaoeBXaiHZn4bC4eUv5c/ipdYyhLw5SCUsc4rQRqvIttaz98SI8NYM
 JIAaF+MkfFEDi7GqoZqiI1Rm98yN9r/W+TkXfxYvKDGguW4ET55BMahJX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="223418132"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="223418132"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:36:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="622997227"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:36:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ashish Arora <ashisharora.linux@outlook.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>
In-Reply-To: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
Date: Tue, 11 Jan 2022 10:36:46 +0200
Message-ID: <87v8yq8y8x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH - v3] drm/i915: Discard large BIOS
 framebuffers causing display corruption.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Jan 2022, Ashish Arora <ashisharora.linux@outlook.com> wrote:
> From: Ashish Arora <ashisharora.linux@outlook.com>
>
> On certain 4k panels and Macs, the BIOS framebuffer is larger than what
> panel requires causing display corruption. Introduce a check for the same.
>
>
> Signed-off-by: Ashish Arora <ashisharora.linux@outlook.com>
> Reviewed-by: Aun-Ali Zaidi <admin@kodeit.net>

I'll defer to Ville on this one, Cc'd.

BR,
Jani.



> ---
> V2 :- Use != instead of < and >
> V3 :- Mention Macs (Thanks to Orlando)
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 842c04e63..16b1c82b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -181,10 +181,10 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  	int ret;
>  
>  	if (intel_fb &&
> -	    (sizes->fb_width > intel_fb->base.width ||
> -	     sizes->fb_height > intel_fb->base.height)) {
> +	    (sizes->fb_width != intel_fb->base.width ||
> +	     sizes->fb_height != intel_fb->base.height)) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "BIOS fb too small (%dx%d), we require (%dx%d),"
> +			    "BIOS fb not valid (%dx%d), we require (%dx%d),"
>  			    " releasing it\n",
>  			    intel_fb->base.width, intel_fb->base.height,
>  			    sizes->fb_width, sizes->fb_height);

-- 
Jani Nikula, Intel Open Source Graphics Center
